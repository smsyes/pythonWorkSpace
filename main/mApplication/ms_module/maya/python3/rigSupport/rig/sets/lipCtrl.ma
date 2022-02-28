//Maya ASCII 2022 scene
//Name: lipCtrl.ma
//Last modified: Fri, Feb 25, 2022 10:18:18 AM
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
fileInfo "UUID" "0459797C-4CDC-4EDF-5983-74A90879D9AE";
createNode transform -s -n "persp";
	rename -uid "24AFC290-4E1F-843E-8E8B-B1A721B50907";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.0174195651516165 8.1238508066863879 6.110927376581472 ;
	setAttr ".r" -type "double3" -43.538352729609429 47.000000000002785 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EE55B1AF-496F-A9D2-1BC1-0AB85A0C3648";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.272002218401191;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "39436890-4572-E7ED-E16E-AD8DCB53C320";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9FCEFDF2-4398-1846-05C6-C5AE1EC12318";
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
	rename -uid "A618856D-4EEB-2231-FCAF-A19A5EE66B09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AA9C47A3-4B55-135F-BC8B-EB9D01A643C6";
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
	rename -uid "C4F8BFF6-4699-7828-94E6-1A8FF7836DEA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "464037E9-40C2-972E-598A-80BD5994720E";
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
	rename -uid "474CC099-441F-CECB-9521-49B321F7A632";
createNode transform -n "LipCtrlGrp" -p "LipRigGrp";
	rename -uid "F0AF62A1-406F-1C9C-293B-C597F5B02715";
	setAttr -av ".ovdt";
	setAttr ".t" -type "double3" -2.7794001988259344e-08 1.2612133559741778e-13 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipMainRootCnt" -p "LipCtrlGrp";
	rename -uid "CE803FF2-4066-07EB-D797-F184F781CA04";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipMainCtrlOffGrp" -p "LipMainRootCnt";
	rename -uid "75762A58-4093-4EE5-5143-918D1AD84E37";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "LipMainCtrlGrp" -p "LipMainCtrlOffGrp";
	rename -uid "1842B1F0-427B-A3A7-B99A-D39B36EA1E58";
createNode transform -n "LipMainCtrl" -p "LipMainCtrlGrp";
	rename -uid "329ADFCE-4455-08F2-C1F2-DBA3C08883C0";
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
	rename -uid "F7BB01EB-4A19-3E12-8526-ADA78DD6B11B";
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
	rename -uid "EBFD2EE6-4AD5-F9C5-56BB-78986A8F910C";
createNode transform -n "UpLipMainCtrl" -p "UpLipMainCtrlOffGrp";
	rename -uid "7B92296B-4978-8848-DEC4-3B9578EE1C59";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "UpLipMainCtrlShape" -p "UpLipMainCtrl";
	rename -uid "20D6DDAE-40F9-8D67-27F9-458EDDE2A906";
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
	rename -uid "21E7D439-465A-B065-DD8B-37903C85629C";
createNode transform -n "DownLipMainCtrl" -p "DownLipMainCtrlOffGrp";
	rename -uid "87D0AB4C-41E8-5A76-C052-5CB5AEAE2156";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "DownLipMainCtrlShape" -p "DownLipMainCtrl";
	rename -uid "DEE9FA9A-4B21-218E-3FDB-3A9A1DC497DE";
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
	rename -uid "97067A0C-4530-4688-385F-6A8C971037F7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightLipConerCtrlOffGrp" -p "RightLipConerRootCnt";
	rename -uid "9FFE755B-4A1A-6C79-CC33-FDA8809188DD";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999956 -1.0000000000000004 ;
createNode transform -n "RightLipConerCtrlGrp" -p "RightLipConerCtrlOffGrp";
	rename -uid "DFA1F940-4D07-3583-DB14-F78D3F038584";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightLipConerCtrl" -p "RightLipConerCtrlGrp";
	rename -uid "25C41B98-413C-CC39-1E6C-FC82877DF7F9";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "RightLipConerCtrlShape" -p "RightLipConerCtrl";
	rename -uid "8E4F68B1-408E-1EA2-0CB3-60BB4E66975A";
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
	rename -uid "B3FB024A-413D-4FFE-F39C-AC90999AC0B9";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "RightUpLipConerCtrl" -p "RightUpLipConerCtrlGrp";
	rename -uid "6F66A928-476C-E18A-AC87-4AB84EE5B62E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipConerCtrlShape" -p "RightUpLipConerCtrl";
	rename -uid "C4FF34F1-4699-B736-D668-A2B18E69D679";
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
	rename -uid "A3204064-4095-69AD-F378-CABFF6658842";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipConerCtrl" -p "RightDownLipConerCtrlGrp";
	rename -uid "2DFC7E23-469A-34F5-13AA-408C5BD65C08";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipConerCtrlShape" -p "RightDownLipConerCtrl";
	rename -uid "D359A92F-47A0-4CA7-57B5-2ABC67F61C42";
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
	rename -uid "AA981900-459F-34CC-1F0C-098B1C543051";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipBCtrlOffGrp" -p "RightUpLipBRootCnt";
	rename -uid "7183D465-4A13-39DF-E992-E5B3BCD41D63";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode transform -n "RightUpLipBCtrlCnt" -p "RightUpLipBCtrlOffGrp";
	rename -uid "20D43488-4AE9-2563-F60B-7A9418964D46";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightUpLipBCtrlGrp" -p "RightUpLipBCtrlCnt";
	rename -uid "601B8CA7-445A-6C10-FA21-0FBEB50E037A";
createNode transform -n "RightUpLipBCtrl" -p "RightUpLipBCtrlGrp";
	rename -uid "E455DDEF-4833-B6EE-E064-84A6E58E5A93";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipBCtrlShape" -p "RightUpLipBCtrl";
	rename -uid "A0B89AE8-4424-17E3-9707-FC86EA2344B6";
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
	rename -uid "4F0955F7-4C10-87C5-C61D-8B9F503FC3E5";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipACtrlOffGrp" -p "RightUpLipARootCnt";
	rename -uid "7529D013-4E75-343E-51C7-C2BE65616314";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1.0000000000000004 ;
createNode transform -n "RightUpLipACtrlCnt" -p "RightUpLipACtrlOffGrp";
	rename -uid "1618A2C8-455E-629A-58D4-1D9A2E629ADC";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightUpLipACtrlGrp" -p "RightUpLipACtrlCnt";
	rename -uid "AB7D622F-43EB-F37C-16EE-2A82D496D43B";
createNode transform -n "RightUpLipACtrl" -p "RightUpLipACtrlGrp";
	rename -uid "5711A489-4BAA-946B-43E6-94AE4724E3DB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipACtrlShape" -p "RightUpLipACtrl";
	rename -uid "739E4DFF-42CE-95C4-3573-FEB853ACF1B1";
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
	rename -uid "2494131A-4431-1EE6-F5B4-C1997D2CD9D2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterUpLipMCtrlOffGrp" -p "CenterUpLipMRootCnt";
	rename -uid "5315BE18-414B-50FD-93E0-00B276DA9612";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "CenterUpLipMCtrlGrp" -p "CenterUpLipMCtrlOffGrp";
	rename -uid "D001E2FD-4918-6234-1208-EDA565014FE4";
createNode transform -n "CenterUpLipMCtrl" -p "CenterUpLipMCtrlGrp";
	rename -uid "8198BDCD-43E0-A877-1804-83B99AF640F4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterUpLipMCtrlShape" -p "CenterUpLipMCtrl";
	rename -uid "FEB271BB-4994-0E92-CDAA-6F904466CAEC";
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
	rename -uid "AA086F0D-4970-CFB5-3057-BD93881F2A5E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipACtrlOffGrp" -p "LeftUpLipARootCnt";
	rename -uid "C6AAABF7-4293-72E6-BF51-2D80C0108A0B";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999967 ;
createNode transform -n "LeftUpLipACtrlGrp" -p "LeftUpLipACtrlOffGrp";
	rename -uid "C4B93F94-4F9C-586B-EE72-38A34D836F2C";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipACtrl" -p "LeftUpLipACtrlGrp";
	rename -uid "8E521D3F-45B0-39CD-2C3D-01A95E236D64";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipACtrlShape" -p "LeftUpLipACtrl";
	rename -uid "EB660A7D-4B2C-75B1-EDEC-A994B308C1B8";
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
	rename -uid "14E11925-48F2-CFD7-688A-1982F5F5877A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipBCtrlOffGrp" -p "LeftUpLipBRootCnt";
	rename -uid "76411213-491F-03B5-DF21-FD8E167297B2";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "LeftUpLipBCtrlGrp" -p "LeftUpLipBCtrlOffGrp";
	rename -uid "D342E0E0-4973-F9AE-9B74-839A9DB44D7F";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipBCtrl" -p "LeftUpLipBCtrlGrp";
	rename -uid "3BFF2FD7-4978-DA6E-28BE-6AB759450DAB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipBCtrlShape" -p "LeftUpLipBCtrl";
	rename -uid "9821A9B3-4508-B28E-129D-9C9B46484702";
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
	rename -uid "805289AA-4F81-9F5B-1A10-088C75330EE6";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftLipConerCtrlOffGrp" -p "LeftLipConerRootCnt";
	rename -uid "67401734-4564-78D3-5005-E39527ABA71B";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "LeftLipConerCtrlGrp" -p "LeftLipConerCtrlOffGrp";
	rename -uid "3B76323F-4F6D-EC3C-0C29-0DACC207A887";
