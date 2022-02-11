//Maya ASCII 2022 scene
//Name: lipCtrl07.ma
//Last modified: Tue, Feb 08, 2022 05:58:02 PM
//Codeset: 949
requires maya "2022";
requires "mtoa" "4.2.4";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.0.50";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "281A0C11-4AC0-96EC-8D0B-81BFFD6D2054";
createNode transform -s -n "persp";
	rename -uid "AC885501-4DCA-4AC2-923C-0F8088FC387A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.6186597353478476 2.8788936713113711 7.0045651562677262 ;
	setAttr ".r" -type "double3" -18.938352729674151 33.400000000002173 9.5243541410972174e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F3CCC4FF-4A10-62F5-653C-2892BD9A3D27";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.8703990637419921;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "AC08619A-4734-F820-19A4-5697FF8A4959";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CBAD77C8-4F10-8504-4EC2-36879C164073";
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
	rename -uid "D068B656-4C12-7877-8CFC-3BAC91B748F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8204ED22-4D4E-7A14-E150-F2A364AB7872";
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
	rename -uid "F3B3C893-4042-2789-3536-04B6E00A3AB0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D37EC227-4A9F-42C8-AA93-CF845693F09F";
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
createNode transform -n "LipRigGrp";
	rename -uid "C8B0BF7C-43A1-0349-E3A3-FDA9812DCBB5";
createNode transform -n "LipCtrlGrp" -p "LipRigGrp";
	rename -uid "B7616FBA-49B4-739B-B16C-20BD981E9545";
	setAttr -av ".ovdt";
	setAttr ".t" -type "double3" -2.7794001988259344e-08 1.2612133559741778e-13 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipMainRootCnt" -p "LipCtrlGrp";
	rename -uid "B023DBC0-423B-44A6-31BE-E4B77C48C62E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipMainCtrlOffGrp" -p "LipMainRootCnt";
	rename -uid "280EE9D4-40CD-29C5-9845-FABDA76A53A0";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "LipMainCtrlGrp" -p "LipMainCtrlOffGrp";
	rename -uid "7EF8EA4C-4E2C-02D1-0215-8DBA5EE295A5";
createNode transform -n "LipMainCtrl" -p "LipMainCtrlGrp";
	rename -uid "60BB2C0D-4B42-4DDA-D380-E2A8DB961167";
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
	rename -uid "1DC45C81-4460-8FBD-3458-77995415AB47";
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
	rename -uid "AC9A7E85-45CF-99DD-EE32-3DA3CE0789F9";
createNode transform -n "UpLipMainCtrl" -p "UpLipMainCtrlOffGrp";
	rename -uid "73A465D2-4F94-8BFC-646D-02ADA213646A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "UpLipMainCtrlShape" -p "UpLipMainCtrl";
	rename -uid "217EBE49-4CF0-5F34-D9E2-74A3E8C83128";
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
	rename -uid "0D953316-4B19-B3E1-016A-50A611B25869";
createNode transform -n "DownLipMainCtrl" -p "DownLipMainCtrlOffGrp";
	rename -uid "7CC1E273-43F2-22A0-7D47-BE9A94AB1968";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "DownLipMainCtrlShape" -p "DownLipMainCtrl";
	rename -uid "B3EF9715-45A3-685F-4AAF-2A9978D6B54C";
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
	rename -uid "DBDE77C9-4C92-9572-61D9-1B85401358E1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightLipConerCtrlOffGrp" -p "RightLipConerRootCnt";
	rename -uid "B66A2AC6-46D9-9892-202D-9CAF6ED8CB18";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999956 -1.0000000000000004 ;
createNode transform -n "RightLipConerCtrlGrp" -p "RightLipConerCtrlOffGrp";
	rename -uid "0460DA8D-4C83-2DD1-88FE-0BAD14A40DB4";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightLipConerCtrl" -p "RightLipConerCtrlGrp";
	rename -uid "99842498-4C95-E379-43FD-BBBA4C99B8CF";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "RightLipConerCtrlShape" -p "RightLipConerCtrl";
	rename -uid "55C97A39-40DE-8C49-4196-6F8631F5C917";
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
	rename -uid "2A16A6DB-49B3-E994-4EBC-DE986138548D";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "RightUpLipConerCtrl" -p "RightUpLipConerCtrlGrp";
	rename -uid "8D0E8E80-4CA7-B7CE-3F34-A183FC6335E5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipConerCtrlShape" -p "RightUpLipConerCtrl";
	rename -uid "C6EDF67B-4961-31EA-78BF-3BA5E1E8A821";
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
	rename -uid "2A56214F-493C-821E-09DF-868CBDF0E6B1";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipConerCtrl" -p "RightDownLipConerCtrlGrp";
	rename -uid "BB3D08A7-40D0-AD41-DA1D-96BECE67E3E4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipConerCtrlShape" -p "RightDownLipConerCtrl";
	rename -uid "63DA55B8-4247-F9D7-5A5B-93A01BA436C8";
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
	rename -uid "E3611184-419A-F981-3595-299E8EA7150B";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipBCtrlOffGrp" -p "RightUpLipBRootCnt";
	rename -uid "9DDE6F68-41C4-BD7C-C0A6-80A0EF22DC42";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode transform -n "RightUpLipBCtrlCnt" -p "RightUpLipBCtrlOffGrp";
	rename -uid "EB525C70-4923-2D85-58E2-AAA0080522E8";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightUpLipBCtrlGrp" -p "RightUpLipBCtrlCnt";
	rename -uid "9859B6FE-4CCD-6F47-6D36-02AB1867797E";
createNode transform -n "RightUpLipBCtrl" -p "RightUpLipBCtrlGrp";
	rename -uid "6B36B1B1-4B29-113A-ACD0-22A62BD23595";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipBCtrlShape" -p "RightUpLipBCtrl";
	rename -uid "F1973132-49D3-E4F2-CB26-08BAE2C14A95";
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
	rename -uid "C298FBBA-4E6F-A46F-F5B4-FF91D7A43995";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipACtrlOffGrp" -p "RightUpLipARootCnt";
	rename -uid "F6852A1C-4923-4E86-451B-16A44F0C1F1C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1.0000000000000004 ;
createNode transform -n "RightUpLipACtrlCnt" -p "RightUpLipACtrlOffGrp";
	rename -uid "08EE4F66-4D7D-2AB6-0F3A-F8A2DDE3310E";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightUpLipACtrlGrp" -p "RightUpLipACtrlCnt";
	rename -uid "AA986828-4A4B-4AA4-B989-76AC1F6DC5FD";
createNode transform -n "RightUpLipACtrl" -p "RightUpLipACtrlGrp";
	rename -uid "615944AA-4728-6CE0-F9B5-63A0BF9FAE5B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipACtrlShape" -p "RightUpLipACtrl";
	rename -uid "8ACDDD26-40DE-B853-4352-38887CA65FFA";
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
	rename -uid "86FC690B-4C3C-5166-1DFF-DC9EEA50AFE2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterUpLipMCtrlOffGrp" -p "CenterUpLipMRootCnt";
	rename -uid "E9AF28D3-4AC2-0B24-710F-FB9540068F3B";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "CenterUpLipMCtrlGrp" -p "CenterUpLipMCtrlOffGrp";
	rename -uid "78A94A15-4726-61F4-3994-DD980350D2F4";
createNode transform -n "CenterUpLipMCtrl" -p "CenterUpLipMCtrlGrp";
	rename -uid "61C60849-43BC-D592-F404-F0A3D3471CBB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterUpLipMCtrlShape" -p "CenterUpLipMCtrl";
	rename -uid "4B338E1C-4005-D009-B9F1-E8AB7E481CA9";
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
	rename -uid "EDA6F6B4-4B0F-0ADE-9C62-CEBAE9CB1731";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipACtrlOffGrp" -p "LeftUpLipARootCnt";
	rename -uid "634081EB-4480-0CB4-7D06-ED87ED69A5D8";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999967 ;
createNode transform -n "LeftUpLipACtrlGrp" -p "LeftUpLipACtrlOffGrp";
	rename -uid "EC896CCD-4459-972F-D0B8-5386636E72AA";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipACtrl" -p "LeftUpLipACtrlGrp";
	rename -uid "6C1E902E-4EEE-9BA0-A679-67A4DF9895A4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipACtrlShape" -p "LeftUpLipACtrl";
	rename -uid "9A11D3D6-4351-7581-2DCF-D09BEF2B3B1A";
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
	rename -uid "D027B31B-4986-49A0-7C22-2A8A8448119F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipBCtrlOffGrp" -p "LeftUpLipBRootCnt";
	rename -uid "17F1D67D-4E52-B995-E7AB-099DE4B04F48";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "LeftUpLipBCtrlGrp" -p "LeftUpLipBCtrlOffGrp";
	rename -uid "7A238328-4F64-6D1E-4A1D-C996DFCACA40";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipBCtrl" -p "LeftUpLipBCtrlGrp";
	rename -uid "93735C22-4F7D-C53C-5363-DF8BA744FDB3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipBCtrlShape" -p "LeftUpLipBCtrl";
	rename -uid "EE1FE134-47CF-8B55-7BDB-A49BBA9A87E9";
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
	rename -uid "0AC70EB6-4849-8B68-B9F6-00AAD071CE35";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftLipConerCtrlOffGrp" -p "LeftLipConerRootCnt";
	rename -uid "35D419B2-4AE0-0EA2-D2B4-C191CA83EFBF";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "LeftLipConerCtrlGrp" -p "LeftLipConerCtrlOffGrp";
	rename -uid "0B51E139-4E58-47F6-DB5A-B79A9928DCBF";
createNode transform -n "LeftLipConerCtrl" -p "LeftLipConerCtrlGrp";
	rename -uid "C66C1156-4546-1467-6910-C7954629B451";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "LeftLipConerCtrlShape" -p "LeftLipConerCtrl";
	rename -uid "5B0F4B1E-4F45-AA03-B444-6FA0B2EC8159";
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
	rename -uid "73A80843-4E97-723F-0EA3-819114B034A6";
	setAttr ".t" -type "double3" -1.1430856261540612e-12 -1.0658141036401503e-14 -3.4461322684364859e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipConerCtrl" -p "LeftUpLipConerCtrlGrp";
	rename -uid "69CAB9BB-43FF-9461-DF45-199FF92FBB60";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipConerCtrlShape" -p "LeftUpLipConerCtrl";
	rename -uid "4D40A042-4540-62F9-8CA4-C8A9652DD539";
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
	rename -uid "6A1A61F5-4E4F-3760-0277-0E83DDF7538E";
	setAttr ".t" -type "double3" 1.1528555887707626e-12 -1.0658141036401503e-14 3.1263880373444408e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipConerCtrl" -p "LeftDownLipConerCtrlGrp";
	rename -uid "D5981062-4FF4-AEF4-E2BF-4DB2F7140171";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipConerCtrlShape" -p "LeftDownLipConerCtrl";
	rename -uid "8A51E48C-43ED-5A31-F06A-DA9CAC05941C";
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
	rename -uid "0DFA071E-4BC6-ED8A-2DB3-23AACB8D6909";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipBCtrlOffGrp" -p "LeftDownLipBRootCnt";
	rename -uid "44CC748C-474F-3F08-B927-1B9567977F46";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode transform -n "LeftDownLipBCtrlGrp" -p "LeftDownLipBCtrlOffGrp";
	rename -uid "42BED63F-49F9-F870-F503-69AA369C70FF";
createNode transform -n "LeftDownLipBCtrl" -p "LeftDownLipBCtrlGrp";
	rename -uid "E05F36D0-4D9B-024F-87C8-E1988E3B9354";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipBCtrlShape" -p "LeftDownLipBCtrl";
	rename -uid "4D096ACB-42A6-914C-DCF3-5599918C5676";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041986 1.4105009049037545e-06 8.992806499463768e-15
		-6.218261927952794e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.141050092480421 1.4105009049729965e-06 8.992806499463768e-15
		-0.19947495375979038 1.5823310944867158e-14 8.992806499463768e-15
		-0.14105009248042102 -0.14105009248040462 8.992806499463768e-15
		-7.075961406938085e-16 -0.19947495375977412 8.992806499463768e-15
		0.14105009248041975 -0.14105009248040476 8.992806499463768e-15
		0.19947495375978924 1.5663431369678241e-14 8.992806499463768e-15
		0.14105009248041986 1.4105009049037545e-06 8.992806499463768e-15
		-6.218261927952794e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.141050092480421 1.4105009049729965e-06 8.992806499463768e-15
		;
createNode transform -n "LeftDownLipARootCnt" -p "LipCtrlGrp";
	rename -uid "92BA6B27-43B9-0033-1984-42B4F7CEFB93";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipACtrlOffGrp" -p "LeftDownLipARootCnt";
	rename -uid "FCF56037-4393-6E80-2AED-A0B1436F8239";
createNode transform -n "LeftDownLipACtrlGrp" -p "LeftDownLipACtrlOffGrp";
	rename -uid "E8A4466E-4FC6-83FF-D0CB-C998DD975420";
createNode transform -n "LeftDownLipACtrl" -p "LeftDownLipACtrlGrp";
	rename -uid "0EE3D6EC-46FD-F25B-4B34-7488AAFF6C94";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipACtrlShape" -p "LeftDownLipACtrl";
	rename -uid "4B3EC9B7-401B-4CA7-3722-F78AFC878321";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041986 1.4105009049037545e-06 8.992806499463768e-15
		-6.218261927952794e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.141050092480421 1.4105009049729965e-06 8.992806499463768e-15
		-0.19947495375979038 1.5823310944867158e-14 8.992806499463768e-15
		-0.14105009248042102 -0.14105009248040462 8.992806499463768e-15
		-7.075961406938085e-16 -0.19947495375977412 8.992806499463768e-15
		0.14105009248041975 -0.14105009248040476 8.992806499463768e-15
		0.19947495375978924 1.5663431369678241e-14 8.992806499463768e-15
		0.14105009248041986 1.4105009049037545e-06 8.992806499463768e-15
		-6.218261927952794e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.141050092480421 1.4105009049729965e-06 8.992806499463768e-15
		;
