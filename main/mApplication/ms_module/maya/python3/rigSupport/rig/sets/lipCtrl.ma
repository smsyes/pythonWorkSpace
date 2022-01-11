//Maya ASCII 2022 scene
//Name: lipCtrl05.ma
//Last modified: Tue, Jan 11, 2022 08:56:09 PM
//Codeset: 949
requires maya "2022";
requires "mtoa" "4.2.4";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "BE1DDFC1-4B3F-A164-61D4-1AA9BC977D34";
createNode transform -n "LipRigGrp";
	rename -uid "F23B9B0E-41CE-EF18-B623-C7B5987C105A";
createNode transform -n "LipCtrlGrp" -p "LipRigGrp";
	rename -uid "567EE381-40D7-08C7-74DE-A8BBBE65AEAC";
	setAttr ".t" -type "double3" -2.7794001988259344e-08 1.2612133559741778e-13 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipMainRootCnt" -p "LipCtrlGrp";
	rename -uid "82C470B7-43B2-DAEE-575F-9E8C3173ADE4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipMainCtrlOffGrp" -p "LipMainRootCnt";
	rename -uid "1050E8CD-404F-1731-D355-EB9F687D15B1";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "LipMainCtrlGrp" -p "LipMainCtrlOffGrp";
	rename -uid "513F1520-46B8-F9EE-511F-51B4389D1584";
createNode transform -n "LipMainCtrl" -p "LipMainCtrlGrp";
	rename -uid "FD32C26C-4716-6B1F-19C6-95BE3F7C8CD7";
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
	rename -uid "41C3BC3E-4891-ACA3-19E7-0AA01F4AC0FE";
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
	rename -uid "C1190040-4DE6-F09D-D7AF-318485EEBF1D";
createNode transform -n "UpLipMainCtrl" -p "UpLipMainCtrlOffGrp";
	rename -uid "1A7FD94F-4F7F-6F1F-F412-AC859C0141AC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "UpLipMainCtrlShape" -p "UpLipMainCtrl";
	rename -uid "909A653B-4C68-500A-1853-AEACE2935A5F";
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
	rename -uid "3E7E5DE7-450B-8718-9161-4BA28A2E50DD";
createNode transform -n "DownLipMainCtrl" -p "DownLipMainCtrlOffGrp";
	rename -uid "FA2362E6-4E29-EB20-AC25-4D952DEF0247";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "DownLipMainCtrlShape" -p "DownLipMainCtrl";
	rename -uid "132A3356-4528-071C-861C-D2B2FC380913";
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
	rename -uid "0B7075E4-48D8-FBD1-20DA-C4BC8B85D6E7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightLipConerCtrlOffGrp" -p "RightLipConerRootCnt";
	rename -uid "32A21C64-41E0-9820-5C78-55914AFB46BC";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999956 -1.0000000000000004 ;
createNode transform -n "RightLipConerCtrlGrp" -p "RightLipConerCtrlOffGrp";
	rename -uid "F7521C66-48FE-052D-0379-7F8D25908C2C";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 1.7763568394002505e-15 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightLipConerRvs" -p "RightLipConerCtrlGrp";
	rename -uid "E2A6575A-4A89-E80F-72F7-D8B72449A558";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "RightLipConerCtrl" -p "RightLipConerRvs";
	rename -uid "F21CE1DE-466E-3D03-0594-B08032E97424";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "RightLipConerCtrlShape" -p "RightLipConerCtrl";
	rename -uid "65878B1C-4BE5-301F-F42E-3A946514A162";
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
	rename -uid "70D5AEDC-4CFE-1DC1-3151-E3B2DE9E0459";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "RightUpLipConerCtrl" -p "RightUpLipConerCtrlGrp";
	rename -uid "51AECFAF-4E48-FB6E-0419-978B99F56986";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipConerCtrlShape" -p "RightUpLipConerCtrl";
	rename -uid "2153DE4E-4A2C-FF3D-BF60-77852253F7EB";
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
	rename -uid "5018C912-4D15-250A-ADC9-B9BA057F8B78";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipConerCtrl" -p "RightDownLipConerCtrlGrp";
	rename -uid "D8352621-4B75-3B3F-C7D2-8D871ADF3AE1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipConerCtrlShape" -p "RightDownLipConerCtrl";
	rename -uid "8C7FFC71-4D60-C560-ED33-CBA13657201F";
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
	rename -uid "B69467E0-456A-9169-D171-0DBB57C683B7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipBCtrlOffGrp" -p "RightUpLipBRootCnt";
	rename -uid "A8D0CFA7-40D7-5004-9A82-508EDCD69631";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode transform -n "RightUpLipBCtrlGrp" -p "RightUpLipBCtrlOffGrp";
	rename -uid "CC7CE1FE-4DCE-A132-54E7-CEA0471732C5";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightUpLipBRvs" -p "RightUpLipBCtrlGrp";
	rename -uid "B38F9C4A-4AA9-4D19-4A28-A8B334592C8F";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightUpLipBCtrl" -p "RightUpLipBRvs";
	rename -uid "E37FF5A8-47FF-5F91-F22A-17A1A9F4126B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipBCtrlShape" -p "RightUpLipBCtrl";
	rename -uid "07B91454-454E-803D-2B1F-908D3DA7A80F";
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
	rename -uid "D5DAA1B8-49B6-5E6F-1F5E-98A2219CAC62";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightUpLipACtrlOffGrp" -p "RightUpLipARootCnt";
	rename -uid "9184BC0D-4116-B74C-3050-BE82A6B1F119";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1.0000000000000004 ;
createNode transform -n "RightUpLipACtrlGrp" -p "RightUpLipACtrlOffGrp";
	rename -uid "302E29AE-480B-D145-75ED-9581228AA95B";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightUpLipARvs" -p "RightUpLipACtrlGrp";
	rename -uid "39B95727-4A0E-5FB3-9EE5-F7BF1BAEE789";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "RightUpLipACtrl" -p "RightUpLipARvs";
	rename -uid "1E6E42A1-4FB8-8CC9-13A8-2DA655F51ADD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightUpLipACtrlShape" -p "RightUpLipACtrl";
	rename -uid "1FE4B341-4652-2B10-CA52-06B9BA2A812E";
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
	rename -uid "94516ADA-42AF-E166-EDFD-42A73ECF85E9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterUpLipMCtrlOffGrp" -p "CenterUpLipMRootCnt";
	rename -uid "E303936C-4F08-0C78-D3B6-929A27B2D3B9";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "CenterUpLipMCtrlGrp" -p "CenterUpLipMCtrlOffGrp";
	rename -uid "6B6098E4-4866-7D68-1731-29876E1A94B4";
createNode transform -n "CenterUpLipMRvs" -p "CenterUpLipMCtrlGrp";
	rename -uid "4E9B59AB-46BF-3F4B-E4A5-C99AB0B87D57";
createNode transform -n "CenterUpLipMCtrl" -p "CenterUpLipMRvs";
	rename -uid "A2E18DD4-4637-96AA-F6D4-D28ECADC36A7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterUpLipMCtrlShape" -p "CenterUpLipMCtrl";
	rename -uid "8026044E-4746-9151-5C83-CDB6D44C35C4";
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
	rename -uid "56D33B5D-431A-3092-0C8C-0AABF8E407FE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipACtrlOffGrp" -p "LeftUpLipARootCnt";
	rename -uid "4FC47175-40A1-EA36-3410-17856C0F56D1";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999967 ;
createNode transform -n "LeftUpLipACtrlGrp" -p "LeftUpLipACtrlOffGrp";
	rename -uid "14C4303C-47D5-09AB-A52B-02A89033C961";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipARvs" -p "LeftUpLipACtrlGrp";
	rename -uid "E17524F0-4C0D-B5D4-C613-41A4502B7F63";
createNode transform -n "LeftUpLipACtrl" -p "LeftUpLipARvs";
	rename -uid "BE43F368-424C-9F73-0396-4686BFEECB2D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipACtrlShape" -p "LeftUpLipACtrl";
	rename -uid "0CDE0F18-499E-0622-CF70-968A931A6D85";
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
	rename -uid "1C595338-42F8-4509-87A5-E4A15CF6BCC3";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipBCtrlOffGrp" -p "LeftUpLipBRootCnt";
	rename -uid "2BF3DC57-4975-464F-AA82-F38600A4802C";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "LeftUpLipBCtrlGrp" -p "LeftUpLipBCtrlOffGrp";
	rename -uid "221181AF-4EB4-F39A-338D-AC8AA6030761";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftUpLipBRvs" -p "LeftUpLipBCtrlGrp";
	rename -uid "F0FD171D-4227-FC50-0285-428BD99A2A91";
createNode transform -n "LeftUpLipBCtrl" -p "LeftUpLipBRvs";
	rename -uid "AE2888EC-435A-7030-4332-A0B474BF77B2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipBCtrlShape" -p "LeftUpLipBCtrl";
	rename -uid "32AE8C13-4C0E-CBBF-CF3E-6DBD82775E4A";
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
	rename -uid "13BC0964-43B1-0395-DDE0-65B96E5D21B2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftLipConerCtrlOffGrp" -p "LeftLipConerRootCnt";
	rename -uid "E7CC5525-49E4-EEF5-275F-6FA85BE7F8F2";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "LeftLipConerCtrlGrp" -p "LeftLipConerCtrlOffGrp";
	rename -uid "E1AD73AF-446B-9866-A65C-8BB71350CA50";
createNode transform -n "LeftLipConerRvs" -p "LeftLipConerCtrlGrp";
	rename -uid "B2CB1E86-4732-D004-66C4-A2B8FEEAD694";
createNode transform -n "LeftLipConerCtrl" -p "LeftLipConerRvs";
	rename -uid "BD41D7EE-400D-9439-4DCA-2C83300BFBF6";
	addAttr -ci true -sn "Pbw" -ln "Pbw" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Pbw" 0.1;
createNode nurbsCurve -n "LeftLipConerCtrlShape" -p "LeftLipConerCtrl";
	rename -uid "8337F660-40CE-765A-7CB4-78980ACEC099";
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
	rename -uid "5F9D94C6-4B3C-DB47-872A-F3B3EB3DD28A";
	setAttr ".t" -type "double3" -1.1430856261540612e-12 -1.0658141036401503e-14 -3.4461322684364859e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftUpLipConerCtrl" -p "LeftUpLipConerCtrlGrp";
	rename -uid "69B5822D-477F-82BA-3315-9FBEB9B88A59";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftUpLipConerCtrlShape" -p "LeftUpLipConerCtrl";
	rename -uid "709C0EAE-4F4F-F24E-F324-FBB69D07BD76";
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
	rename -uid "42AC6965-42A0-7889-4590-6B9FC3A8BEDF";
	setAttr ".t" -type "double3" 1.1528555887707626e-12 -1.0658141036401503e-14 3.1263880373444408e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipConerCtrl" -p "LeftDownLipConerCtrlGrp";
	rename -uid "F4745445-46BA-8181-0E26-C48E396EB217";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipConerCtrlShape" -p "LeftDownLipConerCtrl";
	rename -uid "E8683301-4F4A-9B87-32BA-D9A7D29A160F";
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
	rename -uid "D40ACD0F-42B5-6D7C-9705-F2BF1580361E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipBCtrlOffGrp" -p "LeftDownLipBRootCnt";
	rename -uid "9276FD0F-41E5-0334-047C-A2BD7704838D";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 -1 ;
createNode transform -n "LeftDownLipBCtrlGrp" -p "LeftDownLipBCtrlOffGrp";
	rename -uid "D34A4A06-4710-C6A4-531F-38AE3CB6FD13";
createNode transform -n "LeftDownLipBRvs" -p "LeftDownLipBCtrlGrp";
	rename -uid "10072BE9-4D01-28B1-099D-8BA4E0EEAB30";
createNode transform -n "LeftDownLipBCtrl" -p "LeftDownLipBRvs";
	rename -uid "B6D87699-4234-051E-00B4-71B14957BB98";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipBCtrlShape" -p "LeftDownLipBCtrl";
	rename -uid "93D69C0A-46CD-E62C-DD07-E0A9E95231DD";
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
	rename -uid "9277C77E-433D-17E2-2488-12B4F276CF17";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftDownLipACtrlOffGrp" -p "LeftDownLipARootCnt";
	rename -uid "8F48EA28-4B2D-13FF-64E2-50A1F9E73E4B";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LeftDownLipACtrlGrp" -p "LeftDownLipACtrlOffGrp";
	rename -uid "D3AA9472-4BEF-2C86-2EF8-84A17AA33051";
createNode transform -n "LeftDownLipARvs" -p "LeftDownLipACtrlGrp";
	rename -uid "1CEF22B2-479F-7397-1FE7-06BB9F5444FE";