createNode transform -n "LeftLipConerCtrl" -p "LeftLipConerCtrlGrp";
	rename -uid "8F626418-424C-DFD1-9A5B-7F99818EFD76";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "LeftLipConerCtrlShape" -p "LeftLipConerCtrl";
	rename -uid "DA7FDE65-473D-CF04-C0C9-B4A99968C601";
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
	rename -uid "64995A4A-4287-350A-D04B-2481A3312662";
	setAttr ".t" -type "double3" -1.1430856261540612e-12 -1.0658141036401503e-14 -3.4461322684364859e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipConerCtrl" -p "LeftUpLipConerCtrlGrp";
	rename -uid "EB46BC4A-47E9-7115-6B6C-219B94A5416C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipConerCtrlShape" -p "LeftUpLipConerCtrl";
	rename -uid "30FE5DF7-42BF-476E-A88F-5A96612DDA65";
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
	rename -uid "369AD0D6-47F9-2718-2BB2-6D9CCD0F99FE";
	setAttr ".t" -type "double3" 1.1528555887707626e-12 -1.0658141036401503e-14 3.1263880373444408e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipConerCtrl" -p "LeftDownLipConerCtrlGrp";
	rename -uid "AB166FBB-42DC-2BF4-77A3-34A9BB96726E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipConerCtrlShape" -p "LeftDownLipConerCtrl";
	rename -uid "94383798-4E6E-B816-0E40-28868300AC3B";
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
	rename -uid "4293D6A0-4EA7-B9A5-2500-7EA3B495D657";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipBCtrlOffGrp" -p "LeftDownLipBRootCnt";
	rename -uid "EAB1B841-49FB-A056-F547-5E84E07937CE";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode transform -n "LeftDownLipBCtrlGrp" -p "LeftDownLipBCtrlOffGrp";
	rename -uid "46005F90-45AA-B127-6529-42B6FB48B105";
createNode transform -n "LeftDownLipBCtrl" -p "LeftDownLipBCtrlGrp";
	rename -uid "7BBCF1F5-4080-2784-61E1-FE95CE86EAF4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipBCtrlShape" -p "LeftDownLipBCtrl";
	rename -uid "E9AA76DE-450A-F6D7-C27D-E7AC2024897E";
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
	rename -uid "EE5F318B-4E23-4D98-E4E0-409EBCB4F6AC";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipACtrlOffGrp" -p "LeftDownLipARootCnt";
	rename -uid "2830F093-4543-CED2-E904-89BD6D796BA8";
createNode transform -n "LeftDownLipACtrlGrp" -p "LeftDownLipACtrlOffGrp";
	rename -uid "23600809-4E84-EABE-32A7-CEABA092C2E8";
createNode transform -n "LeftDownLipACtrl" -p "LeftDownLipACtrlGrp";
	rename -uid "A6E9046D-430A-28DF-4181-C08C9602315C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipACtrlShape" -p "LeftDownLipACtrl";
	rename -uid "3F10251F-4AEE-46DF-B907-968C3AFFC4B8";
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
	rename -uid "0289B035-42F0-0DEA-132F-D8889440F9C2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterDownLipMCtrlOffGrp" -p "CenterDownLipMRootCnt";
	rename -uid "F167E0AD-4066-55EA-0D06-86A00CD5CD4A";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "CenterDownLipMCtrlGrp" -p "CenterDownLipMCtrlOffGrp";
	rename -uid "D0AAB8D4-4D21-1C08-059B-C29F05901BA7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "CenterDownLipMCtrl" -p "CenterDownLipMCtrlGrp";
	rename -uid "E97BE8DF-401B-7E32-EE6A-888F4C223368";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterDownLipMCtrlShape" -p "CenterDownLipMCtrl";
	rename -uid "CA6EF71F-4E1A-F4B0-996C-DF8F65B32D9C";
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
	rename -uid "4CF021A3-48D8-C373-EBD3-B3826E7EDFEC";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipACtrlOffGrp" -p "RightDownLipARootCnt";
	rename -uid "3A05BA83-43C5-DB47-D582-C2B4C8C77647";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightDownLipACtrlCnt" -p "RightDownLipACtrlOffGrp";
	rename -uid "B99FFC04-442E-7EAE-6239-5F84BFD5846F";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightDownLipACtrlGrp" -p "RightDownLipACtrlCnt";
	rename -uid "05E659A0-4339-2F7A-EB1E-DC94B3282F58";
createNode transform -n "RightDownLipACtrl" -p "RightDownLipACtrlGrp";
	rename -uid "CEE4F921-40C6-29A3-7C64-FBBB8BCCA17C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipACtrlShape" -p "RightDownLipACtrl";
	rename -uid "BF2E3A5E-4C40-DF3B-50D3-7EBB00783FE8";
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
	rename -uid "74AFCDE1-424A-9956-3869-3B9ABBEB4CBA";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipBCtrlOffGrp" -p "RightDownLipBRootCnt";
	rename -uid "49DFFDBC-45A7-EE45-F2ED-2397D3784787";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightDownLipBCtrlCnt" -p "RightDownLipBCtrlOffGrp";
	rename -uid "A2BD000C-4A19-5DE7-C291-928A1D1CF953";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipBCtrlGrp" -p "RightDownLipBCtrlCnt";
	rename -uid "F0BA5EBB-4CBC-1726-5E5B-EEBA84FE71DF";
createNode transform -n "RightDownLipBCtrl" -p "RightDownLipBCtrlGrp";
	rename -uid "6F1FF908-4FCB-A19C-2401-7A9C7BB6F9E4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipBCtrlShape" -p "RightDownLipBCtrl";
	rename -uid "58FA10A0-4273-2D56-E075-2186652CBD77";
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
	rename -uid "B2B5A2EB-4460-DF98-BE26-E3ACFE26C525";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipSurfPosGrp" -p "LipSysGrp";
	rename -uid "94359B04-4B59-BFD7-3868-AA921BF2F2E4";
	setAttr ".v" no;
createNode transform -n "LipSurfAPosGrp" -p "LipSurfPosGrp";
	rename -uid "5FD6A3B2-4393-4AD3-97DE-AC8575A023EF";
createNode transform -n "LipSurf0APosGrp" -p "LipSurfAPosGrp";
	rename -uid "85ED1544-42D8-1E47-D823-E69577FDC279";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf0APos" -p "LipSurf0APosGrp";
	rename -uid "B4A042D4-4DEA-FC5F-D00F-3489ECB770A8";
createNode locator -n "LipSurf0APosShape" -p "LipSurf0APos";
	rename -uid "CECD527A-45C6-F8A0-00CE-C787015E2D6E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2APosGrp" -p "LipSurfAPosGrp";
	rename -uid "0163C2DF-47BD-0EE2-D336-5CAF0B0CAB2F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf2APos" -p "LipSurf2APosGrp";
	rename -uid "A53B9689-4D1A-1C13-53B6-C3A3A873BDA9";
createNode locator -n "LipSurf2APosShape" -p "LipSurf2APos";
	rename -uid "794B4B4A-4F0A-E29F-ADAF-9B9892E6C724";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3APosGrp" -p "LipSurfAPosGrp";
	rename -uid "BEE10C33-4DA3-088D-C549-418B0C82C82D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf3APos" -p "LipSurf3APosGrp";
	rename -uid "F12B8E86-4843-3091-6030-A680DEAFDD1D";
createNode locator -n "LipSurf3APosShape" -p "LipSurf3APos";
	rename -uid "4194A543-45F6-5E62-90E7-8BB31C5660D7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4APosGrp" -p "LipSurfAPosGrp";
	rename -uid "4498F472-4019-3403-9F87-EDB8B9B13B3F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf4APos" -p "LipSurf4APosGrp";
	rename -uid "0568F64E-4B4E-B0E3-ACBE-95B77B74E063";
createNode locator -n "LipSurf4APosShape" -p "LipSurf4APos";
	rename -uid "90F17DFF-443E-C490-9777-57B779A8E522";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5APosGrp" -p "LipSurfAPosGrp";
	rename -uid "A6469B8D-4EA7-184D-1A3C-CC8718478F98";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf5APos" -p "LipSurf5APosGrp";
	rename -uid "384B8573-445D-302E-462B-A69526057684";
createNode locator -n "LipSurf5APosShape" -p "LipSurf5APos";
	rename -uid "DF46E863-46F8-0499-B5E2-71A28A36F1CF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6APosGrp" -p "LipSurfAPosGrp";
	rename -uid "F19BCF3F-4D5A-D5EB-BF1C-3EB2C3D2FD40";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf6APos" -p "LipSurf6APosGrp";
	rename -uid "7EC85AB7-48E2-CD2F-230A-96BCCB3C7C64";
createNode locator -n "LipSurf6APosShape" -p "LipSurf6APos";
	rename -uid "511749C6-4A2F-DE3F-84D0-A6A7B64FE043";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8APosGrp" -p "LipSurfAPosGrp";
	rename -uid "FAD34995-416F-EF36-13AF-8896D0E48865";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf8APos" -p "LipSurf8APosGrp";
	rename -uid "7DE2D5E8-45F4-42A9-A548-3996BE8E23EE";