createNode transform -n "CenterDownLipMRootCnt" -p "LipCtrlGrp";
	rename -uid "9E7048DE-4DA4-E882-10FF-3D9A8F5A2AE1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterDownLipMCtrlOffGrp" -p "CenterDownLipMRootCnt";
	rename -uid "39C588EC-46AF-AC18-528B-96B3DBF513E4";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "CenterDownLipMCtrlGrp" -p "CenterDownLipMCtrlOffGrp";
	rename -uid "E76B5CAE-40B7-0DAB-8582-63BC6EBB41EC";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "CenterDownLipMCtrl" -p "CenterDownLipMCtrlGrp";
	rename -uid "40DE848F-436A-BB0A-55FE-F2A944626092";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterDownLipMCtrlShape" -p "CenterDownLipMCtrl";
	rename -uid "FF3D922A-4578-80DA-7DC4-B9B633D3CA26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041955 1.4105009084555254e-06 8.992806499463768e-15
		-8.4387062155592039e-16 1.9947495065206995e-06 8.992806499463768e-15
		-0.14105009248042127 1.4105009085664006e-06 8.992806499463768e-15
		-0.19947495375979066 1.9493042777110045e-14 8.992806499463768e-15
		-0.14105009248042125 -0.14105009248040101 8.992806499463768e-15
		-9.8714690679296472e-16 -0.19947495375977042 8.992806499463768e-15
		0.14105009248041933 -0.14105009248040101 8.992806499463768e-15
		0.19947495375978908 1.9270713156785963e-14 8.992806499463768e-15
		0.14105009248041955 1.4105009084555254e-06 8.992806499463768e-15
		-8.4387062155592039e-16 1.9947495065206995e-06 8.992806499463768e-15
		-0.14105009248042127 1.4105009085664006e-06 8.992806499463768e-15
		;
createNode transform -n "RightDownLipARootCnt" -p "LipCtrlGrp";
	rename -uid "5E5FB900-4B10-0905-CBB0-CD9BB3E9B63D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipACtrlOffGrp" -p "RightDownLipARootCnt";
	rename -uid "460734FF-43BF-C90D-777A-518AC78E1EA9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightDownLipACtrlCnt" -p "RightDownLipACtrlOffGrp";
	rename -uid "A57B6F79-4F46-2927-07D3-BB9BC0DDAB27";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightDownLipACtrlGrp" -p "RightDownLipACtrlCnt";
	rename -uid "7B6AAEE0-4F30-3D22-EFD4-E180F93E01AC";
createNode transform -n "RightDownLipACtrl" -p "RightDownLipACtrlGrp";
	rename -uid "814269AB-4458-513E-0686-1C8B67D5FAE8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipACtrlShape" -p "RightDownLipACtrl";
	rename -uid "132E6248-418D-3E4C-948C-A2AAAC98C63C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041936 1.4105009048977948e-06 8.992806499463768e-15
		-9.5489324426028417e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.1410500924804213 1.4105009050017312e-06 8.992806499463768e-15
		-0.19947495375979085 1.5852045631175588e-14 8.992806499463768e-15
		-0.14105009248042133 -0.14105009248040465 8.992806499463768e-15
		-1.079140510820787e-15 -0.19947495375977423 8.992806499463768e-15
		0.14105009248041939 -0.14105009248040484 8.992806499463768e-15
		0.19947495375978885 1.5678288268178858e-14 8.992806499463768e-15
		0.14105009248041936 1.4105009048977948e-06 8.992806499463768e-15
		-9.5489324426028417e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.1410500924804213 1.4105009050017312e-06 8.992806499463768e-15
		;
createNode transform -n "RightDownLipBRootCnt" -p "LipCtrlGrp";
	rename -uid "A7430A75-4D71-1B47-EABE-3486F897AF08";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipBCtrlOffGrp" -p "RightDownLipBRootCnt";
	rename -uid "B18A66C8-4616-E0EF-4723-A0A969D9D784";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightDownLipBCtrlCnt" -p "RightDownLipBCtrlOffGrp";
	rename -uid "100B4F3A-4347-EDA8-EAA5-AC92EA1CA3FA";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipBCtrlGrp" -p "RightDownLipBCtrlCnt";
	rename -uid "33EBF7B1-4193-AF05-D206-D794E7682F82";
createNode transform -n "RightDownLipBCtrl" -p "RightDownLipBCtrlGrp";
	rename -uid "3B8E8FA8-4A11-EDC9-11C6-C19E6B1E032D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipBCtrlShape" -p "RightDownLipBCtrl";
	rename -uid "3566838D-427D-7468-9B3C-76A9AC7C27BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.14105009248041936 1.4105009048977948e-06 8.992806499463768e-15
		-9.5489324426028417e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.1410500924804213 1.4105009050017312e-06 8.992806499463768e-15
		-0.19947495375979085 1.5852045631175588e-14 8.992806499463768e-15
		-0.14105009248042133 -0.14105009248040465 8.992806499463768e-15
		-1.079140510820787e-15 -0.19947495375977423 8.992806499463768e-15
		0.14105009248041939 -0.14105009248040484 8.992806499463768e-15
		0.19947495375978885 1.5678288268178858e-14 8.992806499463768e-15
		0.14105009248041936 1.4105009048977948e-06 8.992806499463768e-15
		-9.5489324426028417e-16 1.9947495029679841e-06 8.992806499463768e-15
		-0.1410500924804213 1.4105009050017312e-06 8.992806499463768e-15
		;
createNode transform -n "LipSysGrp" -p "LipRigGrp";
	rename -uid "A56D42A4-498E-3559-FFA1-BAAB9DB8D3B8";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipSurfPosGrp" -p "LipSysGrp";
	rename -uid "D27949BB-4CC7-D379-8998-1E8C9F466091";
	setAttr ".v" no;
createNode transform -n "LipSurfAPosGrp" -p "LipSurfPosGrp";
	rename -uid "38E048A7-4171-9F4D-BBBB-53BCEB2D9A8B";
createNode transform -n "LipSurf0APosGrp" -p "LipSurfAPosGrp";
	rename -uid "183ED85C-4577-45E0-A0F4-A784A708FB39";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf0APos" -p "LipSurf0APosGrp";
	rename -uid "B8CFADA9-41F2-4A5A-77A6-E199D7D40BA2";
createNode locator -n "LipSurf0APosShape" -p "LipSurf0APos";
	rename -uid "8576C9AB-4E7C-C9EF-2F35-499229F4946A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2APosGrp" -p "LipSurfAPosGrp";
	rename -uid "D0DC133B-41D0-F01C-536D-2980C988546A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf2APos" -p "LipSurf2APosGrp";
	rename -uid "6D642EB5-40CE-1417-9181-5DBF10803E53";
createNode locator -n "LipSurf2APosShape" -p "LipSurf2APos";
	rename -uid "3B17DAC9-4A52-4B39-7A1E-E6ABD4A49CAB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3APosGrp" -p "LipSurfAPosGrp";
	rename -uid "3D287E41-48FC-54F2-0F96-1F9256A7896A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf3APos" -p "LipSurf3APosGrp";
	rename -uid "69E24AFB-4E28-259B-2994-A4BC9E639479";
createNode locator -n "LipSurf3APosShape" -p "LipSurf3APos";
	rename -uid "F1C6EB09-43BE-8B81-E957-10A1CCD0409B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4APosGrp" -p "LipSurfAPosGrp";
	rename -uid "C87F515A-4444-9744-0D22-FB96039DDBAB";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf4APos" -p "LipSurf4APosGrp";
	rename -uid "C7422BD8-4172-9E13-309E-62909AB6737C";
createNode locator -n "LipSurf4APosShape" -p "LipSurf4APos";
	rename -uid "D47C6510-452F-49F4-7D53-2FBADF5A5A34";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5APosGrp" -p "LipSurfAPosGrp";
	rename -uid "4E406B7F-4E9E-3F7D-4BDC-9C94C08A71B0";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf5APos" -p "LipSurf5APosGrp";
	rename -uid "536A398B-4017-3D55-DF68-BC907D6EB486";
createNode locator -n "LipSurf5APosShape" -p "LipSurf5APos";
	rename -uid "DC50C245-4D3C-450D-991E-D587C3B81362";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6APosGrp" -p "LipSurfAPosGrp";
	rename -uid "578A57F9-4707-80CF-C2E3-41B2AF31E876";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf6APos" -p "LipSurf6APosGrp";
	rename -uid "36D07956-4E2A-DBDF-73D1-90B464A4A96A";
createNode locator -n "LipSurf6APosShape" -p "LipSurf6APos";
	rename -uid "6F653806-4D00-9627-54D0-BBB6F7682E9A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8APosGrp" -p "LipSurfAPosGrp";
	rename -uid "1B0712ED-4E42-1C9E-0170-24BEBBFD5483";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf8APos" -p "LipSurf8APosGrp";
	rename -uid "6BB1A47E-4D08-B50C-10CC-53B4AE344EE9";
createNode locator -n "LipSurf8APosShape" -p "LipSurf8APos";
	rename -uid "7D2E5420-43D1-5C5A-2F22-C1A40BCA2355";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurfBPosGrp" -p "LipSurfPosGrp";
	rename -uid "51F7FBAF-4503-154C-74F9-188BB9B9B295";
createNode transform -n "LipSurf0BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "51F63C84-4D88-0393-1FDF-17874BD1AB95";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf0BPos" -p "LipSurf0BPosGrp";
	rename -uid "8CE09DF8-411B-3A43-2343-409DC83C4853";
createNode locator -n "LipSurf0BPosShape" -p "LipSurf0BPos";
	rename -uid "AC3F935A-453C-878B-4898-1C97C2BB833B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "34FFA46A-4EF1-BD36-2196-85BB5719515C";
createNode transform -n "LipSurf2BPos" -p "LipSurf2BPosGrp";
	rename -uid "25A40814-42C3-5713-2B82-E09E289BDAE9";
createNode locator -n "LipSurf2BPosShape" -p "LipSurf2BPos";
	rename -uid "4FFD7041-4BE9-B1D7-F2BE-A0899ECA9FED";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "BC1504D9-4DF5-FA43-3C11-D59ED623E286";
createNode transform -n "LipSurf3BPos" -p "LipSurf3BPosGrp";
	rename -uid "2C486725-4797-C702-B1CB-9E8DEDCD8187";
createNode locator -n "LipSurf3BPosShape" -p "LipSurf3BPos";
	rename -uid "835FF778-4B66-507F-7670-80905B4A0D9C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "1F36BFFA-4D0D-3B74-F609-2EB9C0125FFC";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf4BPos" -p "LipSurf4BPosGrp";
	rename -uid "AB2B6F81-4470-BEEC-C478-50962BF32F4F";
createNode locator -n "LipSurf4BPosShape" -p "LipSurf4BPos";
	rename -uid "13F45682-4557-EFE9-017E-47BF43921657";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "DB4AC386-4895-8214-0E5C-E4A49C7FC745";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf5BPos" -p "LipSurf5BPosGrp";
	rename -uid "9E395839-438E-DFD7-5594-41A8FBE2F36A";
createNode locator -n "LipSurf5BPosShape" -p "LipSurf5BPos";
	rename -uid "E962B58C-492B-AECB-0121-AFA1342E1C4D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "55399F1E-4911-C01A-50D9-4EB7C201DAC7";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -1 ;
createNode transform -n "LipSurf6BPos" -p "LipSurf6BPosGrp";
	rename -uid "B98DA49E-42E5-7AE0-442D-0E8051CA0215";
createNode locator -n "LipSurf6BPosShape" -p "LipSurf6BPos";
	rename -uid "F466B48B-4F86-C906-5621-7CAE9AA0E12B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "0A46E66C-448E-630B-164E-71BB1EF3AABD";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf8BPos" -p "LipSurf8BPosGrp";
	rename -uid "141A5F8A-460F-4FE4-67E1-199AEC4768B1";
createNode locator -n "LipSurf8BPosShape" -p "LipSurf8BPos";
	rename -uid "CF9D4285-4505-F657-C58B-E8BF2C047620";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipZipGrp" -p "LipSysGrp";
	rename -uid "B2249BB2-41FD-A6A6-1EE0-66850998F8AC";
	setAttr ".v" no;
createNode transform -n "LipSurfAZipPosGrp" -p "LipZipGrp";
	rename -uid "72AFD02A-44C1-5088-0A38-21BE381B7247";
createNode transform -n "LipSurf0AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "28B59EE8-414F-47B7-ED40-8089FD4D3068";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "EC283EAD-48B7-9D6F-A581-D0A047105D2C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "3D054EF0-46FB-9247-1369-959246EC228E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "387F3C22-4E7B-96A9-0CCF-668C33C07397";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "BD975F00-493B-D916-EA82-60B31A8BC4CB";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "AE3BBDE2-49B9-555F-2465-17A070C56AAB";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "CCA59C02-41DB-8B6A-859F-BBB4BEDF266C";
	setAttr ".dla" yes;
createNode transform -n "LipSurfBZipPosGrp" -p "LipZipGrp";
	rename -uid "4B661153-4E3F-71B3-7F0C-D0B9083B1892";
	setAttr ".t" -type "double3" 6.3527471044072525e-22 0 -1.3440637491868301e-14 ;
createNode transform -n "LipSurf0BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "38627D30-423E-A8DE-384E-9FBC22DD2E54";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "2642EB1F-4058-B955-8CC1-F7ACE9690FC5";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "D9412ADE-45CB-7A24-9364-339B585FFD55";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "45FDA7A7-4ED6-E0C7-BEDF-7A80F0CC3F94";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "85340E10-4503-D451-EF9D-1BABD416C6D8";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "0BB3B7D8-43EE-B106-C8C9-1D97400CBBE9";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "A266D6E4-462B-1DFE-BBD7-FEA2C1685E7E";
	setAttr ".dla" yes;
createNode transform -n "LipCrvsGrp" -p "LipSysGrp";
	rename -uid "153D41EB-4227-63A1-84E9-4D9A4D4702C4";