createNode transform -n "LeftDownLipACtrl" -p "LeftDownLipARvs";
	rename -uid "ED77EDFE-4B42-6B90-9246-A4B758C9E338";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftDownLipACtrlShape" -p "LeftDownLipACtrl";
	rename -uid "9893587C-41DC-FD66-32EB-9494059EEE2C";
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
	rename -uid "CFC68B0E-4F3C-84DE-64FC-2F930AC9609C";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "CenterDownLipMCtrlOffGrp" -p "CenterDownLipMRootCnt";
	rename -uid "669487F9-4151-15FB-9284-A3A9CD94FD57";
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 -1 ;
createNode transform -n "CenterDownLipMCtrlGrp" -p "CenterDownLipMCtrlOffGrp";
	rename -uid "F25D651F-4CD0-9307-9579-E6B2B937479B";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "CenterDownLipMRvs" -p "CenterDownLipMCtrlGrp";
	rename -uid "8F39A150-41F1-0D0E-7781-B8B790F4297E";
createNode transform -n "CenterDownLipMCtrl" -p "CenterDownLipMRvs";
	rename -uid "452CACA5-4043-345A-B6CA-54A2019AE642";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "CenterDownLipMCtrlShape" -p "CenterDownLipMCtrl";
	rename -uid "EB6961DD-46B8-A709-C47F-36BFD50DB2B1";
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
	rename -uid "2B7CBE14-438A-8382-7240-B197EEF25A84";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipACtrlOffGrp" -p "RightDownLipARootCnt";
	rename -uid "1D6C624B-4EE2-0BA7-4839-438C27FE852D";
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightDownLipACtrlGrp" -p "RightDownLipACtrlOffGrp";
	rename -uid "15D4BE5E-4D8E-2E2F-0C88-9A9DF9A60381";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "RightDownLipARvs" -p "RightDownLipACtrlGrp";
	rename -uid "3BD66AB7-45C1-8186-D64E-33974629656F";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightDownLipACtrl" -p "RightDownLipARvs";
	rename -uid "0B381A3D-49FC-DE74-5876-F6B6E80612BF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipACtrlShape" -p "RightDownLipACtrl";
	rename -uid "135D5596-42B3-F569-2E24-F793EE7E33B9";
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
	rename -uid "EFF0E36D-41F2-4C07-4BA8-0B82F3F6C34B";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipBCtrlOffGrp" -p "RightDownLipBRootCnt";
	rename -uid "98418C2A-46EC-B425-AFF7-15B49465E48A";
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "RightDownLipBCtrlGrp" -p "RightDownLipBCtrlOffGrp";
	rename -uid "8DBBC4A4-4EA4-BE2A-755B-AEB7D2943646";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "RightDownLipBRvs" -p "RightDownLipBCtrlGrp";
	rename -uid "C5DDFA2D-4362-2854-DFD1-F5BDAB3C83E5";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightDownLipBCtrl" -p "RightDownLipBRvs";
	rename -uid "00317113-4CD7-A6E0-6D76-E88743F8BBAC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightDownLipBCtrlShape" -p "RightDownLipBCtrl";
	rename -uid "0B0BDD3C-4778-EC09-EBB8-68A880AE0EC2";
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
	rename -uid "10B20785-4F86-67A0-CC0F-CD8895F60A28";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LipSurfPosGrp" -p "LipSysGrp";
	rename -uid "5AF39AB9-46F9-7332-7805-078A3C089EB8";
	setAttr ".v" no;
createNode transform -n "LipSurfAPosGrp" -p "LipSurfPosGrp";
	rename -uid "B4BF7114-4719-7693-49AD-0AA4A8304F6B";
createNode transform -n "LipSurf0APosGrp" -p "LipSurfAPosGrp";
	rename -uid "81E5095A-4442-434E-DE25-A592BFDF6763";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf0APos" -p "LipSurf0APosGrp";
	rename -uid "F559C614-46A3-135B-A4DD-9BAF9ABAF90D";
createNode locator -n "LipSurf0APosShape" -p "LipSurf0APos";
	rename -uid "51856E97-4181-F980-0FBE-D3A72275C064";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2APosGrp" -p "LipSurfAPosGrp";
	rename -uid "AFBA7F99-4852-F388-0457-E3A12A3C1A4E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf2APos" -p "LipSurf2APosGrp";
	rename -uid "5C329603-4856-5ED1-DE3F-CDB438464231";
createNode locator -n "LipSurf2APosShape" -p "LipSurf2APos";
	rename -uid "7C7A38BF-4019-17EA-849B-B98F02F3F489";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3APosGrp" -p "LipSurfAPosGrp";
	rename -uid "FD58A216-4A48-E1FC-360F-03AA11D8F0AC";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf3APos" -p "LipSurf3APosGrp";
	rename -uid "E6CA99A2-40C5-6D0A-572D-33AB0F82D3C5";
createNode locator -n "LipSurf3APosShape" -p "LipSurf3APos";
	rename -uid "030777AB-41D8-9E2F-7FF6-CF8D588B3015";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4APosGrp" -p "LipSurfAPosGrp";
	rename -uid "FE07F9D7-497D-E12F-F5DF-88BBE30193E0";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf4APos" -p "LipSurf4APosGrp";
	rename -uid "5B1BA2DF-46E7-AE92-F055-E18D4F4094AE";
createNode locator -n "LipSurf4APosShape" -p "LipSurf4APos";
	rename -uid "E02934E5-4013-3558-3E87-5A9E1E5B3F5E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5APosGrp" -p "LipSurfAPosGrp";
	rename -uid "BC81BD7A-47A9-D26E-676C-F1AC8A3A8E24";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf5APos" -p "LipSurf5APosGrp";
	rename -uid "80301481-4DA6-F441-2D39-D6997BE6C4C9";
createNode locator -n "LipSurf5APosShape" -p "LipSurf5APos";
	rename -uid "77EDBDBF-4D9B-46EE-C198-069CBC47FD72";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6APosGrp" -p "LipSurfAPosGrp";
	rename -uid "5E07F5C6-4282-BF11-1C9D-C2BC98EA1B61";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf6APos" -p "LipSurf6APosGrp";
	rename -uid "A8F2DF5F-496E-120C-82EA-95A0DEA6E1BB";
createNode locator -n "LipSurf6APosShape" -p "LipSurf6APos";
	rename -uid "E103AE01-467C-6D00-A257-EFA7D609DCE5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8APosGrp" -p "LipSurfAPosGrp";
	rename -uid "34586DFA-4B51-ED15-6D9D-E180479DB543";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf8APos" -p "LipSurf8APosGrp";
	rename -uid "9838555A-418A-4237-D434-33AB1AEFEFB9";
createNode locator -n "LipSurf8APosShape" -p "LipSurf8APos";
	rename -uid "90D66CAA-4BE0-1D3F-152F-738239C1DEAC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurfBPosGrp" -p "LipSurfPosGrp";
	rename -uid "9A286CA9-498D-0D74-03C5-36B7ECD0D84C";
createNode transform -n "LipSurf0BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "7593872B-4DE4-35F9-5E3C-EFBA35FA4AA6";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf0BPos" -p "LipSurf0BPosGrp";
	rename -uid "7425A0FA-4FF7-EDB5-696D-3CAC4C1C728A";
createNode locator -n "LipSurf0BPosShape" -p "LipSurf0BPos";
	rename -uid "0E717706-451F-50F1-A1A4-C597B8427B8E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf2BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "0E20F5FD-4FCF-EF0D-6E30-7ABF9377B61D";
createNode transform -n "LipSurf2BPos" -p "LipSurf2BPosGrp";
	rename -uid "B6E2473B-4E56-90C8-5A85-E4B62BB00891";
createNode locator -n "LipSurf2BPosShape" -p "LipSurf2BPos";
	rename -uid "B2FD3508-4709-CA24-E2CD-44BBB12B9087";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf3BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "C7E63C9C-4539-9A04-D7B3-0EB79879FF40";
createNode transform -n "LipSurf3BPos" -p "LipSurf3BPosGrp";
	rename -uid "E3FC043A-4C89-8120-9D99-6B8CD5F3670F";
createNode locator -n "LipSurf3BPosShape" -p "LipSurf3BPos";
	rename -uid "5154E67C-4CD2-2A40-F5A0-8FA4736AA4C8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf4BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "4A606762-4928-5C47-935A-098CBCB7CD1C";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "LipSurf4BPos" -p "LipSurf4BPosGrp";
	rename -uid "08120270-439D-8D18-AC99-9394E863947C";
createNode locator -n "LipSurf4BPosShape" -p "LipSurf4BPos";
	rename -uid "D0C6BA9D-4F50-3D05-7362-C6A35525CACC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf5BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "2C4DDD84-4DAA-C86C-5A4D-E081C2A60BB1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "LipSurf5BPos" -p "LipSurf5BPosGrp";
	rename -uid "92AB2555-4DDA-4136-B701-1B84F3FEEDEB";
createNode locator -n "LipSurf5BPosShape" -p "LipSurf5BPos";
	rename -uid "800D6894-4AF8-8521-30A3-F4AF546864C8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf6BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "F2783780-48AD-D76D-72BE-57A1C4331269";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -1 ;
createNode transform -n "LipSurf6BPos" -p "LipSurf6BPosGrp";
	rename -uid "B6719C1C-4D7E-F253-D746-CC86573593FC";
createNode locator -n "LipSurf6BPosShape" -p "LipSurf6BPos";
	rename -uid "58A8BEDC-4B41-CF9F-A3ED-6E88D00EF62F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipSurf8BPosGrp" -p "LipSurfBPosGrp";
	rename -uid "542B323F-4FCA-D242-7717-7A8FCAE165E8";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipSurf8BPos" -p "LipSurf8BPosGrp";
	rename -uid "981FF4CE-4378-02A9-C336-198DFC9E462B";
createNode locator -n "LipSurf8BPosShape" -p "LipSurf8BPos";
	rename -uid "A4B4BC2C-4AEB-292B-E00F-FB94CD421262";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipZipGrp" -p "LipSysGrp";
	rename -uid "C155B25A-4810-52EB-0C85-B0AA026727D0";
	setAttr ".v" no;
createNode transform -n "LipSurfAZipPosGrp" -p "LipZipGrp";
	rename -uid "64B3B7B2-4CBC-02D8-156E-0BB769336533";
createNode transform -n "LipSurf0AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "F6AE3CB4-46C1-001D-7B89-0F94D691209E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "80C1F36A-49BC-AAEE-0E53-8E86AC68F7AF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "D9590B27-424B-1C81-E01E-038419485E6D";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "2A365865-4D85-BA89-9FCA-9492013AE078";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "2197086C-4E5F-C13C-C3EB-939575ABB666";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "19DE276E-4961-F1A8-72A5-23A7E49E2FE0";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8AZipPos" -p "LipSurfAZipPosGrp";
	rename -uid "53FC39A4-40CD-ABE7-05AC-9A8C6A1612B9";
	setAttr ".dla" yes;
createNode transform -n "LipSurfBZipPosGrp" -p "LipZipGrp";
	rename -uid "4015F325-4D72-CD2E-17BC-A2B8D28897AE";
	setAttr ".t" -type "double3" 6.3527471044072525e-22 0 -1.3440637491868301e-14 ;
createNode transform -n "LipSurf0BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "CCB0BAB4-40F7-68CC-C58C-06B9B000DFD9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf2BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "66A712D7-4644-D37A-2C9A-1381C2492D6C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf3BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "19BA9D06-4FE6-9179-BB1E-AA92965B0098";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".dla" yes;
createNode transform -n "LipSurf4BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "5C76859A-40ED-B73D-E897-F5A0F6E4533D";
	setAttr ".dla" yes;
createNode transform -n "LipSurf5BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "2397A6A8-4B6A-F14A-D076-02B8020AE101";
	setAttr ".dla" yes;
createNode transform -n "LipSurf6BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "2E299EB8-46D3-7822-6379-0087CDC18947";
	setAttr ".dla" yes;
createNode transform -n "LipSurf8BZipPos" -p "LipSurfBZipPosGrp";
	rename -uid "5782C2D8-4A9D-74B4-56FC-BB917C7A5D5E";
	setAttr ".r" -type "double3" 0 -3.2542848354264213e-27 0 ;
	setAttr ".dla" yes;
createNode transform -n "LipCrvsGrp" -p "LipSysGrp";
	rename -uid "0C63531C-4EA1-CFD6-7235-118419C0E011";
createNode transform -n "LibZipSurf" -p "LipCrvsGrp";
	rename -uid "5836859C-4E7F-6CE7-9311-70A9853602A9";
	setAttr ".v" no;