createNode locator -n "LipSurf8APosShape" -p "LipSurf8APos";
	rename -uid "E9D4CB10-4360-22C3-F1DE-B78BCA5FC693";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurfBPosGrp" -p "LipSurfPosGrp";
	rename -uid "D694E937-45F1-07A6-4B68-BDB12758E5F3";
createNode transform -n "LipSurf0BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "0BB59422-4DC0-5278-D9AD-77AB671F42C2";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf0BPos" -p "LipSurf0BPosGrp";
	rename -uid "4FC4279B-4A04-305B-2D16-EBBBB7FC80C3";
createNode locator -n "LipSurf0BPosShape" -p "LipSurf0BPos";
	rename -uid "40EE9DFA-4610-EE9B-4B14-22BCB4313F86";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "16DA9D29-464A-EC74-92CE-119ABC7CCB6E";
createNode transform -n "LipSurf2BPos" -p "LipSurf2BPosGrp";
	rename -uid "8293607C-4759-1E7E-0512-32800AA30994";
createNode locator -n "LipSurf2BPosShape" -p "LipSurf2BPos";
	rename -uid "8644C476-4CB3-53F1-D6EB-86998AADBEE0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "787E8E2B-4AA8-6607-446A-5BB29E911899";
createNode transform -n "LipSurf3BPos" -p "LipSurf3BPosGrp";
	rename -uid "07DA8043-42C9-2C2B-C1AE-7CA2426AA511";
createNode locator -n "LipSurf3BPosShape" -p "LipSurf3BPos";
	rename -uid "20B08669-4703-CB63-F2B3-4C9CE1AFB833";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "C92B07E3-4F1C-AF1C-6251-9ABE20AF399A";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf4BPos" -p "LipSurf4BPosGrp";
	rename -uid "D7B870AD-4F3C-4F51-76EB-34B97AEAF706";
createNode locator -n "LipSurf4BPosShape" -p "LipSurf4BPos";
	rename -uid "F423BB87-4155-76C4-4CA3-A48B798F0A0A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "DAACED03-4979-16ED-9183-7AB354004C0A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf5BPos" -p "LipSurf5BPosGrp";
	rename -uid "AA7EAE73-4358-CF16-9BD0-558ED7F36065";
createNode locator -n "LipSurf5BPosShape" -p "LipSurf5BPos";
	rename -uid "88B1481D-4C67-68B1-3074-39901CC694EF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "6AF2FBD6-40ED-9143-595C-7BB996630EC3";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -1 ;
createNode transform -n "LipSurf6BPos" -p "LipSurf6BPosGrp";
	rename -uid "B0E6AF7E-4882-EA8D-F035-E097180FE9E2";
createNode locator -n "LipSurf6BPosShape" -p "LipSurf6BPos";
	rename -uid "65FA2D50-4057-D940-9140-0291D6AA1CF4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "16381BDD-4B39-92EB-53E7-8095D79D75B3";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf8BPos" -p "LipSurf8BPosGrp";
	rename -uid "78D76251-421E-9353-22C4-44991DB9081C";
createNode locator -n "LipSurf8BPosShape" -p "LipSurf8BPos";
	rename -uid "088945E5-47A7-A65B-9F90-E4851A6D513C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipZipGrp" -p "LipSysGrp";
	rename -uid "A3C9C63F-4AB3-C5AE-1C12-5D8FE005781E";
	setAttr ".v" no;
createNode transform -n "LipSurfAZipPosGrp" -p "LipZipGrp";
	rename -uid "3676B430-4A19-3963-57EA-DB930042B478";
createNode transform -n "LipSurf0AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "306AD2C6-4336-769A-50B8-2D93A865C52F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "DC4EEAB7-4D87-FDB1-262F-46AD542C2C53";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "D9561251-490B-7020-EE55-63A8BC391BFB";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "58D1D2A6-45A6-D060-DC84-4593B974150C";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "83DC17B6-43A6-4172-A042-41B8FD6D9EF7";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "D281B9DE-45F4-C98C-2946-3CAEB3FF4E31";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "6E8B6A01-41FD-FEAF-D2FF-159B71056CB8";
	setAttr ".dla" yes;
createNode transform -n "LipSurfBZipPosGrp" -p "LipZipGrp";
	rename -uid "D3A49E5B-4105-5BB2-7223-0289806FB0EF";
	setAttr ".t" -type "double3" 6.3527471044072525e-22 0 -1.3440637491868301e-14 ;
createNode transform -n "LipSurf0BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "26B5D3D9-4C86-7767-6C7E-15B664AAAA46";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "B76017C8-45AB-99A0-E239-F688503384B4";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "0E03B32A-4FBB-7650-F237-B997B34F3F0A";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "E363AB1E-446D-C164-951B-D0A1A71D51CF";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "4F282D33-4930-4D5D-39FB-8CA5A28215C1";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "3D2CD011-4183-4BF2-7A3E-D69E14A0C08B";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "2E4A8B23-401F-31EF-6B53-539344F75082";
	setAttr ".dla" yes;
createNode transform -n "LipCrvsGrp" -p "LipSysGrp";
	rename -uid "2245BD43-4A12-BF49-D255-A797186C6F95";
createNode transform -n "LibZipSurf" -p "LipCrvsGrp";
	rename -uid "5E9BC718-434E-97CA-8E67-8B8DE50E3E3B";
	setAttr ".v" no;
createNode nurbsSurface -n "LibZipSurfShape" -p "LibZipSurf";
	rename -uid "DCB2B1FA-486E-B64D-C5F4-D6A77DEA5A5C";
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
	rename -uid "86A2E1C7-4C37-7587-E1B7-42AAFF9C1580";
	setAttr ".tmp" yes;
	setAttr ".ovdt" 2;
createNode transform -n "LipDownPosCrv" -p "LipPosCrvGrp";
	rename -uid "72CC387B-4280-F75C-831E-20B561F5BD93";
createNode bezierCurve -n "LipDownPosCrvShape" -p "LipDownPosCrv";
	rename -uid "5EF64770-4671-9D2B-1D71-E6945AF0D4CB";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipDownPosCrvShapeOrig" -p "LipDownPosCrv";
	rename -uid "B95568B3-4ACE-52AE-463F-FB9454484B7D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1240000000000001 -7.105427357601005e-15 1
		-1.1240000000000001 -7.105427357601005e-15 1
		-0.89999927475939645 -0.059698939323425293 0.99999999999998257
		7.2524060363017278e-07 -0.059699058532714858 0.99999999999997902
		0.90000072524060371 -0.059699058532714858 0.99999999999998257
		1.1236470168039787 -1.367933544216271e-13 0.99999999999999201
		1.1236470168039787 -1.367933544216271e-13 0.99999999999999201
		;
createNode transform -n "LipUpPosCrv" -p "LipPosCrvGrp";
	rename -uid "4DEB3A58-4471-34A7-6FC9-A78C30DD1F22";
createNode bezierCurve -n "LipUpPosCrvShape" -p "LipUpPosCrv";
	rename -uid "7E6ABB54-49CA-0C63-354F-BAB074C5BFCE";
	setAttr -k off ".v";
	setAttr ".ovc" 22;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipUpPosCrvShapeOrig" -p "LipUpPosCrv";
	rename -uid "954A1068-40A6-44F1-96A9-839F97AF8137";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1243537545914279 -7.1054273576010034e-15 1.0000000000003118
		-1.1243537545914279 -7.1054273576010034e-15 1.0000000000003118
		-0.90000002470634233 0.073481559753417997 1.0000000000001421
		-2.4706342073560132e-08 0.073481559753421549 1.0000000000001379
		0.89999997529365827 0.073481559753417997 1.0000000000001414
		1.1236470168039787 -1.332406407428266e-13 0.99999999999999556
		1.1236470168039787 -1.332406407428266e-13 0.99999999999999556
		;
createNode transform -n "LipLocalGrp" -p "LipSysGrp";
	rename -uid "CC768665-4E95-F2BB-3955-1DA932DF03AF";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipLocalLoc" -p "LipLocalGrp";
	rename -uid "68855504-422B-897B-8C41-7A9CBD623664";
createNode locator -n "LipLocalLocShape" -p "LipLocalLoc";
	rename -uid "0F80F268-4E86-9ED1-33B9-969BD419E86C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipDownRightLocalPos" -p "LipLocalGrp";
	rename -uid "50F4C5FE-4487-BB29-1FC2-408B6399C6A0";
createNode locator -n "LipDownRightLocalPosShape" -p "LipDownRightLocalPos";
	rename -uid "2A2E5C9C-495A-CB82-4479-E0B9C41B1D5E";
	setAttr -k off ".v";
createNode transform -n "LipDownLeftLocalPos" -p "LipLocalGrp";
	rename -uid "9A1197C9-4000-9CCD-EA94-E08DB9AC7CFE";
createNode locator -n "LipDownLeftLocalPosShape" -p "LipDownLeftLocalPos";
	rename -uid "53D9575D-48EC-DC79-06DB-0D8DE79ABC87";
	setAttr -k off ".v";