createNode transform -n "LibZipSurf" -p "LipCrvsGrp";
	rename -uid "BA963D26-4544-1E4E-3F0C-BFB9A4156D1C";
	setAttr ".v" no;
createNode nurbsSurface -n "LibZipSurfShape" -p "LibZipSurf";
	rename -uid "CF87D4D7-4247-BFD7-9FC3-ABB68BBDBA79";
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
	rename -uid "203403ED-4663-B197-23C5-BC977067CC21";
	setAttr ".tmp" yes;
	setAttr ".ovdt" 2;
createNode transform -n "LipDownPosCrv" -p "LipPosCrvGrp";
	rename -uid "58ADF0DB-460F-C18B-A641-428AF7E74B63";
createNode bezierCurve -n "LipDownPosCrvShape" -p "LipDownPosCrv";
	rename -uid "019A2641-46F0-49F4-3DEE-E1BF017EDDA4";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipDownPosCrvShapeOrig" -p "LipDownPosCrv";
	rename -uid "6A4BD454-46C8-4D8A-220A-94854324879E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1240000000000003 -7.105427357601005e-15 1.0000000000000071
		-1.1240000000000003 -7.105427357601005e-15 1.0000000000000071
		-0.89999927475939645 -0.059698939323425293 0.99999999999998257
		7.2524060363017278e-07 -0.059699058532714858 0.99999999999997902
		0.90000072524060371 -0.059699058532714858 0.99999999999998257
		1.1236470168039787 -1.367933544216271e-13 0.99999999999999201
		1.1236470168039787 -1.367933544216271e-13 0.99999999999999201
		;
createNode transform -n "LipUpPosCrv" -p "LipPosCrvGrp";
	rename -uid "462596C6-46E1-0B0D-4793-75A006CD8B75";
createNode bezierCurve -n "LipUpPosCrvShape" -p "LipUpPosCrv";
	rename -uid "8E158A6D-4985-EA49-6DF6-F2B446DBC2BB";
	setAttr -k off ".v";
	setAttr ".ovc" 22;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipUpPosCrvShapeOrig" -p "LipUpPosCrv";
	rename -uid "79CC2BA9-4569-111C-D256-739416478172";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1243537545914282 -7.1054273576010034e-15 0.99999999999969535
		-1.1243537545914282 -7.1054273576010034e-15 0.99999999999969535
		-0.90000002470634255 0.073481559753417997 1.0000000000001421
		-2.4706342073560132e-08 0.073481559753421549 1.0000000000001379
		0.89999997529365827 0.073481559753417997 1.0000000000001414
		1.1236470168039787 -1.332406407428266e-13 0.99999999999999556
		1.1236470168039787 -1.332406407428266e-13 0.99999999999999556
		;
createNode transform -n "LipLocalGrp" -p "LipSysGrp";
	rename -uid "B79848A1-4A12-6FCD-6B6D-7988821BCF0A";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipLocalLoc" -p "LipLocalGrp";
	rename -uid "752C46AC-4E32-3E9C-6C91-D0921E931132";
createNode locator -n "LipLocalLocShape" -p "LipLocalLoc";
	rename -uid "1FAB6E08-401C-8FCB-3B18-A4997C4370E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipDownRightLocalPos" -p "LipLocalGrp";
	rename -uid "50255477-44E0-E71E-2D63-5A9B607B9CB0";
createNode locator -n "LipDownRightLocalPosShape" -p "LipDownRightLocalPos";
	rename -uid "BC64919C-4D0A-4C97-66A5-6FBC692AE519";
	setAttr -k off ".v";
createNode transform -n "LipDownLeftLocalPos" -p "LipLocalGrp";
	rename -uid "4C4AF56D-498F-6CDD-E0BB-89BDCCD3E201";
createNode locator -n "LipDownLeftLocalPosShape" -p "LipDownLeftLocalPos";
	rename -uid "F83B868A-4FA0-B01C-B256-B3B7E814A5DA";
	setAttr -k off ".v";
createNode transform -n "LipRootLocalPos" -p "LipLocalGrp";
	rename -uid "CDBCD1B7-49FA-83CB-0FAA-208C2D4EAC4C";
createNode transform -n "LipRootPoser" -p "LipSysGrp";
	rename -uid "5D451828-4F2E-E629-66BA-9D92EBB28CBB";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "jointVis" -ln "jointVis" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -cb on ".mode";
	setAttr -cb on ".jointVis";
createNode nurbsCurve -n "LipRootPoserShape" -p "LipRootPoser";
	rename -uid "2F9BD7AA-4D35-95C8-7DFA-A79EB10E8503";
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
	rename -uid "0BDCCEA5-469A-E337-C417-21B49448B214";
createNode transform -n "LipRootPos" -p "LipPosersGrp";
	rename -uid "9D97D821-4826-612E-9677-87B85AE01799";
createNode transform -n "LipMainUpCntOffGrp" -p "LipRootPos";
	rename -uid "252DCC33-4873-C223-B64E-31A97F510A41";
	setAttr ".t" -type "double3" -7.1580740268473164e-07 0.073481559753414416 1.0000000000001457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainUpCnt" -p "LipMainUpCntOffGrp";
	rename -uid "D9620D17-432E-1851-00CE-159F8213BBD5";
createNode transform -n "UpLipMainCntOffGrp" -p "LipMainUpCnt";
	rename -uid "11EDF6A5-4A9D-B756-08AE-3FBEEE3FAF97";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.219646771412954e-15 ;
createNode transform -n "UpLipMainCnt" -p "UpLipMainCntOffGrp";
	rename -uid "88B5CB7C-41FD-C31B-6729-D494B181F268";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "RightUpLipPoserGrp" -p "UpLipMainCnt";
	rename -uid "2A5CB372-468E-DC49-A242-6088A4572F7C";
	setAttr ".t" -type "double3" -0.89999930889893964 -1.5777218104420236e-30 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1.0000000000000004 ;
createNode transform -n "RightUpLipPoser" -p "RightUpLipPoserGrp";
	rename -uid "EA2A20B4-4FA2-6726-17EB-07A7BA4BF6C5";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 0 1.5777218104420236e-30 0 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode transform -n "RightUpLipPos" -p "RightUpLipPoser";
	rename -uid "3F600363-4558-B8DE-F276-F38230CCCADA";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "RightUpLipPosShape" -p "RightUpLipPos";
	rename -uid "80C77E5C-4F01-46A0-60E3-6FB9CD509FB1";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "RightUpLipPoser";
	rename -uid "034A341A-453E-9753-8DB0-7A82341837DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.15000000000000002 -6.9388939039072284e-18
		-0.099999999999999992 0 0
		0.099999999999999992 0 0
		0 0.15000000000000002 -6.9388939039072284e-18
		;
createNode transform -n "MiddleUpLipPoserGrp" -p "UpLipMainCnt";
	rename -uid "D9E5ADCB-4435-A51C-3656-4BA0722BB68A";
	setAttr ".t" -type "double3" 6.9110106061117162e-07 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "MiddleUpLipPoser" -p "MiddleUpLipPoserGrp";
	rename -uid "AC38AF03-42E3-BE3B-C364-EE83BB0AEB1B";
	setAttr ".t" -type "double3" -3.1763735522036263e-22 3.5527136788004994e-15 -3.6637359812630166e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode nurbsCurve -n "MiddleUpLipPoserShape" -p "MiddleUpLipPoser";
	rename -uid "3B4244EC-498C-4C5E-0EB0-EE921B653C28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.15000000000000002 -6.9388939039072284e-18
		-0.099999999999999992 0 0
		0.099999999999999992 0 0
		0 0.15000000000000002 -6.9388939039072284e-18
		;
createNode transform -n "MiddleUpLipPos" -p "MiddleUpLipPoser";
	rename -uid "709E2954-4225-4AF9-BCB7-E581A8E02759";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.1175823681357508e-22 3.1554436208840472e-30 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "MiddleUpLipPosShape" -p "MiddleUpLipPos";
	rename -uid "659F46CB-47A5-FB5C-3E23-438E9CF278F2";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftUpLipPoserGrp" -p "UpLipMainCnt";
	rename -uid "8B2489F4-429B-44A4-3E8C-95804B692FBC";
	setAttr ".t" -type "double3" 0.90000069110106096 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "LeftUpLipPoser" -p "LeftUpLipPoserGrp";
	rename -uid "EA30B177-4740-27CA-7AB4-BEB9BD0871BF";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -3.1554436208840472e-30 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode nurbsCurve -n "LeftUpLipPoserShape" -p "LeftUpLipPoser";
	rename -uid "91E25755-48E3-1F41-F67D-D08658C79F93";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.15000000000000002 -6.9388939039072284e-18
		-0.099999999999999992 0 0
		0.099999999999999992 0 0
		0 0.15000000000000002 -6.9388939039072284e-18
		;
createNode transform -n "LeftUpLipPos" -p "LeftUpLipPoser";
	rename -uid "ECD9F70E-4193-A789-391A-4DADE27FFA79";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.2204460492503131e-16 3.1554436208840472e-30 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "LeftUpLipPosShape" -p "LeftUpLipPos";
	rename -uid "FB3791B4-43C0-539C-B426-C59559AE3EA6";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipWorldLoc" -p "LipPosersGrp";
	rename -uid "F3A39D21-46FE-CC65-883C-F18F1ADFFF01";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LipWorldLocShape" -p "LipWorldLoc";
	rename -uid "F169A57D-4783-3ACE-18B0-3F90E9791293";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipMainDownCntOffGrp" -p "LipWorldLoc";
	rename -uid "3493D271-4603-122E-3D1F-D6A1ADADD78E";
	setAttr ".t" -type "double3" 0 7.1054273576010066e-15 1 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainDownCnt" -p "LipMainDownCntOffGrp";
	rename -uid "DCFF7B7B-4E02-831F-2957-95A7BFD74DEE";
createNode transform -n "DownLipMainCntOffGrp" -p "LipMainDownCnt";
	rename -uid "9B514031-420F-D978-4220-9F96497212EA";
	setAttr ".t" -type "double3" 5.2939559203393771e-22 -3.5527136788005009e-15 -1.0325074129013956e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "DownLipMainCnt" -p "DownLipMainCntOffGrp";
	rename -uid "914057A9-4514-38EE-54F7-D992645C419C";
createNode transform -n "RightDnLipCrvPoserGrp" -p "DownLipMainCnt";
	rename -uid "187EFE21-4962-E25E-B23D-6E9472FDB153";
	setAttr ".t" -type "double3" -0.89999927475939667 -0.059698939323428818 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 -1 ;
createNode transform -n "RightDnLipCrvPoser" -p "RightDnLipCrvPoserGrp";
	rename -uid "7C4EDCE2-4211-CBE0-EF9C-259125C2A7A3";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode transform -n "RightDnLipCrvPos" -p "RightDnLipCrvPoser";
	rename -uid "F315DAFD-4AF4-65A8-9416-3FBD3EA0818D";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "RightDnLipCrvPosShape" -p "RightDnLipCrvPos";
	rename -uid "BE717675-45FC-FB5E-878D-BAB788FED02F";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "RightDnLipCrvPoser";
	rename -uid "3ADAACDD-460E-2D20-1B0E-74995AD36C24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-4.163336342344337e-17 -0.15000000000000005 -6.9388939039072284e-18
		0.099999999999999992 -3.4694469519536142e-17 0
		-0.099999999999999992 3.4694469519536142e-17 0
		-4.163336342344337e-17 -0.15000000000000005 -6.9388939039072284e-18
		;
createNode transform -n "MiddleDnLipCrvPoserGrp" -p "DownLipMainCnt";
	rename -uid "64627494-4BF6-DF02-E379-F28624A583CB";
	setAttr ".t" -type "double3" 7.2524060363017215e-07 -0.059699058532718383 -6.9944050551384862e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "MiddleDnLipCrvPoser" -p "MiddleDnLipCrvPoserGrp";
	rename -uid "345E6C2D-4DC6-6A91-8820-D9B5F446D4A0";
	setAttr ".t" -type "double3" 1.0587911840678754e-22 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "MiddleDnLipCrvPos" -p "MiddleDnLipCrvPoser";
	rename -uid "9F3C9466-4B6A-432D-F9FC-A583B166C2D3";
	setAttr -l on -k off ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "MiddleDnLipCrvPosShape" -p "MiddleDnLipCrvPos";
	rename -uid "AD9DFC8A-4348-CE40-EDC1-9086220978D1";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "MiddleDnLipCrvPoser";
	rename -uid "2379163D-471C-0E32-8B25-4E9EB5329D15";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-4.163336342344337e-17 -0.15000000000000005 -6.9388939039072284e-18
		0.099999999999999992 -3.4694469519536142e-17 0
		-0.099999999999999992 3.4694469519536142e-17 0
		-4.163336342344337e-17 -0.15000000000000005 -6.9388939039072284e-18
		;
createNode transform -n "LeftDnLipCrvPoserGrp" -p "DownLipMainCnt";
	rename -uid "FDF73FD6-432B-8876-A3CA-CF9546290930";
	setAttr ".t" -type "double3" 0.90000072524060393 -0.059699058532718383 -6.9944050551384862e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDnLipCrvPoser" -p "LeftDnLipCrvPoserGrp";
	rename -uid "4B7485C6-4576-B952-9134-759F490AAB75";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode transform -n "LeftDnLipCrvPos" -p "LeftDnLipCrvPoser";
	rename -uid "8F21E10B-4925-C208-1F40-40BE5DD20F65";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "LeftDnLipCrvPosShape" -p "LeftDnLipCrvPos";
	rename -uid "0574527A-4B52-4488-5D7F-CBB85EE9D2F8";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "LeftDnLipCrvPoser";
	rename -uid "D9D3890F-4F19-0D24-78D5-1E9AF121FDD7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-2.8827764328009173e-16 -0.15000000000000008 -6.9388939039072284e-18
		0.099999999999999784 -3.9143027164292399e-17 0
		-0.10000000000000017 3.0245911874779884e-17 0
		-2.8827764328009173e-16 -0.15000000000000008 -6.9388939039072284e-18
		;