createNode nurbsSurface -n "LibZipSurfShape" -p "LibZipSurf";
	rename -uid "87EB8F33-43B8-3B05-240F-29B02F948A98";
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
	rename -uid "D3FE4BA8-4F95-652D-2EFE-328129EB0865";
	setAttr ".tmp" yes;
	setAttr ".ovdt" 2;
createNode transform -n "LipDownPosCrv" -p "LipPosCrvGrp";
	rename -uid "1ED39D30-4CE2-9511-9A1C-77A8A14160D9";
createNode bezierCurve -n "LipDownPosCrvShape" -p "LipDownPosCrv";
	rename -uid "374E9998-4D93-138E-3F38-7F85D925EB89";
	setAttr -k off ".v";
	setAttr ".ovc" 18;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipDownPosCrvShapeOrig" -p "LipDownPosCrv";
	rename -uid "9A473C63-4340-41E0-3C23-B7B7D20CB63A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1236469890099765 -7.105427357601005e-15 1.0000000000000004
		-1.1236469890099765 -7.105427357601005e-15 1.0000000000000004
		-0.89999927475939656 -1.2269108659853202e-13 0.99999999999998235
		7.2524060363017278e-07 -1.2244615723870255e-13 0.99999999999997879
		0.90000072524060382 -1.2244615723870255e-13 0.99999999999998235
		1.1236469890099767 -1.0658141036401508e-14 0.99999999999999933
		1.1236469890099767 -1.0658141036401508e-14 0.99999999999999933
		;
createNode transform -n "LipUpPosCrv" -p "LipPosCrvGrp";
	rename -uid "EC151D49-4E09-4D18-B189-EBB0694FD1CF";
createNode bezierCurve -n "LipUpPosCrvShape" -p "LipUpPosCrv";
	rename -uid "5FCFF076-4BF3-39E0-E56F-BB8093AC9FA5";
	setAttr -k off ".v";
	setAttr ".ovc" 22;
	setAttr ".tw" yes;
createNode bezierCurve -n "LipUpPosCrvShapeOrig" -p "LipUpPosCrv";
	rename -uid "90B9A714-4DC6-A33B-46B6-53836252124D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.1236469890099765 -7.1054273576010034e-15 1.0000000000000075
		-1.1236469890099765 -7.1054273576010034e-15 1.0000000000000075
		-0.89999930889893964 1.4210854715202013e-14 0.99999999999999634
		6.9110106061117151e-07 1.4210854715202013e-14 0.99999999999999223
		0.90000069110106096 1.4210854715202013e-14 0.99999999999999578
		1.1236469890099767 -7.1054273576010034e-15 1.0000000000000029
		1.1236469890099767 -7.1054273576010034e-15 1.0000000000000029
		;
createNode transform -n "LipLocalGrp" -p "LipSysGrp";
	rename -uid "A5DB4CDB-40D2-2845-4CCB-D0A9880B8645";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LipLocalLoc" -p "LipLocalGrp";
	rename -uid "1BAA0843-4B62-66CB-D79B-55870CE8B5BE";
createNode locator -n "LipLocalLocShape" -p "LipLocalLoc";
	rename -uid "911EBBBA-4498-D823-881E-7EAACDEAD956";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipDownRightLocalPos" -p "LipLocalGrp";
	rename -uid "D044CA98-473C-66E4-492A-FC9841225A76";
createNode locator -n "LipDownRightLocalPosShape" -p "LipDownRightLocalPos";
	rename -uid "6CCFE2BF-4005-89BE-D9A7-B08AC6FB0304";
	setAttr -k off ".v";
createNode transform -n "LipDownLeftLocalPos" -p "LipLocalGrp";
	rename -uid "5DC9868B-4C57-2611-ED4B-1391B5A0040D";
createNode locator -n "LipDownLeftLocalPosShape" -p "LipDownLeftLocalPos";
	rename -uid "C3F4CB95-4364-8A57-69F5-8BA39B7549BE";
	setAttr -k off ".v";
createNode transform -n "LipRootLocalPos" -p "LipLocalGrp";
	rename -uid "2FCCD6F9-44F6-A525-0334-E29E74ACBA8F";
createNode transform -n "LipRootPoser" -p "LipSysGrp";
	rename -uid "1DA4324E-4094-FEA8-C800-79B3946EF6D2";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -cb on ".mode";
createNode nurbsCurve -n "LipRootPoserShape" -p "LipRootPoser";
	rename -uid "32F1367B-40F8-F3FB-B04A-4AAFCCCAE7A4";
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
	rename -uid "AE091115-48D2-9D3C-F3CD-A3B1F63B0681";
createNode transform -n "LipRootPos" -p "LipPosersGrp";
	rename -uid "8B6E9A84-42A8-7617-53BD-E29F8B3177A0";
createNode transform -n "LipMainUpCnt" -p "LipRootPos";
	rename -uid "E1E0321D-42AA-C5A1-0234-0FB762D26D54";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainUpCntOffGrp" -p "LipMainUpCnt";
	rename -uid "B227654A-4ACB-3507-88E7-F394CFB7EE7A";
	setAttr ".t" -type "double3" 0 7.105427357601005e-15 0.99999999999999989 ;
createNode transform -n "UpLipMainCntOffGrp" -p "LipMainUpCntOffGrp";
	rename -uid "B269C5D9-4AF4-5A4B-0AD4-49ABB48DAF8E";
	setAttr ".t" -type "double3" 0 3.5527136788004994e-15 -3.4416913763379853e-15 ;
createNode transform -n "UpLipMainCnt" -p "UpLipMainCntOffGrp";
	rename -uid "CAD5DD87-4EF1-4A01-22A7-12AA753686A5";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "UpLip2CrvPosOffGrp" -p "UpLipMainCnt";
	rename -uid "C79F3790-42F7-813B-FC80-6FA31CFF9A4E";
	setAttr ".t" -type "double3" -0.89999930889893964 0 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1.0000000000000004 ;
createNode transform -n "UpLip2CrvPos" -p "UpLip2CrvPosOffGrp";
	rename -uid "07CE49FB-48F2-1D29-6179-B588B35387D6";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "UpLip2CrvPosShape" -p "UpLip2CrvPos";
	rename -uid "5EA110DE-4C09-A990-C2AE-F0835E526552";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "UpLip2CrvPos";
	rename -uid "9F342CBE-446E-F7E2-16A4-9699135F5EDB";
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
	rename -uid "43536211-4499-AB3F-5FF5-61B424B4548E";
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
	rename -uid "190316FF-477B-EDA8-7EC4-F8979C58D03B";
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
	rename -uid "8DB3C2B7-4A94-92A4-0C62-3FB3DA54942E";
	setAttr ".t" -type "double3" 6.9110106061117162e-07 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "UpLip3CrvPos" -p "UpLip3CrvPosOffGrp";
	rename -uid "508F0CDE-4216-118A-555A-8F9BB117713E";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.0587911840678754e-22 3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "UpLip3CrvPosShape" -p "UpLip3CrvPos";
	rename -uid "A11BDDCA-484D-EC64-3471-4A8206C628D1";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "UpLip3CrvPos";
	rename -uid "A01914AD-4415-7A06-9143-668C01C6F81B";
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
	rename -uid "ED6694B6-466C-E9AD-DAAA-A7B1CB1895CF";
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
	rename -uid "C04F8383-44EF-BECA-9067-6CBF0E9B9FF3";
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
	rename -uid "B54E9271-4E78-AA9B-0BD1-66A34209E8DF";
	setAttr ".t" -type "double3" 0.90000069110106096 0 -6.6613381477509392e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "UpLip4CrvPos" -p "UpLip4CrvPosOffGrp";
	rename -uid "DBF45A26-407D-5666-D413-0A91EEBF45A0";
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
	rename -uid "4990E970-4D79-07DB-9D0A-3C90B290DE04";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "UpLip4CrvPos";
	rename -uid "6E6245CC-455F-5985-991C-30BBFDD5879B";
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
	rename -uid "598DE652-48A2-985F-498E-83BEDEFA9BEB";
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
	rename -uid "81B33904-4E79-BB2C-DC55-F9A3718014F3";
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
	rename -uid "05DEA9F0-4A77-6308-7C58-A9BA687CA000";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "LipWorldLocShape" -p "LipWorldLoc";
	rename -uid "DCE68391-4646-BC36-C10D-0AB4FAD32CA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
createNode transform -n "LipMainDownCnt" -p "LipWorldLoc";
	rename -uid "69376223-407A-F085-B20F-8B9076CBEFD9";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LipMainDownCntOffGrp" -p "LipMainDownCnt";
	rename -uid "497C3CF8-4DE7-5EB6-CB46-759B5C0F8635";
	setAttr ".t" -type "double3" 0 7.105427357601005e-15 0.99999999999999989 ;
createNode transform -n "DownLipMainCntOffGrp" -p "LipMainDownCntOffGrp";
	rename -uid "672ED944-4F3F-C50C-DEEC-DE9E69A148BC";
	setAttr ".t" -type "double3" 5.2939559203393771e-22 -3.5527136788005009e-15 -1.0547118733938987e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "DownLipMainCnt" -p "DownLipMainCntOffGrp";
	rename -uid "0BA947F3-40A8-E38E-06ED-89A41AF2E43B";
createNode transform -n "DownLip2CrvPosOffGrp" -p "DownLipMainCnt";
	rename -uid "9CA72C64-41B6-BF0B-F790-96A6E4BB58D8";
	setAttr ".t" -type "double3" -0.89999927475939667 -1.2624380027733247e-13 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "DownLip2CrvPos" -p "DownLip2CrvPosOffGrp";
	rename -uid "458386BE-4237-CDDB-45B5-BBA74C35962F";
	addAttr -ci true -sn "APbw" -ln "APbw" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BPbw" -ln "BPbw" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".APbw" 5;
	setAttr -cb on ".BPbw" 10;
createNode locator -n "DownLip2CrvPosShape" -p "DownLip2CrvPos";
	rename -uid "78488945-48DE-60BC-4A9E-1BAB7D704D3A";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "DownLip2CrvPos";
	rename -uid "43694C14-460E-CF1F-2262-B8AD7D8081C4";
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
	rename -uid "092973F2-4E1B-BF3A-C046-BB81DFD90DAC";
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
	rename -uid "750A99F5-4C0E-17E9-76DB-7D8E9E10AAF8";
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
	rename -uid "5033A871-4CF7-6973-4396-5EBB6334D742";
	setAttr ".t" -type "double3" 7.2524060363017215e-07 -1.25998870917503e-13 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999989 ;
createNode transform -n "DownLip3CrvPos" -p "DownLip3CrvPosOffGrp";
	rename -uid "91164E7C-4B9D-1D18-6423-9D85FD8AE95E";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.0587911840678754e-22 0 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "DownLip3CrvPosShape" -p "DownLip3CrvPos";
	rename -uid "75402CAB-4CB8-8026-0DB8-B48414FA9736";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "DownLip3CrvPos";
	rename -uid "FB94FE07-4324-1505-46EB-E1BEFBFBB75C";
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
	rename -uid "E1412E57-4451-3D5A-AB0D-BBB98205D768";
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
	rename -uid "00143038-4162-F6D5-ECB6-90B9356ACFA0";
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
	rename -uid "2B0B6126-4C6C-714C-2CB7-D6824B08B42B";
	setAttr ".t" -type "double3" 0.90000072524060393 -1.25998870917503e-13 -6.9944050551384862e-15 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999989 ;
createNode transform -n "DownLip4CrvPos" -p "DownLip4CrvPosOffGrp";
	rename -uid "349036F3-43D5-0346-0809-DFBC6B17453C";
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
	rename -uid "ADE15AC8-4C05-4C4A-7B36-D38E9F253F40";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "DownLip4CrvPos";
	rename -uid "903E4598-41A8-1339-5A3E-C184DEE401E8";
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
	rename -uid "1E789F5C-47B4-C80D-7022-F6944B7D101A";
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
	rename -uid "CFC15069-465B-6422-5AEC-6BB647BF59EE";
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
	rename -uid "DEA2DDFD-4A8B-15DF-BC6D-30A6A0E9751E";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
createNode transform -n "Lip5MainCntGrp" -p "Lip5WorldPBPosGrp";
	rename -uid "29C0E640-497C-A7F9-4F2D-F79A49BDF7F9";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Lip5CrvPos" -p "Lip5MainCntGrp";
	rename -uid "D87947E3-498C-EDB9-9FB9-6EA0317BD948";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.1236469890099767 -3.5527136788004986e-15 1.0000000000000029 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Lip5CrvPosShape" -p "Lip5CrvPos";
	rename -uid "FEB6AFAD-48E9-7EF2-78B5-42B636275D54";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "UpLip5MainCntGrp" -p "Lip5CrvPos";
	rename -uid "C0351825-4ACB-EDC3-A771-108501674850";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "UpLip5CrvPosGrp" -p "UpLip5MainCntGrp";
	rename -uid "DC3D2AC4-4EDC-AE87-39F9-B497C4C7D00E";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