createNode transform -n "LipRootLocalPos" -p "LipLocalGrp";
	rename -uid "10F1FCC9-442F-8118-FDBD-53A2535CAAE9";
createNode transform -n "LipRootPoser" -p "LipSysGrp";
	rename -uid "1A2E6C3B-433F-9387-2F5D-10B2106A9AAC";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "jointVis" -ln "jointVis" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -cb on ".mode";
	setAttr -cb on ".jointVis";
createNode nurbsCurve -n "LipRootPoserShape" -p "LipRootPoser";
	rename -uid "25606572-4D57-6864-4ED2-4BA7FF0FA367";
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
	rename -uid "17F12FC2-48EC-5867-74FA-6782E9AB4B0D";
createNode transform -n "LipRootPos" -p "LipPosersGrp";
	rename -uid "A99A088F-4853-A7ED-621A-AF85A31B421A";
createNode transform -n "LipMainUpCntOffGrp" -p "LipRootPos";
	rename -uid "3D03BD8D-4869-269F-5EDD-A6BE9C9941A7";
	setAttr ".t" -type "double3" -7.1580740268473164e-07 0.073481559753414416 1.0000000000001457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainUpCnt" -p "LipMainUpCntOffGrp";
	rename -uid "102B1AED-45DF-F3F4-EF90-FA9C910B4322";
createNode transform -n "UpLipMainCntOffGrp" -p "LipMainUpCnt";
	rename -uid "F3CCA1F0-4A09-8EE0-4731-7FA1F730A67B";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 -3.219646771412954e-15 ;
createNode transform -n "UpLipMainCnt" -p "UpLipMainCntOffGrp";
	rename -uid "81FCD6FA-421E-4F84-A2E6-CF9E9FA3E86D";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "RightUpLipPoserGrp" -p "UpLipMainCnt";
	rename -uid "E235DC61-43FD-E04A-A92F-D8B5706DBD0D";
	setAttr ".t" -type "double3" -0.89999930889893964 -1.5777218104420236e-30 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1.0000000000000004 ;
createNode transform -n "RightUpLipPoser" -p "RightUpLipPoserGrp";
	rename -uid "311F4643-4BD4-7CB4-522A-BB97FC0CFE02";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr -k on ".MiddlePbw" 0.7;
createNode transform -n "RightUpLipPos" -p "RightUpLipPoser";
	rename -uid "5CCB29F7-4E4B-66F3-B521-1EB3B1D3732C";
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
	rename -uid "D2737473-4FD6-F619-0055-D79B04215DCB";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "RightUpLipPoser";
	rename -uid "26BAA36A-4883-5094-5DE9-278F937C571D";
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
	rename -uid "09207206-47DC-A8DF-EB6B-9AAC363573C6";
	setAttr ".t" -type "double3" 6.9110106061117162e-07 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "MiddleUpLipPoser" -p "MiddleUpLipPoserGrp";
	rename -uid "14AAB04B-4C7A-63DD-05CA-E6AF737741CF";
	setAttr ".t" -type "double3" -3.1763735522036263e-22 3.5527136788004994e-15 -3.6637359812630166e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode nurbsCurve -n "MiddleUpLipPoserShape" -p "MiddleUpLipPoser";
	rename -uid "28E5B2D1-489C-B6D3-DACD-49B7E6D59195";
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
	rename -uid "857568C0-4622-E142-2F2C-D29B58006D1D";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.1175823681357508e-22 3.1554436208840472e-30 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "MiddleUpLipPosShape" -p "MiddleUpLipPos";
	rename -uid "C3DBA829-4D7C-4BDA-DE35-659103D7349B";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftUpLipPoserGrp" -p "UpLipMainCnt";
	rename -uid "EEAF6A1A-44AB-4509-BC59-8CA48B554D5D";
	setAttr ".t" -type "double3" 0.90000069110106096 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "LeftUpLipPoser" -p "LeftUpLipPoserGrp";
	rename -uid "4C3F3976-4FE1-40DC-AB29-9880F1CB5DE3";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -3.1554436208840472e-30 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode nurbsCurve -n "LeftUpLipPoserShape" -p "LeftUpLipPoser";
	rename -uid "882C273C-4DC1-4828-579D-23AB4A876F73";
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
	rename -uid "4501A0E1-4DCE-3F6B-ACC7-DDB6EBA482A9";
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
	rename -uid "F03DA476-4953-BC6D-62F5-A795D80E7AC1";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipWorldLoc" -p "LipPosersGrp";
	rename -uid "8A949160-42DA-0FBA-70CA-BEBB405504B3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LipWorldLocShape" -p "LipWorldLoc";
	rename -uid "5F1BB513-46F8-8E25-3726-EB92604BBD59";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipMainDownCntOffGrp" -p "LipWorldLoc";
	rename -uid "0C4D04A8-4989-2CE3-7617-1CBB1BE8BD68";
	setAttr ".t" -type "double3" 0 7.1054273576010066e-15 1 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainDownCnt" -p "LipMainDownCntOffGrp";
	rename -uid "04DE14F9-4F64-0A52-1F97-66A624735ED3";
createNode transform -n "DownLipMainCntOffGrp" -p "LipMainDownCnt";
	rename -uid "3A610F1E-484D-1379-1D2A-F58BFCA80820";
	setAttr ".t" -type "double3" 5.2939559203393771e-22 -3.5527136788005009e-15 -1.0325074129013956e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "DownLipMainCnt" -p "DownLipMainCntOffGrp";
	rename -uid "F5B0E13D-4A85-465C-3B52-E78A2B6F0FC3";
createNode transform -n "RightDnLipCrvPoserGrp" -p "DownLipMainCnt";
	rename -uid "C98493F0-4DE6-4C7C-28D9-C59367DC22AB";
	setAttr ".t" -type "double3" -0.89999927475939667 -0.059698939323428818 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 -1 ;
createNode transform -n "RightDnLipCrvPoser" -p "RightDnLipCrvPoserGrp";
	rename -uid "716368B8-4978-01D5-A7C1-4DA984C0BCF4";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode transform -n "RightDnLipCrvPos" -p "RightDnLipCrvPoser";
	rename -uid "8BC1398F-45F7-4247-C214-689F6D81D092";
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
	rename -uid "06604213-4670-2852-16EA-59882D20B9F1";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "RightDnLipCrvPoser";
	rename -uid "F6D737CD-4B7E-67FC-E2E9-52B8F5C29077";
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
	rename -uid "AD025328-4B73-D03E-F27E-B7927EF019E1";
	setAttr ".t" -type "double3" 7.2524060363017215e-07 -0.059699058532718383 -6.9944050551384862e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "MiddleDnLipCrvPoser" -p "MiddleDnLipCrvPoserGrp";
	rename -uid "7DF676B3-4BDA-AD89-8AE4-978A55118019";
	setAttr ".t" -type "double3" 1.0587911840678754e-22 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "MiddleDnLipCrvPos" -p "MiddleDnLipCrvPoser";
	rename -uid "263BF83A-45D7-7E5F-4AF1-1BBC91A4D578";
	setAttr -l on -k off ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "MiddleDnLipCrvPosShape" -p "MiddleDnLipCrvPos";
	rename -uid "BF682DC5-47F8-E0B9-14D3-7193F5FEDFC6";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "MiddleDnLipCrvPoser";
	rename -uid "693774EE-4F0B-EFC2-F782-DEABC77735B5";
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
	rename -uid "16FEFA25-430F-1554-CD85-08828A91732E";
	setAttr ".t" -type "double3" 0.90000072524060393 -0.059699058532718383 -6.9944050551384862e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDnLipCrvPoser" -p "LeftDnLipCrvPoserGrp";
	rename -uid "C5A8CD38-4059-8844-96D9-E7B427B5F6D5";
	addAttr -ci true -sn "MiddlePbw" -ln "MiddlePbw" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".MiddlePbw" 0.7;
createNode transform -n "LeftDnLipCrvPos" -p "LeftDnLipCrvPoser";
	rename -uid "F22154DC-403B-64F5-E2B0-96804C092D15";
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
	rename -uid "388D7E6F-48A2-1D1C-24DB-0EB57FB9BF36";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "UpLip3Poser1Shape" -p "LeftDnLipCrvPoser";
	rename -uid "56AF45CA-4E47-2319-BFE6-8B98A732744A";
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
	rename -uid "C42DC8C8-4470-36B7-6762-7AB0159FC943";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "Lip5MainCntOffGrp" -p "Lip5WorldPBPosGrp";
	rename -uid "4202BA5A-4458-5373-DE2B-4C8964E3D5EC";
	setAttr ".t" -type "double3" -7.1580740268473164e-07 0.073481559753414416 1.0000000000001457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "Lip5MainCntGrp" -p "Lip5MainCntOffGrp";
	rename -uid "B8D0B4FF-4A4D-F1F3-AB1C-6CB303189DCE";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
createNode transform -n "LeftCornerUpLipPoserOffGrp" -p "Lip5MainCntGrp";
	rename -uid "29626391-4F6F-4704-0F83-9FABAEF78B43";
	setAttr ".t" -type "double3" 1.1236477326113814 -0.07348155975354409 -1.4988010832439613e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftCornerUpLipPoser" -p "LeftCornerUpLipPoserOffGrp";
	rename -uid "94603338-43D1-16DF-EB4A-66BFF3393D61";