createNode transform -n "Lip5WorldPBPosGrp" -p "LipPosersGrp";
	rename -uid "B3C56C1A-40B2-2A8B-ADBE-1F85488C663E";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "Lip5MainCntOffGrp" -p "Lip5WorldPBPosGrp";
	rename -uid "5D86D0A0-4D96-C56C-6C72-B8BBD817A4E9";
	setAttr ".t" -type "double3" -7.1580740268473164e-07 0.073481559753414416 1.0000000000001457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "Lip5MainCntGrp" -p "Lip5MainCntOffGrp";
	rename -uid "7CD96B4C-4065-9C63-80DB-5CB07696FBC1";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
createNode transform -n "LeftCornerUpLipPoserOffGrp" -p "Lip5MainCntGrp";
	rename -uid "30A1CFFE-4400-E74A-4AD4-169D660024E1";
	setAttr ".t" -type "double3" 1.1236477326113814 -0.07348155975354409 -1.4988010832439613e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftCornerUpLipPoser" -p "LeftCornerUpLipPoserOffGrp";
	rename -uid "794A8D5F-4C97-EF36-06EE-3FB83798670E";
createNode nurbsCurve -n "LeftUpLipPoser1Shape" -p "LeftCornerUpLipPoser";
	rename -uid "4AC79EE8-4D0C-1ED4-B80A-1CAD9245956B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0.15000000000000008 0 -6.9388939039072284e-18
		0 0.10000000000000001 0
		0 -0.10000000000000001 0
		0.15000000000000008 0 -6.9388939039072284e-18
		;
createNode transform -n "LeftCornerUpLipPos" -p "LeftCornerUpLipPoser";
	rename -uid "D0123352-4EE2-6DE7-0B4F-2E80FD6E82DB";
	setAttr -l on -k off ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftCornerUpLipPosShape" -p "LeftCornerUpLipPos";
	rename -uid "91F16D31-4EA8-4EE4-4139-B194D8EE88AB";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "UpLip5MainCntOffGrp" -p "LeftCornerUpLipPos";
	rename -uid "5699ABDB-4358-195B-7854-0F8E2D72AF47";
	setAttr ".t" -type "double3" -1.1236462979089161 1.7763568394002505e-14 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "UpLip5MainCntGrp" -p "UpLip5MainCntOffGrp";
	rename -uid "8EB7674D-4E66-4421-9C26-4ABC067DC257";
	setAttr ".v" no;
createNode transform -n "UpLip5CrvPosGrp" -p "UpLip5MainCntGrp";
	rename -uid "F0D3FE87-437A-A65E-2CBE-4498147F8600";
	setAttr ".t" -type "double3" 1.1236462979089161 -1.7763568394002498e-14 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
createNode transform -n "UpLip5CrvPos" -p "UpLip5CrvPosGrp";
	rename -uid "1DED6C34-4E0F-EB13-637C-37B1D90169C4";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "UpLip5CrvPosShape" -p "UpLip5CrvPos";
	rename -uid "43E5A218-4E10-94A6-211C-8DA0B4AEAED5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip5MainCntOffGrp" -p "LeftCornerUpLipPos";
	rename -uid "B23359BB-4F94-8179-07D3-C48799D29C80";
	setAttr ".t" -type "double3" -1.1236477326113814 0.073481559753547629 1.5698553568199713e-13 ;
createNode transform -n "DownLip5MainCntGrp" -p "DownLip5MainCntOffGrp";
	rename -uid "E82F275C-4361-7A5C-8BE5-149BB70F5746";
	setAttr ".v" no;
createNode transform -n "DownLip5CrvPosGrp" -p "DownLip5MainCntGrp";
	rename -uid "734BC3BB-4B7E-7B68-2849-C0AFDA57F437";
	setAttr ".t" -type "double3" 1.1236477326113814 -0.073481559753547629 -1.5698553568199713e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "DownLip5CrvPos" -p "DownLip5CrvPosGrp";
	rename -uid "44B6CA29-4DD4-AF7C-C1C3-4C934FF76191";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "DownLip5CrvPosShape" -p "DownLip5CrvPos";
	rename -uid "8979AAC8-4277-0FEB-CB7C-BFAE98D260EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "Lip1WorldPBPosGrp" -p "LipPosersGrp";
	rename -uid "7ADFC13D-4BB8-7DAF-2E41-368017FFA6DD";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "Lip1MainCntOffGrp" -p "Lip1WorldPBPosGrp";
	rename -uid "865F5BDF-4DD0-8F4C-E975-4FB8BCA5330E";
	setAttr ".t" -type "double3" -7.1580740268473164e-07 0.073481559753414416 1.0000000000001457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "Lip1MainCntGrp" -p "Lip1MainCntOffGrp";
	rename -uid "1F474027-4291-C385-69B4-30914486A1E4";
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000007 ;
createNode transform -n "RightCornerUpLipPoserOffGrp" -p "Lip1MainCntGrp";
	rename -uid "42170888-4C01-0FF2-7EE2-67AB79FF81DA";
	setAttr ".t" -type "double3" -1.1239992841925974 -0.073481559753417899 1.4188650254709501e-13 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "RightCornerUpLipPoser" -p "RightCornerUpLipPoserOffGrp";
	rename -uid "25FAB893-4E46-7296-AED1-5DACFF023303";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 1.1832913578315177e-30 0 ;
	setAttr ".s" -type "double3" 1 1 -0.99999999999999989 ;
createNode nurbsCurve -n "LeftUpLipPoser1Shape" -p "RightCornerUpLipPoser";
	rename -uid "0C0D2DCD-4A95-F922-EC8C-96A7BA373296";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0.15000000000000008 0 -6.9388939039072284e-18
		0 0.10000000000000001 0
		0 -0.10000000000000001 0
		0.15000000000000008 0 -6.9388939039072284e-18
		;
createNode transform -n "RightCornerUpLipPos" -p "RightCornerUpLipPoser";
	rename -uid "D02840DD-41AD-BE84-734E-EEA4086E0F0A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.8886090522101181e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "RightCornerUpLipPosShape" -p "RightCornerUpLipPos";
	rename -uid "B8A3D744-408C-9768-0FA9-D4AA66E1F493";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "Lip1MainOffGrp" -p "RightCornerUpLipPos";
	rename -uid "0D3064E8-44AD-C1DF-93D7-3CBAEDDFFD68";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "UpLip1MainCntOffGrp" -p "Lip1MainOffGrp";
	rename -uid "00677183-4FFC-B0EF-8979-99944A760D0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1236462454085721 0.073481559753547629 1.5587531265737198e-13 ;
createNode transform -n "UpLip1MainCntGrp" -p "UpLip1MainCntOffGrp";
	rename -uid "D18291AE-4E12-7612-7EA5-42A9CFD97ACA";
createNode transform -n "UpLip1CrvPosGrp" -p "UpLip1MainCntGrp";
	rename -uid "D6087FD6-44A5-9B80-9A4C-28B8A2A884C9";
	setAttr ".t" -type "double3" -1.124 -0.073481559753547629 1.5587531265737198e-13 ;
createNode transform -n "UpLip1CrvPos" -p "UpLip1CrvPosGrp";
	rename -uid "C366A107-4515-D7A9-25DA-EEAB6ADEB59B";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "UpLip1CrvPosShape" -p "UpLip1CrvPos";
	rename -uid "7F006544-4294-91F2-533E-7FBA2968FE79";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip1MainCntOffGrp" -p "Lip1MainOffGrp";
	rename -uid "089983F3-4ADF-DF1D-AC0F-FCB66BD46D6D";
	setAttr ".t" -type "double3" 1.1236462514236858 -0.059699058532585156 1.5942802633617248e-13 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "DownLip1MainCntGrp" -p "DownLip1MainCntOffGrp";
	rename -uid "8D84EFC6-4E4E-2AE2-19BA-C29DD40AB27C";
	setAttr ".v" no;
createNode transform -n "DownLip1CrvPosGrp" -p "DownLip1MainCntGrp";
	rename -uid "78EF49FA-422B-C4C6-174C-AFA3480D00AA";
	setAttr ".t" -type "double3" -1.123646251423686 0.059699058532585156 -1.5942802633617248e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "DownLip1CrvPos" -p "DownLip1CrvPosGrp";
	rename -uid "F6903919-44CA-007B-21AE-FBA9A71C433C";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "DownLip1CrvPosShape" -p "DownLip1CrvPos";
	rename -uid "D5276726-44AD-20A8-3FD0-818ABDB89531";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrlCrvGrp" -p "LipRootPoser";
	rename -uid "C913C3AC-486C-2329-CAC3-51BF7105FFD2";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "LipCtrlCrv" -p "LipCtrlCrvGrp";
	rename -uid "B53D5264-411C-845C-3330-D3A62DE5E1BE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LipCtrlCrvShape" -p "LipCtrlCrv";
	rename -uid "97C527FF-4EF9-FF52-C8B2-C08EE8F87BA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 12 ".cp[0:11]" -type "double3" 7.1525573663855369e-07 -11.599583142178929 
		-24.657157215964798 -0.0014407279809440787 -11.521193734152934 -24.706697139083744 
		-0.026079527565027627 -11.565474510192866 -24.815874099731435 -1.389587511724244e-08 
		-11.668156623840336 -24.966852188110206 0.025487244129180908 -11.565474510192871 
		-24.815874099731442 0.00144195556640625 -11.521193504333496 -24.706697463989364 6.8746397574592777e-07 
		-11.599582672119046 -24.657157897949233 -0.058618009090423584 -11.668156623840332 
		-24.763734817504933 0 -11.713601112365726 -24.910547256469638 -1.3895867595481448e-08 
		-11.745661735534668 -24.96749305725082 -0.00059229374779889987 -11.713601112365717 
		-24.910547256469609 0.058619344089431369 -11.668156623840332 -24.763734647008761;
createNode nurbsCurve -n "LipCtrlCrvShapeOrig" -p "LipCtrlCrv";
	rename -uid "3CD65D33-4211-0D5C-94B8-D0BD0777BC90";
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
createNode transform -n "LipJntGrp" -p "LipRigGrp";
	rename -uid "193AE306-4C7B-85AE-115A-01B1E9B30062";
createNode transform -n "RightUpLipConerJntGrp" -p "LipJntGrp";
	rename -uid "2F8DB599-4DEC-56EA-167A-D08E0071AD61";
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 0.99999999999999867 1 -1.0000000000000002 ;
createNode transform -n "RightUpLipConerJntOffGrp" -p "RightUpLipConerJntGrp";
	rename -uid "3D36F52A-4695-524C-882A-ADA2801AC617";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 -4.4408920985006262e-16 ;
createNode joint -n "RightUpLipConerJnt" -p "RightUpLipConerJntOffGrp";
	rename -uid "E931AE33-48EE-D730-CD92-E2BC8DB5B26A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.5559993560783848e-16 0 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightUpLipBJntGrp" -p "LipJntGrp";
	rename -uid "E9202E44-4ED0-CE3C-9DD9-14B37842131F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode transform -n "RightUpLipBJntOffGrp" -p "RightUpLipBJntGrp";
	rename -uid "4E5C7A00-4613-98BD-9130-CFB519CAC172";
createNode joint -n "RightUpLipBJnt" -p "RightUpLipBJntOffGrp";
	rename -uid "76C91A3B-42F4-9FD2-DC09-D3B261A9BC19";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.4124500153760508e-30 0 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightUpLipAJntGrp" -p "LipJntGrp";
	rename -uid "30A726B9-49DD-55BF-EEAD-4E9308A8017A";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000004 ;
createNode transform -n "RightUpLipAJntOffGrp" -p "RightUpLipAJntGrp";
	rename -uid "95C9828A-4300-5EFE-B3EC-198EF74EC012";
createNode joint -n "RightUpLipAJnt" -p "RightUpLipAJntOffGrp";
	rename -uid "6FB68E8D-4733-8BFC-DD0C-0FB3E5CE5028";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "CenterUpLipMJntGrp" -p "LipJntGrp";
	rename -uid "DD3ADD04-4197-629C-0849-11B9EA4A6CD9";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode joint -n "CenterUpLipMJnt" -p "CenterUpLipMJntGrp";
	rename -uid "01F0C273-4C3C-1FFC-FE1A-528D454D4185";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipAJntGrp" -p "LipJntGrp";
	rename -uid "5A7C1BD0-4055-93CA-845A-F89760C40A0B";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 0.99999999999999967 ;
createNode joint -n "LeftUpLipAJnt" -p "LeftUpLipAJntGrp";
	rename -uid "7E2BEDB6-4C44-79FB-BA3F-77888E3343ED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipBJntGrp" -p "LipJntGrp";
	rename -uid "597D990F-491D-3575-F18A-06A1656ED6F0";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 0.99999999999999989 ;
createNode joint -n "LeftUpLipBJnt" -p "LeftUpLipBJntGrp";
	rename -uid "BD11096F-4A00-E60C-8EA6-AF9EBAAC9C82";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipConerJntGrp" -p "LipJntGrp";
	rename -uid "F640CED5-490B-D589-8725-28955BB54560";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "LeftUpLipConerJnt" -p "LeftUpLipConerJntGrp";
	rename -uid "DA3F40C5-4734-76C5-BACD-B2974C9410AB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipConerJntGrp" -p "LipJntGrp";
	rename -uid "05D2DD0A-4BE3-8E41-B3FC-F7AAB357FCE8";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "LeftDownLipConerJnt" -p "LeftDownLipConerJntGrp";
	rename -uid "1DD45A8A-43F3-9C5D-8D4C-848C2130FCF6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipBJntGrp" -p "LipJntGrp";
	rename -uid "DFDFE23A-4342-51A5-46AE-A59B4A261FB4";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode joint -n "LeftDownLipBJnt" -p "LeftDownLipBJntGrp";
	rename -uid "BB9550B0-4F83-B240-010C-C9941CF4D925";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipAJntGrp" -p "LipJntGrp";
	rename -uid "CD18F284-4261-B388-89F9-CAA5FBC36E59";