createNode transform -n "UpLip5CrvPos" -p "UpLip5CrvPosGrp";
	rename -uid "64607822-461B-EC0C-02BA-F9BB661AA0B4";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "UpLip5CrvPosShape" -p "UpLip5CrvPos";
	rename -uid "F7637D34-4965-B3E7-8C4C-448B82904669";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip5MainCntGrp" -p "Lip5CrvPos";
	rename -uid "302BDF38-4C59-A963-89A5-9A9801776AC7";
	setAttr ".v" no;
createNode transform -n "DownLip5CrvPosGrp" -p "DownLip5MainCntGrp";
	rename -uid "64C955FB-47AC-A417-650B-75AE681C907C";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999922 ;
createNode transform -n "DownLip5CrvPos" -p "DownLip5CrvPosGrp";
	rename -uid "9F5C4CF3-4314-3227-0B10-718305BE58F7";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode locator -n "DownLip5CrvPosShape" -p "DownLip5CrvPos";
	rename -uid "46A3A953-4EC7-A30A-18C6-C89F18DB1D2D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "Lip5CrvPos";
	rename -uid "DB23121E-43AF-37D5-5EE2-8C96332A8A6E";
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
createNode nurbsCurve -n "AxisZShape" -p "Lip5CrvPos";
	rename -uid "8583CDB6-4BE4-25A6-4BA2-1E97F7EFF35E";
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
createNode nurbsCurve -n "AxisXShape" -p "Lip5CrvPos";
	rename -uid "8E320429-4D29-15EC-BCBA-7CB6B03F9D8A";
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
	rename -uid "2094E7BB-4DE1-18F3-08B7-7DB5236A65E8";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "Lip1MainCntGrp" -p "Lip1WorldPBPosGrp";
	rename -uid "09B826BB-4D5D-E449-579C-0FB3D6CEA882";
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000009 ;
createNode transform -n "Lip1CrvPosGrp" -p "Lip1MainCntGrp";
	rename -uid "A6C648AB-4364-4AFA-FD6D-C7A2A235651E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 -1.0000000000000007 ;
createNode transform -n "Lip1CrvPos" -p "Lip1CrvPosGrp";
	rename -uid "8235EA13-426F-F2AB-A39A-A08A9AEF217A";
	setAttr -l on -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "Lip1CrvPosShape" -p "Lip1CrvPos";
	rename -uid "8226FA90-4867-1AC1-08DC-A1AE7C177B1D";
	setAttr -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode nurbsCurve -n "AxisYShape" -p "Lip1CrvPos";
	rename -uid "84D2E691-470C-6D0E-B32D-35A99B75CA91";
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
	rename -uid "C8CD11BC-474B-7277-6F4C-358D622144F2";
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
	rename -uid "49A18117-4B95-2CFE-8267-D5A0986CF0F8";
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
createNode transform -n "Lip1MainOffGrp" -p "Lip1CrvPos";
	rename -uid "618E7B12-4B52-AB4B-A754-1FAF1D4644F3";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "UpLip1MainCntGrp" -p "Lip1MainOffGrp";
	rename -uid "F9F408ED-42B1-BAB4-354E-4FB461EC93A5";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "UpLip1CrvPosGrp" -p "UpLip1MainCntGrp";
	rename -uid "CBA007A9-4025-5FA8-B352-E8B44EC7CCD3";
createNode transform -n "UpLip1CrvPos" -p "UpLip1CrvPosGrp";
	rename -uid "0BEB04C9-433A-164C-38BE-82942C08BAE4";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "UpLip1CrvPosShape" -p "UpLip1CrvPos";
	rename -uid "B268A284-4B74-9969-B413-9DBCE3D9F07E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "DownLip1MainCntGrp" -p "Lip1MainOffGrp";
	rename -uid "2F3966D8-49FC-73C6-C04A-A6B73E20AAAC";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "DownLip1CrvPosGrp" -p "DownLip1MainCntGrp";
	rename -uid "D62956A2-4B73-0323-9A7F-298A18E0803A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "DownLip1CrvPos" -p "DownLip1CrvPosGrp";
	rename -uid "67360357-4C41-86B9-B47C-3089AFAA41E1";
	setAttr ".t" -type "double3" 0 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "DownLip1CrvPosShape" -p "DownLip1CrvPos";
	rename -uid "9184AF28-469F-749D-0D29-DB9960C139A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LipCtrlCrvGrp" -p "LipPosersGrp";
	rename -uid "2634BE18-4877-5C20-8A07-FDA39A8430B6";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "LipCtrlCrv" -p "LipCtrlCrvGrp";
	rename -uid "91E4F1A0-4548-37C2-5252-47BB6962D7E4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LipCtrlCrvShape" -p "LipCtrlCrv";
	rename -uid "87AA3865-4930-E370-A33C-088E476EEB6A";
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
	rename -uid "05136349-4E96-C6EE-84B3-90AA77178D49";
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
	rename -uid "D735CBE9-46FE-1FB1-C1CB-07BA0C61776B";
createNode transform -n "RightUpLipConerJntGrp" -p "LipJntGrp";
	rename -uid "2B8DEC10-441A-42C2-4403-D58436794D8E";
	setAttr ".s" -type "double3" 0.99999999999999867 1 -1.0000000000000002 ;
createNode joint -n "RightUpLipConerJnt" -p "RightUpLipConerJntGrp";
	rename -uid "C3DA4D1B-4F24-1D7B-9AC4-ABA9EC816BC1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightUpLipBJntGrp" -p "LipJntGrp";
	rename -uid "6EFB2F06-4C9B-7EA1-C569-9D891164D211";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 -1.0000000000000004 ;
createNode joint -n "RightUpLipBJnt" -p "RightUpLipBJntGrp";
	rename -uid "5449D156-42FA-C6D4-486E-D3A403E022F6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightUpLipAJntGrp" -p "LipJntGrp";
	rename -uid "92CB2FD4-4B59-ADB6-65C7-74B902AC171C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000004 ;
createNode joint -n "RightUpLipAJnt" -p "RightUpLipAJntGrp";
	rename -uid "A81640F7-41A2-F943-80DC-70B58CE8376D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "CenterUpLipMJntGrp" -p "LipJntGrp";
	rename -uid "41A7375B-422C-B89D-66BF-748BFCFF0E97";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode joint -n "CenterUpLipMJnt" -p "CenterUpLipMJntGrp";
	rename -uid "ABCB8A7C-4B58-805C-81D9-F9858E636ABA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipAJntGrp" -p "LipJntGrp";
	rename -uid "B7F9E0E5-44AE-69A6-DAB6-1FB15C3A1F3E";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 0.99999999999999967 ;
createNode joint -n "LeftUpLipAJnt" -p "LeftUpLipAJntGrp";
	rename -uid "C41BE0E7-4EFA-D25E-332A-BCBF2DD883AE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipBJntGrp" -p "LipJntGrp";
	rename -uid "E44527A5-4EE2-824E-F88F-C28DCBC28388";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 0.99999999999999989 ;
createNode joint -n "LeftUpLipBJnt" -p "LeftUpLipBJntGrp";
	rename -uid "AEC817EC-4C3F-C228-47FB-80ADFE8057ED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftUpLipConerJntGrp" -p "LipJntGrp";
	rename -uid "669D767F-43B4-4873-DD92-D3A065C455B1";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "LeftUpLipConerJnt" -p "LeftUpLipConerJntGrp";
	rename -uid "343A09BA-4BB1-0F73-40D0-598142A4792D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipConerJntGrp" -p "LipJntGrp";
	rename -uid "B98F8F09-44B8-4695-8EF6-008C8567494E";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "LeftDownLipConerJnt" -p "LeftDownLipConerJntGrp";
	rename -uid "B7E3CE8E-4E26-A055-60E8-FC87B544F5F5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipBJntGrp" -p "LipJntGrp";
	rename -uid "1EC8CBDF-42B0-51D9-EA7C-6C93EBC82472";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 -1 ;
createNode joint -n "LeftDownLipBJnt" -p "LeftDownLipBJntGrp";
	rename -uid "7CA4B0B9-4351-7B47-6BEC-4B803369F808";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftDownLipAJntGrp" -p "LipJntGrp";
	rename -uid "23D05C7E-49FC-90CF-B36B-B3AE68C4DD91";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode joint -n "LeftDownLipAJnt" -p "LeftDownLipAJntGrp";
	rename -uid "4E0E0D72-4E94-F712-85A6-C480ED4AA697";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "CenterDownLipMJntGrp" -p "LipJntGrp";
	rename -uid "1999E7BE-482F-3B1E-903B-D88039CBE8FD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 -0.99999999999999967 ;
createNode joint -n "CenterDownLipMJnt" -p "CenterDownLipMJntGrp";
	rename -uid "B2C2C1C8-4574-2E44-78DB-FAB194B730F1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipAJntGrp" -p "LipJntGrp";
	rename -uid "37F950C5-4BE1-5D6A-13DE-3EA591D1F578";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode joint -n "RightDownLipAJnt" -p "RightDownLipAJntGrp";
	rename -uid "4F18E4F1-4476-8392-17CE-099172785286";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipBJntGrp" -p "LipJntGrp";
	rename -uid "36818E69-4193-945B-7702-DAB6B61F7414";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode joint -n "RightDownLipBJnt" -p "RightDownLipBJntGrp";
	rename -uid "05BB8E8D-40CE-B7D7-B88C-2698BDA34132";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "RightDownLipConerJntGrp" -p "LipJntGrp";
	rename -uid "E4B162F1-41FC-C8F3-2FD5-7D90E623F38C";
	setAttr ".s" -type "double3" 0.99999999999999845 1 -1.0000000000000002 ;
createNode joint -n "RightDownLipConerJnt" -p "RightDownLipConerJntGrp";
	rename -uid "29B3B4FF-413C-C46C-EBFA-3095DDCE957C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode reverse -n "LipModeRvs";
	rename -uid "65DAF33D-4809-4745-21AE-2E8D29010174";
createNode pointOnCurveInfo -n "CenterUpLipMRootCntPC";
	rename -uid "4D0ED0E6-43DB-7D02-1B6C-E0B2E7212A34";
	setAttr ".pr" 0.27272727272727271;
	setAttr ".top" yes;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "75BAB03C-4C8D-9890-44A9-BF82FD0B9BEF";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnCurveInfo -n "RightLipConerRootCntPC";
	rename -uid "C1D1D931-412C-90A6-0DDA-14BDDC3B2C65";
	setAttr ".top" yes;
createNode multiplyDivide -n "RightLipConerCtrlRvsMultMD";
	rename -uid "80AC3009-4D81-842D-8E3B-42833E568867";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpLipBRootCntPC";
	rename -uid "F828F8DC-4489-15A1-1F1C-86BE4E2337A3";
	setAttr ".pr" 0.090909090909090912;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip2CrvPosPosBRotPB";
	rename -uid "3533446F-479B-B983-FCA1-6CAF132BD8AA";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosPosBRotPBwML";
	rename -uid "8F8225E1-4A89-3C8B-B115-6E9BC15489D8";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipBCtrlRvsMultMD";
	rename -uid "C0BFA136-4767-B849-69D3-F1B12F523A58";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightUpLipARootCntPC";
	rename -uid "124C5641-4625-0262-11C0-9F8C317C28B6";
	setAttr ".pr" 0.18181818181818182;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip2CrvPosARotPB";
	rename -uid "1DCCD6CC-418F-3C13-200D-6DA52283AB74";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip2CrvPosARotPBwML";
	rename -uid "6DDFF6A9-4865-C603-CB22-2280B4A57BEE";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightUpLipACtrlRvsMultMD";
	rename -uid "46068403-437B-078E-3D8B-1696C446E361";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "CenterUpLipMCtrlRvsMultMD";
	rename -uid "1811460C-4F9F-51CB-9F7D-C59F9F0D9D0B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftUpLipARootCntPC";
	rename -uid "ADC7E106-453B-1D90-AB94-F296EDAB6F40";
	setAttr ".pr" 0.36363636363636365;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip4CrvPosARotPB";
	rename -uid "34B5E050-4DE5-FF9B-D1E1-D0BF1B39845D";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosARotPBwML";
	rename -uid "9FAB18EC-4F21-3512-4F1D-0380E4F29E16";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipACtrlRvsMultMD";
	rename -uid "EF5EB4AC-44AA-1974-708C-8E9F3D589937";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftUpLipBRootCntPC";
	rename -uid "F68E6855-4901-0837-2B68-BA908D4A35A2";
	setAttr ".pr" 0.45454545454545459;
	setAttr ".top" yes;