createNode nurbsCurve -n "LeftUpLipPoser1Shape" -p "LeftCornerUpLipPoser";
	rename -uid "9ACC90A4-41FC-0B12-9FC6-50A2ADD46D9B";
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
	rename -uid "FF33F3EF-4B52-DB7B-509A-E28322EF06D1";
	setAttr -l on -k off ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LeftCornerUpLipPosShape" -p "LeftCornerUpLipPos";
	rename -uid "9890C8AE-48A1-E4DB-B043-94B13AA5AE77";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "UpLip5MainCntOffGrp" -p "LeftCornerUpLipPos";
	rename -uid "6252A514-4660-F990-1F73-22BB96D961CD";
	setAttr ".t" -type "double3" -1.1236462979089161 1.7763568394002505e-14 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "UpLip5MainCntGrp" -p "UpLip5MainCntOffGrp";
	rename -uid "B6600EB4-4D84-DC9E-763C-FCA685446BC4";
	setAttr ".v" no;
createNode transform -n "UpLip5CrvPosGrp" -p "UpLip5MainCntGrp";
	rename -uid "52EC4898-44BA-0AD2-5BFC-CA9639AA281B";
	setAttr ".t" -type "double3" 1.1236462979089161 -1.7763568394002498e-14 1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
createNode transform -n "UpLip5CrvPos" -p "UpLip5CrvPosGrp";
	rename -uid "60553D16-4AF4-4B80-B1F9-A59D16AF1D0A";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "UpLip5CrvPosShape" -p "UpLip5CrvPos";
	rename -uid "CCFEA25B-4438-C2C8-F256-11A16E85D5B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip5MainCntOffGrp" -p "LeftCornerUpLipPos";
	rename -uid "6C7E498D-47E9-D1FE-997C-B7B757651E50";
	setAttr ".t" -type "double3" -1.1236477326113814 0.073481559753547629 1.5698553568199713e-13 ;
createNode transform -n "DownLip5MainCntGrp" -p "DownLip5MainCntOffGrp";
	rename -uid "42BF938E-4D38-59D4-CFCC-AE9807EB2ED0";
	setAttr ".v" no;
createNode transform -n "DownLip5CrvPosGrp" -p "DownLip5MainCntGrp";
	rename -uid "9D5D738A-4851-370C-6725-E5B3AA443B63";
	setAttr ".t" -type "double3" 1.1236477326113814 -0.073481559753547629 -1.5698553568199713e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "DownLip5CrvPos" -p "DownLip5CrvPosGrp";
	rename -uid "518A2EE8-4E84-99BC-70DD-3A962A1195B9";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "DownLip5CrvPosShape" -p "DownLip5CrvPos";
	rename -uid "164EA31A-43D1-8C3A-180C-E89F866FE0A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "Lip1WorldPBPosGrp" -p "LipPosersGrp";
	rename -uid "99880381-480B-8FDA-2D87-BC897A6CB04B";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "Lip1MainCntOffGrp" -p "Lip1WorldPBPosGrp";
	rename -uid "3056B1F0-44D3-C14A-572B-C29BB93FA3FB";
	setAttr ".t" -type "double3" -7.1580740268473164e-07 0.073481559753414416 1.0000000000001457 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
createNode transform -n "Lip1MainCntGrp" -p "Lip1MainCntOffGrp";
	rename -uid "C9386B08-4383-891F-BF02-89B6B6AA26BD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000007 ;
createNode transform -n "RightCornerUpLipPoserOffGrp" -p "Lip1MainCntGrp";
	rename -uid "A9EDAEF8-4C28-F4D7-C047-1C96DA62E049";
	setAttr ".t" -type "double3" -1.1239992841925974 -0.073481559753417899 1.4188650254709501e-13 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "RightCornerUpLipPoserGrp" -p "RightCornerUpLipPoserOffGrp";
	rename -uid "8F0161BD-48A2-FB19-D29D-B58D7ED4AE81";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightCornerUpLipPoser" -p "RightCornerUpLipPoserGrp";
	rename -uid "BD537F5B-4179-35F7-25C9-9FB60EBFE90E";
createNode nurbsCurve -n "LeftUpLipPoser1Shape" -p "RightCornerUpLipPoser";
	rename -uid "02340379-4148-3876-C56E-459F5C3CF045";
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
	rename -uid "FE07FC8C-4356-5E2B-4FAC-CDA85F4251A1";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.8886090522101181e-31 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "RightCornerUpLipPosShape" -p "RightCornerUpLipPos";
	rename -uid "D2434CDA-440E-CA54-EF26-3BB47EF49736";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "Lip1MainOffGrp" -p "RightCornerUpLipPos";
	rename -uid "8E6BADA9-475B-AC60-3835-9D88747ADDFE";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "UpLip1MainCntOffGrp" -p "Lip1MainOffGrp";
	rename -uid "20899722-4F64-94C5-6DB4-49936F9177E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1236462454085721 0.073481559753547629 1.5587531265737198e-13 ;
createNode transform -n "UpLip1MainCntGrp" -p "UpLip1MainCntOffGrp";
	rename -uid "7044694B-4EFB-BF28-2263-A797B39DDC10";
createNode transform -n "UpLip1CrvPosGrp" -p "UpLip1MainCntGrp";
	rename -uid "31C8242F-4CCD-71AA-9AB1-DB8EC8DB7DAE";
	setAttr ".t" -type "double3" -1.124 -0.073481559753547629 1.5587531265737198e-13 ;
createNode transform -n "UpLip1CrvPos" -p "UpLip1CrvPosGrp";
	rename -uid "9D6F37BA-4873-8244-6840-F399183BCABA";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "UpLip1CrvPosShape" -p "UpLip1CrvPos";
	rename -uid "497303C3-4184-C295-FF68-10892A2E5322";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip1MainCntOffGrp" -p "Lip1MainOffGrp";
	rename -uid "50160405-4C33-5D68-BD71-FA8285027F2B";
	setAttr ".t" -type "double3" 1.1236462514236858 -0.059699058532585156 1.5942802633617248e-13 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "DownLip1MainCntGrp" -p "DownLip1MainCntOffGrp";
	rename -uid "724FBAAB-4EBC-914F-84EA-96B4F2531D95";
	setAttr ".v" no;
createNode transform -n "DownLip1CrvPosGrp" -p "DownLip1MainCntGrp";
	rename -uid "79112FBF-4179-EADA-319E-FE8E67572F4D";
	setAttr ".t" -type "double3" -1.123646251423686 0.059699058532585156 -1.5942802633617248e-13 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "DownLip1CrvPos" -p "DownLip1CrvPosGrp";
	rename -uid "C4B45FB6-426D-AE98-FCD6-D484ED455893";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "DownLip1CrvPosShape" -p "DownLip1CrvPos";
	rename -uid "9677F357-41D2-1B3B-9A2E-729536C6D76F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrlCrvGrp" -p "LipRootPoser";
	rename -uid "94FE126E-448F-6712-DCF5-E4B9D5859AFC";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "LipCtrlCrv" -p "LipCtrlCrvGrp";
	rename -uid "3CFD54C6-4C39-E628-8EB7-93A1B64CC016";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LipCtrlCrvShape" -p "LipCtrlCrv";
	rename -uid "CC12D196-4D35-7526-591E-7C83FED5131E";
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
	rename -uid "C80E9DFD-4D52-E0E9-AE72-0DA1965895DB";
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
	rename -uid "1A147692-4D7B-F372-8A58-D284135011CB";
	setAttr -av ".v" no;
createNode transform -n "RightUpLipConerJntGrp" -p "LipJntGrp";
	rename -uid "B635DA7C-45FF-68B8-A007-F29F270AC9C2";
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 0.99999999999999867 1 -1.0000000000000002 ;
createNode transform -n "RightUpLipConerJntOffGrp" -p "RightUpLipConerJntGrp";
	rename -uid "D79D5A32-437E-31F7-83E8-2E92E9042C32";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 -4.4408920985006262e-16 ;
createNode joint -n "RightUpLipConerJnt" -p "RightUpLipConerJntOffGrp";
	rename -uid "E1F5CF41-4C8B-B337-B432-2A85B500C447";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.5559993560783858e-16 0 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightUpLipBJntGrp" -p "LipJntGrp";
	rename -uid "87081277-4BF5-7D93-1E57-F3A65675356F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode transform -n "RightUpLipBJntOffGrp" -p "RightUpLipBJntGrp";
	rename -uid "DE7251D0-496A-1423-6D79-FDB97BAA4750";
createNode joint -n "RightUpLipBJnt" -p "RightUpLipBJntOffGrp";
	rename -uid "85744B18-41EE-7E53-5628-8C874DF92000";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.4124500153760508e-30 0 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightUpLipAJntGrp" -p "LipJntGrp";
	rename -uid "205C79A5-4AF0-FE3E-F961-D28333025CAB";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000004 ;
createNode transform -n "RightUpLipAJntOffGrp" -p "RightUpLipAJntGrp";
	rename -uid "9828D914-4A56-2BA1-2DB9-BC96E427E7F8";