createNode joint -n "LeftDownLipAJnt" -p "LeftDownLipAJntGrp";
	rename -uid "119E1A0D-4CBC-7B11-6B8F-A0AD128E1C97";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "CenterDownLipMJntGrp" -p "LipJntGrp";
	rename -uid "FCC137D3-4CDD-CEA9-02A3-CAA20ED34ECC";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "CenterDownLipMJnt" -p "CenterDownLipMJntGrp";
	rename -uid "583E68B8-414E-586F-72C4-8C81E383295E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipAJntGrp" -p "LipJntGrp";
	rename -uid "8A469FB3-4EEA-49B3-512F-829D577449CB";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightDownLipAJntOffGrp" -p "RightDownLipAJntGrp";
	rename -uid "60D9EE7E-4767-8D4A-41CC-80A7677C1C82";
createNode joint -n "RightDownLipAJnt" -p "RightDownLipAJntOffGrp";
	rename -uid "1ED30829-4865-12B2-C586-67987B393AD3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipBJntGrp" -p "LipJntGrp";
	rename -uid "AAD76094-41FC-2DBB-2C2B-3CB8A997F00A";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightDownLipBJntOffGrp" -p "RightDownLipBJntGrp";
	rename -uid "6FC9F6DC-497F-AADD-C91C-2B916CB6EAB3";
createNode joint -n "RightDownLipBJnt" -p "RightDownLipBJntOffGrp";
	rename -uid "E04EFF64-4C9A-B2AA-1A63-89BC35D1BCAE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipConerJntGrp" -p "LipJntGrp";
	rename -uid "EEFFFEF7-458E-4E07-065C-988A28CD0954";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999845 1 -1.0000000000000002 ;
createNode transform -n "RightDownLipConerJntOffGrp" -p "RightDownLipConerJntGrp";
	rename -uid "7B24E47E-4A34-7EEB-FFB3-509D3A996423";
	setAttr ".t" -type "double3" 0 0 1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode joint -n "RightDownLipConerJnt" -p "RightDownLipConerJntOffGrp";
	rename -uid "4ABB2694-4912-9F44-8191-B08BF33D3EE5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.5559993560784272e-16 0 ;
	setAttr ".radi" 0.1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A9D406CF-49D7-3E8D-71E9-C5940772CEB5";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "7FB9F683-4357-AC17-D0D8-C59D0EEA24E3";
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "4FDFB9CA-4C34-8233-EB5A-72A0EF21C4BE";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2E13D73E-47ED-A8A2-3CF1-9496E8D0080E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1AB9B08D-45ED-8E89-27B7-C5B100E9DAF4";
createNode displayLayerManager -n "layerManager";
	rename -uid "8E8734E1-4C65-20E3-7191-75A2D11D2AF5";
createNode displayLayer -n "defaultLayer";
	rename -uid "E1749984-4F6C-7A27-BDE0-7C87DDBBAFD1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1D98E10E-4104-EF6E-AA44-BF9A450398DE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "261228AB-40D9-C2AE-44A0-C89910E636A8";
	setAttr ".g" yes;
createNode reverse -n "LipModeRvs";
	rename -uid "592399C4-43AD-C37A-F752-2282B2214D1D";
createNode pointOnCurveInfo -n "CenterUpLipMRootCntPC";
	rename -uid "65603E93-4814-FEAB-6625-F79E27AAA033";
	setAttr ".pr" 0.27272727272727271;
	setAttr ".top" yes;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "7CEB9106-4B28-F1CB-0BC7-43B6C2266B49";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnCurveInfo -n "RightLipConerRootCntPC";
	rename -uid "58C58E43-4591-0164-3A1F-87B0CC39CA96";
	setAttr ".top" yes;
createNode multiplyDivide -n "RightLipConerCtrlRvsMultMD";
	rename -uid "EF3AA4D8-435D-72B2-5AB3-81961D698D96";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpLipBRootCntPC";
	rename -uid "06A01439-4114-3C8F-4A6E-B59C0C15658E";
	setAttr ".pr" 0.090909090909090912;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip2CrvPosPosBRotPB";
	rename -uid "F6BED4A5-4267-E5E7-9CA1-7D971FD120D1";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosPosBRotPBwML";
	rename -uid "D7C42FBF-4C79-9BC6-8F1B-0EBDEDE01E10";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipBCtrlRvsMultMD";
	rename -uid "625D5DDC-44D4-FD46-2D82-7296D9DCA155";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpLipARootCntPC";
	rename -uid "371A9A68-42B9-E108-3D11-4DB9F3AF0D9D";
	setAttr ".pr" 0.18181818181818182;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip2CrvPosARotPB";
	rename -uid "F2C22E66-49C7-8E80-E1B6-58832B78AF6A";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosARotPBwML";
	rename -uid "85F74AB7-4121-6928-C3B8-479CAB6DEFC7";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipACtrlRvsMultMD";
	rename -uid "45A46896-41F0-ED7D-C039-B9A69250CFEC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "CenterUpLipMCtrlRvsMultMD";
	rename -uid "B448A19D-4723-1F45-8FA5-CD9D753E1C99";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftUpLipARootCntPC";
	rename -uid "6C81C395-4657-5B4B-CE06-2C9D4E7717B8";
	setAttr ".pr" 0.36363636363636365;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip4CrvPosARotPB";
	rename -uid "EB95FD1B-44A0-D3E3-FA71-CE8A5186C24E";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosARotPBwML";
	rename -uid "F9FEB755-4ECB-3DAE-26B2-6F986F7A9018";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipACtrlRvsMultMD";
	rename -uid "2795CE49-49E2-FEC2-88F0-C58CA878E77B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftUpLipBRootCntPC";
	rename -uid "C6F768CD-4142-5652-1894-BBA3C31E8F0F";
	setAttr ".pr" 0.45454545454545459;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip4CrvPosBRotPB";
	rename -uid "5B931EB3-4AB9-37AD-FD29-1FA35C3C593E";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosBRotPBwML";
	rename -uid "ADBCF359-4FA3-07F1-DCAC-53A83FA1DCAE";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipBCtrlRvsMultMD";
	rename -uid "B8AA56E0-4FC9-BC44-6CA2-5C9D030299D1";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftLipConerRootCntPC";
	rename -uid "BAA9E52D-4444-88EB-9EF6-B2B8232C4E6D";
	setAttr ".pr" 0.54545454545454541;
	setAttr ".top" yes;
createNode multiplyDivide -n "LeftLipConerCtrlRvsMultMD";
	rename -uid "96C3E98E-4752-BCB6-5581-308CF9112968";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftDownLipBRootCntPC";
	rename -uid "55C56A0E-446D-1130-2E64-EF854474331D";
	setAttr ".pr" 0.63636363636363635;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip4CrvPosPosBRotPB";
	rename -uid "8BD6AEA7-4BB9-1871-434A-DD86186C9D58";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosPosBRotPBwML";
	rename -uid "0649EC62-4629-21E2-2546-B9ACBD2465C0";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipBCtrlRvsMultMD";
	rename -uid "EBDA7783-4C69-6335-1DC2-65BEF0BD6AD5";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftDownLipARootCntPC";
	rename -uid "60D143B6-4CC1-EDC3-D6DD-17A80920F289";
	setAttr ".pr" 0.72727272727272729;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip4CrvPosARotPB";
	rename -uid "C89FFA42-440F-57B5-7169-C8B9E2C44FCE";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosARotPBwML";
	rename -uid "7D177A13-4750-49D4-8103-79995571D02A";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipACtrlRvsMultMD";
	rename -uid "02C7D6F8-468C-CF59-831B-D595B2E2B2F6";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "CenterDownLipMRootCntPC";
	rename -uid "AFB61E41-4B37-BA58-5FC0-28B73360AB13";
	setAttr ".pr" 0.81818181818181823;
	setAttr ".top" yes;
createNode multiplyDivide -n "CenterDownLipMCtrlRvsMultMD";
	rename -uid "D0CD8691-4C62-B303-6157-F5B3CCF32D7D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightDownLipARootCntPC";
	rename -uid "79039929-4375-5838-1886-8AAF98E52DA1";
	setAttr ".pr" 0.90909090909090917;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip2CrvPosARotPB";
	rename -uid "A1C4709B-432E-5FE0-1505-BF8069B33D3D";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosARotPBwML";
	rename -uid "61F87F37-4E85-2C2D-4853-618CB482499A";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipACtrlRvsMultMD";
	rename -uid "4AF90927-4616-A899-4712-94926463B03A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightDownLipBRootCntPC";
	rename -uid "888429F0-4891-3F9E-8F40-43B4433A0384";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip2CrvPosBRotPB";
	rename -uid "B8D44BA5-49C3-EA92-E6A7-C7BA236C2C6B";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosBRotPBwML";
	rename -uid "CB12B9D9-4321-7E0D-B7C3-0D8D0FA1AAB2";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipBCtrlRvsMultMD1";
	rename -uid "AD45DE11-44B8-8B62-6EFD-31ACB7C1CEA9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LibSurf0APosPC";
	rename -uid "AAD09FA6-4100-1F25-2A87-10AAC0CF6706";
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf0APosGrpDM";
	rename -uid "F6D5C445-406F-020B-BB6C-4C980AEF71CA";
createNode multMatrix -n "LipSurf0APosGrpMM";
	rename -uid "B7D3353E-4407-DBCA-CFC1-84A54A93CD4D";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -1.1236469890099767 -7.1054273576010066e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf2APosPC";
	rename -uid "F6E545C1-49F6-04B0-A4E5-C6BB6238AC62";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf2APosGrpDM";
	rename -uid "3F9A0ABA-4A3F-7810-88FA-68B123C0CE1B";
createNode multMatrix -n "LipSurf2APosGrpMM";
	rename -uid "5A80D448-4937-FBBC-2AF1-148954379D83";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -0.8993231489544582 3.5527136788005065e-15 0.99999999999999778 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf3APosPC";
	rename -uid "C0DB0173-4271-8702-EE8A-E9A10C8E3931";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf3APosGrpDM";
	rename -uid "3CA268AD-40DB-CE24-9597-7EB63A4D2565";
createNode multMatrix -n "LipSurf3APosGrpMM";
	rename -uid "43028CE6-4AFD-0811-C674-4BBD3B9117A1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -0.55525675891628912 1.0880185641326548e-14 0.99999999999999512 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf4APosPC";
	rename -uid "6E094421-4698-64AD-00DB-DAAAD095A4A1";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf4APosGrpDM";
	rename -uid "651BB559-40A8-76C6-F280-7A8FD44AE618";
createNode multMatrix -n "LipSurf4APosGrpMM";
	rename -uid "450A503C-4E4A-9CD5-422F-A2B3B9524CD2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.9110106061117151e-07 1.4210854715202019e-14 0.99999999999999212 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf5APosPC";
	rename -uid "D35C8000-46D8-0207-6939-488777FC481B";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf5APosGrpDM";
	rename -uid "6720DF3C-4187-57DB-CEAF-96897FDF3A1B";
createNode multMatrix -n "LipSurf5APosGrpMM";
	rename -uid "DBC56B20-4E85-BAC2-4255-15AE903CDC88";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.55525792514932892 1.0880185641326548e-14 0.99999999999999534 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf6APosPC";
	rename -uid "F3A6B6C5-4844-C6A3-E1C3-9AA420CB3CAC";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf6APosGrpDM";
	rename -uid "1DBAE589-4DC7-D6DF-0A1A-D499D66D20FB";
createNode multMatrix -n "LipSurf6APosGrpMM";
	rename -uid "1F3E9787-40D6-7BEF-39BB-19970CC27C67";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.8993238400555188 3.5527136788005065e-15 0.99999999999999889 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf8APosPC";
	rename -uid "2878D484-4809-6679-B33E-2A8EC32FF444";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf8APosGrpDM";
	rename -uid "33659020-45BA-D3F8-5609-DE95A719446C";
createNode multMatrix -n "LipSurf8APosGrpMM";
	rename -uid "A46204BF-4FB0-694A-D701-29A786799F6A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236469890099767 -7.1054273576010066e-15 1.0000000000000029 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf0BPosPC";
	rename -uid "2A6DE15A-4FAE-D685-089D-9F8F92630E15";
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf0BPosGrpDM";
	rename -uid "61DF7724-4CD1-51B2-EE76-908301F8A9B7";
createNode multMatrix -n "LipSurf0BPosGrpMM";
	rename -uid "E96BB59F-4D7B-3D78-952B-88AC8B3986D7";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1.0000000000000002 0 0
		 -1.2246467991473532e-16 0 1 0 -1.1236469890099767 -7.1054273576010082e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf2BPosPC";
	rename -uid "551656D6-40B9-50D6-542E-FA9AAC430E0D";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf2BPosGrpDM";
	rename -uid "EEC4D13F-4B6C-0088-24FE-E4BBAC248C73";
createNode multMatrix -n "LipSurf2BPosGrpMM";
	rename -uid "CA7B0528-4575-1A52-B734-76ABF636CBE3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 1.2246467991473535e-16 0 0 -1.2246467991473532e-16 -1.0000000000000002 0 0
		 0 0 1 0 -0.8993231318846866 -6.4867640808087845e-14 0.9999999999999909 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf3BPosPC";
	rename -uid "9E8F2A60-4BF3-4D82-88BB-2E9FD912A2BF";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf3BPosGrpDM";
	rename -uid "8C471EE0-4811-FED6-B475-14A35EC40587";
createNode multMatrix -n "LipSurf3BPosGrpMM";
	rename -uid "BF16181C-4845-6964-05CD-A69B442E6524";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 1.2246467991473535e-16 0 0 -1.2246467991473532e-16 -1.0000000000000002 0 0
		 0 0 1 0 -0.5552567301110497 -1.0452749776845855e-13 0.99999999999998357 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf4BPosPC";
	rename -uid "B6DF18E9-41A6-95BE-2A1A-C3813E446284";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf4BPosGrpDM";
	rename -uid "9F10BE38-41CA-8CB7-6BFD-43BBA1527024";