createNode pairBlend -n "UpLip4CrvPosBRotPB";
	rename -uid "B60BB236-4AE3-37DA-19B8-D09D4BB82AEB";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "UpLip4CrvPosBRotPBwML";
	rename -uid "0E32CDDE-47A7-6C36-05A9-8BB0F6C6301D";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftUpLipBCtrlRvsMultMD";
	rename -uid "92C5622C-4C39-56AF-16DB-B786424EB470";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftLipConerRootCntPC";
	rename -uid "A0771277-439A-C52F-0FFF-C4ADEA449AFD";
	setAttr ".pr" 0.54545454545454541;
	setAttr ".top" yes;
createNode multiplyDivide -n "LeftLipConerCtrlRvsMultMD";
	rename -uid "6D1F5D62-4937-C97B-7CFA-8F9FD0FD8471";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "83C0C49F-4642-8B13-E4DD-01B8DED21BC2";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnCurveInfo -n "LeftDownLipBRootCntPC";
	rename -uid "1C0D8E1A-4B96-ECBB-DCB9-0098B517884F";
	setAttr ".pr" 0.63636363636363635;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip4CrvPosPosBRotPB";
	rename -uid "0EEFF399-45D0-DC8A-4960-C383D113C99F";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosPosBRotPBwML";
	rename -uid "03D4C34A-4A8C-5DF6-D002-8CBC919EB1BA";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipBCtrlRvsMultMD";
	rename -uid "F2A72E63-4A7B-BE02-6A58-DD88B72D3C78";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LeftDownLipARootCntPC";
	rename -uid "4AE16BA2-447C-878F-22D1-23ACC09060D2";
	setAttr ".pr" 0.72727272727272729;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip4CrvPosARotPB";
	rename -uid "7B6FC8DB-4251-B5F0-98CD-53A95DD01F46";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip4CrvPosARotPBwML";
	rename -uid "AC8D7BDC-4E8A-663B-2A73-0F918CF99BC1";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "LeftDownLipACtrlRvsMultMD";
	rename -uid "F2DBD3CE-4221-2347-3992-D186F457D578";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "CenterDownLipMRootCntPC";
	rename -uid "A4F11C9B-445F-0D53-1051-7FB94446DBD4";
	setAttr ".pr" 0.81818181818181823;
	setAttr ".top" yes;
createNode multiplyDivide -n "CenterDownLipMCtrlRvsMultMD";
	rename -uid "9416BC0E-4471-EACC-DDD6-49A45DE5BB19";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightDownLipARootCntPC";
	rename -uid "C37C15F4-4560-57B5-1A47-938CD18D9C27";
	setAttr ".pr" 0.90909090909090917;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip2CrvPosARotPB";
	rename -uid "1409D066-448E-BBF4-797B-8591F5F31073";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosARotPBwML";
	rename -uid "B57BAC0D-4725-65F5-D1E4-6DADF59820A2";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipACtrlRvsMultMD";
	rename -uid "B392C1EC-4EA5-C8C5-B6A3-5FA44953B70E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "RightDownLipBRootCntPC";
	rename -uid "83551823-4D80-EECC-91C7-56842FBDC582";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pairBlend -n "DownLip2CrvPosBRotPB";
	rename -uid "8F2C5EF0-4878-0EF8-CA2F-E9B04B711E6C";
	setAttr ".ri" 1;
createNode multDoubleLinear -n "DownLip2CrvPosBRotPBwML";
	rename -uid "F1BACFE3-4679-CC5F-4F55-98AB30994C27";
	setAttr ".i2" 0.1;
createNode multiplyDivide -n "RightDownLipBCtrlRvsMultMD1";
	rename -uid "7065775C-4B32-B890-9A6C-2E924A84E707";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnCurveInfo -n "LibSurf0APosPC";
	rename -uid "96AC9D50-4416-B452-089E-80854C7A92CC";
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf0APosGrpDM";
	rename -uid "A9E7E6A2-42D4-F369-336C-9A94CB068C58";
createNode multMatrix -n "LipSurf0APosGrpMM";
	rename -uid "10A27592-498B-4466-CC8B-AF9702A00A16";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -1.1236469890099767 -7.1054273576010066e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf2APosPC";
	rename -uid "7978D207-4FD8-46ED-FDAD-A9AA39374756";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf2APosGrpDM";
	rename -uid "44979477-4155-422B-ED14-F0A6F87C0B84";
createNode multMatrix -n "LipSurf2APosGrpMM";
	rename -uid "B7ADA111-4020-5E60-1480-F99A4F958D61";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -0.8993231489544582 3.5527136788005065e-15 0.99999999999999778 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf3APosPC";
	rename -uid "D90F1523-4B9A-A718-8B5D-93AE268C92C6";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf3APosGrpDM";
	rename -uid "A1E5E5E0-425B-99D2-84F6-DFBEC442A906";
createNode multMatrix -n "LipSurf3APosGrpMM";
	rename -uid "8D147DD8-4F3B-B79A-2545-FE80384A5C8C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 -1.2246467991473532e-16 0 1 0
		 -0.55525675891628912 1.0880185641326548e-14 0.99999999999999512 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf4APosPC";
	rename -uid "063C515B-4B01-D106-B976-A9A9E6BA47DD";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf4APosGrpDM";
	rename -uid "37810E7F-4216-539D-ACD7-95A9F7FC256F";
createNode multMatrix -n "LipSurf4APosGrpMM";
	rename -uid "8EDCFC88-42F6-2841-8CF2-9780E9BED235";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.9110106061117151e-07 1.4210854715202019e-14 0.99999999999999212 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf5APosPC";
	rename -uid "E48A3BC4-45FA-422C-6477-019BAC3872FF";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf5APosGrpDM";
	rename -uid "4ED665AF-49AE-2D0E-4A90-44A412D8CECE";
createNode multMatrix -n "LipSurf5APosGrpMM";
	rename -uid "263B4620-468D-15BE-F510-BA9B1BEC510F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.55525792514932892 1.0880185641326548e-14 0.99999999999999534 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf6APosPC";
	rename -uid "55FD5057-4199-FB68-BB8B-4F91248F6902";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf6APosGrpDM";
	rename -uid "7B86D9E8-4549-3E23-E615-9B824C72734C";
createNode multMatrix -n "LipSurf6APosGrpMM";
	rename -uid "507D44CB-49E6-56D7-CBC1-80A678BCE4F2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.8993238400555188 3.5527136788005065e-15 0.99999999999999889 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf8APosPC";
	rename -uid "A88A6BD3-465C-DAC1-D08C-97B507109CCA";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf8APosGrpDM";
	rename -uid "D164113D-4EE5-B997-C547-B0ACAB7C1A6E";
createNode multMatrix -n "LipSurf8APosGrpMM";
	rename -uid "218E2268-49CB-7304-DD35-9C976549B1E1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236469890099767 -7.1054273576010066e-15 1.0000000000000029 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf0BPosPC";
	rename -uid "CBDCC203-4FE4-4A86-432D-43B773BDFE39";
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf0BPosGrpDM";
	rename -uid "2E9C87F3-4BC9-2731-6049-BB8751DDB0DE";
createNode multMatrix -n "LipSurf0BPosGrpMM";
	rename -uid "37C6CFC5-4DB3-1413-81C1-4389DDABF64B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1.0000000000000002 0 0
		 -1.2246467991473532e-16 0 1 0 -1.1236469890099767 -7.1054273576010082e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf2BPosPC";
	rename -uid "5A19BCDB-4D35-6108-55BE-2FBBEA20C5B6";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf2BPosGrpDM";
	rename -uid "D7CE4EA4-4AE9-ABB5-2DFC-31B456FA13F6";
createNode multMatrix -n "LipSurf2BPosGrpMM";
	rename -uid "455863DE-411B-871F-33C8-7C90263CED3E";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 1.2246467991473535e-16 0 0 -1.2246467991473532e-16 -1.0000000000000002 0 0
		 0 0 1 0 -0.8993231318846866 -6.4867640808087845e-14 0.9999999999999909 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf3BPosPC";
	rename -uid "2E4E4A03-4DA0-3B4B-7F5A-CFB9FFF055CC";
	setAttr ".pr" 0.375;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf3BPosGrpDM";
	rename -uid "7E331C8B-4F5C-7B79-09E5-F9A86EB3329A";
createNode multMatrix -n "LipSurf3BPosGrpMM";
	rename -uid "EC397CA6-4AE4-A59D-7389-3AAE9ABF068B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -1 1.2246467991473535e-16 0 0 -1.2246467991473532e-16 -1.0000000000000002 0 0
		 0 0 1 0 -0.5552567301110497 -1.0452749776845855e-13 0.99999999999998357 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf4BPosPC";
	rename -uid "5A57AA6C-4A70-091C-BE0F-E7AA6434CF30";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf4BPosGrpDM";
	rename -uid "0DE9412D-4BBE-40EE-7042-D6AB9DC0627B";
createNode multMatrix -n "LipSurf4BPosGrpMM";
	rename -uid "8BBC48B6-4583-DD37-0ADA-FEBC45DC2EDC";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 -1.0000000000000002 1.2246467991473532e-16 0
		 0 1.2246467991473535e-16 1 0 7.2524060363017278e-07 -1.224461572387026e-13 0.99999999999997868 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf5BPosPC";
	rename -uid "64F541A7-4170-F117-ADE1-5FB206449670";
	setAttr ".pr" 0.625;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf5BPosGrpDM";
	rename -uid "FE06F01F-4678-25B3-B42E-A49B19DE6F05";
createNode multMatrix -n "LipSurf5BPosGrpMM";
	rename -uid "E8E6FE39-4190-2D1B-F52D-23A77BD90A44";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 -1 1.224646799147353e-16 0 0 1.2246467991473535e-16 1 0
		 0.55525795395456834 -1.0497927970709304e-13 0.99999999999998335 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf6BPosPC";
	rename -uid "4084773D-4F01-8781-82BC-F39526528864";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf6BPosGrpDM";
	rename -uid "58AED2E4-4ADA-BAB8-4F19-83999C9D8900";
createNode multMatrix -n "LipSurf6BPosGrpMM";
	rename -uid "A6647E83-4A6C-DAB9-977F-24A71853F298";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 0 0 0 0 -1.0000000000000004 1.2246467991473535e-16 0
		 0 1.2246467991473535e-16 1 0 0.89932385712529017 -6.655214913755205e-14 0.99999999999999034 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pointOnCurveInfo -n "LibSurf8BPosPC";
	rename -uid "525F8AF3-4BE5-33CB-F95F-9B87BF0D7CBF";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode decomposeMatrix -n "LipSurf8BPosGrpDM";
	rename -uid "5C5B863A-45FB-A30F-CF3E-779E4FC60EB8";
createNode multMatrix -n "LipSurf8BPosGrpMM";
	rename -uid "910A7C6D-4616-219D-CF4E-3F823C7497E3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1236469890099767 -1.0658141036401514e-14 0.99999999999999933 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999956 0 0 0 0 1.0000000000000002 0
		 0 0 0 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LibSurf0APB";
	rename -uid "F7DFB187-4CE6-6239-92C8-2189CC67B85D";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf0PS";
	rename -uid "E89D9EA9-4195-8BF7-2E35-B08517CF5F83";
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf0ARM";
	rename -uid "2440694A-4F92-CE2E-A1D4-B2B95A3E3CEE";
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
	rename -uid "F0CC3971-472C-FE0A-3BB1-848AD3EA811A";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2ARM";
	rename -uid "9C1B764F-433C-B11B-7FE3-FA82E1BCF819";
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
	rename -uid "93BA9351-44BC-E56E-394C-9A8AA9783A5F";
	setAttr ".u" 0.25;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf3APB";
	rename -uid "A95D8D9B-4B99-B1A5-1E55-E4B99E9759FA";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3ARM";
	rename -uid "2B6A5063-460A-CC39-3F42-AD9E20FFE8D1";
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
	rename -uid "5BC840D0-4DF1-E075-47D9-FCB4D3C3AA20";
	setAttr ".u" 0.375;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf4APB";
	rename -uid "4BC8E4B1-48F6-808C-21B1-7893A4A2B5EB";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4ARM";
	rename -uid "4D8D707A-4733-A099-95B5-EBAAFEF794CB";
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
	rename -uid "EBB34F03-4FCD-7160-D1D1-ABA51106EA1D";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pointOnSurfaceInfo -n "LibSurf4PS";
	rename -uid "F040F631-48CC-7B99-9D8A-0EB335142809";
	setAttr ".u" 0.5;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf5APB";
	rename -uid "CE2FBD45-40BF-E2BA-1F15-6B88FDECE72B";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5ARM";
	rename -uid "73122AB0-4A6F-3F9B-57AB-89BB5B62D477";
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
	rename -uid "EDEA3A00-49EE-9D83-946A-09A145D7528A";
	setAttr ".u" 0.625;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf6APB";
	rename -uid "8B5DE861-44C1-5057-446F-C09128252E4A";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6ARM";
	rename -uid "7DD834B2-441E-AAE1-CDB7-0A90C60DFA4A";
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
	rename -uid "042839D8-4B9B-6B08-3B6A-5D8896D51E61";
	setAttr ".u" 0.75;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode pairBlend -n "LibSurf8APB";
	rename -uid "5557EF27-496E-D487-474C-A898DB3616C4";
	setAttr ".ri" 1;