createNode joint -n "RightUpLipAJnt" -p "RightUpLipAJntOffGrp";
	rename -uid "94BCC1D3-4A36-94DE-8345-51BD6B028CAF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "CenterUpLipMJntGrp" -p "LipJntGrp";
	rename -uid "258FF01D-4D39-3D76-98D1-A29A25D77B82";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode joint -n "CenterUpLipMJnt" -p "CenterUpLipMJntGrp";
	rename -uid "875EEFF1-4777-0FC3-0196-3A9A1074B508";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipAJntGrp" -p "LipJntGrp";
	rename -uid "E9514A0A-4525-1412-567F-DC8F347D321F";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 0.99999999999999967 ;
createNode joint -n "LeftUpLipAJnt" -p "LeftUpLipAJntGrp";
	rename -uid "D902C7E0-4189-0C66-0D14-999D7F7E286E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipBJntGrp" -p "LipJntGrp";
	rename -uid "654FC65D-4F8B-ABB9-0456-6089D7D415DE";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 0.99999999999999989 ;
createNode joint -n "LeftUpLipBJnt" -p "LeftUpLipBJntGrp";
	rename -uid "40A22796-4935-5042-AED0-66BDFE70F1A3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipConerJntGrp" -p "LipJntGrp";
	rename -uid "2FF0FFB6-48B5-8616-A060-3180AC4E267A";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "LeftUpLipConerJnt" -p "LeftUpLipConerJntGrp";
	rename -uid "FBE83F5D-4FA9-368D-770E-0FB5A4303070";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipConerJntGrp" -p "LipJntGrp";
	rename -uid "61BED82D-46F7-FA1D-A6D9-42AB09E99BC0";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "LeftDownLipConerJnt" -p "LeftDownLipConerJntGrp";
	rename -uid "E488D3E1-45AA-9281-A70D-BDAFF4724238";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipBJntGrp" -p "LipJntGrp";
	rename -uid "1A10108F-48EE-F9DB-95D6-A8ABEDBBA627";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
createNode joint -n "LeftDownLipBJnt" -p "LeftDownLipBJntGrp";
	rename -uid "72DB5916-4BB9-5B61-DB01-57A4A94613C2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipAJntGrp" -p "LipJntGrp";
	rename -uid "27D8C82B-4F18-0EA4-246A-5F9F94986243";
createNode joint -n "LeftDownLipAJnt" -p "LeftDownLipAJntGrp";
	rename -uid "4DD20522-43EB-EAC4-7283-2FBE4CD1CD40";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "CenterDownLipMJntGrp" -p "LipJntGrp";
	rename -uid "647C6274-47A2-2766-EE5F-78A946F045DC";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "CenterDownLipMJnt" -p "CenterDownLipMJntGrp";
	rename -uid "8D6F5229-467B-A05E-67C4-4EB40C98D162";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipAJntGrp" -p "LipJntGrp";
	rename -uid "A48C151A-4140-D39C-F6F0-3A8C4EEFBE29";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightDownLipAJntOffGrp" -p "RightDownLipAJntGrp";
	rename -uid "92080E6D-4C0F-CEFB-2A31-F39895A370B2";
createNode joint -n "RightDownLipAJnt" -p "RightDownLipAJntOffGrp";
	rename -uid "B7A9DBA2-4D18-52FD-B56F-96A236778AAD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipBJntGrp" -p "LipJntGrp";
	rename -uid "80729702-443E-F2F7-99C6-BA91ED7B1DF4";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightDownLipBJntOffGrp" -p "RightDownLipBJntGrp";
	rename -uid "D4C7C4FC-462E-9A63-1D3E-528265AC2C62";
createNode joint -n "RightDownLipBJnt" -p "RightDownLipBJntOffGrp";
	rename -uid "B1D725AB-4904-1897-7220-C18C79FE6624";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipConerJntGrp" -p "LipJntGrp";
	rename -uid "56463386-463F-CE28-4E5D-7AA11584354D";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999845 1 -1.0000000000000002 ;
createNode transform -n "RightDownLipConerJntOffGrp" -p "RightDownLipConerJntGrp";
	rename -uid "FED1D0A5-4468-34C7-40CD-4CBFFD495664";
	setAttr ".t" -type "double3" 0 0 1.1102230246251565e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
createNode joint -n "RightDownLipConerJnt" -p "RightDownLipConerJntOffGrp";
	rename -uid "57977F9E-43FA-850A-676F-FFB8DD53D0FF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.5559993560784272e-16 0 ;
	setAttr ".radi" 0.1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5C86075E-406A-D477-DA63-92BD70702544";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9D5321FE-4AE2-0BD0-B2D8-989ECB13DA42";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AD3CF50E-4F0C-C715-6586-D49A747942B0";
createNode displayLayerManager -n "layerManager";
	rename -uid "06DEB70D-4200-E763-134B-6EA26E155701";
createNode displayLayer -n "defaultLayer";
	rename -uid "ABF312CB-4E82-07A8-A375-169EFB7BEFE4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6838F98B-4DF1-E3A5-CAA0-0FA161F28F37";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D9EB0410-4704-BD4F-C294-8C86B82182E4";
	setAttr ".g" yes;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "33DE8FAB-4C28-8304-A09F-9B9CE19456F1";
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "D3E2E606-4186-64F6-E6A5-DD975C301226";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode reverse -n "LipModeRvs";
	rename -uid "FF59CC0A-4358-361D-9C88-07A43D7A3A59";
createNode pointOnCurveInfo -n "CenterUpLipMRootCntPC";
	rename -uid "EA14CE40-4CA7-44C0-6920-56B003F25C59";
	setAttr ".pr" 0.27272727272727271;
	setAttr ".top" yes;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "D4215835-4F6B-4954-AA85-5CA01DE2345F";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnCurveInfo -n "RightLipConerRootCntPC";
	rename -uid "3AB5BAFA-4443-B2CE-A765-41869F512C25";
	setAttr ".top" yes;
createNode multiplyDivide -n "RightLipConerCtrlRvsMultMD";
	rename -uid "1B6CD60A-4F97-AE4B-2D22-93B75B59D730";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpLipBRootCntPC";
	rename -uid "F57C28D3-4AEA-6092-7A3A-2D9D62719B8D";
	setAttr ".pr" 0.090909090909090912;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip2CrvPosPosBRotPB";
	rename -uid "4634D795-46F3-469A-F06C-7882D3915586";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosPosBRotPBwML";
	rename -uid "BF530C91-404C-7025-AACF-90ADAEA3EB48";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipBCtrlRvsMultMD";
	rename -uid "FEA5F630-4C04-BE01-DFF6-FB9212A17F98";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpLipARootCntPC";
	rename -uid "81E14C01-4A5E-7CC7-5DB0-51B246D2508C";
	setAttr ".pr" 0.18181818181818182;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip2CrvPosARotPB";
	rename -uid "90763173-494E-0A75-0AC7-F2A9C710C500";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosARotPBwML";
	rename -uid "FAE485AA-4388-C41A-E5F7-7CA81265F018";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipACtrlRvsMultMD";
	rename -uid "AB7A783E-4E90-2301-CCEE-81A7728B6183";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "CenterUpLipMCtrlRvsMultMD";
	rename -uid "79955335-4C1A-1475-17C5-9C80F26B7079";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftUpLipARootCntPC";
	rename -uid "F5FBE578-402E-6879-BEDD-F1963364921D";
	setAttr ".pr" 0.36363636363636365;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip4CrvPosARotPB";
	rename -uid "AFF0C8C7-4776-C4C9-01B2-8F996332768B";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosARotPBwML";
	rename -uid "3B9A0EE2-4CB4-A03B-6991-2CAAA459CA41";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipACtrlRvsMultMD";
	rename -uid "1FC2AD18-44EC-170F-B01A-03A942D368BA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftUpLipBRootCntPC";
	rename -uid "0A054FE9-4EF6-D07B-DCD8-AE841D8D9343";
	setAttr ".pr" 0.45454545454545459;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip4CrvPosBRotPB";
	rename -uid "9EC1C71C-41F0-4906-6E00-1FBB6E9E39FA";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosBRotPBwML";
	rename -uid "CCC3349D-4928-7533-030B-01B7471B11C8";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipBCtrlRvsMultMD";
	rename -uid "5B0A557B-4E5D-E398-4D97-169D9B18345C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftLipConerRootCntPC";
	rename -uid "C67E7972-40C3-2FF6-3615-52BCCF61ADEF";
	setAttr ".pr" 0.54545454545454541;
	setAttr ".top" yes;
createNode multiplyDivide -n "LeftLipConerCtrlRvsMultMD";
	rename -uid "AED86B89-401F-570C-CCC5-14B3E0801359";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftDownLipBRootCntPC";
	rename -uid "3340DCA9-420F-CA13-773B-2AAA8349FC86";
	setAttr ".pr" 0.63636363636363635;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip4CrvPosPosBRotPB";
	rename -uid "CF126124-41A7-FEC1-C988-58B93ACEB541";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosPosBRotPBwML";
	rename -uid "4DF48C9D-4334-7115-FF68-AF80BB959681";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipBCtrlRvsMultMD";
	rename -uid "CA93F2CF-43B9-5CE3-522A-A089F0210427";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftDownLipARootCntPC";
	rename -uid "341EDA11-4E56-C7D9-DCA3-E0B2BEA3EFE6";
	setAttr ".pr" 0.72727272727272729;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip4CrvPosARotPB";
	rename -uid "2C0487FD-4186-A8B1-0441-98951D7D54B9";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosARotPBwML";
	rename -uid "4412E69F-486C-153C-6D74-3183FD232292";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipACtrlRvsMultMD";
	rename -uid "6FEF3F5C-4459-518A-9B0B-72A9AE0F64C9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "CenterDownLipMRootCntPC";
	rename -uid "C026C79B-4D73-5050-9675-C7A9126B668F";
	setAttr ".pr" 0.81818181818181823;
	setAttr ".top" yes;