createNode multMatrix -n "LipSurf4BPosGrpMM";
	rename -uid "221AF160-4CE2-AD60-75D5-2E8F222F695A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 -1.0000000000000002 1.2246467991473532e-16 0
		 0 1.2246467991473535e-16 1 0 7.2524060363017278e-07 -1.224461572387026e-13 0.99999999999997868 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf5BPosPC";
	rename -uid "3B741468-43AD-0250-3584-7BAAE37B44D1";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf5BPosGrpDM";
	rename -uid "ECD3FC24-4C24-AAC3-A848-E1A3EC95EEA9";
createNode multMatrix -n "LipSurf5BPosGrpMM";
	rename -uid "C4C741A0-4ADB-27CC-0CB7-768FDB04261C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 -1 1.224646799147353e-16 0 0 1.2246467991473535e-16 1 0
		 0.55525795395456834 -1.0497927970709304e-13 0.99999999999998335 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf6BPosPC";
	rename -uid "628CCCBE-4F5A-2B73-CEED-B1A10E9B6451";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf6BPosGrpDM";
	rename -uid "F0F5CB6F-4B33-39F1-CC0E-4BA04D214AB4";
createNode multMatrix -n "LipSurf6BPosGrpMM";
	rename -uid "D50928A1-4F96-0C15-0B23-52BFFFC41B17";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 0 0 0 0 -1.0000000000000004 1.2246467991473535e-16 0
		 0 1.2246467991473535e-16 1 0 0.89932385712529017 -6.655214913755205e-14 0.99999999999999034 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf8BPosPC";
	rename -uid "7EA15D7D-4654-73B3-35EE-61B64F5F70F1";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf8BPosGrpDM";
	rename -uid "EDCDEEA4-4FAC-9596-C93B-D3B7ACC04C5B";
createNode multMatrix -n "LipSurf8BPosGrpMM";
	rename -uid "8F97AF76-461E-A8C3-EB56-C7ABC665FDE9";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236469890099767 -1.0658141036401514e-14 0.99999999999999933 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LibSurf0APB";
	rename -uid "6C171FC8-40F0-22D0-2592-44A83D163D41";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf0PS";
	rename -uid "54320684-48B3-1623-23F1-8CB6F351AFBA";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf0ARM";
	rename -uid "1DBF8648-4310-0EBC-3823-F993C773D0D0";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf2APB";
	rename -uid "6CD5614B-4CB3-37EF-1DD6-8EA121068B79";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2ARM";
	rename -uid "B589D116-44D8-0B5E-2F2C-66B02BD596E1";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf2PS";
	rename -uid "EC29485F-444C-C2FA-BEE4-55AB951A7DD7";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf3APB";
	rename -uid "F94C8D44-4B48-74B9-C74B-DB986B2950DC";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3ARM";
	rename -uid "2A3FB2B8-433C-E004-430B-339DB263CE16";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf3PS";
	rename -uid "275D497C-4574-B0A4-484C-78A6E651AF4F";
	setAttr ".u" 0.375;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf4APB";
	rename -uid "0DFE38A0-44BF-0F00-A015-03AE2595BC70";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4ARM";
	rename -uid "1E62FA24-4AF6-19BE-7936-858D406F35CC";
	setAttr ".imx" 0.5;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode blendTwoAttr -n "LibACenterAB";
	rename -uid "AD51392F-419F-40A4-43D3-45BAC06D0F5D";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pointOnSurfaceInfo -n "LibSurf4PS";
	rename -uid "7952EF79-4413-35D7-CA4C-1694E25056C8";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf5APB";
	rename -uid "3DB883F3-402F-4272-4C0C-88BEB1BAECC2";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5ARM";
	rename -uid "340B6E02-4C3E-0985-2F0D-0EAD2E381E98";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf5PS";
	rename -uid "621A57D3-4092-4ED0-6AF0-3CBA07054C3A";
	setAttr ".u" 0.625;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf6APB";
	rename -uid "2B0A2998-42C7-F30A-5027-63A2233178E3";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6ARM";
	rename -uid "B507524F-441F-3E77-7ADD-82BF95D16342";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnSurfaceInfo -n "LibSurf6PS";
	rename -uid "36B01E18-40D0-10B9-4CB7-CDB061FDDB00";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf8APB";
	rename -uid "5084E898-453A-F066-6DB2-D8AC321F1E75";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf8PS";
	rename -uid "5276D3E0-4D11-2F79-A297-F0BF3441A6DB";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf8ARM";
	rename -uid "B6E3A204-4C6E-A0E0-D1E2-71AA32D8BA02";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf0BPB";
	rename -uid "5BE82171-4803-B47D-09A0-6283521E1C24";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf0BRM";
	rename -uid "8E6E2A9F-4C20-F5DF-C336-D6BAC0310D0D";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf2BPB";
	rename -uid "C33FA8A1-4864-540A-BA1F-2F915B6341FE";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2BRM";
	rename -uid "455CB27C-4BA9-9848-9B68-E5BB726D286C";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf3BPB";
	rename -uid "746012F8-47ED-1E1F-8C63-E38CC7D9AD7D";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3BRM";
	rename -uid "0525AFE5-493B-787E-4795-A5ABC0270FFB";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf4BPB";
	rename -uid "C468DEE7-4587-AB0D-4328-079153809060";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4BRM";
	rename -uid "046395E2-41F7-C8C8-9AB4-95AD2F2999B9";
	setAttr ".imx" 0.5;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode blendTwoAttr -n "LibBAB";
	rename -uid "A535D80E-4889-E1E4-8D53-26801B84D2DD";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pairBlend -n "LibSurf5BPB";
	rename -uid "EA9DCC0D-4A72-81C3-9D04-25ABB1820567";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5BRM";
	rename -uid "C26663B7-41C2-F846-F1CF-C29F1AE1C8AC";
	setAttr ".imx" 0.375;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf6BPB";
	rename -uid "78E565C5-45DA-4A13-24BA-DABEE3100284";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6BRM";
	rename -uid "DE0C3F15-416D-28E7-7949-F3BC8DD80E7D";
	setAttr ".imx" 0.25;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pairBlend -n "LibSurf8BPB";
	rename -uid "107DAEA0-4705-FF4D-1207-F586D983D35D";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf8BRM";
	rename -uid "8BD535A3-4EA7-7C39-9521-77902C0C5A4B";
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode loft -n "loft1";
	rename -uid "1ACA5A34-42ED-706C-55E8-E294D98C86A1";
	setAttr -s 2 ".ic";
	setAttr ".u" yes;
	setAttr ".rsn" yes;
createNode pairBlend -n "LipRightLocalPosPB";
	rename -uid "1206EE5C-47B8-2927-4593-FEBA03C67A1C";
	setAttr ".ri" 1;
createNode pairBlend -n "LipLeftLocalPosPB";
	rename -uid "DD671A9B-4C28-5886-E35D-C18BA3DA9F93";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip5WorldPB";
	rename -uid "375CCDC7-48DA-CDD1-2056-3A8CA7279C5F";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip1WorldPB";
	rename -uid "A54A9174-40C7-9295-767C-EFA9F77A99E4";
	setAttr ".ri" 1;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "855D0AA9-4F8E-3376-144C-288FD1570ADD";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode plusMinusAverage -n "LeftUpLipConerCtrlTransPM";
	rename -uid "9A2F709C-4CC8-2695-98DE-09817F8697BD";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftUpLipConerCtrlRotPM";
	rename -uid "ED44A1B8-4CA2-3AE1-74A9-07BB706DCF4D";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion1";
	rename -uid "982BABED-4E43-4C0A-2486-298FDF587873";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "151CF636-495F-4343-A50B-3F8CE106E616";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "C0BEB1A8-42E9-3158-14B8-C6948E881949";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "LeftDownLipConerCtrlRotPM";
	rename -uid "15277292-425A-A672-26CB-43A293F88047";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftDownLipConerCtrlTransPM";
	rename -uid "C3AACA76-4247-5A84-1B92-1FAD3C8847A7";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion4";
	rename -uid "8C39C44D-4D27-B2AE-AECA-1087F62E00A6";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "E9D4908D-44BA-EE71-84D2-7ABF756DBEA4";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "63F07DF7-4877-E8C6-1EF4-DEA03A66D2D2";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "RightUpLipConerCtrlTransPM";
	rename -uid "D804BD28-491C-F302-3848-04AD249DC773";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "RightUpLipConerCtrlRotPM";
	rename -uid "7612775E-435E-F47E-999D-7F9323E3741D";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion7";
	rename -uid "39616DC4-45BA-0ABC-1CEE-0AB95EED5297";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "1522FDF0-439F-3C8E-FD9B-BDBD51231568";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	rename -uid "46F8554B-49B4-F59F-0D9B-35B29388AE29";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "RightDownLipConerCtrlTransPM";
	rename -uid "A3194F08-40F5-02E2-67DB-728ABDC5ACAA";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "RightDownLipConerCtrlRotPM";
	rename -uid "6565BF3C-4578-1E12-4DC9-2EA178086F49";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion10";
	rename -uid "85E780CB-47FF-483E-85A1-60977F31056A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	rename -uid "E181D4B7-445D-7B56-AA2E-F4B70B142E11";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "C3C32B34-4E70-2B45-5A09-1084CA8988A0";
	setAttr ".cf" 57.295779513082323;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "51D95901-4763-8F9B-5862-4189006DC997";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 810\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 810\n            -height 517\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 810\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1627\n            -height 1078\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"look\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1627\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1627\\n    -height 1078\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B8CA2F5C-469B-2A61-3F5B-89B4B3AFE2FF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode pairBlend -n "RightDnLipCrvPoserMiddlePB";
	rename -uid "E27B3E03-4121-9372-7D41-EFA2DAAE01B4";
	setAttr ".ri" 1;
createNode pairBlend -n "RightUpLipPoserMiddlePB";
	rename -uid "E7A37BB7-40A1-AE52-9B04-E5A6FB9119D2";
	setAttr ".ri" 1;
createNode pairBlend -n "LeftUpLipPoserMiddlePbw";
	rename -uid "F75BE0FF-4A5A-9E42-D6E4-16947920C5A7";
	setAttr ".ri" 1;