createNode pointOnSurfaceInfo -n "LibSurf8PS";
	rename -uid "42D0726D-4B10-79CD-51B3-5DA36A6C4268";
	setAttr ".u" 1;
	setAttr ".v" 0.5;
	setAttr ".top" yes;
createNode remapValue -n "LibSurf8ARM";
	rename -uid "DF3A2C97-45CA-8A61-7EFB-AAA096923457";
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
	rename -uid "77B1AD2C-45D7-D4EF-3A1C-F689BDC8CF3E";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf0BRM";
	rename -uid "95C49509-4171-8BE4-4CAA-43A3F4F75C6A";
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
	rename -uid "96D80112-4F12-C292-9DC6-F7B73B1EEC15";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf2BRM";
	rename -uid "E9DC5891-48D2-1F25-2FD4-F6879789B400";
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
	rename -uid "B309E4D6-493D-FE8C-4A91-A2B7238C159E";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf3BRM";
	rename -uid "633C5333-4807-A5C1-C8A0-E792B415E7F7";
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
	rename -uid "D1703AB2-4163-263D-B4F5-AA899E4CC72B";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf4BRM";
	rename -uid "568DB60E-4394-0236-F226-3C977C3E57D3";
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
	rename -uid "2E4398EE-4B9A-E150-5AA4-9789033F28C9";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode pairBlend -n "LibSurf5BPB";
	rename -uid "E8C09120-4719-5847-FD10-289E51B49932";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf5BRM";
	rename -uid "2062BB75-4190-C75F-9F49-C9B7C352741F";
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
	rename -uid "CAE64D01-4903-A624-5547-31AA59557A49";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf6BRM";
	rename -uid "E955EA45-40E7-9240-AF3E-868BA391C9C8";
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
	rename -uid "EB686576-4463-B7C4-D13F-0284B70B3133";
	setAttr ".ri" 1;
createNode remapValue -n "LibSurf8BRM";
	rename -uid "4AB2FB14-4FDD-0988-4A8E-77B07F652AC9";
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
	rename -uid "3A8D19B3-4A76-A87B-E012-FEA4891A5720";
	setAttr -s 2 ".ic";
	setAttr ".u" yes;
	setAttr ".rsn" yes;
createNode pairBlend -n "LipRightLocalPosPB";
	rename -uid "0D6D2C78-4B83-BBC2-9B1C-3F978FC24619";
	setAttr ".ri" 1;
createNode pairBlend -n "LipLeftLocalPosPB";
	rename -uid "FA128623-4E7D-4FD8-4676-7293398B970D";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip5WorldPB";
	rename -uid "8604CCEB-435C-8A96-1E46-F9ADF203F9B2";
	setAttr ".ri" 1;
createNode pairBlend -n "Lip1WorldPB";
	rename -uid "8E02CDFE-463D-11E0-A84B-C481485688E7";
	setAttr ".ri" 1;
createNode decomposeMatrix -n "RightUpLipConerJntGrpDM";
	rename -uid "84080B49-4338-7C9E-0BDE-93BD0E2EC38E";
createNode multMatrix -n "RightUpLipConerJntGrpMM";
	rename -uid "15B16033-468F-5883-4A48-589B15060D90";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999867 0 -1.2246467991473515e-16 0 0 1 0 0
		 -1.2246467991473535e-16 0 1.0000000000000002 0 -1.1236469890099767 -7.1054273576010066e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000013 0 0 0 0 1 0 0 -1.2246467991473547e-16 0 0.99999999999999967 0
		 -1.1236455718461278 -1.2434497875801753e-13 -1.0000000000000102 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "RightUpLipBJntGrpDM";
	rename -uid "240B87CF-4028-4E0D-C34F-979D4879ECFE";
createNode multMatrix -n "RightUpLipBJntGrpMM";
	rename -uid "405703E0-4D21-219C-65A8-E6AD89F69307";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" -1.0000000000000004 0 -1.2246467991473537e-16 0 0 1.0000000000000007 0 0
		 -1.2246467991473537e-16 0 1.0000000000000004 0 -0.8993231489544582 3.5527136788005065e-15 0.99999999999999778 1;
	setAttr ".i[2]" -type "matrix" -0.99999999999999956 -1.5407439555097887e-33 -1.2246467991473527e-16 0
		 0 0.99999999999999933 0 0 -1.1102230246251565e-16 0 0.99999999999999956 0 -0.89932283558285031 -0.073481559753544048 -1.0000000000000067 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "RightUpLipAJntGrpDM";
	rename -uid "0FED6021-44A2-3160-34ED-6B954AFC3880";
createNode multMatrix -n "RightUpLipAJntGrpMM";
	rename -uid "8C16F7E9-429F-88A0-CEC8-428756E0210C";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1.0000000000000002 0 0
		 -1.2246467991473537e-16 0 1.0000000000000004 0 -0.55525675891628912 1.0880185641326548e-14 0.99999999999999512 1;
	setAttr ".i[2]" -type "matrix" -1 0 -1.2246467991473527e-16 0 0 0.99999999999999978 0 0
		 -1.1102230246251565e-16 0 0.99999999999999956 0 -0.55525716938412029 -0.073481559753542314 -1.0000000000000102 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "CenterUpLipMJntGrpDM";
	rename -uid "CD38A007-4A51-FE2D-4ABA-7295D3919184";
createNode multMatrix -n "CenterUpLipMJntGrpMM";
	rename -uid "ACD04085-413A-C2C7-37A1-88A4A1180423";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1.0000000000000007 0 0 0 0 1 0 6.9110106061117151e-07 1.4210854715202019e-14 0.99999999999999212 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999933 0 0 0 0 1 0 7.4360140467299094e-07 -0.073481559753544048 -1.0000000000001599 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "LeftUpLipAJntGrpDM";
	rename -uid "C2251A50-49DD-7452-6774-86B73E10A698";
createNode multMatrix -n "LeftUpLipAJntGrpMM";
	rename -uid "F75ACBC0-49D4-3633-3301-3A8C78F2C388";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 0 0 0 0 1.0000000000000007 0 0
		 0 0 0.99999999999999967 0 0.55525792514932892 1.0880185641326548e-14 0.99999999999999534 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 0 0 0 0 0.99999999999999933 0 0
		 1.1102230246251565e-16 1.3877787807814457e-17 1.0000000000000004 0 -0.55466363034808808 -0.073481559753545839 -1.0000000000000075 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "LeftUpLipBJntGrpDM";
	rename -uid "E4355A31-43F4-986B-73C4-78A99637CBA9";
createNode multMatrix -n "LeftUpLipBJntGrpMM";
	rename -uid "2FF36F13-41A3-CE27-ADA5-688A0BF41972";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 0 0 0 0 1.0000000000000007 0 0
		 0 0 0.99999999999999989 0 0.8993238400555188 3.5527136788005065e-15 0.99999999999999889 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 0 0 0 0 0.99999999999999933 0 0
		 0 0 1.0000000000000002 0 -0.89932343564593953 -0.073481559753545825 -0.99999999999990075 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "LeftUpLipConerJntGrpDM";
	rename -uid "33FB8B13-4459-0EE0-E598-FABF36CA8856";
createNode multMatrix -n "LeftUpLipConerJntGrpMM";
	rename -uid "12F33F65-4401-CF38-9204-D7BA85EE10FF";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999978 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 1.1236469890099767 -7.1054273576010066e-15 1.0000000000000029 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000004 1.2621774483536189e-29 0 0 0 0.99999999999999978 0 0
		 0 0 1 0 -1.123646946768454 -1.0835776720341527e-13 -0.9999999999996626 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "LeftDownLipConerJntGrpDM";
	rename -uid "766293BE-4590-FF91-434E-7DAE8FDF74BE";
createNode multMatrix -n "LeftDownLipConerJntGrpMM";
	rename -uid "7F2D0F1E-4FBC-914D-C9B1-0782AECAB6FC";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999978 0 0 0 0 1.0000000000000002 0 0
		 0 0 1 0 1.1236469890099767 -7.1054273576010066e-15 1.0000000000000029 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 -1.2621774483536189e-29 0 1.1102230246251565e-16
		 0 0.99999999999999978 0 0 0 0 1 0 -1.1236469467707497 -1.0835776720341523e-13 -1.0000000000003197 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "LeftDownLipBJntGrpDM";
	rename -uid "F0AD1189-42D7-919C-4930-63AB6935AA62";
createNode multMatrix -n "LeftDownLipBJntGrpMM";
	rename -uid "A4BC8178-4DEA-2467-D132-D7B78182A49F";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 0 0 0 0 1.0000000000000004 0 0
		 0 0 -1 0 0.89932385712529017 -6.655214913755205e-14 0.99999999999999034 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 0 0 0 0 -0.99999999999999956 1.2246467991473532e-16 0
		 0 1.2246467991473527e-16 1 0 -0.89932343564593964 -0.059699058532588833 -0.99999999999995737 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "LeftDownLipAJntGrpDM";
	rename -uid "F160E752-4C5F-9B47-214E-FBBDB85C9452";
createNode multMatrix -n "LeftDownLipAJntGrpMM";
	rename -uid "2FF4DA63-4612-6430-C105-9B8502117B15";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 -1 0 0.55525795395456834 -1.0497927970709304e-13 0.99999999999998335 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-16 0 0 1.2490009027033011e-16 1 0
		 -0.55466363034808785 -0.059699058532588861 -1.0000000000001066 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "CenterDownLipMJntGrpDM";
	rename -uid "D04897F6-45CA-E582-5661-2380D51074E1";
createNode multMatrix -n "CenterDownLipMJntGrpMM";
	rename -uid "4D9DE3C0-488D-A148-441E-B3854FC39697";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" 1 0 0 0 0 1.0000000000000002 0 0 0 0 -0.99999999999999967 0
		 7.2524060363017278e-07 -1.224461572387026e-13 0.99999999999997868 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 -0.99999999999999978 1.2246467991473537e-16 0
		 -1.0587911840678754e-22 1.3183898417423734e-16 1.0000000000000004 0 7.3758629093255921e-07 -0.059699058532588854 -1.0000000000001639 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "RightDownLipAJntGrpDM";
	rename -uid "9EFFA3E3-4F49-15C0-7304-4DBE82021AD4";
createNode multMatrix -n "RightDownLipAJntGrpMM";
	rename -uid "96EBFB31-4BCE-F574-8BFE-538DB2F1BDBA";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 0 -1.224646799147353e-16 0 0 1 0 0
		 1.2246467991473532e-16 0 -1 0 -0.5552567301110497 -1.0452749776845855e-13 0.99999999999998357 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -1.2246467991473532e-16 0 0 1.2246467991473535e-16 -1 0 0
		 0 0 1 0 -0.55525716938412051 -0.059699058532587029 -1.0000000000001066 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "RightDownLipBJntGrpDM";
	rename -uid "54808BE2-4634-15F7-3299-309771A886D6";
createNode multMatrix -n "RightDownLipBJntGrpMM";
	rename -uid "A620DA5C-4486-07B5-5D9B-1383665D6252";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 0 -1.224646799147353e-16 0 0 1.0000000000000002 0 0
		 1.2246467991473532e-16 0 -1 0 -0.8993231318846866 -6.4867640808087845e-14 0.9999999999999909 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -1.224646799147353e-16 0 0 1.2246467991473535e-16 -0.99999999999999978 0 0
		 0 0 1 0 -0.89932283558285109 -0.059698941017616858 -1.0000000000000071 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
createNode decomposeMatrix -n "RightDownLipConerJntGrpDM";
	rename -uid "917A9682-4E33-5100-A911-F19A067B6833";