createNode multiplyDivide -n "CenterDownLipMCtrlRvsMultMD";
	rename -uid "35F1F69C-4DA2-4E43-81E6-B3937A382E28";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightDownLipARootCntPC";
	rename -uid "1912B78B-49F5-0247-2F0F-6E82D086B984";
	setAttr ".pr" 0.90909090909090917;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip2CrvPosARotPB";
	rename -uid "500973F7-4BFB-3E45-D35D-C595236C7A5E";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosARotPBwML";
	rename -uid "F7AA4264-4C3E-621A-0E7A-A38892943590";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipACtrlRvsMultMD";
	rename -uid "C3A49F69-4662-7F14-152A-0E9AF15EF681";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightDownLipBRootCntPC";
	rename -uid "E809E3F4-412D-12A6-E011-D9B7C34D71B9";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip2CrvPosBRotPB";
	rename -uid "182A1955-4B2D-9AC6-85DA-B3936B081619";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosBRotPBwML";
	rename -uid "41225946-4C17-5B5D-E0D1-60892113C9EE";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipBCtrlRvsMultMD1";
	rename -uid "8CEDB6A8-4D33-9521-06F1-8DA5A64482E4";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LibSurf0APosPC";
	rename -uid "41CE74E3-48A3-DDB4-49B6-339F69920B75";
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf0APosGrpDM";
	rename -uid "907B24A7-4E52-3BA0-05BD-6A88F89F5869";
createNode multMatrix -n "LipSurf0APosGrpMM";
	rename -uid "6B36F901-404F-1942-BE1F-6D8B2EE9F440";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -1.1236469890099767 -7.1054273576010066e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf2APosPC";
	rename -uid "01CA8A6C-4798-CDD3-FB75-6C9982E21DBB";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf2APosGrpDM";
	rename -uid "F01B7142-4986-87BC-7963-79A49C98D9FA";
createNode multMatrix -n "LipSurf2APosGrpMM";
	rename -uid "70A35127-4985-D161-CB2C-498764DE63CE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -0.8993231489544582 3.5527136788005065e-15 0.99999999999999778 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf3APosPC";
	rename -uid "A10654DA-4357-93FC-91AE-CD8D865B1106";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf3APosGrpDM";
	rename -uid "605917E6-48FD-4011-DE90-FD888A2E3FF0";
createNode multMatrix -n "LipSurf3APosGrpMM";
	rename -uid "86757582-4494-4390-3B7E-F98E7DFB3A46";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -0.55525675891628912 1.0880185641326548e-14 0.99999999999999512 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf4APosPC";
	rename -uid "665C2DF9-4943-8827-9FAB-4CA5533F3485";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf4APosGrpDM";
	rename -uid "4EFEA777-4560-9C33-ECAB-3E81E6D7D195";
createNode multMatrix -n "LipSurf4APosGrpMM";
	rename -uid "3823DAB6-45D1-73DB-3831-01A27F6283A2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.9110106061117151e-07 1.4210854715202019e-14 0.99999999999999212 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf5APosPC";
	rename -uid "26815D60-4E07-0A5D-7C8B-F391F96C2617";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf5APosGrpDM";
	rename -uid "CC5E3F08-4499-AA88-A0C5-F9BF2E65FF47";
createNode multMatrix -n "LipSurf5APosGrpMM";
	rename -uid "E7F84E9F-4EA3-0B99-73DC-55B724B7ABA6";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.55525792514932892 1.0880185641326548e-14 0.99999999999999534 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf6APosPC";
	rename -uid "7743A9A2-4BB1-9099-6D35-739ACFB69D9C";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf6APosGrpDM";
	rename -uid "E18C2544-4F50-2486-F752-5193DB81BD0A";
createNode multMatrix -n "LipSurf6APosGrpMM";
	rename -uid "8634F5DA-4CB1-DF41-D220-9E9F3A29F122";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.8993238400555188 3.5527136788005065e-15 0.99999999999999889 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf8APosPC";
	rename -uid "4E76E4CC-4F31-C763-8DCF-A89007CA3C54";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf8APosGrpDM";
	rename -uid "099A0467-4468-BE4F-2A5E-17ACC6FC6102";
createNode multMatrix -n "LipSurf8APosGrpMM";
	rename -uid "4F3FBEDF-4853-2797-28C3-219FBD518DD9";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236469890099767 -7.1054273576010066e-15 1.0000000000000029 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf0BPosPC";
	rename -uid "E68580CB-48D1-71E4-B0EF-ED938B7EAF51";
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf0BPosGrpDM";
	rename -uid "3192D1C4-4D02-9210-74BB-A69D9F7C40F4";
createNode multMatrix -n "LipSurf0BPosGrpMM";
	rename -uid "9B30577A-4F02-C775-118F-A7835B546A90";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1.0000000000000002 0 0
		 -1.2246467991473532e-16 0 1 0 -1.1236469890099767 -7.1054273576010082e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf2BPosPC";
	rename -uid "5B204534-4AA0-793C-CB86-1B880EA749F6";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf2BPosGrpDM";
	rename -uid "1E079506-416C-411F-7E2D-8AB56BFF70FA";
createNode multMatrix -n "LipSurf2BPosGrpMM";
	rename -uid "84D7309F-4C6C-EB0B-192C-D8B815B29015";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 1.2246467991473535e-16 0 0 -1.2246467991473532e-16 -1.0000000000000002 0 0
		 0 0 1 0 -0.8993231318846866 -6.4867640808087845e-14 0.9999999999999909 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf3BPosPC";
	rename -uid "D200316A-4F44-89C8-17A1-F3A9B4A0DCFF";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf3BPosGrpDM";
	rename -uid "3BFC5E65-47BB-9283-1C49-6CA5BAF3291A";
createNode multMatrix -n "LipSurf3BPosGrpMM";
	rename -uid "C58BBEC3-4837-726C-FCD0-AE91CC7C32EA";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 1.2246467991473535e-16 0 0 -1.2246467991473532e-16 -1.0000000000000002 0 0
		 0 0 1 0 -0.5552567301110497 -1.0452749776845855e-13 0.99999999999998357 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf4BPosPC";
	rename -uid "EAA50131-4762-8325-9112-118267A4CFC3";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf4BPosGrpDM";
	rename -uid "2218131B-47C3-9F2C-B0CC-DD87B2309E8E";
createNode multMatrix -n "LipSurf4BPosGrpMM";
	rename -uid "15A72B68-4334-2424-7772-7B9DE34BBCB3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 -1.0000000000000002 1.2246467991473532e-16 0
		 0 1.2246467991473535e-16 1 0 7.2524060363017278e-07 -1.224461572387026e-13 0.99999999999997868 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf5BPosPC";
	rename -uid "A7745D8B-43FB-7D42-9EC4-098D66C0A229";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf5BPosGrpDM";
	rename -uid "00BC3EF3-4570-81B3-67A6-F7BBB8E432AD";
createNode multMatrix -n "LipSurf5BPosGrpMM";
	rename -uid "1A22B1B5-4F94-6B7D-4523-C6B16D7E1E1C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 -1 1.224646799147353e-16 0 0 1.2246467991473535e-16 1 0
		 0.55525795395456834 -1.0497927970709304e-13 0.99999999999998335 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf6BPosPC";
	rename -uid "46FEB292-4DBB-F7EF-B350-A2B11C767CC0";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf6BPosGrpDM";
	rename -uid "0FF46D1E-4D62-4E7E-01D2-269BA477E597";
createNode multMatrix -n "LipSurf6BPosGrpMM";
	rename -uid "910487A3-499B-5E5C-24FF-47914D219DBF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 0 0 0 0 -1.0000000000000004 1.2246467991473535e-16 0
		 0 1.2246467991473535e-16 1 0 0.89932385712529017 -6.655214913755205e-14 0.99999999999999034 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf8BPosPC";
	rename -uid "8F42ECA0-4729-E0BF-54A8-A3817D239FC9";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf8BPosGrpDM";
	rename -uid "ED9F02E2-44F1-62D0-D60A-3B83CC38B527";