createNode pairBlend -n "LeftDnLipCrvPoserMiddlePbw";
	rename -uid "EA045723-4290-D740-C63C-BCBC571D0477";
	setAttr ".ri" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "68BC12B4-407C-6393-0A5C-B6BB44D247BB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -751.1904463408498 -763.09520777255898 ;
	setAttr ".tgi[0].vh" -type "double2" 751.1904463408498 761.90473162938804 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
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
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 32 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
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
	setAttr -av ".outf";
	setAttr -av ".imfkey";
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
	setAttr -av ".pff";
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
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
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
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "LipModeRvs.ox" "LipCtrlGrp.tmp";
connectAttr "LipRootPoser.r" "LipMainRootCnt.r";
connectAttr "CenterUpLipMRootCntPC.p" "LipMainRootCnt.t";
connectAttr "makeNurbCircle14.oc" "LipMainCtrlShape.cr";
connectAttr "LipRootPoser.r" "RightLipConerRootCnt.r";
connectAttr "RightLipConerRootCntPC.p" "RightLipConerRootCnt.t";
connectAttr "RightCornerUpLipPoser.r" "RightLipConerCtrlGrp.r";
connectAttr "LipRootPoser.r" "RightUpLipBRootCnt.r";
connectAttr "RightUpLipBRootCntPC.p" "RightUpLipBRootCnt.t";
connectAttr "RightUpLipPoser.r" "RightUpLipBCtrlCnt.r";
connectAttr "UpLip2CrvPosPosBRotPB.or" "RightUpLipBCtrlGrp.r";
connectAttr "LipRootPoser.r" "RightUpLipARootCnt.r";
connectAttr "RightUpLipARootCntPC.p" "RightUpLipARootCnt.t";
connectAttr "RightUpLipPoserMiddlePB.or" "RightUpLipACtrlCnt.r";
connectAttr "UpLip2CrvPosARotPB.or" "RightUpLipACtrlGrp.r";
connectAttr "LipRootPoser.r" "CenterUpLipMRootCnt.r";
connectAttr "CenterUpLipMRootCntPC.p" "CenterUpLipMRootCnt.t";
connectAttr "MiddleUpLipPoser.r" "CenterUpLipMCtrlOffGrp.r";
connectAttr "MiddleUpLipPos.r" "CenterUpLipMCtrlGrp.r";
connectAttr "LipRootPoser.r" "LeftUpLipARootCnt.r";
connectAttr "LeftUpLipARootCntPC.p" "LeftUpLipARootCnt.t";
connectAttr "LeftUpLipPoserMiddlePbw.or" "LeftUpLipACtrlOffGrp.r";
connectAttr "UpLip4CrvPosARotPB.or" "LeftUpLipACtrlGrp.r";
connectAttr "LipRootPoser.r" "LeftUpLipBRootCnt.r";
connectAttr "LeftUpLipBRootCntPC.p" "LeftUpLipBRootCnt.t";
connectAttr "LeftUpLipPoser.r" "LeftUpLipBCtrlOffGrp.r";
connectAttr "UpLip4CrvPosBRotPB.or" "LeftUpLipBCtrlGrp.r";
connectAttr "LipRootPoser.r" "LeftLipConerRootCnt.r";
connectAttr "LeftLipConerRootCntPC.p" "LeftLipConerRootCnt.t";
connectAttr "LeftCornerUpLipPoser.r" "LeftLipConerCtrlGrp.r";
connectAttr "makeNurbCircle15.oc" "LeftLipConerCtrlShape.cr";
connectAttr "LipRootPoser.r" "LeftDownLipBRootCnt.r";
connectAttr "LeftDownLipBRootCntPC.p" "LeftDownLipBRootCnt.t";
connectAttr "LeftDnLipCrvPoser.r" "LeftDownLipBCtrlOffGrp.r";
connectAttr "DownLip4CrvPosPosBRotPB.or" "LeftDownLipBCtrlGrp.r";
connectAttr "LipRootPoser.r" "LeftDownLipARootCnt.r";
connectAttr "LeftDownLipARootCntPC.p" "LeftDownLipARootCnt.t";
connectAttr "LeftDnLipCrvPoserMiddlePbw.or" "LeftDownLipACtrlOffGrp.r";
connectAttr "DownLip4CrvPosARotPB.or" "LeftDownLipACtrlGrp.r";
connectAttr "LipRootPoser.r" "CenterDownLipMRootCnt.r";
connectAttr "CenterDownLipMRootCntPC.p" "CenterDownLipMRootCnt.t";
connectAttr "MiddleDnLipCrvPoser.r" "CenterDownLipMCtrlOffGrp.r";
connectAttr "MiddleDnLipCrvPos.r" "CenterDownLipMCtrlGrp.r";
connectAttr "LipRootPoser.r" "RightDownLipARootCnt.r";
connectAttr "RightDownLipARootCntPC.p" "RightDownLipARootCnt.t";
connectAttr "RightDnLipCrvPoserMiddlePB.or" "RightDownLipACtrlCnt.r";
connectAttr "DownLip2CrvPosARotPB.or" "RightDownLipACtrlGrp.r";
connectAttr "LipRootPoser.r" "RightDownLipBRootCnt.r";
connectAttr "RightDownLipBRootCntPC.p" "RightDownLipBRootCnt.t";
connectAttr "RightDnLipCrvPoser.r" "RightDownLipBCtrlCnt.r";
connectAttr "DownLip2CrvPosBRotPB.or" "RightDownLipBCtrlGrp.r";
connectAttr "LibSurf0APosPC.p" "LipSurf0APosGrp.t";
connectAttr "LipSurf0APosGrpDM.or" "LipSurf0APosGrp.r";
connectAttr "RightCornerUpLipPos.r" "LipSurf0APos.r";
connectAttr "LibSurf2APosPC.p" "LipSurf2APosGrp.t";
connectAttr "LipSurf2APosGrpDM.or" "LipSurf2APosGrp.r";
connectAttr "UpLip2CrvPosPosBRotPB.or" "LipSurf2APos.r";
connectAttr "LibSurf3APosPC.p" "LipSurf3APosGrp.t";
connectAttr "LipSurf3APosGrpDM.or" "LipSurf3APosGrp.r";
connectAttr "UpLip2CrvPosARotPB.or" "LipSurf3APos.r";
connectAttr "LibSurf4APosPC.p" "LipSurf4APosGrp.t";
connectAttr "LipSurf4APosGrpDM.or" "LipSurf4APosGrp.r";
connectAttr "MiddleUpLipPos.r" "LipSurf4APos.r";
connectAttr "LibSurf5APosPC.p" "LipSurf5APosGrp.t";
connectAttr "LipSurf5APosGrpDM.or" "LipSurf5APosGrp.r";
connectAttr "UpLip4CrvPosARotPB.or" "LipSurf5APos.r";
connectAttr "LibSurf6APosPC.p" "LipSurf6APosGrp.t";
connectAttr "LipSurf6APosGrpDM.or" "LipSurf6APosGrp.r";
connectAttr "UpLip4CrvPosBRotPB.or" "LipSurf6APos.r";
connectAttr "LibSurf8APosPC.p" "LipSurf8APosGrp.t";
connectAttr "LipSurf8APosGrpDM.or" "LipSurf8APosGrp.r";
connectAttr "LeftCornerUpLipPos.r" "LipSurf8APos.r";
connectAttr "LibSurf0BPosPC.p" "LipSurf0BPosGrp.t";
connectAttr "LipSurf0BPosGrpDM.or" "LipSurf0BPosGrp.r";
connectAttr "RightCornerUpLipPos.r" "LipSurf0BPos.r";
connectAttr "LibSurf2BPosPC.p" "LipSurf2BPosGrp.t";
connectAttr "LipSurf2BPosGrpDM.or" "LipSurf2BPosGrp.r";
connectAttr "DownLip2CrvPosBRotPB.or" "LipSurf2BPos.r";
connectAttr "LibSurf3BPosPC.p" "LipSurf3BPosGrp.t";
connectAttr "LipSurf3BPosGrpDM.or" "LipSurf3BPosGrp.r";
connectAttr "DownLip2CrvPosARotPB.or" "LipSurf3BPos.r";
connectAttr "LibSurf4BPosPC.p" "LipSurf4BPosGrp.t";
connectAttr "LipSurf4BPosGrpDM.or" "LipSurf4BPosGrp.r";
connectAttr "MiddleDnLipCrvPos.r" "LipSurf4BPos.r";
connectAttr "LibSurf5BPosPC.p" "LipSurf5BPosGrp.t";
connectAttr "LipSurf5BPosGrpDM.or" "LipSurf5BPosGrp.r";
connectAttr "DownLip4CrvPosARotPB.or" "LipSurf5BPos.r";
connectAttr "LibSurf6BPosPC.p" "LipSurf6BPosGrp.t";
connectAttr "LipSurf6BPosGrpDM.or" "LipSurf6BPosGrp.r";
connectAttr "DownLip4CrvPosPosBRotPB.or" "LipSurf6BPos.r";
connectAttr "LibSurf8BPosPC.p" "LipSurf8BPosGrp.t";
connectAttr "LipSurf8BPosGrpDM.or" "LipSurf8BPosGrp.r";
connectAttr "LeftCornerUpLipPos.r" "LipSurf8BPos.r";
connectAttr "LibSurf0APB.ot" "LipSurf0AZipPos.t";
connectAttr "LibSurf2APB.ot" "LipSurf2AZipPos.t";
connectAttr "LibSurf3APB.ot" "LipSurf3AZipPos.t";
connectAttr "LibSurf4APB.ot" "LipSurf4AZipPos.t";
connectAttr "MiddleUpLipPoser.r" "LipSurf4AZipPos.r";
connectAttr "LibSurf5APB.ot" "LipSurf5AZipPos.t";
connectAttr "LibSurf6APB.ot" "LipSurf6AZipPos.t";
connectAttr "LeftUpLipPoser.r" "LipSurf6AZipPos.r";
connectAttr "LibSurf8APB.ot" "LipSurf8AZipPos.t";
connectAttr "LeftCornerUpLipPoser.r" "LipSurf8AZipPos.r";
connectAttr "LibSurf0BPB.ot" "LipSurf0BZipPos.t";
connectAttr "LibSurf2BPB.ot" "LipSurf2BZipPos.t";
connectAttr "LibSurf3BPB.ot" "LipSurf3BZipPos.t";
connectAttr "LibSurf4BPB.ot" "LipSurf4BZipPos.t";
connectAttr "MiddleDnLipCrvPoser.r" "LipSurf4BZipPos.r";
connectAttr "LibSurf5BPB.ot" "LipSurf5BZipPos.t";
connectAttr "LibSurf6BPB.ot" "LipSurf6BZipPos.t";
connectAttr "LeftDnLipCrvPoser.r" "LipSurf6BZipPos.r";
connectAttr "LibSurf8BPB.ot" "LipSurf8BZipPos.t";
connectAttr "LeftCornerUpLipPoser.r" "LipSurf8BZipPos.r";
connectAttr "loft1.os" "LibZipSurfShape.cr";
connectAttr "LipModeRvs.ox" "LipPosCrvGrp.v";
connectAttr "LipDownPosCrvShapeOrig.ws" "LipDownPosCrvShape.cr";
connectAttr "DownLip1CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[0]";
connectAttr "DownLip1CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[1]";
connectAttr "RightDnLipCrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[2]";
connectAttr "MiddleDnLipCrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[3]";
connectAttr "LeftDnLipCrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[4]";
connectAttr "DownLip5CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[5]";
connectAttr "DownLip5CrvPosShape.wp" "LipDownPosCrvShapeOrig.cp[6]";
connectAttr "LipUpPosCrvShapeOrig.ws" "LipUpPosCrvShape.cr";
connectAttr "UpLip1CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[0]";
connectAttr "UpLip1CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[1]";
connectAttr "RightUpLipPosShape.wp" "LipUpPosCrvShapeOrig.cp[2]";
connectAttr "MiddleUpLipPosShape.wp" "LipUpPosCrvShapeOrig.cp[3]";
connectAttr "LeftUpLipPosShape.wp" "LipUpPosCrvShapeOrig.cp[4]";
connectAttr "UpLip5CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[5]";
connectAttr "UpLip5CrvPosShape.wp" "LipUpPosCrvShapeOrig.cp[6]";
connectAttr "LipWorldLoc.r" "LipLocalLoc.r";
connectAttr "LipWorldLoc.t" "LipLocalLoc.t";
connectAttr "LipWorldLoc.s" "LipLocalLoc.s";
connectAttr "LipRightLocalPosPB.or" "LipDownRightLocalPos.r";
connectAttr "LipLeftLocalPosPB.or" "LipDownLeftLocalPos.r";
connectAttr "LipModeRvs.ox" "LipPosersGrp.v";
connectAttr "LipMainCtrl.t" "LipMainUpCnt.t";
connectAttr "LipMainCtrl.r" "LipMainUpCnt.r";
connectAttr "UpLipMainCtrl.r" "UpLipMainCnt.r";
connectAttr "UpLipMainCtrl.t" "UpLipMainCnt.t";
connectAttr "LeftUpLipPos.r" "RightUpLipPos.r";
connectAttr "LeftUpLipPos.t" "RightUpLipPos.t";
connectAttr "LipMainCtrl.t" "LipMainDownCnt.t";
connectAttr "LipMainCtrl.r" "LipMainDownCnt.r";
connectAttr "DownLipMainCtrl.t" "DownLipMainCnt.t";
connectAttr "DownLipMainCtrl.r" "DownLipMainCnt.r";
connectAttr "LeftDnLipCrvPos.r" "RightDnLipCrvPos.r";
connectAttr "LeftDnLipCrvPos.t" "RightDnLipCrvPos.t";
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
connectAttr "LipModeRvs.ox" "LipCtrlCrvGrp.tmp";
connectAttr "LipCtrlCrvShapeOrig.ws" "LipCtrlCrvShape.cr";
connectAttr "LipRootPoser.jointVis" "LipJntGrp.v";
connectAttr "LipSurf0AZipPos.t" "RightUpLipConerJntGrp.t";
connectAttr "RightCornerUpLipPoser.r" "RightUpLipConerJntOffGrp.r";
connectAttr "RightUpLipConerCtrlTransPM.o3" "RightUpLipConerJnt.t";
connectAttr "unitConversion9.o" "RightUpLipConerJnt.r";
connectAttr "LipSurf2AZipPos.t" "RightUpLipBJntGrp.t";
connectAttr "RightUpLipPoser.r" "RightUpLipBJntOffGrp.r";
connectAttr "RightUpLipBCtrl.t" "RightUpLipBJnt.t";
connectAttr "RightUpLipBCtrl.r" "RightUpLipBJnt.r";
connectAttr "RightUpLipBCtrl.s" "RightUpLipBJnt.s";
connectAttr "LipSurf3AZipPos.t" "RightUpLipAJntGrp.t";
connectAttr "RightUpLipPoserMiddlePB.or" "RightUpLipAJntOffGrp.r";
connectAttr "RightUpLipACtrl.t" "RightUpLipAJnt.t";
connectAttr "RightUpLipACtrl.r" "RightUpLipAJnt.r";
connectAttr "RightUpLipACtrl.s" "RightUpLipAJnt.s";
connectAttr "LipSurf4AZipPos.t" "CenterUpLipMJntGrp.t";
connectAttr "LipSurf4AZipPos.r" "CenterUpLipMJntGrp.r";
connectAttr "CenterUpLipMCtrl.t" "CenterUpLipMJnt.t";
connectAttr "CenterUpLipMCtrl.r" "CenterUpLipMJnt.r";
connectAttr "CenterUpLipMCtrl.s" "CenterUpLipMJnt.s";
connectAttr "LipSurf5AZipPos.t" "LeftUpLipAJntGrp.t";
connectAttr "LeftUpLipPoserMiddlePbw.or" "LeftUpLipAJntGrp.r";
connectAttr "LeftUpLipACtrl.t" "LeftUpLipAJnt.t";
connectAttr "LeftUpLipACtrl.r" "LeftUpLipAJnt.r";
connectAttr "LeftUpLipACtrl.s" "LeftUpLipAJnt.s";
connectAttr "LipSurf6AZipPos.t" "LeftUpLipBJntGrp.t";
connectAttr "LipSurf6AZipPos.r" "LeftUpLipBJntGrp.r";
connectAttr "LeftUpLipBCtrl.t" "LeftUpLipBJnt.t";
connectAttr "LeftUpLipBCtrl.r" "LeftUpLipBJnt.r";
connectAttr "LeftUpLipBCtrl.s" "LeftUpLipBJnt.s";
connectAttr "LipSurf8AZipPos.t" "LeftUpLipConerJntGrp.t";
connectAttr "LipSurf8AZipPos.r" "LeftUpLipConerJntGrp.r";
connectAttr "LeftUpLipConerCtrlTransPM.o3" "LeftUpLipConerJnt.t";
connectAttr "unitConversion3.o" "LeftUpLipConerJnt.r";
connectAttr "LipSurf8BZipPos.t" "LeftDownLipConerJntGrp.t";
connectAttr "LipSurf8BZipPos.r" "LeftDownLipConerJntGrp.r";
connectAttr "LeftDownLipConerCtrlTransPM.o3" "LeftDownLipConerJnt.t";
connectAttr "unitConversion6.o" "LeftDownLipConerJnt.r";
connectAttr "LipSurf6BZipPos.t" "LeftDownLipBJntGrp.t";
connectAttr "LipSurf6BZipPos.r" "LeftDownLipBJntGrp.r";
connectAttr "LeftDownLipBCtrl.t" "LeftDownLipBJnt.t";
connectAttr "LeftDownLipBCtrl.r" "LeftDownLipBJnt.r";
connectAttr "LeftDownLipBCtrl.s" "LeftDownLipBJnt.s";
connectAttr "LipSurf5BZipPos.t" "LeftDownLipAJntGrp.t";
connectAttr "LeftDnLipCrvPoserMiddlePbw.or" "LeftDownLipAJntGrp.r";
connectAttr "LeftDownLipACtrl.t" "LeftDownLipAJnt.t";
connectAttr "LeftDownLipACtrl.r" "LeftDownLipAJnt.r";
connectAttr "LeftDownLipACtrl.s" "LeftDownLipAJnt.s";
connectAttr "LipSurf4BZipPos.t" "CenterDownLipMJntGrp.t";
connectAttr "LipSurf4BZipPos.r" "CenterDownLipMJntGrp.r";
connectAttr "CenterDownLipMCtrl.t" "CenterDownLipMJnt.t";
connectAttr "CenterDownLipMCtrl.r" "CenterDownLipMJnt.r";
connectAttr "CenterDownLipMCtrl.s" "CenterDownLipMJnt.s";
connectAttr "LipSurf3BZipPos.t" "RightDownLipAJntGrp.t";
connectAttr "RightDnLipCrvPoserMiddlePB.or" "RightDownLipAJntOffGrp.r";
connectAttr "RightDownLipACtrl.t" "RightDownLipAJnt.t";
connectAttr "RightDownLipACtrl.r" "RightDownLipAJnt.r";
connectAttr "RightDownLipACtrl.s" "RightDownLipAJnt.s";
connectAttr "LipSurf2BZipPos.t" "RightDownLipBJntGrp.t";
connectAttr "RightDnLipCrvPoser.r" "RightDownLipBJntOffGrp.r";
connectAttr "RightDownLipBCtrl.t" "RightDownLipBJnt.t";
connectAttr "RightDownLipBCtrl.r" "RightDownLipBJnt.r";
connectAttr "RightDownLipBCtrl.s" "RightDownLipBJnt.s";
connectAttr "LipSurf0BZipPos.t" "RightDownLipConerJntGrp.t";
connectAttr "RightCornerUpLipPoser.r" "RightDownLipConerJntOffGrp.r";
connectAttr "RightDownLipConerCtrlTransPM.o3" "RightDownLipConerJnt.t";
connectAttr "unitConversion10.o" "RightDownLipConerJnt.r";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "LipRootPoser.mode" "LipModeRvs.ix";
connectAttr "LipCtrlCrvShape.ws" "CenterUpLipMRootCntPC.ic";
connectAttr "LipCtrlCrvShape.ws" "RightLipConerRootCntPC.ic";
connectAttr "RightLipConerCtrl.t" "RightLipConerCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightUpLipBRootCntPC.ic";
connectAttr "RightUpLipPos.r" "UpLip2CrvPosPosBRotPB.ir2";
connectAttr "UpLip2CrvPosPosBRotPBwML.o" "UpLip2CrvPosPosBRotPB.w";
connectAttr "RightUpLipPos.BPbw" "UpLip2CrvPosPosBRotPBwML.i1";
connectAttr "RightUpLipBCtrl.t" "RightUpLipBCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightUpLipARootCntPC.ic";
connectAttr "RightUpLipPos.r" "UpLip2CrvPosARotPB.ir2";
connectAttr "UpLip2CrvPosARotPBwML.o" "UpLip2CrvPosARotPB.w";
connectAttr "RightUpLipPos.APbw" "UpLip2CrvPosARotPBwML.i1";
connectAttr "RightUpLipACtrl.t" "RightUpLipACtrlRvsMultMD.i1";
connectAttr "CenterUpLipMCtrl.t" "CenterUpLipMCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftUpLipARootCntPC.ic";
connectAttr "LeftUpLipPos.r" "UpLip4CrvPosARotPB.ir2";
connectAttr "UpLip4CrvPosARotPBwML.o" "UpLip4CrvPosARotPB.w";
connectAttr "LeftUpLipPos.APbw" "UpLip4CrvPosARotPBwML.i1";
connectAttr "LeftUpLipACtrl.t" "LeftUpLipACtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftUpLipBRootCntPC.ic";
connectAttr "LeftUpLipPos.r" "UpLip4CrvPosBRotPB.ir2";
connectAttr "UpLip4CrvPosBRotPBwML.o" "UpLip4CrvPosBRotPB.w";
connectAttr "LeftUpLipPos.BPbw" "UpLip4CrvPosBRotPBwML.i1";
connectAttr "LeftUpLipBCtrl.t" "LeftUpLipBCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftLipConerRootCntPC.ic";
connectAttr "LeftLipConerCtrl.t" "LeftLipConerCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftDownLipBRootCntPC.ic";
connectAttr "LeftDnLipCrvPos.r" "DownLip4CrvPosPosBRotPB.ir2";
connectAttr "DownLip4CrvPosPosBRotPBwML.o" "DownLip4CrvPosPosBRotPB.w";
connectAttr "LeftDnLipCrvPos.BPbw" "DownLip4CrvPosPosBRotPBwML.i1";
connectAttr "LeftDownLipBCtrl.t" "LeftDownLipBCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftDownLipARootCntPC.ic";
connectAttr "LeftDnLipCrvPos.r" "DownLip4CrvPosARotPB.ir2";
connectAttr "DownLip4CrvPosARotPBwML.o" "DownLip4CrvPosARotPB.w";
connectAttr "LeftDnLipCrvPos.APbw" "DownLip4CrvPosARotPBwML.i1";
connectAttr "LeftDownLipACtrl.t" "LeftDownLipACtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "CenterDownLipMRootCntPC.ic";
connectAttr "CenterDownLipMCtrl.t" "CenterDownLipMCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightDownLipARootCntPC.ic";
connectAttr "RightDnLipCrvPos.r" "DownLip2CrvPosARotPB.ir2";
connectAttr "DownLip2CrvPosARotPBwML.o" "DownLip2CrvPosARotPB.w";
connectAttr "RightDnLipCrvPos.APbw" "DownLip2CrvPosARotPBwML.i1";
connectAttr "RightDownLipACtrl.t" "RightDownLipACtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightDownLipBRootCntPC.ic";
connectAttr "RightDnLipCrvPos.r" "DownLip2CrvPosBRotPB.ir2";
connectAttr "DownLip2CrvPosBRotPBwML.o" "DownLip2CrvPosBRotPB.w";
connectAttr "RightDnLipCrvPos.BPbw" "DownLip2CrvPosBRotPBwML.i1";
connectAttr "RightDownLipBCtrl.t" "RightDownLipBCtrlRvsMultMD1.i1";
connectAttr "LipUpPosCrvShape.ws" "LibSurf0APosPC.ic";
connectAttr "LipSurf0APosGrpMM.o" "LipSurf0APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf0APosGrpMM.i[3]";
connectAttr "LipSurf0APosGrp.pim" "LipSurf0APosGrpMM.i[4]";
connectAttr "LipUpPosCrvShape.ws" "LibSurf2APosPC.ic";
connectAttr "LipSurf2APosGrpMM.o" "LipSurf2APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf2APosGrpMM.i[3]";
connectAttr "LipSurf2APosGrp.pim" "LipSurf2APosGrpMM.i[4]";
connectAttr "LipUpPosCrvShape.ws" "LibSurf3APosPC.ic";
connectAttr "LipSurf3APosGrpMM.o" "LipSurf3APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf3APosGrpMM.i[3]";
connectAttr "LipSurf3APosGrp.pim" "LipSurf3APosGrpMM.i[4]";
connectAttr "LipUpPosCrvShape.ws" "LibSurf4APosPC.ic";
connectAttr "LipSurf4APosGrpMM.o" "LipSurf4APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf4APosGrpMM.i[3]";
connectAttr "LipSurf4APosGrp.pim" "LipSurf4APosGrpMM.i[4]";
connectAttr "LipUpPosCrvShape.ws" "LibSurf5APosPC.ic";
connectAttr "LipSurf5APosGrpMM.o" "LipSurf5APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf5APosGrpMM.i[3]";
connectAttr "LipSurf5APosGrp.pim" "LipSurf5APosGrpMM.i[4]";
connectAttr "LipUpPosCrvShape.ws" "LibSurf6APosPC.ic";
connectAttr "LipSurf6APosGrpMM.o" "LipSurf6APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf6APosGrpMM.i[3]";
connectAttr "LipSurf6APosGrp.pim" "LipSurf6APosGrpMM.i[4]";
connectAttr "LipUpPosCrvShape.ws" "LibSurf8APosPC.ic";
connectAttr "LipSurf8APosGrpMM.o" "LipSurf8APosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf8APosGrpMM.i[3]";
connectAttr "LipSurf8APosGrp.pim" "LipSurf8APosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf0BPosPC.ic";
connectAttr "LipSurf0BPosGrpMM.o" "LipSurf0BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf0BPosGrpMM.i[3]";
connectAttr "LipSurf0BPosGrp.pim" "LipSurf0BPosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf2BPosPC.ic";
connectAttr "LipSurf2BPosGrpMM.o" "LipSurf2BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf2BPosGrpMM.i[3]";
connectAttr "LipSurf2BPosGrp.pim" "LipSurf2BPosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf3BPosPC.ic";
connectAttr "LipSurf3BPosGrpMM.o" "LipSurf3BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf3BPosGrpMM.i[3]";
connectAttr "LipSurf3BPosGrp.pim" "LipSurf3BPosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf4BPosPC.ic";
connectAttr "LipSurf4BPosGrpMM.o" "LipSurf4BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf4BPosGrpMM.i[3]";
connectAttr "LipSurf4BPosGrp.pim" "LipSurf4BPosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf5BPosPC.ic";
connectAttr "LipSurf5BPosGrpMM.o" "LipSurf5BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf5BPosGrpMM.i[3]";
connectAttr "LipSurf5BPosGrp.pim" "LipSurf5BPosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf6BPosPC.ic";
connectAttr "LipSurf6BPosGrpMM.o" "LipSurf6BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf6BPosGrpMM.i[3]";
connectAttr "LipSurf6BPosGrp.pim" "LipSurf6BPosGrpMM.i[4]";
connectAttr "LipDownPosCrvShape.ws" "LibSurf8BPosPC.ic";
connectAttr "LipSurf8BPosGrpMM.o" "LipSurf8BPosGrpDM.imat";
connectAttr "LipRootPoser.wm" "LipSurf8BPosGrpMM.i[3]";
connectAttr "LipSurf8BPosGrp.pim" "LipSurf8BPosGrpMM.i[4]";
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
connectAttr "LeftLipConerCtrl.t" "LeftUpLipConerCtrlTransPM.i3[0]";
connectAttr "LeftUpLipConerCtrl.t" "LeftUpLipConerCtrlTransPM.i3[1]";
connectAttr "unitConversion1.o" "LeftUpLipConerCtrlRotPM.i3[0]";
connectAttr "unitConversion2.o" "LeftUpLipConerCtrlRotPM.i3[1]";
connectAttr "LeftUpLipConerCtrl.r" "unitConversion1.i";
connectAttr "LeftLipConerCtrl.r" "unitConversion2.i";
connectAttr "LeftUpLipConerCtrlRotPM.o3" "unitConversion3.i";
connectAttr "unitConversion4.o" "LeftDownLipConerCtrlRotPM.i3[0]";
connectAttr "unitConversion5.o" "LeftDownLipConerCtrlRotPM.i3[1]";
connectAttr "LeftLipConerCtrl.t" "LeftDownLipConerCtrlTransPM.i3[0]";
connectAttr "LeftDownLipConerCtrl.t" "LeftDownLipConerCtrlTransPM.i3[1]";
connectAttr "LeftDownLipConerCtrl.r" "unitConversion4.i";
connectAttr "LeftDownLipConerCtrl.r" "unitConversion5.i";
connectAttr "LeftDownLipConerCtrlRotPM.o3" "unitConversion6.i";
connectAttr "RightUpLipConerCtrl.t" "RightUpLipConerCtrlTransPM.i3[0]";
connectAttr "RightLipConerCtrl.t" "RightUpLipConerCtrlTransPM.i3[1]";
connectAttr "unitConversion7.o" "RightUpLipConerCtrlRotPM.i3[0]";
connectAttr "unitConversion8.o" "RightUpLipConerCtrlRotPM.i3[1]";
connectAttr "RightUpLipConerCtrl.r" "unitConversion7.i";
connectAttr "RightLipConerCtrl.r" "unitConversion8.i";
connectAttr "RightUpLipConerCtrlRotPM.o3" "unitConversion9.i";
connectAttr "RightDownLipConerCtrl.t" "RightDownLipConerCtrlTransPM.i3[0]";
connectAttr "RightLipConerCtrl.t" "RightDownLipConerCtrlTransPM.i3[1]";
connectAttr "unitConversion11.o" "RightDownLipConerCtrlRotPM.i3[0]";
connectAttr "unitConversion12.o" "RightDownLipConerCtrlRotPM.i3[1]";
connectAttr "RightDownLipConerCtrlRotPM.o3" "unitConversion10.i";
connectAttr "RightDownLipConerCtrl.r" "unitConversion11.i";
connectAttr "RightLipConerCtrl.r" "unitConversion12.i";
connectAttr "RightDnLipCrvPoser.r" "RightDnLipCrvPoserMiddlePB.ir2";
connectAttr "RightDnLipCrvPoser.MiddlePbw" "RightDnLipCrvPoserMiddlePB.w";
connectAttr "RightUpLipPoser.r" "RightUpLipPoserMiddlePB.ir2";
connectAttr "RightUpLipPoser.MiddlePbw" "RightUpLipPoserMiddlePB.w";
connectAttr "LeftUpLipPoser.r" "LeftUpLipPoserMiddlePbw.ir2";
connectAttr "LeftUpLipPoser.MiddlePbw" "LeftUpLipPoserMiddlePbw.w";
connectAttr "LeftDnLipCrvPoser.r" "LeftDnLipCrvPoserMiddlePbw.ir2";
connectAttr "LeftDnLipCrvPoser.MiddlePbw" "LeftDnLipCrvPoserMiddlePbw.w";
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "LeftUpLipConerCtrlTransPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftUpLipConerCtrlRotPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftDownLipConerCtrlRotPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftDownLipConerCtrlTransPM.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightUpLipConerCtrlTransPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightUpLipConerCtrlRotPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightDownLipConerCtrlTransPM.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightDownLipConerCtrlRotPM.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "LibZipSurfShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
// End of lipCtrl07.ma