createNode multMatrix -n "RightDownLipConerJntGrpMM";
	rename -uid "57CA0E19-4BE9-8B9D-6D98-E7BD1C9D3652";
	setAttr -s 6 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999845 0 -1.2246467991473512e-16 0 0 1 0 0
		 -1.2246467991473535e-16 0 1.0000000000000002 0 -1.1236469890099767 -7.1054273576010066e-15 1.0000000000000004 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000016 0 -2.2204460492503131e-16 0 0 1 0 0
		 -1.2246467991473549e-16 0 0.99999999999999967 0 -1.123645571846128 -1.2434497875801753e-13 -1.0000000000000104 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0 -0 -0 0;
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
	setAttr -s 23 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
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
connectAttr "Lip1CrvPos.r" "RightLipConerCtrlGrp.r";
connectAttr "RightLipConerCtrlRvsMultMD.o" "RightLipConerRvs.t";
connectAttr "LipRootPoser.r" "RightUpLipBRootCnt.r";
connectAttr "RightUpLipBRootCntPC.p" "RightUpLipBRootCnt.t";
connectAttr "UpLip2CrvPosPosBRotPB.or" "RightUpLipBCtrlGrp.r";
connectAttr "RightUpLipBCtrlRvsMultMD.o" "RightUpLipBRvs.t";
connectAttr "LipRootPoser.r" "RightUpLipARootCnt.r";
connectAttr "RightUpLipARootCntPC.p" "RightUpLipARootCnt.t";
connectAttr "UpLip2CrvPosARotPB.or" "RightUpLipACtrlGrp.r";
connectAttr "RightUpLipACtrlRvsMultMD.o" "RightUpLipARvs.t";
connectAttr "LipRootPoser.r" "CenterUpLipMRootCnt.r";
connectAttr "CenterUpLipMRootCntPC.p" "CenterUpLipMRootCnt.t";
connectAttr "UpLip3CrvPos.r" "CenterUpLipMCtrlGrp.r";
connectAttr "CenterUpLipMCtrlRvsMultMD.o" "CenterUpLipMRvs.t";
connectAttr "LipRootPoser.r" "LeftUpLipARootCnt.r";
connectAttr "LeftUpLipARootCntPC.p" "LeftUpLipARootCnt.t";
connectAttr "UpLip4CrvPosARotPB.or" "LeftUpLipACtrlGrp.r";
connectAttr "LeftUpLipACtrlRvsMultMD.o" "LeftUpLipARvs.t";
connectAttr "LipRootPoser.r" "LeftUpLipBRootCnt.r";
connectAttr "LeftUpLipBRootCntPC.p" "LeftUpLipBRootCnt.t";
connectAttr "UpLip4CrvPosBRotPB.or" "LeftUpLipBCtrlGrp.r";
connectAttr "LeftUpLipBCtrlRvsMultMD.o" "LeftUpLipBRvs.t";
connectAttr "LipRootPoser.r" "LeftLipConerRootCnt.r";
connectAttr "LeftLipConerRootCntPC.p" "LeftLipConerRootCnt.t";
connectAttr "Lip5CrvPos.r" "LeftLipConerCtrlGrp.r";
connectAttr "LeftLipConerCtrlRvsMultMD.o" "LeftLipConerRvs.t";
connectAttr "makeNurbCircle15.oc" "LeftLipConerCtrlShape.cr";
connectAttr "LipRootPoser.r" "LeftDownLipBRootCnt.r";
connectAttr "LeftDownLipBRootCntPC.p" "LeftDownLipBRootCnt.t";
connectAttr "DownLip4CrvPosPosBRotPB.or" "LeftDownLipBCtrlGrp.r";
connectAttr "LeftDownLipBCtrlRvsMultMD.o" "LeftDownLipBRvs.t";
connectAttr "LipRootPoser.r" "LeftDownLipARootCnt.r";
connectAttr "LeftDownLipARootCntPC.p" "LeftDownLipARootCnt.t";
connectAttr "DownLip4CrvPosARotPB.or" "LeftDownLipACtrlGrp.r";
connectAttr "LeftDownLipACtrlRvsMultMD.o" "LeftDownLipARvs.t";
connectAttr "LipRootPoser.r" "CenterDownLipMRootCnt.r";
connectAttr "CenterDownLipMRootCntPC.p" "CenterDownLipMRootCnt.t";
connectAttr "DownLip3CrvPos.r" "CenterDownLipMCtrlGrp.r";
connectAttr "CenterDownLipMCtrlRvsMultMD.o" "CenterDownLipMRvs.t";
connectAttr "LipRootPoser.r" "RightDownLipARootCnt.r";
connectAttr "RightDownLipARootCntPC.p" "RightDownLipARootCnt.t";
connectAttr "DownLip2CrvPosARotPB.or" "RightDownLipACtrlGrp.r";
connectAttr "RightDownLipACtrlRvsMultMD.o" "RightDownLipARvs.t";
connectAttr "LipRootPoser.r" "RightDownLipBRootCnt.r";
connectAttr "RightDownLipBRootCntPC.p" "RightDownLipBRootCnt.t";
connectAttr "DownLip2CrvPosBRotPB.or" "RightDownLipBCtrlGrp.r";
connectAttr "RightDownLipBCtrlRvsMultMD1.o" "RightDownLipBRvs.t";
connectAttr "LibSurf0APosPC.p" "LipSurf0APosGrp.t";
connectAttr "LipSurf0APosGrpDM.or" "LipSurf0APosGrp.r";
connectAttr "Lip1CrvPos.r" "LipSurf0APos.r";
connectAttr "LibSurf2APosPC.p" "LipSurf2APosGrp.t";
connectAttr "LipSurf2APosGrpDM.or" "LipSurf2APosGrp.r";
connectAttr "UpLip2CrvPosPosBRotPB.or" "LipSurf2APos.r";
connectAttr "LibSurf3APosPC.p" "LipSurf3APosGrp.t";
connectAttr "LipSurf3APosGrpDM.or" "LipSurf3APosGrp.r";
connectAttr "UpLip2CrvPosARotPB.or" "LipSurf3APos.r";
connectAttr "LibSurf4APosPC.p" "LipSurf4APosGrp.t";
connectAttr "LipSurf4APosGrpDM.or" "LipSurf4APosGrp.r";
connectAttr "UpLip3CrvPos.r" "LipSurf4APos.r";
connectAttr "LibSurf5APosPC.p" "LipSurf5APosGrp.t";
connectAttr "LipSurf5APosGrpDM.or" "LipSurf5APosGrp.r";
connectAttr "UpLip4CrvPosARotPB.or" "LipSurf5APos.r";
connectAttr "LibSurf6APosPC.p" "LipSurf6APosGrp.t";
connectAttr "LipSurf6APosGrpDM.or" "LipSurf6APosGrp.r";
connectAttr "UpLip4CrvPosBRotPB.or" "LipSurf6APos.r";
connectAttr "LibSurf8APosPC.p" "LipSurf8APosGrp.t";
connectAttr "LipSurf8APosGrpDM.or" "LipSurf8APosGrp.r";
connectAttr "Lip5CrvPos.r" "LipSurf8APos.r";
connectAttr "LibSurf0BPosPC.p" "LipSurf0BPosGrp.t";
connectAttr "LipSurf0BPosGrpDM.or" "LipSurf0BPosGrp.r";
connectAttr "Lip1CrvPos.r" "LipSurf0BPos.r";
connectAttr "LibSurf2BPosPC.p" "LipSurf2BPosGrp.t";
connectAttr "LipSurf2BPosGrpDM.or" "LipSurf2BPosGrp.r";
connectAttr "DownLip2CrvPosBRotPB.or" "LipSurf2BPos.r";
connectAttr "LibSurf3BPosPC.p" "LipSurf3BPosGrp.t";
connectAttr "LipSurf3BPosGrpDM.or" "LipSurf3BPosGrp.r";
connectAttr "DownLip2CrvPosARotPB.or" "LipSurf3BPos.r";
connectAttr "LibSurf4BPosPC.p" "LipSurf4BPosGrp.t";
connectAttr "LipSurf4BPosGrpDM.or" "LipSurf4BPosGrp.r";
connectAttr "DownLip3CrvPos.r" "LipSurf4BPos.r";
connectAttr "LibSurf5BPosPC.p" "LipSurf5BPosGrp.t";
connectAttr "LipSurf5BPosGrpDM.or" "LipSurf5BPosGrp.r";
connectAttr "DownLip4CrvPosARotPB.or" "LipSurf5BPos.r";
connectAttr "LibSurf6BPosPC.p" "LipSurf6BPosGrp.t";
connectAttr "LipSurf6BPosGrpDM.or" "LipSurf6BPosGrp.r";
connectAttr "DownLip4CrvPosPosBRotPB.or" "LipSurf6BPos.r";
connectAttr "LibSurf8BPosPC.p" "LipSurf8BPosGrp.t";
connectAttr "LipSurf8BPosGrpDM.or" "LipSurf8BPosGrp.r";
connectAttr "Lip5CrvPos.r" "LipSurf8BPos.r";
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
connectAttr "LipMainCtrl.t" "LipMainUpCnt.t";
connectAttr "LipMainCtrl.r" "LipMainUpCnt.r";
connectAttr "UpLipMainCtrl.r" "UpLipMainCnt.r";
connectAttr "UpLipMainCtrl.t" "UpLipMainCnt.t";
connectAttr "UpLip4CrvPos.r" "UpLip2CrvPos.r";
connectAttr "UpLip4CrvPos.t" "UpLip2CrvPos.t";
connectAttr "LipMainCtrl.t" "LipMainDownCnt.t";
connectAttr "LipMainCtrl.r" "LipMainDownCnt.r";
connectAttr "DownLipMainCtrl.t" "DownLipMainCnt.t";
connectAttr "DownLipMainCtrl.r" "DownLipMainCnt.r";
connectAttr "DownLip4CrvPos.r" "DownLip2CrvPos.r";
connectAttr "DownLip4CrvPos.t" "DownLip2CrvPos.t";
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
connectAttr "Lip5CrvPos.r" "Lip1CrvPos.r";
connectAttr "Lip5CrvPos.t" "Lip1CrvPos.t";
connectAttr "UpLipMainCtrl.t" "UpLip1MainCntGrp.t";
connectAttr "UpLipMainCtrl.r" "UpLip1MainCntGrp.r";
connectAttr "DownLipMainCtrl.t" "DownLip1MainCntGrp.t";
connectAttr "DownLipMainCtrl.r" "DownLip1MainCntGrp.r";
connectAttr "LipCtrlCrvShapeOrig.ws" "LipCtrlCrvShape.cr";
connectAttr "LipModeRvs.ox" "LipJntGrp.tmp";
connectAttr "LipSurf0AZipPos.t" "RightUpLipConerJntGrp.t";
connectAttr "RightUpLipConerJntGrpDM.or" "RightUpLipConerJntGrp.r";
connectAttr "RightUpLipConerCtrl.t" "RightUpLipConerJnt.t";
connectAttr "RightUpLipConerCtrl.r" "RightUpLipConerJnt.r";
connectAttr "RightUpLipConerCtrl.s" "RightUpLipConerJnt.s";
connectAttr "LipSurf2AZipPos.t" "RightUpLipBJntGrp.t";
connectAttr "RightUpLipBJntGrpDM.or" "RightUpLipBJntGrp.r";
connectAttr "RightUpLipBCtrl.t" "RightUpLipBJnt.t";
connectAttr "RightUpLipBCtrl.r" "RightUpLipBJnt.r";
connectAttr "RightUpLipBCtrl.s" "RightUpLipBJnt.s";
connectAttr "LipSurf3AZipPos.t" "RightUpLipAJntGrp.t";
connectAttr "RightUpLipAJntGrpDM.or" "RightUpLipAJntGrp.r";
connectAttr "RightUpLipACtrl.t" "RightUpLipAJnt.t";
connectAttr "RightUpLipACtrl.r" "RightUpLipAJnt.r";
connectAttr "RightUpLipACtrl.s" "RightUpLipAJnt.s";
connectAttr "LipSurf4AZipPos.t" "CenterUpLipMJntGrp.t";
connectAttr "CenterUpLipMJntGrpDM.or" "CenterUpLipMJntGrp.r";
connectAttr "CenterUpLipMCtrl.t" "CenterUpLipMJnt.t";
connectAttr "CenterUpLipMCtrl.r" "CenterUpLipMJnt.r";
connectAttr "CenterUpLipMCtrl.s" "CenterUpLipMJnt.s";
connectAttr "LipSurf5AZipPos.t" "LeftUpLipAJntGrp.t";
connectAttr "LeftUpLipAJntGrpDM.or" "LeftUpLipAJntGrp.r";
connectAttr "LeftUpLipACtrl.t" "LeftUpLipAJnt.t";
connectAttr "LeftUpLipACtrl.r" "LeftUpLipAJnt.r";
connectAttr "LeftUpLipACtrl.s" "LeftUpLipAJnt.s";
connectAttr "LipSurf6AZipPos.t" "LeftUpLipBJntGrp.t";
connectAttr "LeftUpLipBJntGrpDM.or" "LeftUpLipBJntGrp.r";
connectAttr "LeftUpLipBCtrl.t" "LeftUpLipBJnt.t";
connectAttr "LeftUpLipBCtrl.r" "LeftUpLipBJnt.r";
connectAttr "LeftUpLipBCtrl.s" "LeftUpLipBJnt.s";
connectAttr "LipSurf8AZipPos.t" "LeftUpLipConerJntGrp.t";
connectAttr "LeftUpLipConerJntGrpDM.or" "LeftUpLipConerJntGrp.r";
connectAttr "LeftUpLipConerCtrl.t" "LeftUpLipConerJnt.t";
connectAttr "LeftUpLipConerCtrl.r" "LeftUpLipConerJnt.r";
connectAttr "LeftUpLipConerCtrl.s" "LeftUpLipConerJnt.s";
connectAttr "LipSurf8BZipPos.t" "LeftDownLipConerJntGrp.t";
connectAttr "LeftDownLipConerJntGrpDM.or" "LeftDownLipConerJntGrp.r";
connectAttr "LeftDownLipConerCtrl.t" "LeftDownLipConerJnt.t";
connectAttr "LeftDownLipConerCtrl.r" "LeftDownLipConerJnt.r";
connectAttr "LeftDownLipConerCtrl.s" "LeftDownLipConerJnt.s";
connectAttr "LipSurf6BZipPos.t" "LeftDownLipBJntGrp.t";
connectAttr "LeftDownLipBJntGrpDM.or" "LeftDownLipBJntGrp.r";
connectAttr "LeftDownLipBCtrl.t" "LeftDownLipBJnt.t";
connectAttr "LeftDownLipBCtrl.r" "LeftDownLipBJnt.r";
connectAttr "LeftDownLipBCtrl.s" "LeftDownLipBJnt.s";
connectAttr "LipSurf5BZipPos.t" "LeftDownLipAJntGrp.t";
connectAttr "LeftDownLipAJntGrpDM.or" "LeftDownLipAJntGrp.r";
connectAttr "LeftDownLipACtrl.t" "LeftDownLipAJnt.t";
connectAttr "LeftDownLipACtrl.r" "LeftDownLipAJnt.r";
connectAttr "LeftDownLipACtrl.s" "LeftDownLipAJnt.s";
connectAttr "LipSurf4BZipPos.t" "CenterDownLipMJntGrp.t";
connectAttr "CenterDownLipMJntGrpDM.or" "CenterDownLipMJntGrp.r";
connectAttr "CenterDownLipMCtrl.t" "CenterDownLipMJnt.t";
connectAttr "CenterDownLipMCtrl.r" "CenterDownLipMJnt.r";
connectAttr "CenterDownLipMCtrl.s" "CenterDownLipMJnt.s";
connectAttr "LipSurf3BZipPos.t" "RightDownLipAJntGrp.t";
connectAttr "RightDownLipAJntGrpDM.or" "RightDownLipAJntGrp.r";
connectAttr "RightDownLipACtrl.t" "RightDownLipAJnt.t";
connectAttr "RightDownLipACtrl.r" "RightDownLipAJnt.r";
connectAttr "RightDownLipACtrl.s" "RightDownLipAJnt.s";
connectAttr "LipSurf2BZipPos.t" "RightDownLipBJntGrp.t";
connectAttr "RightDownLipBJntGrpDM.or" "RightDownLipBJntGrp.r";
connectAttr "RightDownLipBCtrl.t" "RightDownLipBJnt.t";
connectAttr "RightDownLipBCtrl.r" "RightDownLipBJnt.r";
connectAttr "RightDownLipBCtrl.s" "RightDownLipBJnt.s";
connectAttr "LipSurf0BZipPos.t" "RightDownLipConerJntGrp.t";
connectAttr "RightDownLipConerJntGrpDM.or" "RightDownLipConerJntGrp.r";
connectAttr "RightDownLipConerCtrl.t" "RightDownLipConerJnt.t";
connectAttr "RightDownLipConerCtrl.r" "RightDownLipConerJnt.r";
connectAttr "RightDownLipConerCtrl.s" "RightDownLipConerJnt.s";
connectAttr "LipRootPoser.mode" "LipModeRvs.ix";
connectAttr "LipCtrlCrvShape.ws" "CenterUpLipMRootCntPC.ic";
connectAttr "LipCtrlCrvShape.ws" "RightLipConerRootCntPC.ic";
connectAttr "RightLipConerCtrl.t" "RightLipConerCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightUpLipBRootCntPC.ic";
connectAttr "UpLip2CrvPos.r" "UpLip2CrvPosPosBRotPB.ir2";
connectAttr "UpLip2CrvPosPosBRotPBwML.o" "UpLip2CrvPosPosBRotPB.w";
connectAttr "UpLip2CrvPos.BPbw" "UpLip2CrvPosPosBRotPBwML.i1";
connectAttr "RightUpLipBCtrl.t" "RightUpLipBCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightUpLipARootCntPC.ic";
connectAttr "UpLip2CrvPos.r" "UpLip2CrvPosARotPB.ir2";
connectAttr "UpLip2CrvPosARotPBwML.o" "UpLip2CrvPosARotPB.w";
connectAttr "UpLip2CrvPos.APbw" "UpLip2CrvPosARotPBwML.i1";
connectAttr "RightUpLipACtrl.t" "RightUpLipACtrlRvsMultMD.i1";
connectAttr "CenterUpLipMCtrl.t" "CenterUpLipMCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftUpLipARootCntPC.ic";
connectAttr "UpLip4CrvPos.r" "UpLip4CrvPosARotPB.ir2";
connectAttr "UpLip4CrvPosARotPBwML.o" "UpLip4CrvPosARotPB.w";
connectAttr "UpLip4CrvPos.APbw" "UpLip4CrvPosARotPBwML.i1";
connectAttr "LeftUpLipACtrl.t" "LeftUpLipACtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftUpLipBRootCntPC.ic";
connectAttr "UpLip4CrvPos.r" "UpLip4CrvPosBRotPB.ir2";
connectAttr "UpLip4CrvPosBRotPBwML.o" "UpLip4CrvPosBRotPB.w";
connectAttr "UpLip4CrvPos.BPbw" "UpLip4CrvPosBRotPBwML.i1";
connectAttr "LeftUpLipBCtrl.t" "LeftUpLipBCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftLipConerRootCntPC.ic";
connectAttr "LeftLipConerCtrl.t" "LeftLipConerCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftDownLipBRootCntPC.ic";
connectAttr "DownLip4CrvPos.r" "DownLip4CrvPosPosBRotPB.ir2";
connectAttr "DownLip4CrvPosPosBRotPBwML.o" "DownLip4CrvPosPosBRotPB.w";
connectAttr "DownLip4CrvPos.BPbw" "DownLip4CrvPosPosBRotPBwML.i1";
connectAttr "LeftDownLipBCtrl.t" "LeftDownLipBCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "LeftDownLipARootCntPC.ic";
connectAttr "DownLip4CrvPos.r" "DownLip4CrvPosARotPB.ir2";
connectAttr "DownLip4CrvPosARotPBwML.o" "DownLip4CrvPosARotPB.w";
connectAttr "DownLip4CrvPos.APbw" "DownLip4CrvPosARotPBwML.i1";
connectAttr "LeftDownLipACtrl.t" "LeftDownLipACtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "CenterDownLipMRootCntPC.ic";
connectAttr "CenterDownLipMCtrl.t" "CenterDownLipMCtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightDownLipARootCntPC.ic";
connectAttr "DownLip2CrvPos.r" "DownLip2CrvPosARotPB.ir2";
connectAttr "DownLip2CrvPosARotPBwML.o" "DownLip2CrvPosARotPB.w";
connectAttr "DownLip2CrvPos.APbw" "DownLip2CrvPosARotPBwML.i1";
connectAttr "RightDownLipACtrl.t" "RightDownLipACtrlRvsMultMD.i1";
connectAttr "LipCtrlCrvShape.ws" "RightDownLipBRootCntPC.ic";
connectAttr "DownLip2CrvPos.r" "DownLip2CrvPosBRotPB.ir2";
connectAttr "DownLip2CrvPosBRotPBwML.o" "DownLip2CrvPosBRotPB.w";
connectAttr "DownLip2CrvPos.BPbw" "DownLip2CrvPosBRotPBwML.i1";
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
connectAttr "RightUpLipConerJntGrpMM.o" "RightUpLipConerJntGrpDM.imat";
connectAttr "RightUpLipConerCtrlGrp.wm" "RightUpLipConerJntGrpMM.i[3]";
connectAttr "RightUpLipConerJntGrp.pim" "RightUpLipConerJntGrpMM.i[4]";
connectAttr "RightUpLipBJntGrpMM.o" "RightUpLipBJntGrpDM.imat";
connectAttr "RightUpLipBRvs.wm" "RightUpLipBJntGrpMM.i[3]";
connectAttr "RightUpLipBJntGrp.pim" "RightUpLipBJntGrpMM.i[4]";
connectAttr "RightUpLipAJntGrpMM.o" "RightUpLipAJntGrpDM.imat";
connectAttr "RightUpLipARvs.wm" "RightUpLipAJntGrpMM.i[3]";
connectAttr "RightUpLipAJntGrp.pim" "RightUpLipAJntGrpMM.i[4]";
connectAttr "CenterUpLipMJntGrpMM.o" "CenterUpLipMJntGrpDM.imat";
connectAttr "CenterUpLipMRvs.wm" "CenterUpLipMJntGrpMM.i[3]";
connectAttr "CenterUpLipMJntGrp.pim" "CenterUpLipMJntGrpMM.i[4]";
connectAttr "LeftUpLipAJntGrpMM.o" "LeftUpLipAJntGrpDM.imat";
connectAttr "LeftUpLipARvs.wm" "LeftUpLipAJntGrpMM.i[3]";
connectAttr "LeftUpLipAJntGrp.pim" "LeftUpLipAJntGrpMM.i[4]";
connectAttr "LeftUpLipBJntGrpMM.o" "LeftUpLipBJntGrpDM.imat";
connectAttr "LeftUpLipBRvs.wm" "LeftUpLipBJntGrpMM.i[3]";
connectAttr "LeftUpLipBJntGrp.pim" "LeftUpLipBJntGrpMM.i[4]";
connectAttr "LeftUpLipConerJntGrpMM.o" "LeftUpLipConerJntGrpDM.imat";
connectAttr "LeftUpLipConerCtrlGrp.wm" "LeftUpLipConerJntGrpMM.i[3]";
connectAttr "LeftUpLipConerJntGrp.pim" "LeftUpLipConerJntGrpMM.i[4]";
connectAttr "LeftDownLipConerJntGrpMM.o" "LeftDownLipConerJntGrpDM.imat";
connectAttr "LeftDownLipConerCtrlGrp.wm" "LeftDownLipConerJntGrpMM.i[3]";
connectAttr "LeftDownLipConerJntGrp.pim" "LeftDownLipConerJntGrpMM.i[4]";
connectAttr "LeftDownLipBJntGrpMM.o" "LeftDownLipBJntGrpDM.imat";
connectAttr "LeftDownLipBRvs.wm" "LeftDownLipBJntGrpMM.i[3]";
connectAttr "LeftDownLipBJntGrp.pim" "LeftDownLipBJntGrpMM.i[4]";
connectAttr "LeftDownLipAJntGrpMM.o" "LeftDownLipAJntGrpDM.imat";
connectAttr "LeftDownLipARvs.wm" "LeftDownLipAJntGrpMM.i[3]";
connectAttr "LeftDownLipAJntGrp.pim" "LeftDownLipAJntGrpMM.i[4]";
connectAttr "CenterDownLipMJntGrpMM.o" "CenterDownLipMJntGrpDM.imat";
connectAttr "CenterDownLipMRvs.wm" "CenterDownLipMJntGrpMM.i[3]";
connectAttr "CenterDownLipMJntGrp.pim" "CenterDownLipMJntGrpMM.i[4]";
connectAttr "RightDownLipAJntGrpMM.o" "RightDownLipAJntGrpDM.imat";
connectAttr "RightDownLipARvs.wm" "RightDownLipAJntGrpMM.i[3]";
connectAttr "RightDownLipAJntGrp.pim" "RightDownLipAJntGrpMM.i[4]";
connectAttr "RightDownLipBJntGrpMM.o" "RightDownLipBJntGrpDM.imat";
connectAttr "RightDownLipBRvs.wm" "RightDownLipBJntGrpMM.i[3]";
connectAttr "RightDownLipBJntGrp.pim" "RightDownLipBJntGrpMM.i[4]";
connectAttr "RightDownLipConerJntGrpMM.o" "RightDownLipConerJntGrpDM.imat";
connectAttr "RightDownLipConerCtrlGrp.wm" "RightDownLipConerJntGrpMM.i[3]";
connectAttr "RightDownLipConerJntGrp.pim" "RightDownLipConerJntGrpMM.i[4]";
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
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
// End of lipCtrl05.ma