createNode multMatrix -n "LipSurf8BPosGrpMM";
	rename -uid "3B095D2F-41E7-9DF6-4D7D-59B7827512AF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236469890099767 -1.0658141036401514e-14 0.99999999999999933 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LibSurf0APB";
	rename -uid "9C958FD8-49B8-23B8-82A7-B2AC239E710D";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf0PS";
	rename -uid "696703B2-45AE-3CDD-D4CB-579B4D10F488";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf0ARM";
	rename -uid "7EAE0535-4900-F46F-A656-96BE55CB6F4D";
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
	rename -uid "D2386C95-469D-CA2C-99B3-A7A35B9BE79A";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2ARM";
	rename -uid "15166102-4AB2-7484-9C87-0794406DBF46";
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
	rename -uid "D9CF871A-488F-8858-C4D4-948D0A27B78E";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf3APB";
	rename -uid "4911AF19-483D-0ABB-7546-EA9293D934F8";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3ARM";
	rename -uid "28691324-424F-C336-97A6-AFA5D17112F0";
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
	rename -uid "8708187E-4876-7E47-A051-95B1EFB7618E";
	setAttr ".u" 0.375;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf4APB";
	rename -uid "A413A226-4DDE-86B9-FCB2-EFB928073446";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4ARM";
	rename -uid "4E103C54-4182-429C-DAED-12BBB39CE83F";
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
	rename -uid "EA73520C-43E5-0508-3D34-1292539AED67";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pointOnSurfaceInfo -n "LibSurf4PS";
	rename -uid "D69D3A1E-44C0-8C27-1225-50BE89749F9D";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf5APB";
	rename -uid "3DA6B293-4EB0-BF81-441D-63B1A6A430D0";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5ARM";
	rename -uid "897793C8-4296-83F1-F7DE-A6A3AC2FF805";
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
	rename -uid "94411E42-4312-606B-8FAC-0E861B0C1E1F";
	setAttr ".u" 0.625;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf6APB";
	rename -uid "93E37B98-4760-A199-8DE7-6EA01B4AAE55";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6ARM";
	rename -uid "C45B6431-4FB5-992D-C675-2BBB6E65DDA5";
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
	rename -uid "47C328DF-4202-A196-FCB3-D4A49B2EDED3";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf8APB";
	rename -uid "89D17D1E-410B-CC89-DC5C-E198745AD9C2";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf8PS";
	rename -uid "530E6E30-42EC-BA95-4CDF-F68588E444C4";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf8ARM";
	rename -uid "27FCB1E3-4BB1-E788-2AC9-E3B578BE8380";
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
	rename -uid "3306B4D2-4E7F-B628-7C89-159213CAB53F";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf0BRM";
	rename -uid "2FBD68F8-4AAE-3F5B-D92C-6AAB03BA3276";
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
	rename -uid "5C257B47-4368-3502-8551-949EBB66A8E1";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2BRM";
	rename -uid "3592AEA6-459F-DA39-B154-9BB9B6687982";
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
	rename -uid "D9061383-4FC9-CFB8-3D4D-3F84CE6EC3CE";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3BRM";
	rename -uid "C7AE6865-45E0-6EBD-8CFA-D0A03A3C66FF";
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
	rename -uid "0FD7A8AF-4D7D-AD04-3E9F-59BB5DECA2FF";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4BRM";
	rename -uid "DD468FC7-4F01-763E-8EDB-978ADE830D10";
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
	rename -uid "00B7CA53-46CE-539B-3435-708877975133";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pairBlend -n "LibSurf5BPB";
	rename -uid "72A5E394-42D9-1019-F46F-2C959B47B658";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5BRM";
	rename -uid "B8047430-47CA-63A9-FD89-60A8ADF89F0C";
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
	rename -uid "58CECBBE-4352-9C55-1019-D697A0536CB0";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6BRM";
	rename -uid "FD84124D-4C02-474F-422E-AB84A8AF7A29";
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
	rename -uid "4AF6E874-4B21-82A1-42BC-9DB91108F283";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf8BRM";
	rename -uid "DB387FC8-4496-D456-F6ED-82BE8E87C54F";
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
	rename -uid "87A404E1-4A77-ADC2-D198-6C9F07C76A08";
	setAttr -s 2 ".ic";
	setAttr ".u" yes;
	setAttr ".rsn" yes;
createNode pairBlend -n "LipRightLocalPosPB";
	rename -uid "41E185F7-4937-6D2C-4F1B-878FF0203ECD";
	setAttr ".ri" 1;
createNode pairBlend -n "LipLeftLocalPosPB";
	rename -uid "C918FABB-4F31-73FF-52E7-CD933DAE7203";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip5WorldPB";
	rename -uid "525C76EC-4215-1401-330A-C4A376BF2E68";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip1WorldPB";
	rename -uid "834B94FA-49D1-090D-876B-05A4B5581DC6";
	setAttr ".ri" 1;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "535D8432-43E1-822C-780F-10BDE1AA7A58";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode plusMinusAverage -n "LeftUpLipConerCtrlTransPM";
	rename -uid "1075CE06-4C73-A88B-4244-4B88FC790302";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftUpLipConerCtrlRotPM";
	rename -uid "5810C50F-47B5-3FFC-6678-BCAA8DBD6917";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion1";
	rename -uid "7130F7F8-46CD-5250-7AE0-0B9C77B548AE";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "C0113F26-4ED5-6FCA-70CE-FDB633089428";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "FB4C51CC-4767-132B-7052-A8B6A240812C";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "LeftDownLipConerCtrlRotPM";
	rename -uid "F747BCFD-4B2B-CE05-EED6-318BAF3BA6F5";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LeftDownLipConerCtrlTransPM";
	rename -uid "613848C3-4796-1DE3-D2FE-6D8AF686D548";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion4";
	rename -uid "D3EF7E7A-4131-7133-579A-E4AE12CAC7F9";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "637509DB-454F-B548-FC79-3DB28262AC7C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "74347486-438B-DE18-5DEC-5481B4A5A0AD";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "RightUpLipConerCtrlTransPM";
	rename -uid "163BB675-410E-BA4E-2804-8F9AD1AAD5AF";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "RightUpLipConerCtrlRotPM";
	rename -uid "9DF6E9EB-4379-433D-D31D-BC96EFE67DEB";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion7";
	rename -uid "24913706-42CD-62E1-152E-CE8E282D6F70";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "6339AD1C-47ED-75B9-D2D2-82A893D6FF16";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	rename -uid "F5FFC598-457F-266C-D882-988301D16EEB";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "RightDownLipConerCtrlTransPM";
	rename -uid "545449CA-429C-31DD-1942-D49B1A14E085";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "RightDownLipConerCtrlRotPM";
	rename -uid "F496C459-4CE3-1337-7949-DCB4FDC594DF";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion10";
	rename -uid "075DB249-48AE-72B8-FE65-AE92C6E013BE";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	rename -uid "B76E553B-43EF-F8CD-3469-DFBD4CA5C987";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "15CC23DB-4E68-F294-BEA3-F3B502E55F47";
	setAttr ".cf" 57.295779513082323;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8F580670-4D7C-EF88-5279-1EA091FC6253";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1629\n            -height 1075\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"look\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1629\\n    -height 1075\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1629\\n    -height 1075\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D1DA9CC5-4A30-ED9C-834C-BD989CC32B6E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode pairBlend -n "RightDnLipCrvPoserMiddlePB";
	rename -uid "8283F800-48D7-D149-BCC1-2882D783F274";
	setAttr ".ri" 1;
createNode pairBlend -n "RightUpLipPoserMiddlePB";
	rename -uid "F8708890-4C6D-50A5-88F6-D9B0A3BEFEFE";
	setAttr ".ri" 1;
createNode pairBlend -n "LeftUpLipPoserMiddlePbw";
	rename -uid "AEC92745-4C86-263C-AC25-72A5FFE73C3D";
	setAttr ".ri" 1;
createNode pairBlend -n "LeftDnLipCrvPoserMiddlePbw";
	rename -uid "4896D205-4EBF-16EF-3A87-D9B3A3EAF046";
	setAttr ".ri" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "57807305-41B8-6ADC-E4E8-64A40BC56F37";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -315.27605609231284 -209.64230594455168 ;
	setAttr ".tgi[0].vh" -type "double2" 1046.9087796490116 237.41650504519816 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 58.571430206298828;
	setAttr ".tgi[0].ni[0].y" 82.016807556152344;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" 422.85714721679688;
	setAttr ".tgi[0].ni[1].y" 40;
	setAttr ".tgi[0].ni[1].nvs" 18304;
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 32 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
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
connectAttr "LeftUpLipPoser.r" "RightUpLipPoser.r";
connectAttr "LeftUpLipPoser.t" "RightUpLipPoser.t";
connectAttr "LeftUpLipPos.r" "RightUpLipPos.r";
connectAttr "LeftUpLipPos.t" "RightUpLipPos.t";
connectAttr "LipMainCtrl.t" "LipMainDownCnt.t";
connectAttr "LipMainCtrl.r" "LipMainDownCnt.r";
connectAttr "DownLipMainCtrl.t" "DownLipMainCnt.t";
connectAttr "DownLipMainCtrl.r" "DownLipMainCnt.r";
connectAttr "LeftDnLipCrvPoser.r" "RightDnLipCrvPoser.r";
connectAttr "LeftDnLipCrvPoser.t" "RightDnLipCrvPoser.t";
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
connectAttr "LeftCornerUpLipPoser.r" "RightCornerUpLipPoser.r";
connectAttr "LeftCornerUpLipPoser.t" "RightCornerUpLipPoser.t";
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
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
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
connectAttr "LeftCornerUpLipPoser.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "RightCornerUpLipPoserGrp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
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
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
// End of lipCtrl.ma
