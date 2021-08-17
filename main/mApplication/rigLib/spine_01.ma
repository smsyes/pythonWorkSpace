<<<<<<< HEAD
//Maya ASCII 2019 scene
//Name: spine_01.ma
//Last modified: Wed, May 06, 2020 07:50:14 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2019.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18363)\n";
createNode transform -s -n "persp";
	rename -uid "E4F6F51C-487F-09FA-A3FF-FEAB0BDF7D11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.434646508048083 12.413058109047784 5.4510115672115482 ;
	setAttr ".r" -type "double3" -3.9383527296029204 74.200000000001424 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "38EEC9DB-494C-BEF9-18BE-F58A4B64D688";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 30.62276851687567;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "5B7E805A-464E-0945-02C8-988617EA5CBE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8C26EF01-4202-995C-12B3-11BA1588EDC0";
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
	rename -uid "07560F2B-49CF-AC77-D185-11ACED3A57F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EA1F04EC-4929-3DC0-4F24-4B8204B1526D";
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
	rename -uid "8FABEB0C-41D1-01B3-E504-3BBB40F21D2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "89C5D30B-4C4A-31FD-66C3-0B9DD8901BFF";
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
createNode transform -n "temp:Spine_component";
	rename -uid "B1014DE7-4FD6-DF62-C382-D9A35D1FC432";
createNode transform -n "temp:input" -p "temp:Spine_component";
	rename -uid "2B2A5B57-4422-13D4-501F-8A98E8F3028F";
createNode transform -n "temp:parent_space" -p "temp:input";
	rename -uid "1FCD5D9C-4665-9C5F-0D4C-A9A608F98D25";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
createNode locator -n "temp:parent_spaceShape" -p "temp:parent_space";
	rename -uid "923F1D01-426B-8925-4706-C99BD1979B90";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
createNode transform -n "temp:fit_spine" -p "temp:input";
	rename -uid "7B81A015-4B53-066E-8D7B-5583680C9D3D";
createNode transform -n "temp:fit_spine" -p "|temp:Spine_component|temp:input|temp:fit_spine";
	rename -uid "DDE1DE43-4064-ABF5-46DA-4CA402AE8DDC";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -6.1629758220391547e-33 5.1528527950028264 0 ;
createNode locator -n "temp:fit_spineShape" -p "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine";
	rename -uid "62775011-47B1-B067-A636-B5B314BC374D";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:fit_spine_sub" -p "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine";
	rename -uid "D2139D6C-44BE-9775-1CBA-7FA502387594";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -1.332267629550188e-15 3.5182144177500998 0 ;
createNode locator -n "temp:fit_spine_subShape" -p "temp:fit_spine_sub";
	rename -uid "4E8AA85B-4BB8-E29F-7736-52AF8E6E0847";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:fit_chest" -p "|temp:Spine_component|temp:input|temp:fit_spine";
	rename -uid "0DDE8F76-4CAF-3F4B-D693-AC80FF8DF459";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -4.0245584642661934e-16 17.28268512563892 0 ;
createNode locator -n "temp:fit_chestShape" -p "temp:fit_chest";
	rename -uid "9F6BB547-4C6E-CB45-64A0-FEB27E8F0163";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:fit_chest_sub" -p "temp:fit_chest";
	rename -uid "F56D291E-478B-4ADC-55F2-C4B15AD96A17";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -3.9072046689379061 0 ;
createNode locator -n "temp:fit_chest_subShape" -p "temp:fit_chest_sub";
	rename -uid "0FE78C9E-4104-07CD-A461-8BBF84CE2C3A";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:ik_spine" -p "temp:Spine_component";
	rename -uid "0F1F08BA-4513-40BE-8379-A2AF3E74DB54";
createNode transform -n "temp:spine_twist_end_ctrl" -p "temp:ik_spine";
	rename -uid "EB5AB358-4086-DA07-4543-3A9C8543AB0D";
	addAttr -ci true -sn "End_UValue" -ln "End_UValue" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".End_UValue" 1;
createNode nurbsCurve -n "nurbsCircleShape1" -p "temp:spine_twist_end_ctrl";
	rename -uid "9F7AAB83-46AA-1282-2FD0-01B16A07D39B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.079248709591617 6.6084923884264133e-17 -1.0792487095916141
		-1.0108341068570976e-16 9.3458195625520092e-17 -1.5262881622781241
		-1.0792487095916143 6.6084923884264195e-17 -1.0792487095916143
		-1.5262881622781241 2.7081846952830656e-32 -5.3967721636980937e-16
		-1.0792487095916146 -6.6084923884264145e-17 1.0792487095916143
		-3.8685259177240873e-16 -9.3458195625520104e-17 1.5262881622781244
		1.0792487095916141 -6.6084923884264207e-17 1.0792487095916146
		1.5262881622781241 -5.0196579182590163e-32 7.223752576859768e-16
		1.079248709591617 6.6084923884264133e-17 -1.0792487095916141
		-1.0108341068570976e-16 9.3458195625520092e-17 -1.5262881622781241
		-1.0792487095916143 6.6084923884264195e-17 -1.0792487095916143
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "temp:spine_twist_end_ctrl";
	rename -uid "64FE8979-4A20-3970-D3A0-458A87F184E6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.72413667245901314 4.4340582903607194e-17 -0.72413667245901137
		-4.5752785818672678e-18 6.2707053705809874e-17 -1.0240839032032572
		-0.72413667245901137 4.4340582903607243e-17 -0.72413667245901137
		-1.0240839032032572 1.8170935357326246e-32 -4.4643449427454046e-16
		-0.7241366724590117 -4.43405829036072e-17 0.72413667245901137
		-1.9631601641583945e-16 -6.2707053705809886e-17 1.0240839032032574
		0.72413667245901137 -4.4340582903607256e-17 0.7241366724590117
		1.0240839032032572 -3.3680080870201433e-32 4.0035686244362902e-16
		0.72413667245901314 4.4340582903607194e-17 -0.72413667245901137
		-4.5752785818672678e-18 6.2707053705809874e-17 -1.0240839032032572
		-0.72413667245901137 4.4340582903607243e-17 -0.72413667245901137
		;
createNode transform -n "temp:chest_twist_end_ctrl" -p "temp:ik_spine";
	rename -uid "4FDDB757-4CE4-6F72-1D19-22A3D912DE4D";
	addAttr -ci true -sn "End_UValue" -ln "End_UValue" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".End_UValue" 0;
createNode nurbsCurve -n "nurbsCircleShape1" -p "temp:chest_twist_end_ctrl";
	rename -uid "E14D18BF-4129-0A18-3603-96B9AD67E304";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0779747132623019 6.6006914107923055e-17 -1.0779747132622997
		-1.7392567667169365e-16 9.3347873141820861e-17 -1.5244864593907945
		-1.0779747132623001 6.6006914107923092e-17 -1.0779747132623001
		-1.5244864593907945 2.7049878257105222e-32 -5.3897462781090262e-16
		-1.0779747132623012 -6.6006914107923067e-17 1.0779747132622999
		-4.5935752227260472e-16 -9.3347873141820861e-17 1.5244864593907947
		1.0779747132622997 -6.6006914107923116e-17 1.0779747132623012
		1.5244864593907945 -5.0137324761385433e-32 7.2158805968775279e-16
		1.0779747132623019 6.6006914107923055e-17 -1.0779747132622997
		-1.7392567667169365e-16 9.3347873141820861e-17 -1.5244864593907945
		-1.0779747132623001 6.6006914107923092e-17 -1.0779747132623001
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "temp:chest_twist_end_ctrl";
	rename -uid "FE13F434-4E31-3265-8080-37AC0156CA23";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7237251376202577 4.4315383662456245e-17 -0.72372513762025559
		-1.1676932931384003e-16 6.2671416597212709e-17 -1.0235019050529022
		-0.72372513762025592 4.4315383662456269e-17 -0.72372513762025592
		-1.0235019050529022 1.8160608614824834e-32 -4.4614923304120937e-16
		-0.72372513762025714 -4.4315383662456257e-17 0.72372513762025581
		-3.0840109877674598e-16 -6.2671416597212709e-17 1.0235019050529024
		0.72372513762025559 -4.4315383662456288e-17 0.72372513762025714
		1.0235019050529022 -3.3660940109655325e-32 4.0016088283155273e-16
		0.7237251376202577 4.4315383662456245e-17 -0.72372513762025559
		-1.1676932931384003e-16 6.2671416597212709e-17 -1.0235019050529022
		-0.72372513762025592 4.4315383662456269e-17 -0.72372513762025592
		;
createNode transform -n "temp:ik_ctrl_space" -p "temp:ik_spine";
	rename -uid "3FAE24A7-41C7-EFA9-EC4F-F999ADA28E51";
createNode transform -n "temp:chest_Ctrl_space" -p "temp:ik_ctrl_space";
	rename -uid "9ECDED6C-48B3-2377-16A7-0CB8AD09C09B";
createNode transform -n "temp:chest_Ctrl" -p "temp:chest_Ctrl_space";
	rename -uid "10FCD0A4-4863-0308-79EE-9E80F1031669";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 9.4663308626521417e-30 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:chest_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl";
	rename -uid "0367B709-455A-A4EC-6A19-C6A40D0C6D20";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2622352353850834 2.7704391399327006e-16 -2.2622352353850741
		-4.3227832762291528e-16 3.9179926054220778e-16 -3.1992837511598755
		-2.262235235385079 2.7704391399327016e-16 -2.2622352353850785
		-3.199283751159876 1.1353362366156046e-31 -7.5047175591964874e-16
		-2.2622352353850825 -2.7704391399327006e-16 2.2622352353850745
		-1.0312849374025023e-15 -3.9179926054220778e-16 3.1992837511598755
		2.2622352353850737 -2.7704391399327035e-16 2.2622352353850785
		3.1992837511598751 -2.1043614713354141e-31 1.8949421791076717e-15
		2.2622352353850834 2.7704391399327006e-16 -2.2622352353850741
		-4.3227832762291528e-16 3.9179926054220778e-16 -3.1992837511598755
		-2.262235235385079 2.7704391399327016e-16 -2.2622352353850785
		;
createNode transform -n "temp:chest_sub_ctrl_space" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl";
	rename -uid "ADA49BBF-4BDA-23EE-2ADD-389DCDA4127A";
createNode transform -n "temp:chest_sub_Ctrl" -p "temp:chest_sub_ctrl_space";
	rename -uid "B4464401-45E1-B864-893D-598243D2D0F7";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "temp:chest_sub_CtrlShape" -p "temp:chest_sub_Ctrl";
	rename -uid "7FE55CDA-407D-7D97-E8F5-6AB2C94ACF90";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		4.1633363423443272e-17 0.9889330522182388 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 -0.98893305221824157
		4.1633363423443272e-17 -0.9889330522182388 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 0.98893305221822914
		-0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 -0.98893305221823979
		0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 0.98893305221824157
		4.1633363423443272e-17 0.9889330522182388 7.1054273576010019e-15
		0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 -0.9889330522182388 7.1054273576010019e-15
		-0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 0.9889330522182388 7.1054273576010019e-15
		;
createNode transform -n "temp:chest_Ctrl" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl";
	rename -uid "EC66CDAF-4E73-16ED-BA32-9A8A1534B1B3";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "temp:chest_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl";
	rename -uid "901D2141-4549-B32E-5C29-A7AF072DC3A0";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		4.1633363423443272e-17 1.0430785327837251 -1.7763568394002505e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 -1.0430785327837278
		4.1633363423443272e-17 -1.0430785327837242 -1.7763568394002505e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 1.043078532783726
		-1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 -1.0430785327837278
		1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 1.043078532783726
		4.1633363423443272e-17 1.0430785327837251 -1.7763568394002505e-15
		1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 -1.0430785327837242 -1.7763568394002505e-15
		-1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 1.0430785327837251 -1.7763568394002505e-15
		;
createNode transform -n "temp:spine_Ctrl_space" -p "temp:ik_ctrl_space";
	rename -uid "460AA69F-4184-E500-0620-1C9F58B3C59A";
createNode transform -n "temp:spine_Ctrl" -p "temp:spine_Ctrl_space";
	rename -uid "9E2870C5-40AE-7790-76A7-8AA970B21AB5";
	addAttr -ci true -sn "fit_display" -ln "fit_display" -min 0 -max 1 -en "off:on" 
		-at "enum";
	addAttr -ci true -sn "fk_display" -ln "fk_display" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "curve_sub_ctrl_display" -ln "curve_sub_ctrl_display" -min 
		0 -max 1 -en "off:on" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 1.9721522630525295e-31 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fit_display" 1;
	setAttr -k on ".fk_display" 1;
	setAttr -k on ".curve_sub_ctrl_display" 1;
createNode nurbsCurve -n "temp:spine_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl";
	rename -uid "84E1F41E-4F20-9194-756B-66BEECE9A309";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2485521040442364 2.7536821369338074e-16 -2.248552104044224
		-5.8483692409169886e-16 3.8942946245163267e-16 -3.1799328812418981
		-2.2485521040442293 2.7536821369338183e-16 -2.248552104044224
		-3.1799328812419043 1.4011002956185187e-31 1.2327001432704876e-14
		-2.2485521040442311 -2.7536821369338168e-16 2.2485521040442351
		-1.1802204419896638e-15 -3.8942946245163267e-16 3.1799328812419194
		2.2485521040442293 -2.7536821369338183e-16 2.2485521040442369
		3.1799328812419034 -1.8190020985697336e-31 1.4956414579769165e-14
		2.2485521040442364 2.7536821369338074e-16 -2.248552104044224
		-5.8483692409169886e-16 3.8942946245163267e-16 -3.1799328812418981
		-2.2485521040442293 2.7536821369338183e-16 -2.248552104044224
		;
createNode transform -n "temp:spine_sub_ctrl_space" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl";
	rename -uid "DEC73E39-4C46-D59F-D2D8-F99E53CB1AC7";
createNode transform -n "temp:spine_sub_Ctrl" -p "temp:spine_sub_ctrl_space";
	rename -uid "87843495-4169-53DC-C500-CBA52E3B5516";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 0 -4.2632564145606024e-14 -1.9721522630525295e-31 ;
createNode nurbsCurve -n "temp:spine_sub_CtrlShape" -p "temp:spine_sub_Ctrl";
	rename -uid "9EE780D2-4559-C17D-0765-958E9D4F7795";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		6.3285229292198063e-17 0.94403305988006958 4.4408920985006262e-15
		6.3285229292198063e-17 4.241051954068098e-14 -0.94403305988002995
		6.3285229292198063e-17 -0.9440330598799842 4.4408920985006262e-15
		6.3285229292198063e-17 4.241051954068098e-14 0.94403305988002995
		-0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 4.241051954068098e-14 -0.94403305988002639
		0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 4.241051954068098e-14 0.94403305988002995
		6.3285229292198063e-17 0.94403305988006958 4.4408920985006262e-15
		0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 -0.9440330598799842 4.4408920985006262e-15
		-0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 0.94403305988006958 4.4408920985006262e-15
		;
createNode transform -n "temp:spine_Ctrl" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl";
	rename -uid "821BBB77-43A9-7BF1-398A-49921CDA430D";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "temp:spine_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl";
	rename -uid "2DFD29C1-4A57-9960-3E59-1EBB37D1542A";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		-6.1629758220391547e-33 1.0037929107292245 3.5527136788005009e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 -1.0037929107292296
		-6.1629758220391547e-33 -1.0037929107292245 3.5527136788005009e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 1.0037929107292296
		-1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 -1.0037929107292207
		1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 1.0037929107292296
		-6.1629758220391547e-33 1.0037929107292245 3.5527136788005009e-15
		1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 -1.0037929107292245 3.5527136788005009e-15
		-1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 1.0037929107292245 3.5527136788005009e-15
		;
createNode transform -n "temp:upVec_Ctrl_space" -p "temp:spine_Ctrl_space";
	rename -uid "F12D72B0-4A83-DF04-4E8A-C381768A23C9";
	setAttr ".t" -type "double3" -0.13828114467012398 6.7086543307026814 -9.656325252554522 ;
createNode transform -n "temp:fk_init_upVec_Ctrl" -p "temp:upVec_Ctrl_space";
	rename -uid "8988ED54-46EE-8F4F-8E52-C59AAE13A928";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_init_upVec_CtrlShape" -p "temp:fk_init_upVec_Ctrl";
	rename -uid "44C5F971-418D-5572-0985-53B51A3C8FD9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 0.40269488303245554 -0.40269488303245732
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		;
createNode transform -n "temp:spine_curve" -p "temp:ik_spine";
	rename -uid "EE669416-4A1A-7B9D-26C6-E5AE0A9AC75B";
createNode bezierCurve -n "bezierShape1" -p "temp:spine_curve";
	rename -uid "469A10D5-4979-C6C4-6E34-4B9AA0C9FE51";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.910522504832138e-31 5.1528527950028264 0
		-1.3322676295501878e-15 8.6710672127528845 -1.9721522630525295e-31
		-4.0245584642661934e-16 13.375480456701014 0
		-4.0245584642661934e-16 17.28268512563892 0
		;
createNode transform -n "temp:offset_Fk" -p "temp:Spine_component";
	rename -uid "BF5E238F-4885-AFFD-A693-ADBB798B4579";
createNode transform -n "temp:init_on_curve_space" -p "temp:offset_Fk";
	rename -uid "22DB695E-44A6-CBF5-51A5-D1830ABEF490";
createNode transform -n "temp:init_spineA_space" -p "temp:init_on_curve_space";
	rename -uid "0400DD5E-41B9-6943-AFC1-44BD9FABB1C2";
createNode transform -n "temp:twist_spineA" -p "temp:init_spineA_space";
	rename -uid "B9ED3420-4F9B-5871-22B9-099EFECB8A62";
createNode aimConstraint -n "temp:init_spineA_space_aimConstraint1" -p "temp:init_spineA_space";
	rename -uid "3242BC20-465A-5AE7-077A-CA99459586E8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineB_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 14.919429362848538 -2.3065762020292835e-15 1.7615887966663944e-14 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_spineB_space" -p "temp:init_on_curve_space";
	rename -uid "E0E71630-4B41-7CD9-3F1A-A5AC1884745B";
createNode transform -n "temp:twist_spineB" -p "temp:init_spineB_space";
	rename -uid "472EA897-40BB-510B-401F-4EA840B76FCC";
createNode aimConstraint -n "temp:init_spineB_space_aimConstraint1" -p "temp:init_spineB_space";
	rename -uid "FE00BED3-4CE1-65A7-66D2-35851BF33A47";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineC_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -18.466281315192838 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_spineC_space" -p "temp:init_on_curve_space";
	rename -uid "55FC7ACD-4D1E-0C69-3A6B-258BA8EB76EB";
createNode transform -n "temp:twist_spineC" -p "temp:init_spineC_space";
	rename -uid "FC504CD3-4C7E-04BB-7ED8-E1B93CE323C8";
createNode aimConstraint -n "temp:init_spineC_space_aimConstraint1" -p "temp:init_spineC_space";
	rename -uid "9A2A2B85-4C96-280A-18FA-0BBAC69511DB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineD_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -16.566154055350488 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_spineD_space" -p "temp:init_on_curve_space";
	rename -uid "970BA3EA-4DE6-317C-3914-70A60CF605F1";
createNode transform -n "temp:twist_spineD" -p "temp:init_spineD_space";
	rename -uid "0026D58B-4285-6EF9-03AF-46800B85E08F";
createNode aimConstraint -n "temp:init_spineD_space_aimConstraint1" -p "temp:init_spineD_space";
	rename -uid "7AA422E3-47BA-7959-7CB1-40861D42F21D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "output_spine_end_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 23.950862842443442 1.9207835621546834e-15 -9.0556683396695464e-15 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_chest_space" -p "temp:init_on_curve_space";
	rename -uid "50F41F9A-4E1B-4A41-2CCB-0AB497BB8612";
createNode transform -n "temp:twist_chest" -p "temp:init_chest_space";
	rename -uid "95900454-4837-7E20-D3B2-2BB75296BC72";
createNode aimConstraint -n "temp:init_chest_space_aimConstraint1" -p "temp:init_chest_space";
	rename -uid "5B36D199-47E8-1B81-2EBA-98804523B907";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineD_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 23.950862842443442 1.9207835621546834e-15 -9.0556683396695464e-15 ;
	setAttr -k on ".w0";
createNode transform -n "temp:output_spine_end_space" -p "temp:init_on_curve_space";
	rename -uid "2F0AB65E-49D7-F3F2-B564-D5A414F1D5F0";
createNode transform -n "temp:fk_spine_jnt_space" -p "temp:offset_Fk";
	rename -uid "6DA4B794-4E9E-7C54-58DF-8C921B9AB1E4";
createNode transform -n "temp:fk_spineA_jnt_space" -p "temp:fk_spine_jnt_space";
	rename -uid "6866DE1F-4EC2-8EE1-C92F-C8957C2F3098";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "temp:fk_spineA_jnt" -p "temp:fk_spineA_jnt_space";
	rename -uid "6064BA57-4028-A4E7-E5C7-A8B21833B354";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.9999989498779418 0.0011835977894311138 0.00083626508144769916 0
		 -0.001270705721568167 0.99356324289719744 0.11327165431198495 0 -0.00069681416659599419 -0.11327259800974594 0.99356370353900292 0
		 0 96.981148568509965 2.0338004703341883 1;
	setAttr ".radi" 0.63495623330098816;
createNode transform -n "temp:fk_spineB_jnt_space" -p "temp:fk_spineA_jnt";
	rename -uid "6F58D7C7-4A1F-0ADE-68D0-1DB2E894D1FB";
createNode joint -n "temp:fk_spineB_jnt" -p "temp:fk_spineB_jnt_space";
	rename -uid "26C91663-48BD-C5B3-A1B5-CEBB86C4441D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -3.5527136788005009e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -0.015511342278313286 109.10944804347419 3.41649307228115 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_spineC_jnt_space" -p "temp:fk_spineB_jnt";
	rename -uid "A6EACEA5-4A72-ED2A-6247-75BAC7BC9A17";
createNode joint -n "temp:fk_spineC_jnt" -p "temp:fk_spineC_jnt_space";
	rename -uid "8533A89C-4D21-DD38-8BB8-B897D39F4404";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-17 121.90116773063582 2.9354727293561167 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_spineD_jnt_space" -p "temp:fk_spineC_jnt";
	rename -uid "7473CD1F-4E43-84DF-BB38-069B3DF008A0";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "temp:fk_spineD_jnt" -p "temp:fk_spineD_jnt_space";
	rename -uid "3139B020-4E08-0724-A6C0-C280A9729496";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-17 121.90116773063582 2.9354727293561167 1;
	setAttr ".ds" 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_chest_jnt_space" -p "temp:fk_spineD_jnt";
	rename -uid "A6688145-4D0D-196A-466B-1081EB51915A";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode joint -n "temp:fk_chest_jnt" -p "temp:fk_chest_jnt_space";
	rename -uid "3B9DA774-4AC1-6337-5522-03B0843A98B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-17 121.90116773063582 2.9354727293561167 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_ctrl_space" -p "temp:offset_Fk";
	rename -uid "A15111EC-4B68-E8FF-AE56-9698814B1636";
createNode transform -n "temp:fk_spineA_Ctrl_space" -p "temp:fk_ctrl_space";
	rename -uid "BD197B49-4566-D38A-F529-62A208988A69";
createNode transform -n "temp:fk_spineA_Ctrl" -p "temp:fk_spineA_Ctrl_space";
	rename -uid "05CEF295-471B-56E8-7941-94A3EF405B02";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineA_CtrlShape" -p "temp:fk_spineA_Ctrl";
	rename -uid "65AD4D43-4D22-26A2-D3EF-589FCEDEAA9A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6942000198802147 -3.7775509690401307e-06 -1.6836386124263596
		-9.9226182825873366e-16 -5.3422638129168455e-06 -2.3810245598283788
		-1.6942000198802127 -3.7775509690401307e-06 -1.68363861242636
		-2.3959606454873668 -1.3426785825313448e-16 -1.2975921133525078e-15
		-1.6942000198802152 3.7775509687750644e-06 1.6836386124263583
		-1.4398204850607499e-15 5.3422638126517784e-06 2.3810245598283788
		1.6942000198802116 3.7775509687750644e-06 1.6836386124263583
		2.3959606454873668 -1.3426785825313448e-16 7.0080933097277383e-16
		1.6942000198802147 -3.7775509690401307e-06 -1.6836386124263596
		-9.9226182825873366e-16 -5.3422638129168455e-06 -2.3810245598283788
		-1.6942000198802127 -3.7775509690401307e-06 -1.68363861242636
		;
createNode nurbsCurve -n "temp:fk_spineA_Ctrl_subShape" -p "temp:fk_spineA_Ctrl";
	rename -uid "1C7ED67B-4518-F5C6-B452-52B76739FD7C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.25740178698788735 3.6440851458260229e-06 1.630960714765163
		0.25740178698788468 3.6440851458260229e-06 1.630960714765163
		-1.8318679906315083e-15 4.4674016539795324e-06 2.0148625962506981
		-0.25740178698788735 3.6440851458260229e-06 1.630960714765163
		;
createNode transform -n "temp:fk_spineB_Ctrl_space" -p "temp:fk_spineA_Ctrl";
	rename -uid "6B76A8C0-431A-6D5B-13B5-3DB558C461D9";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_spineB_Ctrl" -p "temp:fk_spineB_Ctrl_space";
	rename -uid "0AE8F073-4A23-DDE6-B45F-B19017493EE2";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineB_CtrlShape" -p "temp:fk_spineB_Ctrl";
	rename -uid "E818C778-4350-7188-B58B-FD9B972BA26B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6635310989700296 -3.7969302175303099e-15 -1.6635310989700292
		-9.8061968104408285e-16 -3.7969302175218715e-15 -2.3525882415928256
		-1.6635310989700294 -3.7969302175303099e-15 -1.6635310989700296
		-2.3525882415928252 -3.7969302175506823e-15 -1.4415552085367267e-15
		-1.6635310989700294 -3.7969302175710554e-15 1.6635310989700278
		-1.4210982432513108e-15 -3.796930217579493e-15 2.3525882415928239
		1.6635310989700276 -3.7969302175710554e-15 1.6635310989700278
		2.3525882415928243 -3.7969302175506823e-15 5.0393716977126246e-16
		1.6635310989700296 -3.7969302175303099e-15 -1.6635310989700292
		-9.8061968104408285e-16 -3.7969302175218715e-15 -2.3525882415928256
		-1.6635310989700294 -3.7969302175303099e-15 -1.6635310989700296
		;
createNode nurbsCurve -n "temp:fk_spineB_Ctrl_subShape" -p "temp:fk_spineB_Ctrl";
	rename -uid "9EC6A905-4DBE-62D8-2D1B-2A867E75E975";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.30501877693098151 -3.7969302184175978e-15 1.5227958375302459
		0.3050187769309784 -3.7969302184175978e-15 1.5227958375302459
		-1.5543122344752192e-15 -3.7969302184175978e-15 1.9803240029267142
		-0.30501877693098151 -3.7969302184175978e-15 1.5227958375302459
		;
createNode transform -n "temp:fk_spineC_Ctrl_space" -p "temp:fk_spineB_Ctrl";
	rename -uid "5038F58B-4AC5-94A6-C686-3CAEADC5B0C1";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_spineC_Ctrl" -p "temp:fk_spineC_Ctrl_space";
	rename -uid "0E4A4CBE-40AD-E61A-B42D-4F9DDBAF3C5A";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineC_CtrlShape" -p "temp:fk_spineC_Ctrl";
	rename -uid "60835EBD-4671-1179-01AC-9C9329DA08FD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6552016897530453 1.1035767861211632e-06 -1.6544143425376965
		-9.3742592252684569e-05 1.5617141331664142e-06 -2.3395997025882078
		-1.6553342617983786 1.1050205251800227e-06 -1.654279287386613
		-2.3409024207038645 1.0208838496783557e-09 9.5498413159090557e-05
		-1.6552016897530513 -1.1035767737560542e-06 1.6544143425376885
		9.3742592240307114e-05 -1.5617141208013052e-06 2.3395997025882056
		1.6553342617983697 -1.1050205128149138e-06 1.6542792873866121
		2.3409024207038627 -1.0208714984472067e-09 -9.5498413164709327e-05
		1.6552016897530453 1.1035767861211632e-06 -1.6544143425376965
		-9.3742592252684569e-05 1.5617141331664142e-06 -2.3395997025882078
		-1.6553342617983786 1.1050205251800227e-06 -1.654279287386613
		;
createNode nurbsCurve -n "temp:fk_spineC_Ctrl_subShape" -p "temp:fk_spineC_Ctrl";
	rename -uid "E882C254-40F4-334F-2115-DD8DB31B749D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506573 6.1756155744774333e-15 1.4956688250853725
		0.26640775810505452 6.1756155744774333e-15 1.4956688250853725
		-5.6760152133961128e-15 6.1756155744774333e-15 1.8952804622429644
		-0.26640775810506573 6.1756155744774333e-15 1.4956688250853725
		;
createNode transform -n "temp:fk_spineD_Ctrl_space" -p "temp:fk_spineC_Ctrl";
	rename -uid "78D8B636-4F24-9DD8-BC5E-F5A756F53367";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineD_Ctrl" -p "temp:fk_spineD_Ctrl_space";
	rename -uid "784F9BDA-4B66-26BB-7003-8D8E6BD96BB8";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineD_CtrlShape" -p "temp:fk_spineD_Ctrl";
	rename -uid "E13103B6-4836-8868-BFB7-F99EBF8C550A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.655201689753045 1.1035767891465209e-06 -1.6544143425376974
		-9.3742592252906614e-05 1.5617141361917719e-06 -2.3395997025882087
		-1.6553342617983788 1.1050205282053804e-06 -1.6542792873866139
		-2.3409024207038649 1.0208868750360978e-09 9.5498413158146001e-05
		-1.6552016897530515 -1.1035767707306965e-06 1.6544143425376876
		9.3742592240085056e-05 -1.5617141177759475e-06 2.3395997025882047
		1.6553342617983695 -1.105020509789556e-06 1.6542792873866112
		2.3409024207038622 -1.0208684730894646e-09 -9.5498413165640006e-05
		1.655201689753045 1.1035767891465209e-06 -1.6544143425376974
		-9.3742592252906614e-05 1.5617141361917719e-06 -2.3395997025882087
		-1.6553342617983788 1.1050205282053804e-06 -1.6542792873866139
		;
createNode nurbsCurve -n "temp:fk_spineD_Ctrl_subShape" -p "temp:fk_spineD_Ctrl";
	rename -uid "A8BB7D03-4682-390D-F368-9A94ED4A8ECD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506595 9.2009733165809848e-15 1.4956688250853714
		0.26640775810505429 9.2009733165809848e-15 1.4956688250853714
		-5.8980598183211441e-15 9.2009733165809848e-15 1.8952804622429635
		-0.26640775810506595 9.2009733165809848e-15 1.4956688250853714
		;
createNode transform -n "temp:fk_chest_Ctrl_space" -p "temp:fk_spineD_Ctrl";
	rename -uid "BF0F4FE5-4B89-F49F-7A01-E998AAB0C3CF";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_chest_Ctrl" -p "temp:fk_chest_Ctrl_space";
	rename -uid "ED39F80F-4EC7-B4F6-5DEA-0B8A3E41C731";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_chest_CtrlShape" -p "temp:fk_chest_Ctrl";
	rename -uid "C6B289CC-4469-0026-1EE6-7C8ABEAA1CAB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6552016897530462 1.1035767785994022e-06 -1.6544143425376947
		-9.3742592251796391e-05 1.5617141256446532e-06 -2.339599702588206
		-1.6553342617983777 1.1050205176582617e-06 -1.6542792873866112
		-2.340902420703864 1.0208763279173638e-09 9.5498413160644002e-05
		-1.6552016897530504 -1.1035767812778152e-06 1.6544143425376903
		9.3742592241195279e-05 -1.5617141283230662e-06 2.3395997025882074
		1.6553342617983706 -1.1050205203366747e-06 1.6542792873866139
		2.3409024207038631 -1.0208790202081985e-09 -9.5498413163142004e-05
		1.6552016897530462 1.1035767785994022e-06 -1.6544143425376947
		-9.3742592251796391e-05 1.5617141256446532e-06 -2.339599702588206
		-1.6553342617983777 1.1050205176582617e-06 -1.6542792873866112
		;
createNode nurbsCurve -n "temp:fk_chest_Ctrl_subShape" -p "temp:fk_chest_Ctrl";
	rename -uid "5A9C8F3D-4B68-CB2D-A632-8398101767F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506484 -1.3461454173580023e-15 1.495668825085374
		0.2664077581050554 -1.3461454173580023e-15 1.495668825085374
		-4.7878367936959876e-15 -1.3461454173580023e-15 1.8952804622429662
		-0.26640775810506484 -1.3461454173580023e-15 1.495668825085374
		;
createNode transform -n "temp:fk_scale_space_init" -p "temp:offset_Fk";
	rename -uid "C1DA9E9D-4E64-3F06-F1C8-6FA24F3875F4";
	setAttr ".v" no;
createNode transform -n "temp:chest_local_init" -p "temp:fk_scale_space_init";
	rename -uid "F989F6CF-4E34-A59C-7AEE-69A8500C8658";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineA_local_init" -p "temp:fk_scale_space_init";
	rename -uid "9220CA9D-43DC-5226-3779-B0A703455EE6";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineB_local_init" -p "temp:fk_scale_space_init";
	rename -uid "2182A3D5-4262-19D7-2E58-708F567BAB3E";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineC_local_init" -p "temp:fk_scale_space_init";
	rename -uid "C943DB39-42AC-67DE-B8B1-EB81902B648E";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_spineD_local_init" -p "temp:fk_scale_space_init";
	rename -uid "96E66160-4517-E1C6-867C-19921795748E";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:output" -p "temp:Spine_component";
	rename -uid "1ABBBE91-46B0-AA19-8656-70AE9DCA78FB";
createNode transform -n "temp:end_plug" -p "temp:output";
	rename -uid "A1C5B4C4-43F6-EAC0-8F90-4C85F6BF406B";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0B40CE5A-4C20-8C1F-5DE6-B8A4AC75A6C7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FEF873D4-485F-AF96-DA5B-6A8984F2B407";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6435DAA5-4AE0-D5D2-C920-8782871D61AC";
createNode displayLayerManager -n "layerManager";
	rename -uid "FEB11B72-49AC-4554-2013-00BD5DDC3B97";
createNode displayLayer -n "defaultLayer";
	rename -uid "F9CDC272-4C99-4DD3-E2D7-8090568FDF34";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F60409CC-4BA5-0109-4817-7F8DC6A2BD12";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D277E476-4924-4584-BDE5-8A8523C6E59C";
	setAttr ".g" yes;
createNode pointOnCurveInfo -n "spineA_pointOnCurveInfo";
	rename -uid "78055E5A-4809-AA16-0A10-F3AF9D963CDB";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineA_param";
	rename -uid "96530353-41BA-8594-C1C5-AF9BBFAB8566";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode unitConversion -n "unitConversion11";
	rename -uid "6DF1DC12-4F0F-1173-4534-2DBE9B42232F";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineA_twist_combine";
	rename -uid "D1CECF58-4A1E-ADF1-F6C6-5189A664844A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineA_spine_twist_mul";
	rename -uid "EDDE0843-451E-5F10-F4D7-08B827F40708";
createNode unitConversion -n "unitConversion1";
	rename -uid "AE71349F-4614-527C-5F6E-79AC34160E44";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineA_spine_twist_remap";
	rename -uid "38E7759D-432E-D86B-7724-25A914B57A8B";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineA_chest_twist_mul";
	rename -uid "3AA60B1D-45AB-7541-A149-ED8EE613DB65";
createNode unitConversion -n "unitConversion6";
	rename -uid "1A1A9149-4913-C6EA-D7C2-2CA9F828CAC0";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineA_chest_twist_remap";
	rename -uid "EDB5A9F5-4B28-1FEB-FEBD-BBBA196CE08F";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnCurveInfo -n "spineB_pointOnCurveInfo";
	rename -uid "62D245FA-4212-8D00-A3C0-0A95AF12D4AE";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineB_param";
	rename -uid "05911217-4A38-6E9B-DBEC-F180FAAFFD4B";
createNode unitConversion -n "unitConversion12";
	rename -uid "EDA3B4D2-43EF-E626-0018-40A32816657E";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineB_twist_combine";
	rename -uid "A9876262-4089-1639-BB59-FEB31325C703";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineB_spine_twist_mul";
	rename -uid "1965E66E-45C2-AD6C-87F5-59B650133CA4";
createNode unitConversion -n "unitConversion2";
	rename -uid "C89C75BC-4D83-9C5F-C346-BABEFCDEC9A5";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineB_spine_twist_remap";
	rename -uid "095C89E4-4684-CB15-B427-ACB9F15F7161";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineB_chest_twist_mul";
	rename -uid "7A978550-4F2A-17DC-98C9-D48C42890CF4";
createNode unitConversion -n "unitConversion7";
	rename -uid "BC4DA85E-4CB6-BC0C-3DAE-40AD7607DBB2";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineB_chest_twist_remap";
	rename -uid "F4446C23-4C95-4A40-A4B6-3B8727566812";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnCurveInfo -n "spineC_pointOnCurveInfo";
	rename -uid "A8386A62-403F-1083-27E8-9A913A998B52";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineC_param";
	rename -uid "913077DC-4E35-90A6-583D-7F86E64A4EC2";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "87988D69-4F7D-518B-7210-98B2CF8721B1";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineC_twist_combine";
	rename -uid "D32ED131-471A-9088-8731-709C9D4014AE";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineC_spine_twist_mul";
	rename -uid "7D6F5235-4755-E77D-5BB1-B1BB9B9D96E7";
createNode unitConversion -n "unitConversion3";
	rename -uid "73066B38-40FB-E47C-313A-E5B244BDDEBF";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineC_spine_twist_remap";
	rename -uid "35548642-491B-9EEE-EF16-61BD27C40AEB";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineC_chest_twist_mul";
	rename -uid "DB275229-4C2C-C59B-B07F-5788F1D17CE4";
createNode unitConversion -n "unitConversion8";
	rename -uid "B834BD7F-4778-D01B-87E6-1395968AC9F0";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineC_chest_twist_remap";
	rename -uid "F855FF12-49B1-2A01-C31F-7AB251532DDE";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode decomposeMatrix -n "fk_spineB_ctrl_scaleSpaceMat_decomp";
	rename -uid "4860543B-4865-75D9-F5E2-EE8CA47BD64C";
createNode pointOnCurveInfo -n "spine_twist_end_ctrl_pointOnCurveInfo";
	rename -uid "E3ABFC3C-4A69-CC1D-8218-28928033BDF4";
createNode pointOnCurveInfo -n "chest_twist_end_ctrl_pointOnCurveInfo";
	rename -uid "6CEDBAD8-426F-CDB3-0098-32A1081ACBF5";
createNode decomposeMatrix -n "M_Spine_fit_spine_start_decomp";
	rename -uid "5BC58B01-4A77-8912-DA1F-6D9292FB3C27";
createNode decomposeMatrix -n "M_Spine_fit_spine_sub_decomp";
	rename -uid "80D8C521-4F17-A4AA-29B5-C6A7F4C9DA07";
createNode decomposeMatrix -n "M_Spine_fit_chest_sub_decomp";
	rename -uid "D88CDDEB-4E3B-7C35-5651-8DAB28291DDB";
createNode decomposeMatrix -n "M_Spine_fit_chest_decomp";
	rename -uid "A480AC5B-469C-6BC5-3242-9CA4929E2E69";
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "6FD5E92E-4152-3612-537A-34A276AA1177";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "F1B9A47E-4BAF-35B0-3DF4-618E9AA33FFC";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "1FC98B0E-493E-8030-3AA4-F7A3B9D29872";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "A3097C3A-41D2-7FCB-BF25-9E9DAC6FDEC4";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "26367351-4D53-B6F9-D1EA-2E9A28B51197";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 588\n            -height 1057\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 588\\n    -height 1057\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 588\\n    -height 1057\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FE852988-4EF5-653F-C06A-91BF94B48F43";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "M_Spine_fit_spine_localMat";
	rename -uid "F5B1703F-4DC3-A9C7-94AD-1D861E35B018";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_Spine_fit_spine_localMat_decomp";
	rename -uid "424D1039-49B7-8ACF-4C45-4FBFF763BE8B";
createNode multMatrix -n "M_Spine_fit_chest_localMat";
	rename -uid "504725DD-4010-A7EC-5C0E-22BABE4C70BC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_Spine_fit_chest_localMat_decomp";
	rename -uid "1A84BEFD-49F9-2FF8-DC79-1E92545DA3F9";
createNode decomposeMatrix -n "parent_space_decomp";
	rename -uid "D7F0DAE5-4ABE-91D2-C39E-979F4CE84FEE";
createNode decomposeMatrix -n "fk_spineC_ctrl_scaleSpaceMat_decomp";
	rename -uid "4AB89036-4EAB-12C6-286E-0EBE891DAD61";
createNode decomposeMatrix -n "fk_spineA_ctrl_scaleSpaceMat_decomp";
	rename -uid "EDC1FD1B-4D8C-C053-9801-04BB8750FB9C";
createNode pointOnCurveInfo -n "spineD_pointOnCurveInfo";
	rename -uid "97609650-498A-072E-9A6E-C880843E053F";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "chest_pointOnCurveInfo";
	rename -uid "45B21FFC-40A3-23EA-2BFF-66BAFB347DF3";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineD_param";
	rename -uid "BE6F053C-4550-ADB1-B287-F3B28DD94808";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode multiplyDivide -n "chest_param";
	rename -uid "9EABF152-4F48-2EAB-1143-DC94FC0E8CEE";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "spine_param";
	rename -uid "8FCDC6E7-4851-EB95-FDB3-B3A824C0FAFC";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode decomposeMatrix -n "fk_spineD_ctrl_scaleSpaceMat_decomp";
	rename -uid "0FB0AC98-4534-C2F9-01C7-35828CEB2B00";
createNode decomposeMatrix -n "fk_chest_ctrl_scaleSpaceMat_decomp";
	rename -uid "252DD084-4CD5-803A-FB2C-739D77F595E7";
createNode decomposeMatrix -n "fk_spineC_jnt_decomp";
	rename -uid "8EB55A7D-4051-0285-FFDC-219B64F71649";
createNode multMatrix -n "fk_chest_ctrl_scaleSpaceMat";
	rename -uid "5CEDBA5A-42E3-874A-826B-839C04CD8205";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineD_ctrl_scaleSpaceMat";
	rename -uid "A2E54478-4CB6-0680-C493-BFAF75229D99";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineA_ctrl_scaleSpaceMat";
	rename -uid "39FBDC49-4CEE-926C-FE26-119FB553F2DD";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineB_ctrl_scaleSpaceMat";
	rename -uid "7B27B1AA-49B3-4365-9DE8-7DA19D7A4A4D";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineC_ctrl_scaleSpaceMat";
	rename -uid "5888046B-4C09-FDF3-51F2-FEAB89D66D70";
	setAttr -s 2 ".i";
createNode nodeGraphEditorBookmarks -n "MayaNodeEditorBookmarks";
	rename -uid "5543B6EB-4BC4-A8D9-423B-DE91B2BA7812";
createNode nodeGraphEditorBookmarkInfo -n "nodeView1";
	rename -uid "D2AA6434-4D52-252C-AFDD-C7A17A668E55";
	setAttr ".nm" -type "string" "nodeView1";
	setAttr ".vl" -type "double2" -1601.55485972681 -2014.0315689002935 ;
	setAttr ".vh" -type "double2" 3763.0043644154612 1303.9721083892232 ;
	setAttr -s 59 ".ni";
	setAttr ".ni[0].x" 865.7247314453125;
	setAttr ".ni[0].y" 160.18220520019531;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 814.00653076171875;
	setAttr ".ni[1].y" -163.73379516601563;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 706.781982421875;
	setAttr ".ni[2].y" -1134.77880859375;
	setAttr ".ni[2].nvs" 18305;
	setAttr ".ni[3].x" 668.42742919921875;
	setAttr ".ni[3].y" -793.0870361328125;
	setAttr ".ni[3].nvs" 18305;
	setAttr ".ni[4].x" 861.50335693359375;
	setAttr ".ni[4].y" -458.933837890625;
	setAttr ".ni[4].nvs" 18305;
	setAttr ".ni[5].x" 2127.142822265625;
	setAttr ".ni[5].y" -585.71429443359375;
	setAttr ".ni[5].nvs" 18304;
	setAttr ".ni[6].x" 2432.857177734375;
	setAttr ".ni[6].y" -651.4285888671875;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 2432.857177734375;
	setAttr ".ni[7].y" -521.4285888671875;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 2432.857177734375;
	setAttr ".ni[8].y" -261.42855834960938;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1804.5341796875;
	setAttr ".ni[9].y" -490.34011840820313;
	setAttr ".ni[9].nvs" 18305;
	setAttr ".ni[10].x" 1820.8056640625;
	setAttr ".ni[10].y" -212.01368713378906;
	setAttr ".ni[10].nvs" 18305;
	setAttr ".ni[11].x" 2432.857177734375;
	setAttr ".ni[11].y" -391.42855834960938;
	setAttr ".ni[11].nvs" 18304;
	setAttr ".ni[12].x" 2125.71435546875;
	setAttr ".ni[12].y" -325.71429443359375;
	setAttr ".ni[12].nvs" 18304;
	setAttr ".ni[13].x" -1189.8187255859375;
	setAttr ".ni[13].y" -876.57537841796875;
	setAttr ".ni[13].nvs" 18304;
	setAttr ".ni[14].x" 335.46282958984375;
	setAttr ".ni[14].y" -936.452392578125;
	setAttr ".ni[14].nvs" 18304;
	setAttr ".ni[15].x" 1809.70166015625;
	setAttr ".ni[15].y" 165.00433349609375;
	setAttr ".ni[15].nvs" 18305;
	setAttr ".ni[16].x" -632.67584228515625;
	setAttr ".ni[16].y" -746.57537841796875;
	setAttr ".ni[16].nvs" 18304;
	setAttr ".ni[17].x" 2432.857177734375;
	setAttr ".ni[17].y" -781.4285888671875;
	setAttr ".ni[17].nvs" 18304;
	setAttr ".ni[18].x" 2138.571533203125;
	setAttr ".ni[18].y" -65.714286804199219;
	setAttr ".ni[18].nvs" 18304;
	setAttr ".ni[19].x" 2132.857177734375;
	setAttr ".ni[19].y" -1105.7142333984375;
	setAttr ".ni[19].nvs" 18304;
	setAttr ".ni[20].x" -894.10443115234375;
	setAttr ".ni[20].y" -616.57537841796875;
	setAttr ".ni[20].nvs" 18304;
	setAttr ".ni[21].x" 2432.857177734375;
	setAttr ".ni[21].y" -1171.4285888671875;
	setAttr ".ni[21].nvs" 18304;
	setAttr ".ni[22].x" -632.67584228515625;
	setAttr ".ni[22].y" -1266.575439453125;
	setAttr ".ni[22].nvs" 18304;
	setAttr ".ni[23].x" -1451.247314453125;
	setAttr ".ni[23].y" -876.57537841796875;
	setAttr ".ni[23].nvs" 18304;
	setAttr ".ni[24].x" -1189.8187255859375;
	setAttr ".ni[24].y" -616.57537841796875;
	setAttr ".ni[24].nvs" 18304;
	setAttr ".ni[25].x" 1793.7662353515625;
	setAttr ".ni[25].y" -1130.7625732421875;
	setAttr ".ni[25].nvs" 18305;
	setAttr ".ni[26].x" -894.10443115234375;
	setAttr ".ni[26].y" -1266.575439453125;
	setAttr ".ni[26].nvs" 18304;
	setAttr ".ni[27].x" -632.67584228515625;
	setAttr ".ni[27].y" -1006.5753784179688;
	setAttr ".ni[27].nvs" 18304;
	setAttr ".ni[28].x" -1189.8187255859375;
	setAttr ".ni[28].y" -1460.861083984375;
	setAttr ".ni[28].nvs" 18304;
	setAttr ".ni[29].x" -894.10443115234375;
	setAttr ".ni[29].y" -1136.575439453125;
	setAttr ".ni[29].nvs" 18304;
	setAttr ".ni[30].x" -371.24725341796875;
	setAttr ".ni[30].y" -1136.575439453125;
	setAttr ".ni[30].nvs" 18304;
	setAttr ".ni[31].x" 2432.857177734375;
	setAttr ".ni[31].y" -911.4285888671875;
	setAttr ".ni[31].nvs" 18304;
	setAttr ".ni[32].x" 2132.857177734375;
	setAttr ".ni[32].y" -845.71429443359375;
	setAttr ".ni[32].nvs" 18304;
	setAttr ".ni[33].x" -894.10443115234375;
	setAttr ".ni[33].y" -876.57537841796875;
	setAttr ".ni[33].nvs" 18304;
	setAttr ".ni[34].x" 2432.857177734375;
	setAttr ".ni[34].y" -131.42857360839844;
	setAttr ".ni[34].nvs" 18304;
	setAttr ".ni[35].x" 2432.857177734375;
	setAttr ".ni[35].y" -1041.4285888671875;
	setAttr ".ni[35].nvs" 18304;
	setAttr ".ni[36].x" 2432.857177734375;
	setAttr ".ni[36].y" -1.4285714626312256;
	setAttr ".ni[36].nvs" 18304;
	setAttr ".ni[37].x" -1189.8187255859375;
	setAttr ".ni[37].y" -1006.5753784179688;
	setAttr ".ni[37].nvs" 18304;
	setAttr ".ni[38].x" -632.67584228515625;
	setAttr ".ni[38].y" -1136.575439453125;
	setAttr ".ni[38].nvs" 18304;
	setAttr ".ni[39].x" -1189.8187255859375;
	setAttr ".ni[39].y" -1266.575439453125;
	setAttr ".ni[39].nvs" 18304;
	setAttr ".ni[40].x" -894.10443115234375;
	setAttr ".ni[40].y" -1006.5753784179688;
	setAttr ".ni[40].nvs" 18304;
	setAttr ".ni[41].x" 335.46282958984375;
	setAttr ".ni[41].y" -1132.1666259765625;
	setAttr ".ni[41].nvs" 18304;
	setAttr ".ni[42].x" -894.10443115234375;
	setAttr ".ni[42].y" -1396.575439453125;
	setAttr ".ni[42].nvs" 18304;
	setAttr ".ni[43].x" 1786.4835205078125;
	setAttr ".ni[43].y" -747.6446533203125;
	setAttr ".ni[43].nvs" 18305;
	setAttr ".ni[44].x" -371.24725341796875;
	setAttr ".ni[44].y" -940.861083984375;
	setAttr ".ni[44].nvs" 18304;
	setAttr ".ni[45].x" -894.10443115234375;
	setAttr ".ni[45].y" -746.57537841796875;
	setAttr ".ni[45].nvs" 18304;
	setAttr ".ni[46].x" -1189.8187255859375;
	setAttr ".ni[46].y" -746.57537841796875;
	setAttr ".ni[46].nvs" 18304;
	setAttr ".ni[47].x" -894.10443115234375;
	setAttr ".ni[47].y" -1526.575439453125;
	setAttr ".ni[47].nvs" 18304;
	setAttr ".ni[48].x" 1389.7900390625;
	setAttr ".ni[48].y" 265.34335327148438;
	setAttr ".ni[48].nvs" 18305;
	setAttr ".ni[49].x" 2890;
	setAttr ".ni[49].y" -1447.142822265625;
	setAttr ".ni[49].nvs" 18304;
	setAttr ".ni[50].x" 431.90707397460938;
	setAttr ".ni[50].y" -441.84756469726563;
	setAttr ".ni[50].nvs" 18305;
	setAttr ".ni[51].x" 1260.4000244140625;
	setAttr ".ni[51].y" -132.83833312988281;
	setAttr ".ni[51].nvs" 18306;
	setAttr ".ni[52].x" 1267.4097900390625;
	setAttr ".ni[52].y" -379.9150390625;
	setAttr ".ni[52].nvs" 18306;
	setAttr ".ni[53].x" 1222.1114501953125;
	setAttr ".ni[53].y" -722.4666748046875;
	setAttr ".ni[53].nvs" 18306;
	setAttr ".ni[54].x" 1269.8636474609375;
	setAttr ".ni[54].y" -1173.06689453125;
	setAttr ".ni[54].nvs" 18305;
	setAttr ".ni[55].x" 1479.5047607421875;
	setAttr ".ni[55].y" -848.7994384765625;
	setAttr ".ni[55].nvs" 18304;
	setAttr ".ni[56].x" 1484.34521484375;
	setAttr ".ni[56].y" -1073.6668701171875;
	setAttr ".ni[56].nvs" 18304;
	setAttr ".ni[57].x" 1493.405029296875;
	setAttr ".ni[57].y" -510.44442749023438;
	setAttr ".ni[57].nvs" 18304;
	setAttr ".ni[58].x" 1528.134521484375;
	setAttr ".ni[58].y" -106.39633941650391;
	setAttr ".ni[58].nvs" 18304;
createNode multMatrix -n "fk_spineB_localMat";
	rename -uid "67975C15-44DA-65A4-0AD8-06AD8B7758F3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineB_localMat_decomp";
	rename -uid "31D43E69-4ED4-9F92-CD2F-BD8D92A098A4";
createNode multMatrix -n "fk_spineC_localMat";
	rename -uid "CDCFA655-4333-789E-CB4B-29B5107E2843";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_localMat_decomp";
	rename -uid "B92112C1-47DC-E25A-1D0B-28A5E6DDBCDF";
createNode multMatrix -n "fk_spineD_localMat";
	rename -uid "E1ECD152-4E4F-7724-E2E9-93B1A661AAEA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_localMat_decomp";
	rename -uid "74B6C4FC-419D-AF42-5BC9-26A74EC36BBF";
createNode multMatrix -n "fk_chest_localMat";
	rename -uid "746D0FD7-420C-8581-EBCD-E3A2340BE26B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_decomp";
	rename -uid "5D285442-4E44-78BD-FBEF-D2805A692437";
createNode remapValue -n "spineD_chest_twist_remap";
	rename -uid "3E2BA633-4B76-7AAB-019E-608B4DDBEDC2";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineD_chest_twist_mul";
	rename -uid "0E79256E-4A14-01B3-F8D2-B5910FF79100";
createNode unitConversion -n "unitConversion14";
	rename -uid "86E9858D-41EC-B509-AFB0-8BB3936AE0B4";
	setAttr ".cf" 57.295779513082323;
createNode plusMinusAverage -n "spineD_twist_combine";
	rename -uid "4B03D33D-4365-2F9A-93D1-ECBE79386C2A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "spineD_spine_twist_remap";
	rename -uid "555513E2-4954-6DA5-C452-9E87817630F3";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineD_spine_twist_mul";
	rename -uid "FD267416-4A16-11F8-A9D6-52B6A22456CB";
createNode unitConversion -n "unitConversion15";
	rename -uid "BF18E4FE-4827-32AA-C2CB-A19AA6B4BDA1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion16";
	rename -uid "04541158-4067-3EF6-7282-5C8C828D9B5B";
	setAttr ".cf" 0.017453292519943295;
createNode remapValue -n "chest_chest_twist_remap";
	rename -uid "9221AA89-4D7B-1977-56CD-9C9145607C95";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "chest_spine_twist_remap";
	rename -uid "0FD7DB31-4D08-5DCE-CFA9-59B2D2657507";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_chest_twist_mul";
	rename -uid "5BAA37A0-4B22-C9F4-32A4-4DB1BC6B10D4";
createNode plusMinusAverage -n "chest_twist_combine";
	rename -uid "F2A2612B-4F21-7B26-2239-268FCEC16F16";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion17";
	rename -uid "D69FE7F6-47A7-E364-42B5-669604C74789";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spine_twist_mul";
	rename -uid "A5191EED-469C-1120-42B9-B389E7E37CC5";
createNode unitConversion -n "unitConversion18";
	rename -uid "D8F9F42F-47E6-8222-7EC0-B7AA9921D756";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion19";
	rename -uid "61B46EB8-48D2-577A-6E2C-66A7C7525219";
	setAttr ".cf" 0.017453292519943295;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7AFE91DA-49E7-BC6D-B250-79B280E48F53";
	setAttr -s 9 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1678.9366853763845 1815.1384469465399 ;
	setAttr ".tgi[0].vh" -type "double2" 376.73400599465924 3874.0669365606441 ;
	setAttr -s 146 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1820;
	setAttr ".tgi[0].ni[0].y" 3352.857177734375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2225.71435546875;
	setAttr ".tgi[0].ni[1].y" 567.14288330078125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1490;
	setAttr ".tgi[0].ni[2].y" 3108.571533203125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -2134.28564453125;
	setAttr ".tgi[0].ni[3].y" 3618.571533203125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -494.28570556640625;
	setAttr ".tgi[0].ni[4].y" 3142.857177734375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -494.28570556640625;
	setAttr ".tgi[0].ni[5].y" 3450;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2167.142822265625;
	setAttr ".tgi[0].ni[6].y" 2607.142822265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -494.28570556640625;
	setAttr ".tgi[0].ni[7].y" 3608.571533203125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2225.71435546875;
	setAttr ".tgi[0].ni[8].y" 697.14288330078125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[9].y" 3062.857177734375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -801.4285888671875;
	setAttr ".tgi[0].ni[10].y" 1578.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2225.71435546875;
	setAttr ".tgi[0].ni[11].y" 827.14288330078125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1512.857177734375;
	setAttr ".tgi[0].ni[12].y" 3367.142822265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2225.71435546875;
	setAttr ".tgi[0].ni[13].y" 957.14288330078125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2532.857177734375;
	setAttr ".tgi[0].ni[14].y" 4085.71435546875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[15].y" 3265.71435546875;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2532.857177734375;
	setAttr ".tgi[0].ni[16].y" 3984.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[17].y" 2701.428466796875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1820;
	setAttr ".tgi[0].ni[18].y" 3864.28564453125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -494.28570556640625;
	setAttr ".tgi[0].ni[19].y" 1814.2857666015625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 2532.857177734375;
	setAttr ".tgi[0].ni[20].y" 3882.857177734375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 160;
	setAttr ".tgi[0].ni[21].y" 2905.71435546875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[22].y" 3182.857177734375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1512.857177734375;
	setAttr ".tgi[0].ni[23].y" 2948.571533203125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 2532.857177734375;
	setAttr ".tgi[0].ni[24].y" 3781.428466796875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -801.4285888671875;
	setAttr ".tgi[0].ni[25].y" 2662.857177734375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[26].y" 3367.142822265625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 2532.857177734375;
	setAttr ".tgi[0].ni[27].y" 3680;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1820;
	setAttr ".tgi[0].ni[28].y" 3638.571533203125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1820;
	setAttr ".tgi[0].ni[29].y" 3454.28564453125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -494.28570556640625;
	setAttr ".tgi[0].ni[30].y" 2764.28564453125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -494.28570556640625;
	setAttr ".tgi[0].ni[31].y" 2321.428466796875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[32].y" 3284.28564453125;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2532.857177734375;
	setAttr ".tgi[0].ni[33].y" 3578.571533203125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -2441.428466796875;
	setAttr ".tgi[0].ni[34].y" 3377.142822265625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2167.142822265625;
	setAttr ".tgi[0].ni[35].y" 3815.71435546875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1820;
	setAttr ".tgi[0].ni[36].y" 2947.142822265625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 467.14285278320313;
	setAttr ".tgi[0].ni[37].y" 2517.142822265625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2532.857177734375;
	setAttr ".tgi[0].ni[38].y" 3477.142822265625;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1820;
	setAttr ".tgi[0].ni[39].y" 3251.428466796875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 160;
	setAttr ".tgi[0].ni[40].y" 2381.428466796875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -187.14285278320313;
	setAttr ".tgi[0].ni[41].y" 3870;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -494.28570556640625;
	setAttr ".tgi[0].ni[42].y" 3244.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[43].y" 3164.28564453125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2532.857177734375;
	setAttr ".tgi[0].ni[44].y" 567.14288330078125;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -801.4285888671875;
	setAttr ".tgi[0].ni[45].y" 2764.28564453125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -801.4285888671875;
	setAttr ".tgi[0].ni[46].y" 2041.4285888671875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2532.857177734375;
	setAttr ".tgi[0].ni[47].y" 3375.71435546875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[48].y" 2967.142822265625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2532.857177734375;
	setAttr ".tgi[0].ni[49].y" 3274.28564453125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 812.85711669921875;
	setAttr ".tgi[0].ni[50].y" 3124.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -801.4285888671875;
	setAttr ".tgi[0].ni[51].y" 1680;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -801.4285888671875;
	setAttr ".tgi[0].ni[52].y" 3607.142822265625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -2134.28564453125;
	setAttr ".tgi[0].ni[53].y" 3415.71435546875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 160;
	setAttr ".tgi[0].ni[54].y" 3638.571533203125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 812.85711669921875;
	setAttr ".tgi[0].ni[55].y" 2888.571533203125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 812.85711669921875;
	setAttr ".tgi[0].ni[56].y" 3340;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 467.14285278320313;
	setAttr ".tgi[0].ni[57].y" 3658.571533203125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 812.85711669921875;
	setAttr ".tgi[0].ni[58].y" 3600;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1918.5714111328125;
	setAttr ".tgi[0].ni[59].y" 1347.142822265625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 812.85711669921875;
	setAttr ".tgi[0].ni[60].y" 2652.857177734375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1512.857177734375;
	setAttr ".tgi[0].ni[61].y" 3570;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -187.14285278320313;
	setAttr ".tgi[0].ni[62].y" 2245.71435546875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 2532.857177734375;
	setAttr ".tgi[0].ni[63].y" 3172.857177734375;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -2748.571533203125;
	setAttr ".tgi[0].ni[64].y" 3478.571533203125;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 2167.142822265625;
	setAttr ".tgi[0].ni[65].y" 3104.28564453125;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 2532.857177734375;
	setAttr ".tgi[0].ni[66].y" 3071.428466796875;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2532.857177734375;
	setAttr ".tgi[0].ni[67].y" 2970;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -187.14285278320313;
	setAttr ".tgi[0].ni[68].y" 3768.571533203125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -494.28570556640625;
	setAttr ".tgi[0].ni[69].y" 1915.7142333984375;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -2441.428466796875;
	setAttr ".tgi[0].ni[70].y" 3681.428466796875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 1820;
	setAttr ".tgi[0].ni[71].y" 3150;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1820;
	setAttr ".tgi[0].ni[72].y" 3048.571533203125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -801.4285888671875;
	setAttr ".tgi[0].ni[73].y" 3505.71435546875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -801.4285888671875;
	setAttr ".tgi[0].ni[74].y" 3081.428466796875;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2532.857177734375;
	setAttr ".tgi[0].ni[75].y" 2795.71435546875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[76].y" 3487.142822265625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[77].y" 3588.571533203125;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 1512.857177734375;
	setAttr ".tgi[0].ni[78].y" 2574.28564453125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -2441.428466796875;
	setAttr ".tgi[0].ni[79].y" 3478.571533203125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -187.14285278320313;
	setAttr ".tgi[0].ni[80].y" 2804.28564453125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -1797.142822265625;
	setAttr ".tgi[0].ni[81].y" 3415.71435546875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" -187.14285278320313;
	setAttr ".tgi[0].ni[82].y" 3258.571533203125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -801.4285888671875;
	setAttr ".tgi[0].ni[83].y" 3708.571533203125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -801.4285888671875;
	setAttr ".tgi[0].ni[84].y" 3810;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 467.14285278320313;
	setAttr ".tgi[0].ni[85].y" 3117.142822265625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -494.28570556640625;
	setAttr ".tgi[0].ni[86].y" 3710;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 2167.142822265625;
	setAttr ".tgi[0].ni[87].y" 3207.142822265625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1512.857177734375;
	setAttr ".tgi[0].ni[88].y" 3265.71435546875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 2532.857177734375;
	setAttr ".tgi[0].ni[89].y" 1087.142822265625;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 160;
	setAttr ".tgi[0].ni[90].y" 3797.142822265625;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[91].y" 2700;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -494.28570556640625;
	setAttr ".tgi[0].ni[92].y" 2220;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1512.857177734375;
	setAttr ".tgi[0].ni[93].y" 3050;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 160;
	setAttr ".tgi[0].ni[94].y" 2617.142822265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[95].y" 3385.71435546875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 2532.857177734375;
	setAttr ".tgi[0].ni[96].y" 1347.142822265625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[97].y" 3640;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 2532.857177734375;
	setAttr ".tgi[0].ni[98].y" 957.14288330078125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 2225.71435546875;
	setAttr ".tgi[0].ni[99].y" 1087.142822265625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" -801.4285888671875;
	setAttr ".tgi[0].ni[100].y" 2561.428466796875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 2167.142822265625;
	setAttr ".tgi[0].ni[101].y" 3655.71435546875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 467.14285278320313;
	setAttr ".tgi[0].ni[102].y" 3332.857177734375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 2225.71435546875;
	setAttr ".tgi[0].ni[103].y" 1217.142822265625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" -1490;
	setAttr ".tgi[0].ni[104].y" 3311.428466796875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1512.857177734375;
	setAttr ".tgi[0].ni[105].y" 3671.428466796875;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -801.4285888671875;
	setAttr ".tgi[0].ni[106].y" 1477.142822265625;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -801.4285888671875;
	setAttr ".tgi[0].ni[107].y" 3182.857177734375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 2167.142822265625;
	setAttr ".tgi[0].ni[108].y" 3554.28564453125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[109].y" 2860;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 2532.857177734375;
	setAttr ".tgi[0].ni[110].y" 2694.28564453125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -494.28570556640625;
	setAttr ".tgi[0].ni[111].y" 3950;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1512.857177734375;
	setAttr ".tgi[0].ni[112].y" 2790;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -801.4285888671875;
	setAttr ".tgi[0].ni[113].y" 2980;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[114].y" 3690;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -801.4285888671875;
	setAttr ".tgi[0].ni[115].y" 1940;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -2134.28564453125;
	setAttr ".tgi[0].ni[116].y" 3314.28564453125;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -187.14285278320313;
	setAttr ".tgi[0].ni[117].y" 3610;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[118].y" 2961.428466796875;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" -801.4285888671875;
	setAttr ".tgi[0].ni[119].y" 2142.857177734375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 1611.4285888671875;
	setAttr ".tgi[0].ni[120].y" 1347.142822265625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" -187.14285278320313;
	setAttr ".tgi[0].ni[121].y" 2475.71435546875;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1512.857177734375;
	setAttr ".tgi[0].ni[122].y" 3468.571533203125;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" -801.4285888671875;
	setAttr ".tgi[0].ni[123].y" 4025.71435546875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 812.85711669921875;
	setAttr ".tgi[0].ni[124].y" 3498.571533203125;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 2532.857177734375;
	setAttr ".tgi[0].ni[125].y" 1217.142822265625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2532.857177734375;
	setAttr ".tgi[0].ni[126].y" 827.14288330078125;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 467.14285278320313;
	setAttr ".tgi[0].ni[127].y" 3557.142822265625;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 160;
	setAttr ".tgi[0].ni[128].y" 3311.428466796875;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 2532.857177734375;
	setAttr ".tgi[0].ni[129].y" 2592.857177734375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 2167.142822265625;
	setAttr ".tgi[0].ni[130].y" 3002.857177734375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -1490;
	setAttr ".tgi[0].ni[131].y" 3210;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 2532.857177734375;
	setAttr ".tgi[0].ni[132].y" 697.14288330078125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -2134.28564453125;
	setAttr ".tgi[0].ni[133].y" 3517.142822265625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1820;
	setAttr ".tgi[0].ni[134].y" 2637.142822265625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 467.14285278320313;
	setAttr ".tgi[0].ni[135].y" 3455.71435546875;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 467.14285278320313;
	setAttr ".tgi[0].ni[136].y" 2752.857177734375;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -801.4285888671875;
	setAttr ".tgi[0].ni[137].y" 3284.28564453125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -2441.428466796875;
	setAttr ".tgi[0].ni[138].y" 3580;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" -494.28570556640625;
	setAttr ".tgi[0].ni[139].y" 2662.857177734375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 2167.142822265625;
	setAttr ".tgi[0].ni[140].y" 3410;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -801.4285888671875;
	setAttr ".tgi[0].ni[141].y" 1781.4285888671875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" -801.4285888671875;
	setAttr ".tgi[0].ni[142].y" 2460;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 467.14285278320313;
	setAttr ".tgi[0].ni[143].y" 3015.71435546875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2225.71435546875;
	setAttr ".tgi[0].ni[144].y" 1347.142822265625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" -801.4285888671875;
	setAttr ".tgi[0].ni[145].y" 2244.28564453125;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -531.66079692516587 -648.43594133029364 ;
	setAttr ".tgi[1].vh" -type "double2" 812.38676871480141 697.74165214745494 ;
	setAttr -s 12 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 367.14285278320313;
	setAttr ".tgi[1].ni[0].y" -227.14285278320313;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 60;
	setAttr ".tgi[1].ni[1].y" -97.142860412597656;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 60;
	setAttr ".tgi[1].ni[2].y" 292.85714721679688;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 60;
	setAttr ".tgi[1].ni[3].y" 32.857143402099609;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 367.14285278320313;
	setAttr ".tgi[1].ni[4].y" 292.85714721679688;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 60;
	setAttr ".tgi[1].ni[5].y" -227.14285278320313;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 367.14285278320313;
	setAttr ".tgi[1].ni[6].y" 32.857143402099609;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" -554.28570556640625;
	setAttr ".tgi[1].ni[7].y" 292.85714721679688;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 367.14285278320313;
	setAttr ".tgi[1].ni[8].y" 162.85714721679688;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 60;
	setAttr ".tgi[1].ni[9].y" 162.85714721679688;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 367.14285278320313;
	setAttr ".tgi[1].ni[10].y" -97.142860412597656;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" -247.14285278320313;
	setAttr ".tgi[1].ni[11].y" 292.85714721679688;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "Untitled_5";
	setAttr ".tgi[2].vl" -type "double2" -545.05386700364556 -941.02911096504454 ;
	setAttr ".tgi[2].vh" -type "double2" 1119.1723840157117 725.83458260743396 ;
	setAttr -s 37 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -751.4285888671875;
	setAttr ".tgi[2].ni[0].y" -234.28572082519531;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" -1073.4910888671875;
	setAttr ".tgi[2].ni[1].y" 75.796920776367188;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" -432.85714721679688;
	setAttr ".tgi[2].ni[2].y" -115.71428680419922;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 255.71427917480469;
	setAttr ".tgi[2].ni[3].y" 54.285713195800781;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 872.85711669921875;
	setAttr ".tgi[2].ni[4].y" 388.57144165039063;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" -432.85714721679688;
	setAttr ".tgi[2].ni[5].y" -217.14285278320313;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" -1079.0859375;
	setAttr ".tgi[2].ni[6].y" -189.32476806640625;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 255.71427917480469;
	setAttr ".tgi[2].ni[7].y" -64.285713195800781;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 872.85711669921875;
	setAttr ".tgi[2].ni[8].y" 287.14285278320313;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" -751.4285888671875;
	setAttr ".tgi[2].ni[9].y" 171.42857360839844;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" -51.428569793701172;
	setAttr ".tgi[2].ni[10].y" -104.28571319580078;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" -432.85714721679688;
	setAttr ".tgi[2].ni[11].y" 188.57142639160156;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" -751.4285888671875;
	setAttr ".tgi[2].ni[12].y" 70;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 872.85711669921875;
	setAttr ".tgi[2].ni[13].y" 185.71427917480469;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" -751.4285888671875;
	setAttr ".tgi[2].ni[14].y" -31.428571701049805;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" -751.4285888671875;
	setAttr ".tgi[2].ni[15].y" -132.85714721679688;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" -1056.7064208984375;
	setAttr ".tgi[2].ni[16].y" 408.18142700195313;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 872.85711669921875;
	setAttr ".tgi[2].ni[17].y" 84.285713195800781;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" -1067.896240234375;
	setAttr ".tgi[2].ni[18].y" -91.203315734863281;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 562.85711669921875;
	setAttr ".tgi[2].ni[19].y" 74.285713195800781;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" -51.428569793701172;
	setAttr ".tgi[2].ni[20].y" 200;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" -51.428569793701172;
	setAttr ".tgi[2].ni[21].y" -2.8571429252624512;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" -51.428569793701172;
	setAttr ".tgi[2].ni[22].y" 98.571426391601563;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 562.85711669921875;
	setAttr ".tgi[2].ni[23].y" 205.71427917480469;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" 872.85711669921875;
	setAttr ".tgi[2].ni[24].y" -17.142856597900391;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" 872.85711669921875;
	setAttr ".tgi[2].ni[25].y" -118.57142639160156;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 255.71427917480469;
	setAttr ".tgi[2].ni[26].y" -165.71427917480469;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 255.71427917480469;
	setAttr ".tgi[2].ni[27].y" 178.57142639160156;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" -432.85714721679688;
	setAttr ".tgi[2].ni[28].y" -14.285714149475098;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 872.85711669921875;
	setAttr ".tgi[2].ni[29].y" -220;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" -1073.4910888671875;
	setAttr ".tgi[2].ni[30].y" 177.22549438476563;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" 562.85711669921875;
	setAttr ".tgi[2].ni[31].y" -184.28572082519531;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" -1073.4910888671875;
	setAttr ".tgi[2].ni[32].y" -25.631649017333984;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" 872.85711669921875;
	setAttr ".tgi[2].ni[33].y" -321.42855834960938;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" 562.85711669921875;
	setAttr ".tgi[2].ni[34].y" -27.142856597900391;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" -432.85714721679688;
	setAttr ".tgi[2].ni[35].y" 87.142860412597656;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" -51.428569793701172;
	setAttr ".tgi[2].ni[36].y" -205.71427917480469;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -432.30873369520071 -395.52592525431209 ;
	setAttr ".tgi[3].vh" -type "double2" 1213.524534238594 1252.9156362895203 ;
	setAttr -s 48 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 402.72964477539063;
	setAttr ".tgi[3].ni[0].y" 792.60894775390625;
	setAttr ".tgi[3].ni[0].nvs" 18312;
	setAttr ".tgi[3].ni[1].x" 1090.364013671875;
	setAttr ".tgi[3].ni[1].y" 371.35501098632813;
	setAttr ".tgi[3].ni[1].nvs" 18312;
	setAttr ".tgi[3].ni[2].x" 407.94622802734375;
	setAttr ".tgi[3].ni[2].y" 721.59527587890625;
	setAttr ".tgi[3].ni[2].nvs" 18312;
	setAttr ".tgi[3].ni[3].x" 102.51665496826172;
	setAttr ".tgi[3].ni[3].y" 397.67330932617188;
	setAttr ".tgi[3].ni[3].nvs" 18312;
	setAttr ".tgi[3].ni[4].x" -1527.142822265625;
	setAttr ".tgi[3].ni[4].y" 354.28570556640625;
	setAttr ".tgi[3].ni[4].nvs" 18312;
	setAttr ".tgi[3].ni[5].x" 1397.5068359375;
	setAttr ".tgi[3].ni[5].y" 371.35501098632813;
	setAttr ".tgi[3].ni[5].nvs" 18312;
	setAttr ".tgi[3].ni[6].x" 92.399917602539063;
	setAttr ".tgi[3].ni[6].y" 864.004638671875;
	setAttr ".tgi[3].ni[6].nvs" 18312;
	setAttr ".tgi[3].ni[7].x" -1220;
	setAttr ".tgi[3].ni[7].y" 342.85714721679688;
	setAttr ".tgi[3].ni[7].nvs" 18312;
	setAttr ".tgi[3].ni[8].x" 95.008209228515625;
	setAttr ".tgi[3].ni[8].y" 791.686767578125;
	setAttr ".tgi[3].ni[8].nvs" 18312;
	setAttr ".tgi[3].ni[9].x" 1083.84326171875;
	setAttr ".tgi[3].ni[9].y" 534.963134765625;
	setAttr ".tgi[3].ni[9].nvs" 18312;
	setAttr ".tgi[3].ni[10].x" 742.7926025390625;
	setAttr ".tgi[3].ni[10].y" 620.3223876953125;
	setAttr ".tgi[3].ni[10].nvs" 18312;
	setAttr ".tgi[3].ni[11].x" 401.83462524414063;
	setAttr ".tgi[3].ni[11].y" 329.26791381835938;
	setAttr ".tgi[3].ni[11].nvs" 18312;
	setAttr ".tgi[3].ni[12].x" 1390.9862060546875;
	setAttr ".tgi[3].ni[12].y" 534.963134765625;
	setAttr ".tgi[3].ni[12].nvs" 18312;
	setAttr ".tgi[3].ni[13].x" 1077.322509765625;
	setAttr ".tgi[3].ni[13].y" 710.8983154296875;
	setAttr ".tgi[3].ni[13].nvs" 18312;
	setAttr ".tgi[3].ni[14].x" -1527.142822265625;
	setAttr ".tgi[3].ni[14].y" 108.57142639160156;
	setAttr ".tgi[3].ni[14].nvs" 18312;
	setAttr ".tgi[3].ni[15].x" -1527.142822265625;
	setAttr ".tgi[3].ni[15].y" 231.42857360839844;
	setAttr ".tgi[3].ni[15].nvs" 18312;
	setAttr ".tgi[3].ni[16].x" 409.65951538085938;
	setAttr ".tgi[3].ni[16].y" 207.09761047363281;
	setAttr ".tgi[3].ni[16].nvs" 18312;
	setAttr ".tgi[3].ni[17].x" 98.920646667480469;
	setAttr ".tgi[3].ni[17].y" 599.09259033203125;
	setAttr ".tgi[3].ni[17].nvs" 18312;
	setAttr ".tgi[3].ni[18].x" 409.25039672851563;
	setAttr ".tgi[3].ni[18].y" 662.364501953125;
	setAttr ".tgi[3].ni[18].nvs" 18312;
	setAttr ".tgi[3].ni[19].x" -1527.142822265625;
	setAttr ".tgi[3].ni[19].y" 477.14285278320313;
	setAttr ".tgi[3].ni[19].nvs" 18312;
	setAttr ".tgi[3].ni[20].x" 1389.6820068359375;
	setAttr ".tgi[3].ni[20].y" 621.6265869140625;
	setAttr ".tgi[3].ni[20].nvs" 18312;
	setAttr ".tgi[3].ni[21].x" 409.25039672851563;
	setAttr ".tgi[3].ni[21].y" 597.40643310546875;
	setAttr ".tgi[3].ni[21].nvs" 18312;
	setAttr ".tgi[3].ni[22].x" -1220;
	setAttr ".tgi[3].ni[22].y" 140;
	setAttr ".tgi[3].ni[22].nvs" 18312;
	setAttr ".tgi[3].ni[23].x" 1082.5391845703125;
	setAttr ".tgi[3].ni[23].y" 621.6265869140625;
	setAttr ".tgi[3].ni[23].nvs" 18312;
	setAttr ".tgi[3].ni[24].x" -605.2237548828125;
	setAttr ".tgi[3].ni[24].y" 708.036865234375;
	setAttr ".tgi[3].ni[24].nvs" 18312;
	setAttr ".tgi[3].ni[25].x" -1220;
	setAttr ".tgi[3].ni[25].y" 444.28570556640625;
	setAttr ".tgi[3].ni[25].nvs" 18312;
	setAttr ".tgi[3].ni[26].x" 98.920646667480469;
	setAttr ".tgi[3].ni[26].y" 720.673095703125;
	setAttr ".tgi[3].ni[26].nvs" 18312;
	setAttr ".tgi[3].ni[27].x" 748.00921630859375;
	setAttr ".tgi[3].ni[27].y" 418.30429077148438;
	setAttr ".tgi[3].ni[27].nvs" 18312;
	setAttr ".tgi[3].ni[28].x" -244.15972900390625;
	setAttr ".tgi[3].ni[28].y" 762.180419921875;
	setAttr ".tgi[3].ni[28].nvs" 18312;
	setAttr ".tgi[3].ni[29].x" 1384.4654541015625;
	setAttr ".tgi[3].ni[29].y" 710.8983154296875;
	setAttr ".tgi[3].ni[29].nvs" 18312;
	setAttr ".tgi[3].ni[30].x" 395.31390380859375;
	setAttr ".tgi[3].ni[30].y" 450.42892456054688;
	setAttr ".tgi[3].ni[30].nvs" 18312;
	setAttr ".tgi[3].ni[31].x" -573.86993408203125;
	setAttr ".tgi[3].ni[31].y" 287.537109375;
	setAttr ".tgi[3].ni[31].nvs" 18312;
	setAttr ".tgi[3].ni[32].x" 105.12494659423828;
	setAttr ".tgi[3].ni[32].y" 190.14370727539063;
	setAttr ".tgi[3].ni[32].nvs" 18312;
	setAttr ".tgi[3].ni[33].x" 97.616500854492188;
	setAttr ".tgi[3].ni[33].y" 661.44232177734375;
	setAttr ".tgi[3].ni[33].nvs" 18312;
	setAttr ".tgi[3].ni[34].x" -882.85711669921875;
	setAttr ".tgi[3].ni[34].y" 292.85714721679688;
	setAttr ".tgi[3].ni[34].nvs" 18312;
	setAttr ".tgi[3].ni[35].x" 741.48846435546875;
	setAttr ".tgi[3].ni[35].y" 692.6402587890625;
	setAttr ".tgi[3].ni[35].nvs" 18312;
	setAttr ".tgi[3].ni[36].x" -1220;
	setAttr ".tgi[3].ni[36].y" 241.42857360839844;
	setAttr ".tgi[3].ni[36].nvs" 18312;
	setAttr ".tgi[3].ni[37].x" 101.21250152587891;
	setAttr ".tgi[3].ni[37].y" 329.26791381835938;
	setAttr ".tgi[3].ni[37].nvs" 18312;
	setAttr ".tgi[3].ni[38].x" 99.908355712890625;
	setAttr ".tgi[3].ni[38].y" 257.7100830078125;
	setAttr ".tgi[3].ni[38].nvs" 18312;
	setAttr ".tgi[3].ni[39].x" 742.7926025390625;
	setAttr ".tgi[3].ni[39].y" 557.13360595703125;
	setAttr ".tgi[3].ni[39].nvs" 18312;
	setAttr ".tgi[3].ni[40].x" 746.705078125;
	setAttr ".tgi[3].ni[40].y" 491.08724975585938;
	setAttr ".tgi[3].ni[40].nvs" 18312;
	setAttr ".tgi[3].ni[41].x" 101.21250152587891;
	setAttr ".tgi[3].ni[41].y" 464.7745361328125;
	setAttr ".tgi[3].ni[41].nvs" 18312;
	setAttr ".tgi[3].ni[42].x" 407.05120849609375;
	setAttr ".tgi[3].ni[42].y" 270.75155639648438;
	setAttr ".tgi[3].ni[42].nvs" 18312;
	setAttr ".tgi[3].ni[43].x" 401.42550659179688;
	setAttr ".tgi[3].ni[43].y" 853.189453125;
	setAttr ".tgi[3].ni[43].nvs" 18312;
	setAttr ".tgi[3].ni[44].x" 404.44293212890625;
	setAttr ".tgi[3].ni[44].y" 389.84841918945313;
	setAttr ".tgi[3].ni[44].nvs" 18312;
	setAttr ".tgi[3].ni[45].x" 1091.668212890625;
	setAttr ".tgi[3].ni[45].y" 451.96286010742188;
	setAttr ".tgi[3].ni[45].nvs" 18312;
	setAttr ".tgi[3].ni[46].x" -185.06401062011719;
	setAttr ".tgi[3].ni[46].y" 323.64569091796875;
	setAttr ".tgi[3].ni[46].nvs" 18312;
	setAttr ".tgi[3].ni[47].x" 1398.81103515625;
	setAttr ".tgi[3].ni[47].y" 451.96286010742188;
	setAttr ".tgi[3].ni[47].nvs" 18312;
	setAttr ".tgi[4].tn" -type "string" "Untitled_6";
	setAttr ".tgi[4].vl" -type "double2" -431.74925517475322 -743.60396519242647 ;
	setAttr ".tgi[4].vh" -type "double2" 1092.8484528098625 783.40990397758503 ;
	setAttr -s 18 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 580.3341064453125;
	setAttr ".tgi[4].ni[0].y" -83.838279724121094;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 576.70989990234375;
	setAttr ".tgi[4].ni[1].y" -274.66482543945313;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" -62.655128479003906;
	setAttr ".tgi[4].ni[2].y" -282.26712036132813;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" -95.273307800292969;
	setAttr ".tgi[4].ni[3].y" 308.43408203125;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" -92.857139587402344;
	setAttr ".tgi[4].ni[4].y" 63.711391448974609;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 582.75030517578125;
	setAttr ".tgi[4].ni[5].y" 467.1468505859375;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 582.75030517578125;
	setAttr ".tgi[4].ni[6].y" -16.035173416137695;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" -92.857139587402344;
	setAttr ".tgi[4].ni[7].y" 145.91107177734375;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" -92.857139587402344;
	setAttr ".tgi[4].ni[8].y" 224.28572082519531;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 581.542236328125;
	setAttr ".tgi[4].ni[9].y" -209.27786254882813;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" 583.9583740234375;
	setAttr ".tgi[4].ni[10].y" 346.48941040039063;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" -96.48138427734375;
	setAttr ".tgi[4].ni[11].y" 573.621826171875;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 582.75030517578125;
	setAttr ".tgi[4].ni[12].y" -140.31687927246094;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 581.542236328125;
	setAttr ".tgi[4].ni[13].y" 278.93728637695313;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" -97.689468383789063;
	setAttr ".tgi[4].ni[14].y" -29.361011505126953;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 582.75030517578125;
	setAttr ".tgi[4].ni[15].y" 214.95921325683594;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 579.12603759765625;
	setAttr ".tgi[4].ni[16].y" 408.30230712890625;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" -400;
	setAttr ".tgi[4].ni[17].y" 148.57142639160156;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[5].tn" -type "string" "Untitled_5";
	setAttr ".tgi[5].vl" -type "double2" -385.95739681816838 -480.82339276163799 ;
	setAttr ".tgi[5].vh" -type "double2" 998.79332798043583 906.12186567373089 ;
	setAttr -s 43 ".tgi[5].ni";
	setAttr ".tgi[5].ni[0].x" -294.43511962890625;
	setAttr ".tgi[5].ni[0].y" 895.90045166015625;
	setAttr ".tgi[5].ni[0].nvs" 18312;
	setAttr ".tgi[5].ni[1].x" 467.82009887695313;
	setAttr ".tgi[5].ni[1].y" 275.97744750976563;
	setAttr ".tgi[5].ni[1].nvs" 18312;
	setAttr ".tgi[5].ni[2].x" -584.508544921875;
	setAttr ".tgi[5].ni[2].y" 743.10882568359375;
	setAttr ".tgi[5].ni[2].nvs" 18312;
	setAttr ".tgi[5].ni[3].x" 456.95770263671875;
	setAttr ".tgi[5].ni[3].y" 192.29190063476563;
	setAttr ".tgi[5].ni[3].nvs" 18312;
	setAttr ".tgi[5].ni[4].x" -556.57666015625;
	setAttr ".tgi[5].ni[4].y" -319.15606689453125;
	setAttr ".tgi[5].ni[4].nvs" 18312;
	setAttr ".tgi[5].ni[5].x" 745.47930908203125;
	setAttr ".tgi[5].ni[5].y" 189.1883544921875;
	setAttr ".tgi[5].ni[5].nvs" 18312;
	setAttr ".tgi[5].ni[6].x" -514.67889404296875;
	setAttr ".tgi[5].ni[6].y" -457.39730834960938;
	setAttr ".tgi[5].ni[6].nvs" 18312;
	setAttr ".tgi[5].ni[7].x" -264.95150756835938;
	setAttr ".tgi[5].ni[7].y" -233.0982666015625;
	setAttr ".tgi[5].ni[7].nvs" 18312;
	setAttr ".tgi[5].ni[8].x" -292.88336181640625;
	setAttr ".tgi[5].ni[8].y" 1054.584716796875;
	setAttr ".tgi[5].ni[8].nvs" 18312;
	setAttr ".tgi[5].ni[9].x" -289.77981567382813;
	setAttr ".tgi[5].ni[9].y" 970.08673095703125;
	setAttr ".tgi[5].ni[9].nvs" 18312;
	setAttr ".tgi[5].ni[10].x" 129.641845703125;
	setAttr ".tgi[5].ni[10].y" 392.03790283203125;
	setAttr ".tgi[5].ni[10].nvs" 18312;
	setAttr ".tgi[5].ni[11].x" 742.37579345703125;
	setAttr ".tgi[5].ni[11].y" 100.56975555419922;
	setAttr ".tgi[5].ni[11].nvs" 18312;
	setAttr ".tgi[5].ni[12].x" -428.2685546875;
	setAttr ".tgi[5].ni[12].y" 57.371967315673828;
	setAttr ".tgi[5].ni[12].nvs" 18312;
	setAttr ".tgi[5].ni[13].x" -572.0943603515625;
	setAttr ".tgi[5].ni[13].y" -214.52684020996094;
	setAttr ".tgi[5].ni[13].nvs" 18312;
	setAttr ".tgi[5].ni[14].x" -207.53604125976563;
	setAttr ".tgi[5].ni[14].y" -433.11160278320313;
	setAttr ".tgi[5].ni[14].nvs" 18312;
	setAttr ".tgi[5].ni[15].x" 737.720458984375;
	setAttr ".tgi[5].ni[15].y" 273.83328247070313;
	setAttr ".tgi[5].ni[15].nvs" 18312;
	setAttr ".tgi[5].ni[16].x" 433.68115234375;
	setAttr ".tgi[5].ni[16].y" 483.13613891601563;
	setAttr ".tgi[5].ni[16].nvs" 18312;
	setAttr ".tgi[5].ni[17].x" -249.43382263183594;
	setAttr ".tgi[5].ni[17].y" -294.870361328125;
	setAttr ".tgi[5].ni[17].nvs" 18312;
	setAttr ".tgi[5].ni[18].x" -601.5780029296875;
	setAttr ".tgi[5].ni[18].y" 1041.7275390625;
	setAttr ".tgi[5].ni[18].nvs" 18312;
	setAttr ".tgi[5].ni[19].x" -426.07403564453125;
	setAttr ".tgi[5].ni[19].y" 474.40130615234375;
	setAttr ".tgi[5].ni[19].nvs" 18312;
	setAttr ".tgi[5].ni[20].x" -582.95672607421875;
	setAttr ".tgi[5].ni[20].y" 812.5137939453125;
	setAttr ".tgi[5].ni[20].nvs" 18312;
	setAttr ".tgi[5].ni[21].x" -424.97677612304688;
	setAttr ".tgi[5].ni[21].y" 385.55941772460938;
	setAttr ".tgi[5].ni[21].nvs" 18312;
	setAttr ".tgi[5].ni[22].x" -235.4678955078125;
	setAttr ".tgi[5].ni[22].y" -357.49957275390625;
	setAttr ".tgi[5].ni[22].nvs" 18312;
	setAttr ".tgi[5].ni[23].x" 126.53830718994141;
	setAttr ".tgi[5].ni[23].y" 481.70755004882813;
	setAttr ".tgi[5].ni[23].nvs" 18312;
	setAttr ".tgi[5].ni[24].x" -289.77981567382813;
	setAttr ".tgi[5].ni[24].y" 737.910888671875;
	setAttr ".tgi[5].ni[24].nvs" 18312;
	setAttr ".tgi[5].ni[25].x" 740.82403564453125;
	setAttr ".tgi[5].ni[25].y" 490.27899169921875;
	setAttr ".tgi[5].ni[25].nvs" 18312;
	setAttr ".tgi[5].ni[26].x" -431.9659423828125;
	setAttr ".tgi[5].ni[26].y" 302.09805297851563;
	setAttr ".tgi[5].ni[26].nvs" 18312;
	setAttr ".tgi[5].ni[27].x" 152.91839599609375;
	setAttr ".tgi[5].ni[27].y" 107.24604034423828;
	setAttr ".tgi[5].ni[27].nvs" 18312;
	setAttr ".tgi[5].ni[28].x" -542.6107177734375;
	setAttr ".tgi[5].ni[28].y" -381.7852783203125;
	setAttr ".tgi[5].ni[28].nvs" 18312;
	setAttr ".tgi[5].ni[29].x" -592.26739501953125;
	setAttr ".tgi[5].ni[29].y" 968.48516845703125;
	setAttr ".tgi[5].ni[29].nvs" 18312;
	setAttr ".tgi[5].ni[30].x" 458.50949096679688;
	setAttr ".tgi[5].ni[30].y" 380.28955078125;
	setAttr ".tgi[5].ni[30].nvs" 18312;
	setAttr ".tgi[5].ni[31].x" -578.30145263671875;
	setAttr ".tgi[5].ni[31].y" -142.83619689941406;
	setAttr ".tgi[5].ni[31].nvs" 18312;
	setAttr ".tgi[5].ni[32].x" -271.15859985351563;
	setAttr ".tgi[5].ni[32].y" -129.97904968261719;
	setAttr ".tgi[5].ni[32].nvs" 18312;
	setAttr ".tgi[5].ni[33].x" -584.508544921875;
	setAttr ".tgi[5].ni[33].y" 896.44305419921875;
	setAttr ".tgi[5].ni[33].nvs" 18312;
	setAttr ".tgi[5].ni[34].x" 444.54354858398438;
	setAttr ".tgi[5].ni[34].y" 103.77291107177734;
	setAttr ".tgi[5].ni[34].nvs" 18312;
	setAttr ".tgi[5].ni[35].x" 145.1595458984375;
	setAttr ".tgi[5].ni[35].y" 286.47024536132813;
	setAttr ".tgi[5].ni[35].nvs" 18312;
	setAttr ".tgi[5].ni[36].x" 143.60777282714844;
	setAttr ".tgi[5].ni[36].y" 192.29190063476563;
	setAttr ".tgi[5].ni[36].nvs" 18312;
	setAttr ".tgi[5].ni[37].x" -997.17169189453125;
	setAttr ".tgi[5].ni[37].y" -265.1639404296875;
	setAttr ".tgi[5].ni[37].nvs" 18312;
	setAttr ".tgi[5].ni[38].x" -419.89599609375;
	setAttr ".tgi[5].ni[38].y" 134.25296020507813;
	setAttr ".tgi[5].ni[38].nvs" 18312;
	setAttr ".tgi[5].ni[39].x" -425.38235473632813;
	setAttr ".tgi[5].ni[39].y" 223.16831970214844;
	setAttr ".tgi[5].ni[39].nvs" 18312;
	setAttr ".tgi[5].ni[40].x" -291.33160400390625;
	setAttr ".tgi[5].ni[40].y" 810.41937255859375;
	setAttr ".tgi[5].ni[40].nvs" 18312;
	setAttr ".tgi[5].ni[41].x" 745.47930908203125;
	setAttr ".tgi[5].ni[41].y" 374.378662109375;
	setAttr ".tgi[5].ni[41].nvs" 18312;
	setAttr ".tgi[5].ni[42].x" -1022.0000610351563;
	setAttr ".tgi[5].ni[42].y" 400.27789306640625;
	setAttr ".tgi[5].ni[42].nvs" 18313;
	setAttr ".tgi[6].tn" -type "string" "Untitled_7";
	setAttr ".tgi[6].vl" -type "double2" -389.6548514081282 -763.02198163716901 ;
	setAttr ".tgi[6].vh" -type "double2" 1701.0793180753412 1331.0255542004734 ;
	setAttr -s 40 ".tgi[6].ni";
	setAttr ".tgi[6].ni[0].x" -192.92306518554688;
	setAttr ".tgi[6].ni[0].y" 550.56939697265625;
	setAttr ".tgi[6].ni[0].nvs" 18312;
	setAttr ".tgi[6].ni[1].x" -212.35250854492188;
	setAttr ".tgi[6].ni[1].y" 32.711917877197266;
	setAttr ".tgi[6].ni[1].nvs" 18312;
	setAttr ".tgi[6].ni[2].x" 566.62042236328125;
	setAttr ".tgi[6].ni[2].y" 266.91217041015625;
	setAttr ".tgi[6].ni[2].nvs" 18312;
	setAttr ".tgi[6].ni[3].x" 1095.670654296875;
	setAttr ".tgi[6].ni[3].y" 452.43060302734375;
	setAttr ".tgi[6].ni[3].nvs" 18313;
	setAttr ".tgi[6].ni[4].x" 556.6802978515625;
	setAttr ".tgi[6].ni[4].y" 629.3302001953125;
	setAttr ".tgi[6].ni[4].nvs" 18312;
	setAttr ".tgi[6].ni[5].x" 541.53466796875;
	setAttr ".tgi[6].ni[5].y" -233.78228759765625;
	setAttr ".tgi[6].ni[5].nvs" 18312;
	setAttr ".tgi[6].ni[6].x" -207.38246154785156;
	setAttr ".tgi[6].ni[6].y" -751.39898681640625;
	setAttr ".tgi[6].ni[6].nvs" 18312;
	setAttr ".tgi[6].ni[7].x" 539.87799072265625;
	setAttr ".tgi[6].ni[7].y" -677.0562744140625;
	setAttr ".tgi[6].ni[7].nvs" 18312;
	setAttr ".tgi[6].ni[8].x" 541.53466796875;
	setAttr ".tgi[6].ni[8].y" -596.99151611328125;
	setAttr ".tgi[6].ni[8].nvs" 18312;
	setAttr ".tgi[6].ni[9].x" -209.03913879394531;
	setAttr ".tgi[6].ni[9].y" -55.463188171386719;
	setAttr ".tgi[6].ni[9].nvs" 18312;
	setAttr ".tgi[6].ni[10].x" 556.6802978515625;
	setAttr ".tgi[6].ni[10].y" 527.901611328125;
	setAttr ".tgi[6].ni[10].nvs" 18312;
	setAttr ".tgi[6].ni[11].x" 1097.327392578125;
	setAttr ".tgi[6].ni[11].y" 251.23013305664063;
	setAttr ".tgi[6].ni[11].nvs" 18313;
	setAttr ".tgi[6].ni[12].x" 551.71026611328125;
	setAttr ".tgi[6].ni[12].y" 718.073974609375;
	setAttr ".tgi[6].ni[12].nvs" 18312;
	setAttr ".tgi[6].ni[13].x" 1095.670654296875;
	setAttr ".tgi[6].ni[13].y" 831.984130859375;
	setAttr ".tgi[6].ni[13].nvs" 18313;
	setAttr ".tgi[6].ni[14].x" -192.15357971191406;
	setAttr ".tgi[6].ni[14].y" 768.63287353515625;
	setAttr ".tgi[6].ni[14].nvs" 18313;
	setAttr ".tgi[6].ni[15].x" 1110.2620849609375;
	setAttr ".tgi[6].ni[15].y" -111.15226745605469;
	setAttr ".tgi[6].ni[15].nvs" 18313;
	setAttr ".tgi[6].ni[16].x" 551.71026611328125;
	setAttr ".tgi[6].ni[16].y" 819.5025634765625;
	setAttr ".tgi[6].ni[16].nvs" 18312;
	setAttr ".tgi[6].ni[17].x" -204.069091796875;
	setAttr ".tgi[6].ni[17].y" 119.7537841796875;
	setAttr ".tgi[6].ni[17].nvs" 18312;
	setAttr ".tgi[6].ni[18].x" 552.59747314453125;
	setAttr ".tgi[6].ni[18].y" 1003.8517456054688;
	setAttr ".tgi[6].ni[18].nvs" 18312;
	setAttr ".tgi[6].ni[19].x" 561.65032958984375;
	setAttr ".tgi[6].ni[19].y" 341.83383178710938;
	setAttr ".tgi[6].ni[19].nvs" 18312;
	setAttr ".tgi[6].ni[20].x" 566.62042236328125;
	setAttr ".tgi[6].ni[20].y" 165.48361206054688;
	setAttr ".tgi[6].ni[20].nvs" 18312;
	setAttr ".tgi[6].ni[21].x" 541.53466796875;
	setAttr ".tgi[6].ni[21].y" -960.54693603515625;
	setAttr ".tgi[6].ni[21].nvs" 18312;
	setAttr ".tgi[6].ni[22].x" 544.84808349609375;
	setAttr ".tgi[6].ni[22].y" -317.7291259765625;
	setAttr ".tgi[6].ni[22].nvs" 18312;
	setAttr ".tgi[6].ni[23].x" -202.41241455078125;
	setAttr ".tgi[6].ni[23].y" 207.0345458984375;
	setAttr ".tgi[6].ni[23].nvs" 18312;
	setAttr ".tgi[6].ni[24].x" 1094.013916015625;
	setAttr ".tgi[6].ni[24].y" 1019.3624267578125;
	setAttr ".tgi[6].ni[24].nvs" 18313;
	setAttr ".tgi[6].ni[25].x" 1113.575439453125;
	setAttr ".tgi[6].ni[25].y" -298.18435668945313;
	setAttr ".tgi[6].ni[25].nvs" 18313;
	setAttr ".tgi[6].ni[26].x" 1097.327392578125;
	setAttr ".tgi[6].ni[26].y" 646.78179931640625;
	setAttr ".tgi[6].ni[26].nvs" 18313;
	setAttr ".tgi[6].ni[27].x" -204.069091796875;
	setAttr ".tgi[6].ni[27].y" -633.51190185546875;
	setAttr ".tgi[6].ni[27].nvs" 18312;
	setAttr ".tgi[6].ni[28].x" 1110.2620849609375;
	setAttr ".tgi[6].ni[28].y" -657.51153564453125;
	setAttr ".tgi[6].ni[28].nvs" 18313;
	setAttr ".tgi[6].ni[29].x" 541.53466796875;
	setAttr ".tgi[6].ni[29].y" -859.11834716796875;
	setAttr ".tgi[6].ni[29].nvs" 18312;
	setAttr ".tgi[6].ni[30].x" -554.28570556640625;
	setAttr ".tgi[6].ni[30].y" 71.428573608398438;
	setAttr ".tgi[6].ni[30].nvs" 18312;
	setAttr ".tgi[6].ni[31].x" 561.65032958984375;
	setAttr ".tgi[6].ni[31].y" 443.26239013671875;
	setAttr ".tgi[6].ni[31].nvs" 18312;
	setAttr ".tgi[6].ni[32].x" 539.87799072265625;
	setAttr ".tgi[6].ni[32].y" -778.48486328125;
	setAttr ".tgi[6].ni[32].nvs" 18312;
	setAttr ".tgi[6].ni[33].x" 1115.232177734375;
	setAttr ".tgi[6].ni[33].y" -479.33154296875;
	setAttr ".tgi[6].ni[33].nvs" 18313;
	setAttr ".tgi[6].ni[34].x" 541.53466796875;
	setAttr ".tgi[6].ni[34].y" -495.56292724609375;
	setAttr ".tgi[6].ni[34].nvs" 18312;
	setAttr ".tgi[6].ni[35].x" 544.84808349609375;
	setAttr ".tgi[6].ni[35].y" -419.15771484375;
	setAttr ".tgi[6].ni[35].nvs" 18312;
	setAttr ".tgi[6].ni[36].x" 541.53466796875;
	setAttr ".tgi[6].ni[36].y" -132.35371398925781;
	setAttr ".tgi[6].ni[36].nvs" 18312;
	setAttr ".tgi[6].ni[37].x" 1111.9188232421875;
	setAttr ".tgi[6].ni[37].y" -846.2003173828125;
	setAttr ".tgi[6].ni[37].nvs" 18313;
	setAttr ".tgi[6].ni[38].x" 546.740234375;
	setAttr ".tgi[6].ni[38].y" 907.10894775390625;
	setAttr ".tgi[6].ni[38].nvs" 18312;
	setAttr ".tgi[6].ni[39].x" -202.41241455078125;
	setAttr ".tgi[6].ni[39].y" 308.46310424804688;
	setAttr ".tgi[6].ni[39].nvs" 18312;
	setAttr ".tgi[7].tn" -type "string" "Untitled_8";
	setAttr ".tgi[7].vl" -type "double2" 112.68807953347734 -1187.476811317099 ;
	setAttr ".tgi[7].vh" -type "double2" 1777.5926227364203 480.06624938695791 ;
	setAttr -s 37 ".tgi[7].ni";
	setAttr ".tgi[7].ni[0].x" 1188.3603515625;
	setAttr ".tgi[7].ni[0].y" -390.92611694335938;
	setAttr ".tgi[7].ni[0].nvs" 18304;
	setAttr ".tgi[7].ni[1].x" 232.41238403320313;
	setAttr ".tgi[7].ni[1].y" -362.45321655273438;
	setAttr ".tgi[7].ni[1].nvs" 18304;
	setAttr ".tgi[7].ni[2].x" 816.35516357421875;
	setAttr ".tgi[7].ni[2].y" -327.38729858398438;
	setAttr ".tgi[7].ni[2].nvs" 18304;
	setAttr ".tgi[7].ni[3].x" -137.14285278320313;
	setAttr ".tgi[7].ni[3].y" -518.5714111328125;
	setAttr ".tgi[7].ni[3].nvs" 18304;
	setAttr ".tgi[7].ni[4].x" -762.85711669921875;
	setAttr ".tgi[7].ni[4].y" -254.28572082519531;
	setAttr ".tgi[7].ni[4].nvs" 18304;
	setAttr ".tgi[7].ni[5].x" -762.85711669921875;
	setAttr ".tgi[7].ni[5].y" -500;
	setAttr ".tgi[7].ni[5].nvs" 18304;
	setAttr ".tgi[7].ni[6].x" 817.67437744140625;
	setAttr ".tgi[7].ni[6].y" -419.66033935546875;
	setAttr ".tgi[7].ni[6].nvs" 18304;
	setAttr ".tgi[7].ni[7].x" 240.32794189453125;
	setAttr ".tgi[7].ni[7].y" -453.64813232421875;
	setAttr ".tgi[7].ni[7].nvs" 18304;
	setAttr ".tgi[7].ni[8].x" 1173.8485107421875;
	setAttr ".tgi[7].ni[8].y" 48.220970153808594;
	setAttr ".tgi[7].ni[8].nvs" 18304;
	setAttr ".tgi[7].ni[9].x" -137.14285278320313;
	setAttr ".tgi[7].ni[9].y" -72.857139587402344;
	setAttr ".tgi[7].ni[9].nvs" 18304;
	setAttr ".tgi[7].ni[10].x" 1190.998779296875;
	setAttr ".tgi[7].ni[10].y" -583.87005615234375;
	setAttr ".tgi[7].ni[10].nvs" 18304;
	setAttr ".tgi[7].ni[11].x" 538.2359619140625;
	setAttr ".tgi[7].ni[11].y" -423.9610595703125;
	setAttr ".tgi[7].ni[11].nvs" 18304;
	setAttr ".tgi[7].ni[12].x" -455.71429443359375;
	setAttr ".tgi[7].ni[12].y" -417.14285278320313;
	setAttr ".tgi[7].ni[12].nvs" 18304;
	setAttr ".tgi[7].ni[13].x" -137.14285278320313;
	setAttr ".tgi[7].ni[13].y" -414.28570556640625;
	setAttr ".tgi[7].ni[13].nvs" 18304;
	setAttr ".tgi[7].ni[14].x" -455.71429443359375;
	setAttr ".tgi[7].ni[14].y" -112.85713958740234;
	setAttr ".tgi[7].ni[14].nvs" 18304;
	setAttr ".tgi[7].ni[15].x" 542.19378662109375;
	setAttr ".tgi[7].ni[15].y" -217.48252868652344;
	setAttr ".tgi[7].ni[15].nvs" 18304;
	setAttr ".tgi[7].ni[16].x" -762.85711669921875;
	setAttr ".tgi[7].ni[16].y" -622.85711669921875;
	setAttr ".tgi[7].ni[16].nvs" 18304;
	setAttr ".tgi[7].ni[17].x" -137.14285278320313;
	setAttr ".tgi[7].ni[17].y" -188.57142639160156;
	setAttr ".tgi[7].ni[17].nvs" 18304;
	setAttr ".tgi[7].ni[18].x" -762.85711669921875;
	setAttr ".tgi[7].ni[18].y" -131.42857360839844;
	setAttr ".tgi[7].ni[18].nvs" 18304;
	setAttr ".tgi[7].ni[19].x" 812.39739990234375;
	setAttr ".tgi[7].ni[19].y" -105.84283447265625;
	setAttr ".tgi[7].ni[19].nvs" 18304;
	setAttr ".tgi[7].ni[20].x" -762.85711669921875;
	setAttr ".tgi[7].ni[20].y" -8.5714282989501953;
	setAttr ".tgi[7].ni[20].nvs" 18304;
	setAttr ".tgi[7].ni[21].x" 227.13534545898438;
	setAttr ".tgi[7].ni[21].y" -165.22871398925781;
	setAttr ".tgi[7].ni[21].nvs" 18304;
	setAttr ".tgi[7].ni[22].x" -137.14285278320313;
	setAttr ".tgi[7].ni[22].y" -295.71429443359375;
	setAttr ".tgi[7].ni[22].nvs" 18304;
	setAttr ".tgi[7].ni[23].x" 229.77386474609375;
	setAttr ".tgi[7].ni[23].y" -266.47946166992188;
	setAttr ".tgi[7].ni[23].nvs" 18304;
	setAttr ".tgi[7].ni[24].x" 1188.3603515625;
	setAttr ".tgi[7].ni[24].y" -312.26882934570313;
	setAttr ".tgi[7].ni[24].nvs" 18304;
	setAttr ".tgi[7].ni[25].x" 1177.8062744140625;
	setAttr ".tgi[7].ni[25].y" -142.25053405761719;
	setAttr ".tgi[7].ni[25].nvs" 18304;
	setAttr ".tgi[7].ni[26].x" 811.078125;
	setAttr ".tgi[7].ni[26].y" -206.06146240234375;
	setAttr ".tgi[7].ni[26].nvs" 18304;
	setAttr ".tgi[7].ni[27].x" 529.00115966796875;
	setAttr ".tgi[7].ni[27].y" -102.86136627197266;
	setAttr ".tgi[7].ni[27].nvs" 18304;
	setAttr ".tgi[7].ni[28].x" 1192.318115234375;
	setAttr ".tgi[7].ni[28].y" -492.02017211914063;
	setAttr ".tgi[7].ni[28].nvs" 18304;
	setAttr ".tgi[7].ni[29].x" 527.681884765625;
	setAttr ".tgi[7].ni[29].y" -325.1710205078125;
	setAttr ".tgi[7].ni[29].nvs" 18304;
	setAttr ".tgi[7].ni[30].x" 235.0509033203125;
	setAttr ".tgi[7].ni[30].y" -71.395256042480469;
	setAttr ".tgi[7].ni[30].nvs" 18304;
	setAttr ".tgi[7].ni[31].x" -455.71429443359375;
	setAttr ".tgi[7].ni[31].y" -315.71429443359375;
	setAttr ".tgi[7].ni[31].nvs" 18304;
	setAttr ".tgi[7].ni[32].x" 1180.4447021484375;
	setAttr ".tgi[7].ni[32].y" -223.05746459960938;
	setAttr ".tgi[7].ni[32].nvs" 18304;
	setAttr ".tgi[7].ni[33].x" 1180.4447021484375;
	setAttr ".tgi[7].ni[33].y" -49.081394195556641;
	setAttr ".tgi[7].ni[33].nvs" 18304;
	setAttr ".tgi[7].ni[34].x" -455.71429443359375;
	setAttr ".tgi[7].ni[34].y" -214.28572082519531;
	setAttr ".tgi[7].ni[34].nvs" 18304;
	setAttr ".tgi[7].ni[35].x" -455.71429443359375;
	setAttr ".tgi[7].ni[35].y" -518.5714111328125;
	setAttr ".tgi[7].ni[35].nvs" 18304;
	setAttr ".tgi[7].ni[36].x" -762.85711669921875;
	setAttr ".tgi[7].ni[36].y" -377.14285278320313;
	setAttr ".tgi[7].ni[36].nvs" 18304;
	setAttr ".tgi[8].tn" -type "string" "Untitled_9";
	setAttr ".tgi[8].vl" -type "double2" -669.04759246205629 -655.23165459131053 ;
	setAttr ".tgi[8].vh" -type "double2" 674.99997317791099 690.94593888643806 ;
	setAttr -s 4 ".tgi[8].ni";
	setAttr ".tgi[8].ni[0].x" 367.14285278320313;
	setAttr ".tgi[8].ni[0].y" 44.285713195800781;
	setAttr ".tgi[8].ni[0].nvs" 18304;
	setAttr ".tgi[8].ni[1].x" -554.28570556640625;
	setAttr ".tgi[8].ni[1].y" 44.285713195800781;
	setAttr ".tgi[8].ni[1].nvs" 18304;
	setAttr ".tgi[8].ni[2].x" -247.14285278320313;
	setAttr ".tgi[8].ni[2].y" 44.285713195800781;
	setAttr ".tgi[8].ni[2].nvs" 18304;
	setAttr ".tgi[8].ni[3].x" 60;
	setAttr ".tgi[8].ni[3].y" 44.285713195800781;
	setAttr ".tgi[8].ni[3].nvs" 18304;
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
	setAttr -s 51 ".u";
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
connectAttr "parent_space_decomp.ot" "|temp:Spine_component|temp:input|temp:fit_spine.t"
		;
connectAttr "parent_space_decomp.os" "|temp:Spine_component|temp:input|temp:fit_spine.s"
		;
connectAttr "parent_space_decomp.or" "|temp:Spine_component|temp:input|temp:fit_spine.r"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.fit_display" "|temp:Spine_component|temp:input|temp:fit_spine.v"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.p" "temp:spine_twist_end_ctrl.t"
		;
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.p" "temp:chest_twist_end_ctrl.t"
		;
connectAttr "parent_space_decomp.ot" "temp:ik_ctrl_space.t";
connectAttr "parent_space_decomp.or" "temp:ik_ctrl_space.r";
connectAttr "parent_space_decomp.os" "temp:ik_ctrl_space.s";
connectAttr "parent_space_decomp.osh" "temp:ik_ctrl_space.sh";
connectAttr "M_Spine_fit_chest_localMat_decomp.ot" "temp:chest_Ctrl_space.t";
connectAttr "temp:fit_chest_sub.t" "temp:chest_sub_ctrl_space.t";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "temp:chest_sub_Ctrl.v"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.v"
		;
connectAttr "M_Spine_fit_spine_localMat_decomp.ot" "temp:spine_Ctrl_space.t";
connectAttr "temp:fit_spine_sub.t" "temp:spine_sub_ctrl_space.t";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "temp:spine_sub_Ctrl.v"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.v"
		;
connectAttr "M_Spine_fit_spine_start_decomp.ot" "bezierShape1.cp[0]";
connectAttr "M_Spine_fit_spine_sub_decomp.ot" "bezierShape1.cp[1]";
connectAttr "M_Spine_fit_chest_sub_decomp.ot" "bezierShape1.cp[2]";
connectAttr "M_Spine_fit_chest_decomp.ot" "bezierShape1.cp[3]";
connectAttr "spineA_pointOnCurveInfo.p" "temp:init_spineA_space.t";
connectAttr "temp:init_spineA_space_aimConstraint1.crx" "temp:init_spineA_space.rx"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.cry" "temp:init_spineA_space.ry"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.crz" "temp:init_spineA_space.rz"
		;
connectAttr "unitConversion11.o" "temp:twist_spineA.ry";
connectAttr "temp:init_spineA_space.pim" "temp:init_spineA_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineA_space.t" "temp:init_spineA_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineA_space.rp" "temp:init_spineA_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineA_space.rpt" "temp:init_spineA_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineA_space.ro" "temp:init_spineA_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineB_space.t" "temp:init_spineA_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineB_space.rp" "temp:init_spineA_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineB_space.rpt" "temp:init_spineA_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineB_space.pm" "temp:init_spineA_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.w0" "temp:init_spineA_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineA_space_aimConstraint1.wum"
		;
connectAttr "spineB_pointOnCurveInfo.p" "temp:init_spineB_space.t";
connectAttr "temp:init_spineB_space_aimConstraint1.crx" "temp:init_spineB_space.rx"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.cry" "temp:init_spineB_space.ry"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.crz" "temp:init_spineB_space.rz"
		;
connectAttr "unitConversion12.o" "temp:twist_spineB.ry";
connectAttr "temp:init_spineB_space.pim" "temp:init_spineB_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineB_space.t" "temp:init_spineB_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineB_space.rp" "temp:init_spineB_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineB_space.rpt" "temp:init_spineB_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineB_space.ro" "temp:init_spineB_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineC_space.t" "temp:init_spineB_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineC_space.rp" "temp:init_spineB_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineC_space.rpt" "temp:init_spineB_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineC_space.pm" "temp:init_spineB_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.w0" "temp:init_spineB_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineB_space_aimConstraint1.wum"
		;
connectAttr "spineC_pointOnCurveInfo.p" "temp:init_spineC_space.t";
connectAttr "temp:init_spineC_space_aimConstraint1.crx" "temp:init_spineC_space.rx"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.cry" "temp:init_spineC_space.ry"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.crz" "temp:init_spineC_space.rz"
		;
connectAttr "unitConversion13.o" "temp:twist_spineC.ry";
connectAttr "temp:init_spineC_space.pim" "temp:init_spineC_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineC_space.t" "temp:init_spineC_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineC_space.rp" "temp:init_spineC_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineC_space.rpt" "temp:init_spineC_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineC_space.ro" "temp:init_spineC_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineD_space.t" "temp:init_spineC_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineD_space.rp" "temp:init_spineC_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineD_space.rpt" "temp:init_spineC_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineD_space.pm" "temp:init_spineC_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.w0" "temp:init_spineC_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineC_space_aimConstraint1.wum"
		;
connectAttr "spineD_pointOnCurveInfo.p" "temp:init_spineD_space.t";
connectAttr "temp:init_spineD_space_aimConstraint1.crx" "temp:init_spineD_space.rx"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.cry" "temp:init_spineD_space.ry"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.crz" "temp:init_spineD_space.rz"
		;
connectAttr "unitConversion16.o" "temp:twist_spineD.ry";
connectAttr "temp:init_spineD_space.pim" "temp:init_spineD_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineD_space.t" "temp:init_spineD_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineD_space.rp" "temp:init_spineD_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineD_space.rpt" "temp:init_spineD_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineD_space.ro" "temp:init_spineD_space_aimConstraint1.cro"
		;
connectAttr "temp:output_spine_end_space.t" "temp:init_spineD_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:output_spine_end_space.rp" "temp:init_spineD_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:output_spine_end_space.rpt" "temp:init_spineD_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:output_spine_end_space.pm" "temp:init_spineD_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.w0" "temp:init_spineD_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineD_space_aimConstraint1.wum"
		;
connectAttr "chest_pointOnCurveInfo.p" "temp:init_chest_space.t";
connectAttr "temp:init_chest_space_aimConstraint1.crx" "temp:init_chest_space.rx"
		;
connectAttr "temp:init_chest_space_aimConstraint1.cry" "temp:init_chest_space.ry"
		;
connectAttr "temp:init_chest_space_aimConstraint1.crz" "temp:init_chest_space.rz"
		;
connectAttr "unitConversion19.o" "temp:twist_chest.ry";
connectAttr "temp:init_chest_space.pim" "temp:init_chest_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_chest_space.t" "temp:init_chest_space_aimConstraint1.ct";
connectAttr "temp:init_chest_space.rp" "temp:init_chest_space_aimConstraint1.crp"
		;
connectAttr "temp:init_chest_space.rpt" "temp:init_chest_space_aimConstraint1.crt"
		;
connectAttr "temp:init_chest_space.ro" "temp:init_chest_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineD_space.t" "temp:init_chest_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineD_space.rp" "temp:init_chest_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineD_space.rpt" "temp:init_chest_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineD_space.pm" "temp:init_chest_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_chest_space_aimConstraint1.w0" "temp:init_chest_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_chest_space_aimConstraint1.wum"
		;
connectAttr "chest_pointOnCurveInfo.p" "temp:output_spine_end_space.t";
connectAttr "parent_space_decomp.ot" "temp:fk_spine_jnt_space.t";
connectAttr "parent_space_decomp.or" "temp:fk_spine_jnt_space.r";
connectAttr "parent_space_decomp.os" "temp:fk_spine_jnt_space.s";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineA_jnt_space.r"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineA_jnt_space.t"
		;
connectAttr "temp:fk_spineA_Ctrl.r" "temp:fk_spineA_jnt.r";
connectAttr "fk_spineB_localMat_decomp.or" "temp:fk_spineB_jnt_space.r";
connectAttr "fk_spineB_localMat_decomp.ot" "temp:fk_spineB_jnt_space.t";
connectAttr "temp:fk_spineB_Ctrl.r" "temp:fk_spineB_jnt.r";
connectAttr "fk_spineC_localMat_decomp.or" "temp:fk_spineC_jnt_space.r";
connectAttr "fk_spineC_localMat_decomp.ot" "temp:fk_spineC_jnt_space.t";
connectAttr "temp:fk_spineC_Ctrl.r" "temp:fk_spineC_jnt.r";
connectAttr "fk_spineD_localMat_decomp.or" "temp:fk_spineD_jnt_space.r";
connectAttr "fk_spineD_localMat_decomp.ot" "temp:fk_spineD_jnt_space.t";
connectAttr "temp:fk_spineD_Ctrl.r" "temp:fk_spineD_jnt.r";
connectAttr "fk_chest_localMat_decomp.or" "temp:fk_chest_jnt_space.r";
connectAttr "fk_chest_localMat_decomp.ot" "temp:fk_chest_jnt_space.t";
connectAttr "temp:fk_chest_Ctrl.r" "temp:fk_chest_jnt.r";
connectAttr "parent_space_decomp.ot" "temp:fk_ctrl_space.t";
connectAttr "parent_space_decomp.or" "temp:fk_ctrl_space.r";
connectAttr "parent_space_decomp.os" "temp:fk_ctrl_space.s";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.fk_display" "temp:fk_ctrl_space.v"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineA_Ctrl_space.t"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineA_Ctrl_space.r"
		;
connectAttr "fk_spineB_localMat_decomp.ot" "temp:fk_spineB_Ctrl_space.t";
connectAttr "fk_spineB_localMat_decomp.or" "temp:fk_spineB_Ctrl_space.r";
connectAttr "fk_spineC_localMat_decomp.ot" "temp:fk_spineC_Ctrl_space.t";
connectAttr "fk_spineC_localMat_decomp.or" "temp:fk_spineC_Ctrl_space.r";
connectAttr "fk_spineD_localMat_decomp.ot" "temp:fk_spineD_Ctrl_space.t";
connectAttr "fk_spineD_localMat_decomp.or" "temp:fk_spineD_Ctrl_space.r";
connectAttr "fk_chest_localMat_decomp.ot" "temp:fk_chest_Ctrl_space.t";
connectAttr "fk_chest_localMat_decomp.or" "temp:fk_chest_Ctrl_space.r";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.or" "temp:chest_local_init.r";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.ot" "temp:chest_local_init.t";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineA_local_init.r"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineA_local_init.t"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineB_local_init.r"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineB_local_init.t"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineC_local_init.t"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineC_local_init.r"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineD_local_init.t"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineD_local_init.r"
		;
connectAttr "fk_spineC_jnt_decomp.ot" "temp:end_plug.t";
connectAttr "fk_spineC_jnt_decomp.or" "temp:end_plug.r";
connectAttr "fk_spineC_jnt_decomp.os" "temp:end_plug.s";
connectAttr "fk_spineC_jnt_decomp.osh" "temp:end_plug.sh";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bezierShape1.ws" "spineA_pointOnCurveInfo.ic";
connectAttr "spineA_param.ox" "spineA_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineA_param.i1x";
connectAttr "spineA_twist_combine.o1" "unitConversion11.i";
connectAttr "spineA_spine_twist_mul.ox" "spineA_twist_combine.i1[0]";
connectAttr "spineA_chest_twist_mul.ox" "spineA_twist_combine.i1[1]";
connectAttr "unitConversion1.o" "spineA_spine_twist_mul.i1x";
connectAttr "spineA_spine_twist_remap.ov" "spineA_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion1.i"
		;
connectAttr "spineA_param.ox" "spineA_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineA_spine_twist_remap.imx"
		;
connectAttr "unitConversion6.o" "spineA_chest_twist_mul.i1x";
connectAttr "spineA_chest_twist_remap.ov" "spineA_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion6.i"
		;
connectAttr "spineA_param.ox" "spineA_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineA_chest_twist_remap.imn"
		;
connectAttr "bezierShape1.ws" "spineB_pointOnCurveInfo.ic";
connectAttr "spineB_param.ox" "spineB_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineB_param.i1x";
connectAttr "spineB_twist_combine.o1" "unitConversion12.i";
connectAttr "spineB_spine_twist_mul.ox" "spineB_twist_combine.i1[0]";
connectAttr "spineB_chest_twist_mul.ox" "spineB_twist_combine.i1[1]";
connectAttr "unitConversion2.o" "spineB_spine_twist_mul.i1x";
connectAttr "spineB_spine_twist_remap.ov" "spineB_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion2.i"
		;
connectAttr "spineB_param.ox" "spineB_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineB_spine_twist_remap.imx"
		;
connectAttr "unitConversion7.o" "spineB_chest_twist_mul.i1x";
connectAttr "spineB_chest_twist_remap.ov" "spineB_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion7.i"
		;
connectAttr "spineB_param.ox" "spineB_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineB_chest_twist_remap.imn"
		;
connectAttr "bezierShape1.ws" "spineC_pointOnCurveInfo.ic";
connectAttr "spineC_param.ox" "spineC_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineC_param.i1x";
connectAttr "spineC_twist_combine.o1" "unitConversion13.i";
connectAttr "spineC_spine_twist_mul.ox" "spineC_twist_combine.i1[0]";
connectAttr "spineC_chest_twist_mul.ox" "spineC_twist_combine.i1[1]";
connectAttr "unitConversion3.o" "spineC_spine_twist_mul.i1x";
connectAttr "spineC_spine_twist_remap.ov" "spineC_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion3.i"
		;
connectAttr "spineC_param.ox" "spineC_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineC_spine_twist_remap.imx"
		;
connectAttr "unitConversion8.o" "spineC_chest_twist_mul.i1x";
connectAttr "spineC_chest_twist_remap.ov" "spineC_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion8.i"
		;
connectAttr "spineC_param.ox" "spineC_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineC_chest_twist_remap.imn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.o" "fk_spineB_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "bezierShape1.ws" "spine_twist_end_ctrl_pointOnCurveInfo.ic";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spine_twist_end_ctrl_pointOnCurveInfo.pr"
		;
connectAttr "bezierShape1.ws" "chest_twist_end_ctrl_pointOnCurveInfo.ic";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "chest_twist_end_ctrl_pointOnCurveInfo.pr"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.wm" "M_Spine_fit_spine_start_decomp.imat"
		;
connectAttr "temp:spine_sub_Ctrl.wm" "M_Spine_fit_spine_sub_decomp.imat";
connectAttr "temp:chest_sub_Ctrl.wm" "M_Spine_fit_chest_sub_decomp.imat";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.wm" "M_Spine_fit_chest_decomp.imat"
		;
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine.wm" "M_Spine_fit_spine_localMat.i[0]"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.wim" "M_Spine_fit_spine_localMat.i[1]"
		;
connectAttr "M_Spine_fit_spine_localMat.o" "M_Spine_fit_spine_localMat_decomp.imat"
		;
connectAttr "temp:fit_chest.wm" "M_Spine_fit_chest_localMat.i[0]";
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.wim" "M_Spine_fit_chest_localMat.i[1]"
		;
connectAttr "M_Spine_fit_chest_localMat.o" "M_Spine_fit_chest_localMat_decomp.imat"
		;
connectAttr "temp:parent_space.wm" "parent_space_decomp.imat";
connectAttr "fk_spineC_ctrl_scaleSpaceMat.o" "fk_spineC_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.o" "fk_spineA_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "spineD_param.ox" "spineD_pointOnCurveInfo.pr";
connectAttr "bezierShape1.ws" "spineD_pointOnCurveInfo.ic";
connectAttr "chest_param.ox" "chest_pointOnCurveInfo.pr";
connectAttr "bezierShape1.ws" "chest_pointOnCurveInfo.ic";
connectAttr "spine_param.ox" "spineD_param.i1x";
connectAttr "spine_param.ox" "chest_param.i1x";
connectAttr "fk_spineD_ctrl_scaleSpaceMat.o" "fk_spineD_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.o" "fk_chest_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "temp:fk_spineC_jnt.wm" "fk_spineC_jnt_decomp.imat";
connectAttr "temp:twist_chest.wm" "fk_chest_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_chest_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineD.wm" "fk_spineD_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineD_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineA.wm" "fk_spineA_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineA_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineB.wm" "fk_spineB_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineB_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineC.wm" "fk_spineC_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineC_ctrl_scaleSpaceMat.i[1]";
connectAttr "nodeView1.msg" "MayaNodeEditorBookmarks.b[0]";
connectAttr "temp:twist_chest.msg" "nodeView1.ni[0].dn";
connectAttr "temp:twist_spineD.msg" "nodeView1.ni[1].dn";
connectAttr "temp:twist_spineC.msg" "nodeView1.ni[2].dn";
connectAttr "temp:twist_spineB.msg" "nodeView1.ni[3].dn";
connectAttr "temp:twist_spineA.msg" "nodeView1.ni[4].dn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[5].dn";
connectAttr "temp:fk_spineB_Ctrl_space.msg" "nodeView1.ni[6].dn";
connectAttr "temp:fk_spineB_jnt_space.msg" "nodeView1.ni[7].dn";
connectAttr "temp:fk_spineA_jnt_space.msg" "nodeView1.ni[8].dn";
connectAttr "temp:fk_spineA_Ctrl_space.msg" "nodeView1.ni[11].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[12].dn";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "nodeView1.ni[13].dn"
		;
connectAttr "unitConversion12.msg" "nodeView1.ni[14].dn";
connectAttr "spineB_chest_twist_mul.msg" "nodeView1.ni[16].dn";
connectAttr "temp:fk_spineD_Ctrl_space.msg" "nodeView1.ni[17].dn";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[18].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[19].dn";
connectAttr "spineB_chest_twist_remap.msg" "nodeView1.ni[20].dn";
connectAttr "temp:fk_spineC_jnt_space.msg" "nodeView1.ni[21].dn";
connectAttr "spineC_spine_twist_mul.msg" "nodeView1.ni[22].dn";
connectAttr "spine_param.msg" "nodeView1.ni[23].dn";
connectAttr "temp:chest_twist_end_ctrl.msg" "nodeView1.ni[24].dn";
connectAttr "spineC_spine_twist_remap.msg" "nodeView1.ni[26].dn";
connectAttr "spineC_chest_twist_mul.msg" "nodeView1.ni[27].dn";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "nodeView1.ni[28].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "nodeView1.ni[29].dn";
connectAttr "spineC_twist_combine.msg" "nodeView1.ni[30].dn";
connectAttr "temp:fk_spineD_jnt_space.msg" "nodeView1.ni[31].dn";
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[32].dn";
connectAttr "spineC_chest_twist_remap.msg" "nodeView1.ni[33].dn";
connectAttr "temp:fk_chest_Ctrl_space.msg" "nodeView1.ni[34].dn";
connectAttr "temp:fk_spineC_Ctrl_space.msg" "nodeView1.ni[35].dn";
connectAttr "temp:fk_chest_jnt_space.msg" "nodeView1.ni[36].dn";
connectAttr "spineC_param.msg" "nodeView1.ni[37].dn";
connectAttr "spineB_spine_twist_mul.msg" "nodeView1.ni[38].dn";
connectAttr "temp:spine_twist_end_ctrl.msg" "nodeView1.ni[39].dn";
connectAttr "unitConversion8.msg" "nodeView1.ni[40].dn";
connectAttr "unitConversion13.msg" "nodeView1.ni[41].dn";
connectAttr "unitConversion2.msg" "nodeView1.ni[42].dn";
connectAttr "spineB_twist_combine.msg" "nodeView1.ni[44].dn";
connectAttr "unitConversion7.msg" "nodeView1.ni[45].dn";
connectAttr "spineB_param.msg" "nodeView1.ni[46].dn";
connectAttr "unitConversion3.msg" "nodeView1.ni[47].dn";
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "nodeView1.ni[48].dn";
connectAttr "temp:parent_spaceShape.msg" "nodeView1.ni[49].dn";
connectAttr "temp:parent_space.msg" "nodeView1.ni[50].dn";
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "nodeView1.ni[51].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "nodeView1.ni[52].dn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "nodeView1.ni[53].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "nodeView1.ni[54].dn";
connectAttr "temp:fk_spineB_local_init.wm" "fk_spineB_localMat.i[0]";
connectAttr "temp:fk_spineA_local_init.wim" "fk_spineB_localMat.i[1]";
connectAttr "fk_spineB_localMat.o" "fk_spineB_localMat_decomp.imat";
connectAttr "temp:fk_spineC_local_init.wm" "fk_spineC_localMat.i[0]";
connectAttr "temp:fk_spineB_local_init.wim" "fk_spineC_localMat.i[1]";
connectAttr "fk_spineC_localMat.o" "fk_spineC_localMat_decomp.imat";
connectAttr "temp:fk_spineD_local_init.wm" "fk_spineD_localMat.i[0]";
connectAttr "temp:fk_spineC_local_init.wim" "fk_spineD_localMat.i[1]";
connectAttr "fk_spineD_localMat.o" "fk_spineD_localMat_decomp.imat";
connectAttr "temp:chest_local_init.wm" "fk_chest_localMat.i[0]";
connectAttr "temp:fk_spineD_local_init.wim" "fk_chest_localMat.i[1]";
connectAttr "fk_chest_localMat.o" "fk_chest_localMat_decomp.imat";
connectAttr "spineD_param.ox" "spineD_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineD_chest_twist_remap.imn"
		;
connectAttr "unitConversion14.o" "spineD_chest_twist_mul.i1x";
connectAttr "spineD_chest_twist_remap.ov" "spineD_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion14.i"
		;
connectAttr "spineD_spine_twist_mul.ox" "spineD_twist_combine.i1[0]";
connectAttr "spineD_chest_twist_mul.ox" "spineD_twist_combine.i1[1]";
connectAttr "spineD_param.ox" "spineD_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineD_spine_twist_remap.imx"
		;
connectAttr "unitConversion15.o" "spineD_spine_twist_mul.i1x";
connectAttr "spineD_spine_twist_remap.ov" "spineD_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion15.i"
		;
connectAttr "spineD_twist_combine.o1" "unitConversion16.i";
connectAttr "chest_param.ox" "chest_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "chest_chest_twist_remap.imn"
		;
connectAttr "chest_param.ox" "chest_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "chest_spine_twist_remap.imx"
		;
connectAttr "unitConversion17.o" "chest_chest_twist_mul.i1x";
connectAttr "chest_chest_twist_remap.ov" "chest_chest_twist_mul.i2x";
connectAttr "chest_spine_twist_mul.ox" "chest_twist_combine.i1[0]";
connectAttr "chest_chest_twist_mul.ox" "chest_twist_combine.i1[1]";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion17.i"
		;
connectAttr "chest_spine_twist_remap.ov" "chest_spine_twist_mul.i2x";
connectAttr "unitConversion18.o" "chest_spine_twist_mul.i1x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion18.i"
		;
connectAttr "chest_twist_combine.o1" "unitConversion19.i";
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "temp:fit_chest_sub.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "M_Spine_fit_spine_start_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "temp:fk_init_upVec_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "M_Spine_fit_spine_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "temp:fk_spineD_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "temp:fit_spine_sub.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "temp:init_spineB_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "temp:fk_spineA_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "temp:fk_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "spineC_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "temp:fk_spine_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "chest_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "temp:init_chest_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "temp:fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "temp:fk_spineA_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "spineA_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "temp:chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "M_Spine_fit_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "spineB_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "temp:fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "temp:init_chest_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "temp:fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "temp:chest_sub_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "temp:fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "temp:fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "M_Spine_fit_spine_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "temp:fk_spineC_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "temp:fit_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "chest_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "temp:fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "temp:init_spineA_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "temp:fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "temp:fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "spineD_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "spineA_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "temp:fk_spineA_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "parent_space_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "temp:spine_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "spineC_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "bezierShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "spineA_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "temp:parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "temp:fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "temp:fk_spineB_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "temp:init_spineD_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "temp:fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "temp:end_plug.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "spineB_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "temp:fk_spineA_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "temp:fk_spineB_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "temp:fk_chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "spine_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "temp:fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "M_Spine_fit_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "temp:ik_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "temp:output_spine_end_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "temp:chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "M_Spine_fit_chest_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "spineB_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "spineD_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "temp:fk_spineC_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "spineD_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "temp:fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "chest_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "temp:init_spineC_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "temp:fk_chest_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "temp:spine_sub_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "spineC_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "temp:spine_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "temp:fk_spineD_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "M_Spine_fit_chest_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "M_Spine_fit_spine_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "temp:chest_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "fk_spineC_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "temp:fk_spineD_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "temp:fk_spineA_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "fk_spineC_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "temp:fk_spineB_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "temp:end_plug.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn";
connectAttr "temp:fk_spineD_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "temp:fk_spineB_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "temp:fk_spineC_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "temp:fk_chest_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "temp:fk_chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "temp:fk_spineA_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "temp:fk_spineC_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "temp:fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "temp:fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "temp:chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "temp:fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "temp:parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "temp:fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "temp:fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "temp:fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "temp:fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "temp:fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "temp:fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "temp:fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn"
		;
connectAttr "temp:fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "temp:fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "M_Spine_fit_spine_start_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "spineB_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "temp:chest_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "temp:spine_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "M_Spine_fit_chest_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[22].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[23].dn"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[24].dn"
		;
connectAttr "M_Spine_fit_spine_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[25].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[26].dn"
		;
connectAttr "chest_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[27].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[28].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[29].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[30].dn"
		;
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[31].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[32].dn"
		;
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[33].dn"
		;
connectAttr "bezierShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[34].dn";
connectAttr "spineA_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[35].dn"
		;
connectAttr "M_Spine_fit_chest_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[36].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[37].dn"
		;
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[38].dn"
		;
connectAttr "spineC_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[39].dn"
		;
connectAttr "spineD_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[40].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[41].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[42].dn"
		;
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[43].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[44].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[45].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[46].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[47].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "spineA_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn";
connectAttr "spineD_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn";
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "spineC_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn";
connectAttr "spineB_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn";
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "chest_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn";
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "spine_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn";
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[0].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[1].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[2].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[3].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[4].dn";
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[5].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[6].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[7].dn"
		;
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[8].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[9].dn"
		;
connectAttr "spineB_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[10].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[11].dn"
		;
connectAttr "temp:fk_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[12].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[13].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[14].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[15].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[16].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[17].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[18].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[19].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[20].dn"
		;
connectAttr "temp:chest_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[21].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[22].dn"
		;
connectAttr "spineA_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[23].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[24].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[25].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[26].dn"
		;
connectAttr "chest_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[27].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[28].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[29].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[30].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[31].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[32].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[33].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[34].dn"
		;
connectAttr "spineC_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[35].dn"
		;
connectAttr "spineD_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[36].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[37].dn"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[38].dn"
		;
connectAttr "temp:spine_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[39].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[40].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[41].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[42].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[0].dn"
		;
connectAttr "spineD_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[1].dn";
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[2].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[3].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[4].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[5].dn";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[6].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[7].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[8].dn";
connectAttr "chest_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[9].dn";
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[10].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[11].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[12].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[13].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[14].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[15].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[16].dn"
		;
connectAttr "spineC_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[17].dn";
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[18].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[19].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[20].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[21].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[22].dn"
		;
connectAttr "spineB_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[23].dn";
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[24].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[25].dn"
		;
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[26].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[27].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[28].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[29].dn"
		;
connectAttr "spine_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[30].dn";
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[31].dn"
		;
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[32].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[33].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[34].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[35].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[36].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[37].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[38].dn"
		;
connectAttr "spineA_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[39].dn";
connectAttr "temp:fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[0].dn"
		;
connectAttr "temp:fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[1].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[2].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[3].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[4].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[5].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[6].dn"
		;
connectAttr "temp:chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[7].dn"
		;
connectAttr "temp:fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[8].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[9].dn"
		;
connectAttr "temp:fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[10].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[11].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[12].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[13].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[14].dn"
		;
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[15].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[16].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[17].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[18].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[19].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[20].dn"
		;
connectAttr "temp:fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[21].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[22].dn"
		;
connectAttr "temp:fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[23].dn"
		;
connectAttr "temp:fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[24].dn"
		;
connectAttr "temp:fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[25].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[26].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[27].dn"
		;
connectAttr "temp:fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[28].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[29].dn"
		;
connectAttr "temp:fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[30].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[31].dn"
		;
connectAttr "temp:fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[32].dn"
		;
connectAttr "temp:fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[33].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[34].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[35].dn"
		;
connectAttr "temp:parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[36].dn"
		;
connectAttr "temp:end_plug.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[0].dn";
connectAttr "temp:fk_spineC_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[1].dn"
		;
connectAttr "temp:fk_spineC_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[2].dn"
		;
connectAttr "fk_spineC_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[3].dn"
		;
connectAttr "spineA_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_jnt_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "parent_space_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_Spine_fit_spine_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_Spine_fit_spine_localMat_decomp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "M_Spine_fit_chest_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_Spine_fit_chest_localMat_decomp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spineD_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineB_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of spine_01.ma
=======
//Maya ASCII 2019 scene
//Name: spine_01.ma
//Last modified: Wed, May 06, 2020 07:50:14 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2019.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18363)\n";
createNode transform -s -n "persp";
	rename -uid "E4F6F51C-487F-09FA-A3FF-FEAB0BDF7D11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.434646508048083 12.413058109047784 5.4510115672115482 ;
	setAttr ".r" -type "double3" -3.9383527296029204 74.200000000001424 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "38EEC9DB-494C-BEF9-18BE-F58A4B64D688";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 30.62276851687567;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "5B7E805A-464E-0945-02C8-988617EA5CBE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8C26EF01-4202-995C-12B3-11BA1588EDC0";
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
	rename -uid "07560F2B-49CF-AC77-D185-11ACED3A57F5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EA1F04EC-4929-3DC0-4F24-4B8204B1526D";
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
	rename -uid "8FABEB0C-41D1-01B3-E504-3BBB40F21D2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "89C5D30B-4C4A-31FD-66C3-0B9DD8901BFF";
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
createNode transform -n "temp:Spine_component";
	rename -uid "B1014DE7-4FD6-DF62-C382-D9A35D1FC432";
createNode transform -n "temp:input" -p "temp:Spine_component";
	rename -uid "2B2A5B57-4422-13D4-501F-8A98E8F3028F";
createNode transform -n "temp:parent_space" -p "temp:input";
	rename -uid "1FCD5D9C-4665-9C5F-0D4C-A9A608F98D25";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
createNode locator -n "temp:parent_spaceShape" -p "temp:parent_space";
	rename -uid "923F1D01-426B-8925-4706-C99BD1979B90";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
createNode transform -n "temp:fit_spine" -p "temp:input";
	rename -uid "7B81A015-4B53-066E-8D7B-5583680C9D3D";
createNode transform -n "temp:fit_spine" -p "|temp:Spine_component|temp:input|temp:fit_spine";
	rename -uid "DDE1DE43-4064-ABF5-46DA-4CA402AE8DDC";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -6.1629758220391547e-33 5.1528527950028264 0 ;
createNode locator -n "temp:fit_spineShape" -p "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine";
	rename -uid "62775011-47B1-B067-A636-B5B314BC374D";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:fit_spine_sub" -p "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine";
	rename -uid "D2139D6C-44BE-9775-1CBA-7FA502387594";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -1.332267629550188e-15 3.5182144177500998 0 ;
createNode locator -n "temp:fit_spine_subShape" -p "temp:fit_spine_sub";
	rename -uid "4E8AA85B-4BB8-E29F-7736-52AF8E6E0847";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:fit_chest" -p "|temp:Spine_component|temp:input|temp:fit_spine";
	rename -uid "0DDE8F76-4CAF-3F4B-D693-AC80FF8DF459";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -4.0245584642661934e-16 17.28268512563892 0 ;
createNode locator -n "temp:fit_chestShape" -p "temp:fit_chest";
	rename -uid "9F6BB547-4C6E-CB45-64A0-FEB27E8F0163";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:fit_chest_sub" -p "temp:fit_chest";
	rename -uid "F56D291E-478B-4ADC-55F2-C4B15AD96A17";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -3.9072046689379061 0 ;
createNode locator -n "temp:fit_chest_subShape" -p "temp:fit_chest_sub";
	rename -uid "0FE78C9E-4104-07CD-A461-8BBF84CE2C3A";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "temp:ik_spine" -p "temp:Spine_component";
	rename -uid "0F1F08BA-4513-40BE-8379-A2AF3E74DB54";
createNode transform -n "temp:spine_twist_end_ctrl" -p "temp:ik_spine";
	rename -uid "EB5AB358-4086-DA07-4543-3A9C8543AB0D";
	addAttr -ci true -sn "End_UValue" -ln "End_UValue" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".End_UValue" 1;
createNode nurbsCurve -n "nurbsCircleShape1" -p "temp:spine_twist_end_ctrl";
	rename -uid "9F7AAB83-46AA-1282-2FD0-01B16A07D39B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.079248709591617 6.6084923884264133e-17 -1.0792487095916141
		-1.0108341068570976e-16 9.3458195625520092e-17 -1.5262881622781241
		-1.0792487095916143 6.6084923884264195e-17 -1.0792487095916143
		-1.5262881622781241 2.7081846952830656e-32 -5.3967721636980937e-16
		-1.0792487095916146 -6.6084923884264145e-17 1.0792487095916143
		-3.8685259177240873e-16 -9.3458195625520104e-17 1.5262881622781244
		1.0792487095916141 -6.6084923884264207e-17 1.0792487095916146
		1.5262881622781241 -5.0196579182590163e-32 7.223752576859768e-16
		1.079248709591617 6.6084923884264133e-17 -1.0792487095916141
		-1.0108341068570976e-16 9.3458195625520092e-17 -1.5262881622781241
		-1.0792487095916143 6.6084923884264195e-17 -1.0792487095916143
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "temp:spine_twist_end_ctrl";
	rename -uid "64FE8979-4A20-3970-D3A0-458A87F184E6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.72413667245901314 4.4340582903607194e-17 -0.72413667245901137
		-4.5752785818672678e-18 6.2707053705809874e-17 -1.0240839032032572
		-0.72413667245901137 4.4340582903607243e-17 -0.72413667245901137
		-1.0240839032032572 1.8170935357326246e-32 -4.4643449427454046e-16
		-0.7241366724590117 -4.43405829036072e-17 0.72413667245901137
		-1.9631601641583945e-16 -6.2707053705809886e-17 1.0240839032032574
		0.72413667245901137 -4.4340582903607256e-17 0.7241366724590117
		1.0240839032032572 -3.3680080870201433e-32 4.0035686244362902e-16
		0.72413667245901314 4.4340582903607194e-17 -0.72413667245901137
		-4.5752785818672678e-18 6.2707053705809874e-17 -1.0240839032032572
		-0.72413667245901137 4.4340582903607243e-17 -0.72413667245901137
		;
createNode transform -n "temp:chest_twist_end_ctrl" -p "temp:ik_spine";
	rename -uid "4FDDB757-4CE4-6F72-1D19-22A3D912DE4D";
	addAttr -ci true -sn "End_UValue" -ln "End_UValue" -dv 0.5 -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 27;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".End_UValue" 0;
createNode nurbsCurve -n "nurbsCircleShape1" -p "temp:chest_twist_end_ctrl";
	rename -uid "E14D18BF-4129-0A18-3603-96B9AD67E304";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0779747132623019 6.6006914107923055e-17 -1.0779747132622997
		-1.7392567667169365e-16 9.3347873141820861e-17 -1.5244864593907945
		-1.0779747132623001 6.6006914107923092e-17 -1.0779747132623001
		-1.5244864593907945 2.7049878257105222e-32 -5.3897462781090262e-16
		-1.0779747132623012 -6.6006914107923067e-17 1.0779747132622999
		-4.5935752227260472e-16 -9.3347873141820861e-17 1.5244864593907947
		1.0779747132622997 -6.6006914107923116e-17 1.0779747132623012
		1.5244864593907945 -5.0137324761385433e-32 7.2158805968775279e-16
		1.0779747132623019 6.6006914107923055e-17 -1.0779747132622997
		-1.7392567667169365e-16 9.3347873141820861e-17 -1.5244864593907945
		-1.0779747132623001 6.6006914107923092e-17 -1.0779747132623001
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "temp:chest_twist_end_ctrl";
	rename -uid "FE13F434-4E31-3265-8080-37AC0156CA23";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7237251376202577 4.4315383662456245e-17 -0.72372513762025559
		-1.1676932931384003e-16 6.2671416597212709e-17 -1.0235019050529022
		-0.72372513762025592 4.4315383662456269e-17 -0.72372513762025592
		-1.0235019050529022 1.8160608614824834e-32 -4.4614923304120937e-16
		-0.72372513762025714 -4.4315383662456257e-17 0.72372513762025581
		-3.0840109877674598e-16 -6.2671416597212709e-17 1.0235019050529024
		0.72372513762025559 -4.4315383662456288e-17 0.72372513762025714
		1.0235019050529022 -3.3660940109655325e-32 4.0016088283155273e-16
		0.7237251376202577 4.4315383662456245e-17 -0.72372513762025559
		-1.1676932931384003e-16 6.2671416597212709e-17 -1.0235019050529022
		-0.72372513762025592 4.4315383662456269e-17 -0.72372513762025592
		;
createNode transform -n "temp:ik_ctrl_space" -p "temp:ik_spine";
	rename -uid "3FAE24A7-41C7-EFA9-EC4F-F999ADA28E51";
createNode transform -n "temp:chest_Ctrl_space" -p "temp:ik_ctrl_space";
	rename -uid "9ECDED6C-48B3-2377-16A7-0CB8AD09C09B";
createNode transform -n "temp:chest_Ctrl" -p "temp:chest_Ctrl_space";
	rename -uid "10FCD0A4-4863-0308-79EE-9E80F1031669";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 9.4663308626521417e-30 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:chest_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl";
	rename -uid "0367B709-455A-A4EC-6A19-C6A40D0C6D20";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2622352353850834 2.7704391399327006e-16 -2.2622352353850741
		-4.3227832762291528e-16 3.9179926054220778e-16 -3.1992837511598755
		-2.262235235385079 2.7704391399327016e-16 -2.2622352353850785
		-3.199283751159876 1.1353362366156046e-31 -7.5047175591964874e-16
		-2.2622352353850825 -2.7704391399327006e-16 2.2622352353850745
		-1.0312849374025023e-15 -3.9179926054220778e-16 3.1992837511598755
		2.2622352353850737 -2.7704391399327035e-16 2.2622352353850785
		3.1992837511598751 -2.1043614713354141e-31 1.8949421791076717e-15
		2.2622352353850834 2.7704391399327006e-16 -2.2622352353850741
		-4.3227832762291528e-16 3.9179926054220778e-16 -3.1992837511598755
		-2.262235235385079 2.7704391399327016e-16 -2.2622352353850785
		;
createNode transform -n "temp:chest_sub_ctrl_space" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl";
	rename -uid "ADA49BBF-4BDA-23EE-2ADD-389DCDA4127A";
createNode transform -n "temp:chest_sub_Ctrl" -p "temp:chest_sub_ctrl_space";
	rename -uid "B4464401-45E1-B864-893D-598243D2D0F7";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "temp:chest_sub_CtrlShape" -p "temp:chest_sub_Ctrl";
	rename -uid "7FE55CDA-407D-7D97-E8F5-6AB2C94ACF90";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		4.1633363423443272e-17 0.9889330522182388 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 -0.98893305221824157
		4.1633363423443272e-17 -0.9889330522182388 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 0.98893305221822914
		-0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 -0.98893305221823979
		0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 -2.1958724887710419e-16 0.98893305221824157
		4.1633363423443272e-17 0.9889330522182388 7.1054273576010019e-15
		0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 -0.9889330522182388 7.1054273576010019e-15
		-0.98893305221824035 -2.1958724887710419e-16 7.1054273576010019e-15
		4.1633363423443272e-17 0.9889330522182388 7.1054273576010019e-15
		;
createNode transform -n "temp:chest_Ctrl" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl";
	rename -uid "EC66CDAF-4E73-16ED-BA32-9A8A1534B1B3";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "temp:chest_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl";
	rename -uid "901D2141-4549-B32E-5C29-A7AF072DC3A0";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		4.1633363423443272e-17 1.0430785327837251 -1.7763568394002505e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 -1.0430785327837278
		4.1633363423443272e-17 -1.0430785327837242 -1.7763568394002505e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 1.043078532783726
		-1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 -1.0430785327837278
		1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 -4.4408920985006262e-16 1.043078532783726
		4.1633363423443272e-17 1.0430785327837251 -1.7763568394002505e-15
		1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 -1.0430785327837242 -1.7763568394002505e-15
		-1.0430785327837264 -4.4408920985006262e-16 5.3290705182007514e-15
		4.1633363423443272e-17 1.0430785327837251 -1.7763568394002505e-15
		;
createNode transform -n "temp:spine_Ctrl_space" -p "temp:ik_ctrl_space";
	rename -uid "460AA69F-4184-E500-0620-1C9F58B3C59A";
createNode transform -n "temp:spine_Ctrl" -p "temp:spine_Ctrl_space";
	rename -uid "9E2870C5-40AE-7790-76A7-8AA970B21AB5";
	addAttr -ci true -sn "fit_display" -ln "fit_display" -min 0 -max 1 -en "off:on" 
		-at "enum";
	addAttr -ci true -sn "fk_display" -ln "fk_display" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "curve_sub_ctrl_display" -ln "curve_sub_ctrl_display" -min 
		0 -max 1 -en "off:on" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 1.9721522630525295e-31 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fit_display" 1;
	setAttr -k on ".fk_display" 1;
	setAttr -k on ".curve_sub_ctrl_display" 1;
createNode nurbsCurve -n "temp:spine_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl";
	rename -uid "84E1F41E-4F20-9194-756B-66BEECE9A309";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2485521040442364 2.7536821369338074e-16 -2.248552104044224
		-5.8483692409169886e-16 3.8942946245163267e-16 -3.1799328812418981
		-2.2485521040442293 2.7536821369338183e-16 -2.248552104044224
		-3.1799328812419043 1.4011002956185187e-31 1.2327001432704876e-14
		-2.2485521040442311 -2.7536821369338168e-16 2.2485521040442351
		-1.1802204419896638e-15 -3.8942946245163267e-16 3.1799328812419194
		2.2485521040442293 -2.7536821369338183e-16 2.2485521040442369
		3.1799328812419034 -1.8190020985697336e-31 1.4956414579769165e-14
		2.2485521040442364 2.7536821369338074e-16 -2.248552104044224
		-5.8483692409169886e-16 3.8942946245163267e-16 -3.1799328812418981
		-2.2485521040442293 2.7536821369338183e-16 -2.248552104044224
		;
createNode transform -n "temp:spine_sub_ctrl_space" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl";
	rename -uid "DEC73E39-4C46-D59F-D2D8-F99E53CB1AC7";
createNode transform -n "temp:spine_sub_Ctrl" -p "temp:spine_sub_ctrl_space";
	rename -uid "87843495-4169-53DC-C500-CBA52E3B5516";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 0 -4.2632564145606024e-14 -1.9721522630525295e-31 ;
createNode nurbsCurve -n "temp:spine_sub_CtrlShape" -p "temp:spine_sub_Ctrl";
	rename -uid "9EE780D2-4559-C17D-0765-958E9D4F7795";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		6.3285229292198063e-17 0.94403305988006958 4.4408920985006262e-15
		6.3285229292198063e-17 4.241051954068098e-14 -0.94403305988002995
		6.3285229292198063e-17 -0.9440330598799842 4.4408920985006262e-15
		6.3285229292198063e-17 4.241051954068098e-14 0.94403305988002995
		-0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 4.241051954068098e-14 -0.94403305988002639
		0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 4.241051954068098e-14 0.94403305988002995
		6.3285229292198063e-17 0.94403305988006958 4.4408920985006262e-15
		0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 -0.9440330598799842 4.4408920985006262e-15
		-0.94403305988002839 4.241051954068098e-14 6.2172489379008766e-15
		6.3285229292198063e-17 0.94403305988006958 4.4408920985006262e-15
		;
createNode transform -n "temp:spine_Ctrl" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl";
	rename -uid "821BBB77-43A9-7BF1-398A-49921CDA430D";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "temp:spine_CtrlShape" -p "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl";
	rename -uid "2DFD29C1-4A57-9960-3E59-1EBB37D1542A";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		-6.1629758220391547e-33 1.0037929107292245 3.5527136788005009e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 -1.0037929107292296
		-6.1629758220391547e-33 -1.0037929107292245 3.5527136788005009e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 1.0037929107292296
		-1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 -1.0037929107292207
		1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 -2.2288680028941787e-16 1.0037929107292296
		-6.1629758220391547e-33 1.0037929107292245 3.5527136788005009e-15
		1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 -1.0037929107292245 3.5527136788005009e-15
		-1.0037929107292258 -2.2288680028941787e-16 5.3290705182007514e-15
		-6.1629758220391547e-33 1.0037929107292245 3.5527136788005009e-15
		;
createNode transform -n "temp:upVec_Ctrl_space" -p "temp:spine_Ctrl_space";
	rename -uid "F12D72B0-4A83-DF04-4E8A-C381768A23C9";
	setAttr ".t" -type "double3" -0.13828114467012398 6.7086543307026814 -9.656325252554522 ;
createNode transform -n "temp:fk_init_upVec_Ctrl" -p "temp:upVec_Ctrl_space";
	rename -uid "8988ED54-46EE-8F4F-8E52-C59AAE13A928";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_init_upVec_CtrlShape" -p "temp:fk_init_upVec_Ctrl";
	rename -uid "44C5F971-418D-5572-0985-53B51A3C8FD9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 0.40269488303245554 -0.40269488303245732
		0.40269488303245554 0.40269488303245554 0.40269488303245377
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 -0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 0.40269488303245377
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 -0.40269488303245554 -0.40269488303245732
		0.40269488303245554 0.40269488303245554 -0.40269488303245732
		-0.40269488303245554 0.40269488303245554 -0.40269488303245732
		;
createNode transform -n "temp:spine_curve" -p "temp:ik_spine";
	rename -uid "EE669416-4A1A-7B9D-26C6-E5AE0A9AC75B";
createNode bezierCurve -n "bezierShape1" -p "temp:spine_curve";
	rename -uid "469A10D5-4979-C6C4-6E34-4B9AA0C9FE51";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.910522504832138e-31 5.1528527950028264 0
		-1.3322676295501878e-15 8.6710672127528845 -1.9721522630525295e-31
		-4.0245584642661934e-16 13.375480456701014 0
		-4.0245584642661934e-16 17.28268512563892 0
		;
createNode transform -n "temp:offset_Fk" -p "temp:Spine_component";
	rename -uid "BF5E238F-4885-AFFD-A693-ADBB798B4579";
createNode transform -n "temp:init_on_curve_space" -p "temp:offset_Fk";
	rename -uid "22DB695E-44A6-CBF5-51A5-D1830ABEF490";
createNode transform -n "temp:init_spineA_space" -p "temp:init_on_curve_space";
	rename -uid "0400DD5E-41B9-6943-AFC1-44BD9FABB1C2";
createNode transform -n "temp:twist_spineA" -p "temp:init_spineA_space";
	rename -uid "B9ED3420-4F9B-5871-22B9-099EFECB8A62";
createNode aimConstraint -n "temp:init_spineA_space_aimConstraint1" -p "temp:init_spineA_space";
	rename -uid "3242BC20-465A-5AE7-077A-CA99459586E8";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineB_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 14.919429362848538 -2.3065762020292835e-15 1.7615887966663944e-14 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_spineB_space" -p "temp:init_on_curve_space";
	rename -uid "E0E71630-4B41-7CD9-3F1A-A5AC1884745B";
createNode transform -n "temp:twist_spineB" -p "temp:init_spineB_space";
	rename -uid "472EA897-40BB-510B-401F-4EA840B76FCC";
createNode aimConstraint -n "temp:init_spineB_space_aimConstraint1" -p "temp:init_spineB_space";
	rename -uid "FE00BED3-4CE1-65A7-66D2-35851BF33A47";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineC_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -18.466281315192838 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_spineC_space" -p "temp:init_on_curve_space";
	rename -uid "55FC7ACD-4D1E-0C69-3A6B-258BA8EB76EB";
createNode transform -n "temp:twist_spineC" -p "temp:init_spineC_space";
	rename -uid "FC504CD3-4C7E-04BB-7ED8-E1B93CE323C8";
createNode aimConstraint -n "temp:init_spineC_space_aimConstraint1" -p "temp:init_spineC_space";
	rename -uid "9A2A2B85-4C96-280A-18FA-0BBAC69511DB";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineD_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -16.566154055350488 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_spineD_space" -p "temp:init_on_curve_space";
	rename -uid "970BA3EA-4DE6-317C-3914-70A60CF605F1";
createNode transform -n "temp:twist_spineD" -p "temp:init_spineD_space";
	rename -uid "0026D58B-4285-6EF9-03AF-46800B85E08F";
createNode aimConstraint -n "temp:init_spineD_space_aimConstraint1" -p "temp:init_spineD_space";
	rename -uid "7AA422E3-47BA-7959-7CB1-40861D42F21D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "output_spine_end_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 23.950862842443442 1.9207835621546834e-15 -9.0556683396695464e-15 ;
	setAttr -k on ".w0";
createNode transform -n "temp:init_chest_space" -p "temp:init_on_curve_space";
	rename -uid "50F41F9A-4E1B-4A41-2CCB-0AB497BB8612";
createNode transform -n "temp:twist_chest" -p "temp:init_chest_space";
	rename -uid "95900454-4837-7E20-D3B2-2BB75296BC72";
createNode aimConstraint -n "temp:init_chest_space_aimConstraint1" -p "temp:init_chest_space";
	rename -uid "5B36D199-47E8-1B81-2EBA-98804523B907";
	addAttr -dcb 0 -ci true -sn "w0" -ln "init_spineD_spaceW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 -1 ;
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" 23.950862842443442 1.9207835621546834e-15 -9.0556683396695464e-15 ;
	setAttr -k on ".w0";
createNode transform -n "temp:output_spine_end_space" -p "temp:init_on_curve_space";
	rename -uid "2F0AB65E-49D7-F3F2-B564-D5A414F1D5F0";
createNode transform -n "temp:fk_spine_jnt_space" -p "temp:offset_Fk";
	rename -uid "6DA4B794-4E9E-7C54-58DF-8C921B9AB1E4";
createNode transform -n "temp:fk_spineA_jnt_space" -p "temp:fk_spine_jnt_space";
	rename -uid "6866DE1F-4EC2-8EE1-C92F-C8957C2F3098";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "temp:fk_spineA_jnt" -p "temp:fk_spineA_jnt_space";
	rename -uid "6064BA57-4028-A4E7-E5C7-A8B21833B354";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.9999989498779418 0.0011835977894311138 0.00083626508144769916 0
		 -0.001270705721568167 0.99356324289719744 0.11327165431198495 0 -0.00069681416659599419 -0.11327259800974594 0.99356370353900292 0
		 0 96.981148568509965 2.0338004703341883 1;
	setAttr ".radi" 0.63495623330098816;
createNode transform -n "temp:fk_spineB_jnt_space" -p "temp:fk_spineA_jnt";
	rename -uid "6F58D7C7-4A1F-0ADE-68D0-1DB2E894D1FB";
createNode joint -n "temp:fk_spineB_jnt" -p "temp:fk_spineB_jnt_space";
	rename -uid "26C91663-48BD-C5B3-A1B5-CEBB86C4441D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -3.5527136788005009e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -0.015511342278313286 109.10944804347419 3.41649307228115 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_spineC_jnt_space" -p "temp:fk_spineB_jnt";
	rename -uid "A6EACEA5-4A72-ED2A-6247-75BAC7BC9A17";
createNode joint -n "temp:fk_spineC_jnt" -p "temp:fk_spineC_jnt_space";
	rename -uid "8533A89C-4D21-DD38-8BB8-B897D39F4404";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-17 121.90116773063582 2.9354727293561167 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_spineD_jnt_space" -p "temp:fk_spineC_jnt";
	rename -uid "7473CD1F-4E43-84DF-BB38-069B3DF008A0";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "temp:fk_spineD_jnt" -p "temp:fk_spineD_jnt_space";
	rename -uid "3139B020-4E08-0724-A6C0-C280A9729496";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-17 121.90116773063582 2.9354727293561167 1;
	setAttr ".ds" 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_chest_jnt_space" -p "temp:fk_spineD_jnt";
	rename -uid "A6688145-4D0D-196A-466B-1081EB51915A";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode joint -n "temp:fk_chest_jnt" -p "temp:fk_chest_jnt_space";
	rename -uid "3B9DA774-4AC1-6337-5522-03B0843A98B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-16 7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-17 121.90116773063582 2.9354727293561167 1;
	setAttr ".radi" 0.5;
createNode transform -n "temp:fk_ctrl_space" -p "temp:offset_Fk";
	rename -uid "A15111EC-4B68-E8FF-AE56-9698814B1636";
createNode transform -n "temp:fk_spineA_Ctrl_space" -p "temp:fk_ctrl_space";
	rename -uid "BD197B49-4566-D38A-F529-62A208988A69";
createNode transform -n "temp:fk_spineA_Ctrl" -p "temp:fk_spineA_Ctrl_space";
	rename -uid "05CEF295-471B-56E8-7941-94A3EF405B02";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineA_CtrlShape" -p "temp:fk_spineA_Ctrl";
	rename -uid "65AD4D43-4D22-26A2-D3EF-589FCEDEAA9A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6942000198802147 -3.7775509690401307e-06 -1.6836386124263596
		-9.9226182825873366e-16 -5.3422638129168455e-06 -2.3810245598283788
		-1.6942000198802127 -3.7775509690401307e-06 -1.68363861242636
		-2.3959606454873668 -1.3426785825313448e-16 -1.2975921133525078e-15
		-1.6942000198802152 3.7775509687750644e-06 1.6836386124263583
		-1.4398204850607499e-15 5.3422638126517784e-06 2.3810245598283788
		1.6942000198802116 3.7775509687750644e-06 1.6836386124263583
		2.3959606454873668 -1.3426785825313448e-16 7.0080933097277383e-16
		1.6942000198802147 -3.7775509690401307e-06 -1.6836386124263596
		-9.9226182825873366e-16 -5.3422638129168455e-06 -2.3810245598283788
		-1.6942000198802127 -3.7775509690401307e-06 -1.68363861242636
		;
createNode nurbsCurve -n "temp:fk_spineA_Ctrl_subShape" -p "temp:fk_spineA_Ctrl";
	rename -uid "1C7ED67B-4518-F5C6-B452-52B76739FD7C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.25740178698788735 3.6440851458260229e-06 1.630960714765163
		0.25740178698788468 3.6440851458260229e-06 1.630960714765163
		-1.8318679906315083e-15 4.4674016539795324e-06 2.0148625962506981
		-0.25740178698788735 3.6440851458260229e-06 1.630960714765163
		;
createNode transform -n "temp:fk_spineB_Ctrl_space" -p "temp:fk_spineA_Ctrl";
	rename -uid "6B76A8C0-431A-6D5B-13B5-3DB558C461D9";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_spineB_Ctrl" -p "temp:fk_spineB_Ctrl_space";
	rename -uid "0AE8F073-4A23-DDE6-B45F-B19017493EE2";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineB_CtrlShape" -p "temp:fk_spineB_Ctrl";
	rename -uid "E818C778-4350-7188-B58B-FD9B972BA26B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6635310989700296 -3.7969302175303099e-15 -1.6635310989700292
		-9.8061968104408285e-16 -3.7969302175218715e-15 -2.3525882415928256
		-1.6635310989700294 -3.7969302175303099e-15 -1.6635310989700296
		-2.3525882415928252 -3.7969302175506823e-15 -1.4415552085367267e-15
		-1.6635310989700294 -3.7969302175710554e-15 1.6635310989700278
		-1.4210982432513108e-15 -3.796930217579493e-15 2.3525882415928239
		1.6635310989700276 -3.7969302175710554e-15 1.6635310989700278
		2.3525882415928243 -3.7969302175506823e-15 5.0393716977126246e-16
		1.6635310989700296 -3.7969302175303099e-15 -1.6635310989700292
		-9.8061968104408285e-16 -3.7969302175218715e-15 -2.3525882415928256
		-1.6635310989700294 -3.7969302175303099e-15 -1.6635310989700296
		;
createNode nurbsCurve -n "temp:fk_spineB_Ctrl_subShape" -p "temp:fk_spineB_Ctrl";
	rename -uid "9EC6A905-4DBE-62D8-2D1B-2A867E75E975";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.30501877693098151 -3.7969302184175978e-15 1.5227958375302459
		0.3050187769309784 -3.7969302184175978e-15 1.5227958375302459
		-1.5543122344752192e-15 -3.7969302184175978e-15 1.9803240029267142
		-0.30501877693098151 -3.7969302184175978e-15 1.5227958375302459
		;
createNode transform -n "temp:fk_spineC_Ctrl_space" -p "temp:fk_spineB_Ctrl";
	rename -uid "5038F58B-4AC5-94A6-C686-3CAEADC5B0C1";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_spineC_Ctrl" -p "temp:fk_spineC_Ctrl_space";
	rename -uid "0E4A4CBE-40AD-E61A-B42D-4F9DDBAF3C5A";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineC_CtrlShape" -p "temp:fk_spineC_Ctrl";
	rename -uid "60835EBD-4671-1179-01AC-9C9329DA08FD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6552016897530453 1.1035767861211632e-06 -1.6544143425376965
		-9.3742592252684569e-05 1.5617141331664142e-06 -2.3395997025882078
		-1.6553342617983786 1.1050205251800227e-06 -1.654279287386613
		-2.3409024207038645 1.0208838496783557e-09 9.5498413159090557e-05
		-1.6552016897530513 -1.1035767737560542e-06 1.6544143425376885
		9.3742592240307114e-05 -1.5617141208013052e-06 2.3395997025882056
		1.6553342617983697 -1.1050205128149138e-06 1.6542792873866121
		2.3409024207038627 -1.0208714984472067e-09 -9.5498413164709327e-05
		1.6552016897530453 1.1035767861211632e-06 -1.6544143425376965
		-9.3742592252684569e-05 1.5617141331664142e-06 -2.3395997025882078
		-1.6553342617983786 1.1050205251800227e-06 -1.654279287386613
		;
createNode nurbsCurve -n "temp:fk_spineC_Ctrl_subShape" -p "temp:fk_spineC_Ctrl";
	rename -uid "E882C254-40F4-334F-2115-DD8DB31B749D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506573 6.1756155744774333e-15 1.4956688250853725
		0.26640775810505452 6.1756155744774333e-15 1.4956688250853725
		-5.6760152133961128e-15 6.1756155744774333e-15 1.8952804622429644
		-0.26640775810506573 6.1756155744774333e-15 1.4956688250853725
		;
createNode transform -n "temp:fk_spineD_Ctrl_space" -p "temp:fk_spineC_Ctrl";
	rename -uid "78D8B636-4F24-9DD8-BC5E-F5A756F53367";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineD_Ctrl" -p "temp:fk_spineD_Ctrl_space";
	rename -uid "784F9BDA-4B66-26BB-7003-8D8E6BD96BB8";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_spineD_CtrlShape" -p "temp:fk_spineD_Ctrl";
	rename -uid "E13103B6-4836-8868-BFB7-F99EBF8C550A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.655201689753045 1.1035767891465209e-06 -1.6544143425376974
		-9.3742592252906614e-05 1.5617141361917719e-06 -2.3395997025882087
		-1.6553342617983788 1.1050205282053804e-06 -1.6542792873866139
		-2.3409024207038649 1.0208868750360978e-09 9.5498413158146001e-05
		-1.6552016897530515 -1.1035767707306965e-06 1.6544143425376876
		9.3742592240085056e-05 -1.5617141177759475e-06 2.3395997025882047
		1.6553342617983695 -1.105020509789556e-06 1.6542792873866112
		2.3409024207038622 -1.0208684730894646e-09 -9.5498413165640006e-05
		1.655201689753045 1.1035767891465209e-06 -1.6544143425376974
		-9.3742592252906614e-05 1.5617141361917719e-06 -2.3395997025882087
		-1.6553342617983788 1.1050205282053804e-06 -1.6542792873866139
		;
createNode nurbsCurve -n "temp:fk_spineD_Ctrl_subShape" -p "temp:fk_spineD_Ctrl";
	rename -uid "A8BB7D03-4682-390D-F368-9A94ED4A8ECD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506595 9.2009733165809848e-15 1.4956688250853714
		0.26640775810505429 9.2009733165809848e-15 1.4956688250853714
		-5.8980598183211441e-15 9.2009733165809848e-15 1.8952804622429635
		-0.26640775810506595 9.2009733165809848e-15 1.4956688250853714
		;
createNode transform -n "temp:fk_chest_Ctrl_space" -p "temp:fk_spineD_Ctrl";
	rename -uid "BF0F4FE5-4B89-F49F-7A01-E998AAB0C3CF";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_chest_Ctrl" -p "temp:fk_chest_Ctrl_space";
	rename -uid "ED39F80F-4EC7-B4F6-5DEA-0B8A3E41C731";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "temp:fk_chest_CtrlShape" -p "temp:fk_chest_Ctrl";
	rename -uid "C6B289CC-4469-0026-1EE6-7C8ABEAA1CAB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6552016897530462 1.1035767785994022e-06 -1.6544143425376947
		-9.3742592251796391e-05 1.5617141256446532e-06 -2.339599702588206
		-1.6553342617983777 1.1050205176582617e-06 -1.6542792873866112
		-2.340902420703864 1.0208763279173638e-09 9.5498413160644002e-05
		-1.6552016897530504 -1.1035767812778152e-06 1.6544143425376903
		9.3742592241195279e-05 -1.5617141283230662e-06 2.3395997025882074
		1.6553342617983706 -1.1050205203366747e-06 1.6542792873866139
		2.3409024207038631 -1.0208790202081985e-09 -9.5498413163142004e-05
		1.6552016897530462 1.1035767785994022e-06 -1.6544143425376947
		-9.3742592251796391e-05 1.5617141256446532e-06 -2.339599702588206
		-1.6553342617983777 1.1050205176582617e-06 -1.6542792873866112
		;
createNode nurbsCurve -n "temp:fk_chest_Ctrl_subShape" -p "temp:fk_chest_Ctrl";
	rename -uid "5A9C8F3D-4B68-CB2D-A632-8398101767F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506484 -1.3461454173580023e-15 1.495668825085374
		0.2664077581050554 -1.3461454173580023e-15 1.495668825085374
		-4.7878367936959876e-15 -1.3461454173580023e-15 1.8952804622429662
		-0.26640775810506484 -1.3461454173580023e-15 1.495668825085374
		;
createNode transform -n "temp:fk_scale_space_init" -p "temp:offset_Fk";
	rename -uid "C1DA9E9D-4E64-3F06-F1C8-6FA24F3875F4";
	setAttr ".v" no;
createNode transform -n "temp:chest_local_init" -p "temp:fk_scale_space_init";
	rename -uid "F989F6CF-4E34-A59C-7AEE-69A8500C8658";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineA_local_init" -p "temp:fk_scale_space_init";
	rename -uid "9220CA9D-43DC-5226-3779-B0A703455EE6";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineB_local_init" -p "temp:fk_scale_space_init";
	rename -uid "2182A3D5-4262-19D7-2E58-708F567BAB3E";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "temp:fk_spineC_local_init" -p "temp:fk_scale_space_init";
	rename -uid "C943DB39-42AC-67DE-B8B1-EB81902B648E";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:fk_spineD_local_init" -p "temp:fk_scale_space_init";
	rename -uid "96E66160-4517-E1C6-867C-19921795748E";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "temp:output" -p "temp:Spine_component";
	rename -uid "1ABBBE91-46B0-AA19-8656-70AE9DCA78FB";
createNode transform -n "temp:end_plug" -p "temp:output";
	rename -uid "A1C5B4C4-43F6-EAC0-8F90-4C85F6BF406B";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0B40CE5A-4C20-8C1F-5DE6-B8A4AC75A6C7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FEF873D4-485F-AF96-DA5B-6A8984F2B407";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6435DAA5-4AE0-D5D2-C920-8782871D61AC";
createNode displayLayerManager -n "layerManager";
	rename -uid "FEB11B72-49AC-4554-2013-00BD5DDC3B97";
createNode displayLayer -n "defaultLayer";
	rename -uid "F9CDC272-4C99-4DD3-E2D7-8090568FDF34";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F60409CC-4BA5-0109-4817-7F8DC6A2BD12";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D277E476-4924-4584-BDE5-8A8523C6E59C";
	setAttr ".g" yes;
createNode pointOnCurveInfo -n "spineA_pointOnCurveInfo";
	rename -uid "78055E5A-4809-AA16-0A10-F3AF9D963CDB";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineA_param";
	rename -uid "96530353-41BA-8594-C1C5-AF9BBFAB8566";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode unitConversion -n "unitConversion11";
	rename -uid "6DF1DC12-4F0F-1173-4534-2DBE9B42232F";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineA_twist_combine";
	rename -uid "D1CECF58-4A1E-ADF1-F6C6-5189A664844A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineA_spine_twist_mul";
	rename -uid "EDDE0843-451E-5F10-F4D7-08B827F40708";
createNode unitConversion -n "unitConversion1";
	rename -uid "AE71349F-4614-527C-5F6E-79AC34160E44";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineA_spine_twist_remap";
	rename -uid "38E7759D-432E-D86B-7724-25A914B57A8B";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineA_chest_twist_mul";
	rename -uid "3AA60B1D-45AB-7541-A149-ED8EE613DB65";
createNode unitConversion -n "unitConversion6";
	rename -uid "1A1A9149-4913-C6EA-D7C2-2CA9F828CAC0";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineA_chest_twist_remap";
	rename -uid "EDB5A9F5-4B28-1FEB-FEBD-BBBA196CE08F";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnCurveInfo -n "spineB_pointOnCurveInfo";
	rename -uid "62D245FA-4212-8D00-A3C0-0A95AF12D4AE";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineB_param";
	rename -uid "05911217-4A38-6E9B-DBEC-F180FAAFFD4B";
createNode unitConversion -n "unitConversion12";
	rename -uid "EDA3B4D2-43EF-E626-0018-40A32816657E";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineB_twist_combine";
	rename -uid "A9876262-4089-1639-BB59-FEB31325C703";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineB_spine_twist_mul";
	rename -uid "1965E66E-45C2-AD6C-87F5-59B650133CA4";
createNode unitConversion -n "unitConversion2";
	rename -uid "C89C75BC-4D83-9C5F-C346-BABEFCDEC9A5";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineB_spine_twist_remap";
	rename -uid "095C89E4-4684-CB15-B427-ACB9F15F7161";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineB_chest_twist_mul";
	rename -uid "7A978550-4F2A-17DC-98C9-D48C42890CF4";
createNode unitConversion -n "unitConversion7";
	rename -uid "BC4DA85E-4CB6-BC0C-3DAE-40AD7607DBB2";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineB_chest_twist_remap";
	rename -uid "F4446C23-4C95-4A40-A4B6-3B8727566812";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnCurveInfo -n "spineC_pointOnCurveInfo";
	rename -uid "A8386A62-403F-1083-27E8-9A913A998B52";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineC_param";
	rename -uid "913077DC-4E35-90A6-583D-7F86E64A4EC2";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "87988D69-4F7D-518B-7210-98B2CF8721B1";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineC_twist_combine";
	rename -uid "D32ED131-471A-9088-8731-709C9D4014AE";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineC_spine_twist_mul";
	rename -uid "7D6F5235-4755-E77D-5BB1-B1BB9B9D96E7";
createNode unitConversion -n "unitConversion3";
	rename -uid "73066B38-40FB-E47C-313A-E5B244BDDEBF";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineC_spine_twist_remap";
	rename -uid "35548642-491B-9EEE-EF16-61BD27C40AEB";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineC_chest_twist_mul";
	rename -uid "DB275229-4C2C-C59B-B07F-5788F1D17CE4";
createNode unitConversion -n "unitConversion8";
	rename -uid "B834BD7F-4778-D01B-87E6-1395968AC9F0";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineC_chest_twist_remap";
	rename -uid "F855FF12-49B1-2A01-C31F-7AB251532DDE";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode decomposeMatrix -n "fk_spineB_ctrl_scaleSpaceMat_decomp";
	rename -uid "4860543B-4865-75D9-F5E2-EE8CA47BD64C";
createNode pointOnCurveInfo -n "spine_twist_end_ctrl_pointOnCurveInfo";
	rename -uid "E3ABFC3C-4A69-CC1D-8218-28928033BDF4";
createNode pointOnCurveInfo -n "chest_twist_end_ctrl_pointOnCurveInfo";
	rename -uid "6CEDBAD8-426F-CDB3-0098-32A1081ACBF5";
createNode decomposeMatrix -n "M_Spine_fit_spine_start_decomp";
	rename -uid "5BC58B01-4A77-8912-DA1F-6D9292FB3C27";
createNode decomposeMatrix -n "M_Spine_fit_spine_sub_decomp";
	rename -uid "80D8C521-4F17-A4AA-29B5-C6A7F4C9DA07";
createNode decomposeMatrix -n "M_Spine_fit_chest_sub_decomp";
	rename -uid "D88CDDEB-4E3B-7C35-5651-8DAB28291DDB";
createNode decomposeMatrix -n "M_Spine_fit_chest_decomp";
	rename -uid "A480AC5B-469C-6BC5-3242-9CA4929E2E69";
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "6FD5E92E-4152-3612-537A-34A276AA1177";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "F1B9A47E-4BAF-35B0-3DF4-618E9AA33FFC";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "1FC98B0E-493E-8030-3AA4-F7A3B9D29872";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "A3097C3A-41D2-7FCB-BF25-9E9DAC6FDEC4";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "26367351-4D53-B6F9-D1EA-2E9A28B51197";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 588\n            -height 1057\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 588\\n    -height 1057\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 588\\n    -height 1057\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FE852988-4EF5-653F-C06A-91BF94B48F43";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "M_Spine_fit_spine_localMat";
	rename -uid "F5B1703F-4DC3-A9C7-94AD-1D861E35B018";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_Spine_fit_spine_localMat_decomp";
	rename -uid "424D1039-49B7-8ACF-4C45-4FBFF763BE8B";
createNode multMatrix -n "M_Spine_fit_chest_localMat";
	rename -uid "504725DD-4010-A7EC-5C0E-22BABE4C70BC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_Spine_fit_chest_localMat_decomp";
	rename -uid "1A84BEFD-49F9-2FF8-DC79-1E92545DA3F9";
createNode decomposeMatrix -n "parent_space_decomp";
	rename -uid "D7F0DAE5-4ABE-91D2-C39E-979F4CE84FEE";
createNode decomposeMatrix -n "fk_spineC_ctrl_scaleSpaceMat_decomp";
	rename -uid "4AB89036-4EAB-12C6-286E-0EBE891DAD61";
createNode decomposeMatrix -n "fk_spineA_ctrl_scaleSpaceMat_decomp";
	rename -uid "EDC1FD1B-4D8C-C053-9801-04BB8750FB9C";
createNode pointOnCurveInfo -n "spineD_pointOnCurveInfo";
	rename -uid "97609650-498A-072E-9A6E-C880843E053F";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "chest_pointOnCurveInfo";
	rename -uid "45B21FFC-40A3-23EA-2BFF-66BAFB347DF3";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineD_param";
	rename -uid "BE6F053C-4550-ADB1-B287-F3B28DD94808";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode multiplyDivide -n "chest_param";
	rename -uid "9EABF152-4F48-2EAB-1143-DC94FC0E8CEE";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "spine_param";
	rename -uid "8FCDC6E7-4851-EB95-FDB3-B3A824C0FAFC";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode decomposeMatrix -n "fk_spineD_ctrl_scaleSpaceMat_decomp";
	rename -uid "0FB0AC98-4534-C2F9-01C7-35828CEB2B00";
createNode decomposeMatrix -n "fk_chest_ctrl_scaleSpaceMat_decomp";
	rename -uid "252DD084-4CD5-803A-FB2C-739D77F595E7";
createNode decomposeMatrix -n "fk_spineC_jnt_decomp";
	rename -uid "8EB55A7D-4051-0285-FFDC-219B64F71649";
createNode multMatrix -n "fk_chest_ctrl_scaleSpaceMat";
	rename -uid "5CEDBA5A-42E3-874A-826B-839C04CD8205";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineD_ctrl_scaleSpaceMat";
	rename -uid "A2E54478-4CB6-0680-C493-BFAF75229D99";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineA_ctrl_scaleSpaceMat";
	rename -uid "39FBDC49-4CEE-926C-FE26-119FB553F2DD";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineB_ctrl_scaleSpaceMat";
	rename -uid "7B27B1AA-49B3-4365-9DE8-7DA19D7A4A4D";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineC_ctrl_scaleSpaceMat";
	rename -uid "5888046B-4C09-FDF3-51F2-FEAB89D66D70";
	setAttr -s 2 ".i";
createNode nodeGraphEditorBookmarks -n "MayaNodeEditorBookmarks";
	rename -uid "5543B6EB-4BC4-A8D9-423B-DE91B2BA7812";
createNode nodeGraphEditorBookmarkInfo -n "nodeView1";
	rename -uid "D2AA6434-4D52-252C-AFDD-C7A17A668E55";
	setAttr ".nm" -type "string" "nodeView1";
	setAttr ".vl" -type "double2" -1601.55485972681 -2014.0315689002935 ;
	setAttr ".vh" -type "double2" 3763.0043644154612 1303.9721083892232 ;
	setAttr -s 59 ".ni";
	setAttr ".ni[0].x" 865.7247314453125;
	setAttr ".ni[0].y" 160.18220520019531;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 814.00653076171875;
	setAttr ".ni[1].y" -163.73379516601563;
	setAttr ".ni[1].nvs" 18304;
	setAttr ".ni[2].x" 706.781982421875;
	setAttr ".ni[2].y" -1134.77880859375;
	setAttr ".ni[2].nvs" 18305;
	setAttr ".ni[3].x" 668.42742919921875;
	setAttr ".ni[3].y" -793.0870361328125;
	setAttr ".ni[3].nvs" 18305;
	setAttr ".ni[4].x" 861.50335693359375;
	setAttr ".ni[4].y" -458.933837890625;
	setAttr ".ni[4].nvs" 18305;
	setAttr ".ni[5].x" 2127.142822265625;
	setAttr ".ni[5].y" -585.71429443359375;
	setAttr ".ni[5].nvs" 18304;
	setAttr ".ni[6].x" 2432.857177734375;
	setAttr ".ni[6].y" -651.4285888671875;
	setAttr ".ni[6].nvs" 18304;
	setAttr ".ni[7].x" 2432.857177734375;
	setAttr ".ni[7].y" -521.4285888671875;
	setAttr ".ni[7].nvs" 18304;
	setAttr ".ni[8].x" 2432.857177734375;
	setAttr ".ni[8].y" -261.42855834960938;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1804.5341796875;
	setAttr ".ni[9].y" -490.34011840820313;
	setAttr ".ni[9].nvs" 18305;
	setAttr ".ni[10].x" 1820.8056640625;
	setAttr ".ni[10].y" -212.01368713378906;
	setAttr ".ni[10].nvs" 18305;
	setAttr ".ni[11].x" 2432.857177734375;
	setAttr ".ni[11].y" -391.42855834960938;
	setAttr ".ni[11].nvs" 18304;
	setAttr ".ni[12].x" 2125.71435546875;
	setAttr ".ni[12].y" -325.71429443359375;
	setAttr ".ni[12].nvs" 18304;
	setAttr ".ni[13].x" -1189.8187255859375;
	setAttr ".ni[13].y" -876.57537841796875;
	setAttr ".ni[13].nvs" 18304;
	setAttr ".ni[14].x" 335.46282958984375;
	setAttr ".ni[14].y" -936.452392578125;
	setAttr ".ni[14].nvs" 18304;
	setAttr ".ni[15].x" 1809.70166015625;
	setAttr ".ni[15].y" 165.00433349609375;
	setAttr ".ni[15].nvs" 18305;
	setAttr ".ni[16].x" -632.67584228515625;
	setAttr ".ni[16].y" -746.57537841796875;
	setAttr ".ni[16].nvs" 18304;
	setAttr ".ni[17].x" 2432.857177734375;
	setAttr ".ni[17].y" -781.4285888671875;
	setAttr ".ni[17].nvs" 18304;
	setAttr ".ni[18].x" 2138.571533203125;
	setAttr ".ni[18].y" -65.714286804199219;
	setAttr ".ni[18].nvs" 18304;
	setAttr ".ni[19].x" 2132.857177734375;
	setAttr ".ni[19].y" -1105.7142333984375;
	setAttr ".ni[19].nvs" 18304;
	setAttr ".ni[20].x" -894.10443115234375;
	setAttr ".ni[20].y" -616.57537841796875;
	setAttr ".ni[20].nvs" 18304;
	setAttr ".ni[21].x" 2432.857177734375;
	setAttr ".ni[21].y" -1171.4285888671875;
	setAttr ".ni[21].nvs" 18304;
	setAttr ".ni[22].x" -632.67584228515625;
	setAttr ".ni[22].y" -1266.575439453125;
	setAttr ".ni[22].nvs" 18304;
	setAttr ".ni[23].x" -1451.247314453125;
	setAttr ".ni[23].y" -876.57537841796875;
	setAttr ".ni[23].nvs" 18304;
	setAttr ".ni[24].x" -1189.8187255859375;
	setAttr ".ni[24].y" -616.57537841796875;
	setAttr ".ni[24].nvs" 18304;
	setAttr ".ni[25].x" 1793.7662353515625;
	setAttr ".ni[25].y" -1130.7625732421875;
	setAttr ".ni[25].nvs" 18305;
	setAttr ".ni[26].x" -894.10443115234375;
	setAttr ".ni[26].y" -1266.575439453125;
	setAttr ".ni[26].nvs" 18304;
	setAttr ".ni[27].x" -632.67584228515625;
	setAttr ".ni[27].y" -1006.5753784179688;
	setAttr ".ni[27].nvs" 18304;
	setAttr ".ni[28].x" -1189.8187255859375;
	setAttr ".ni[28].y" -1460.861083984375;
	setAttr ".ni[28].nvs" 18304;
	setAttr ".ni[29].x" -894.10443115234375;
	setAttr ".ni[29].y" -1136.575439453125;
	setAttr ".ni[29].nvs" 18304;
	setAttr ".ni[30].x" -371.24725341796875;
	setAttr ".ni[30].y" -1136.575439453125;
	setAttr ".ni[30].nvs" 18304;
	setAttr ".ni[31].x" 2432.857177734375;
	setAttr ".ni[31].y" -911.4285888671875;
	setAttr ".ni[31].nvs" 18304;
	setAttr ".ni[32].x" 2132.857177734375;
	setAttr ".ni[32].y" -845.71429443359375;
	setAttr ".ni[32].nvs" 18304;
	setAttr ".ni[33].x" -894.10443115234375;
	setAttr ".ni[33].y" -876.57537841796875;
	setAttr ".ni[33].nvs" 18304;
	setAttr ".ni[34].x" 2432.857177734375;
	setAttr ".ni[34].y" -131.42857360839844;
	setAttr ".ni[34].nvs" 18304;
	setAttr ".ni[35].x" 2432.857177734375;
	setAttr ".ni[35].y" -1041.4285888671875;
	setAttr ".ni[35].nvs" 18304;
	setAttr ".ni[36].x" 2432.857177734375;
	setAttr ".ni[36].y" -1.4285714626312256;
	setAttr ".ni[36].nvs" 18304;
	setAttr ".ni[37].x" -1189.8187255859375;
	setAttr ".ni[37].y" -1006.5753784179688;
	setAttr ".ni[37].nvs" 18304;
	setAttr ".ni[38].x" -632.67584228515625;
	setAttr ".ni[38].y" -1136.575439453125;
	setAttr ".ni[38].nvs" 18304;
	setAttr ".ni[39].x" -1189.8187255859375;
	setAttr ".ni[39].y" -1266.575439453125;
	setAttr ".ni[39].nvs" 18304;
	setAttr ".ni[40].x" -894.10443115234375;
	setAttr ".ni[40].y" -1006.5753784179688;
	setAttr ".ni[40].nvs" 18304;
	setAttr ".ni[41].x" 335.46282958984375;
	setAttr ".ni[41].y" -1132.1666259765625;
	setAttr ".ni[41].nvs" 18304;
	setAttr ".ni[42].x" -894.10443115234375;
	setAttr ".ni[42].y" -1396.575439453125;
	setAttr ".ni[42].nvs" 18304;
	setAttr ".ni[43].x" 1786.4835205078125;
	setAttr ".ni[43].y" -747.6446533203125;
	setAttr ".ni[43].nvs" 18305;
	setAttr ".ni[44].x" -371.24725341796875;
	setAttr ".ni[44].y" -940.861083984375;
	setAttr ".ni[44].nvs" 18304;
	setAttr ".ni[45].x" -894.10443115234375;
	setAttr ".ni[45].y" -746.57537841796875;
	setAttr ".ni[45].nvs" 18304;
	setAttr ".ni[46].x" -1189.8187255859375;
	setAttr ".ni[46].y" -746.57537841796875;
	setAttr ".ni[46].nvs" 18304;
	setAttr ".ni[47].x" -894.10443115234375;
	setAttr ".ni[47].y" -1526.575439453125;
	setAttr ".ni[47].nvs" 18304;
	setAttr ".ni[48].x" 1389.7900390625;
	setAttr ".ni[48].y" 265.34335327148438;
	setAttr ".ni[48].nvs" 18305;
	setAttr ".ni[49].x" 2890;
	setAttr ".ni[49].y" -1447.142822265625;
	setAttr ".ni[49].nvs" 18304;
	setAttr ".ni[50].x" 431.90707397460938;
	setAttr ".ni[50].y" -441.84756469726563;
	setAttr ".ni[50].nvs" 18305;
	setAttr ".ni[51].x" 1260.4000244140625;
	setAttr ".ni[51].y" -132.83833312988281;
	setAttr ".ni[51].nvs" 18306;
	setAttr ".ni[52].x" 1267.4097900390625;
	setAttr ".ni[52].y" -379.9150390625;
	setAttr ".ni[52].nvs" 18306;
	setAttr ".ni[53].x" 1222.1114501953125;
	setAttr ".ni[53].y" -722.4666748046875;
	setAttr ".ni[53].nvs" 18306;
	setAttr ".ni[54].x" 1269.8636474609375;
	setAttr ".ni[54].y" -1173.06689453125;
	setAttr ".ni[54].nvs" 18305;
	setAttr ".ni[55].x" 1479.5047607421875;
	setAttr ".ni[55].y" -848.7994384765625;
	setAttr ".ni[55].nvs" 18304;
	setAttr ".ni[56].x" 1484.34521484375;
	setAttr ".ni[56].y" -1073.6668701171875;
	setAttr ".ni[56].nvs" 18304;
	setAttr ".ni[57].x" 1493.405029296875;
	setAttr ".ni[57].y" -510.44442749023438;
	setAttr ".ni[57].nvs" 18304;
	setAttr ".ni[58].x" 1528.134521484375;
	setAttr ".ni[58].y" -106.39633941650391;
	setAttr ".ni[58].nvs" 18304;
createNode multMatrix -n "fk_spineB_localMat";
	rename -uid "67975C15-44DA-65A4-0AD8-06AD8B7758F3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineB_localMat_decomp";
	rename -uid "31D43E69-4ED4-9F92-CD2F-BD8D92A098A4";
createNode multMatrix -n "fk_spineC_localMat";
	rename -uid "CDCFA655-4333-789E-CB4B-29B5107E2843";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_localMat_decomp";
	rename -uid "B92112C1-47DC-E25A-1D0B-28A5E6DDBCDF";
createNode multMatrix -n "fk_spineD_localMat";
	rename -uid "E1ECD152-4E4F-7724-E2E9-93B1A661AAEA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_localMat_decomp";
	rename -uid "74B6C4FC-419D-AF42-5BC9-26A74EC36BBF";
createNode multMatrix -n "fk_chest_localMat";
	rename -uid "746D0FD7-420C-8581-EBCD-E3A2340BE26B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_decomp";
	rename -uid "5D285442-4E44-78BD-FBEF-D2805A692437";
createNode remapValue -n "spineD_chest_twist_remap";
	rename -uid "3E2BA633-4B76-7AAB-019E-608B4DDBEDC2";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineD_chest_twist_mul";
	rename -uid "0E79256E-4A14-01B3-F8D2-B5910FF79100";
createNode unitConversion -n "unitConversion14";
	rename -uid "86E9858D-41EC-B509-AFB0-8BB3936AE0B4";
	setAttr ".cf" 57.295779513082323;
createNode plusMinusAverage -n "spineD_twist_combine";
	rename -uid "4B03D33D-4365-2F9A-93D1-ECBE79386C2A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "spineD_spine_twist_remap";
	rename -uid "555513E2-4954-6DA5-C452-9E87817630F3";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineD_spine_twist_mul";
	rename -uid "FD267416-4A16-11F8-A9D6-52B6A22456CB";
createNode unitConversion -n "unitConversion15";
	rename -uid "BF18E4FE-4827-32AA-C2CB-A19AA6B4BDA1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion16";
	rename -uid "04541158-4067-3EF6-7282-5C8C828D9B5B";
	setAttr ".cf" 0.017453292519943295;
createNode remapValue -n "chest_chest_twist_remap";
	rename -uid "9221AA89-4D7B-1977-56CD-9C9145607C95";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "chest_spine_twist_remap";
	rename -uid "0FD7DB31-4D08-5DCE-CFA9-59B2D2657507";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_chest_twist_mul";
	rename -uid "5BAA37A0-4B22-C9F4-32A4-4DB1BC6B10D4";
createNode plusMinusAverage -n "chest_twist_combine";
	rename -uid "F2A2612B-4F21-7B26-2239-268FCEC16F16";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion17";
	rename -uid "D69FE7F6-47A7-E364-42B5-669604C74789";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spine_twist_mul";
	rename -uid "A5191EED-469C-1120-42B9-B389E7E37CC5";
createNode unitConversion -n "unitConversion18";
	rename -uid "D8F9F42F-47E6-8222-7EC0-B7AA9921D756";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion19";
	rename -uid "61B46EB8-48D2-577A-6E2C-66A7C7525219";
	setAttr ".cf" 0.017453292519943295;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7AFE91DA-49E7-BC6D-B250-79B280E48F53";
	setAttr -s 9 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1678.9366853763845 1815.1384469465399 ;
	setAttr ".tgi[0].vh" -type "double2" 376.73400599465924 3874.0669365606441 ;
	setAttr -s 146 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1820;
	setAttr ".tgi[0].ni[0].y" 3352.857177734375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2225.71435546875;
	setAttr ".tgi[0].ni[1].y" 567.14288330078125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1490;
	setAttr ".tgi[0].ni[2].y" 3108.571533203125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -2134.28564453125;
	setAttr ".tgi[0].ni[3].y" 3618.571533203125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -494.28570556640625;
	setAttr ".tgi[0].ni[4].y" 3142.857177734375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -494.28570556640625;
	setAttr ".tgi[0].ni[5].y" 3450;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2167.142822265625;
	setAttr ".tgi[0].ni[6].y" 2607.142822265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -494.28570556640625;
	setAttr ".tgi[0].ni[7].y" 3608.571533203125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2225.71435546875;
	setAttr ".tgi[0].ni[8].y" 697.14288330078125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[9].y" 3062.857177734375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -801.4285888671875;
	setAttr ".tgi[0].ni[10].y" 1578.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2225.71435546875;
	setAttr ".tgi[0].ni[11].y" 827.14288330078125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1512.857177734375;
	setAttr ".tgi[0].ni[12].y" 3367.142822265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2225.71435546875;
	setAttr ".tgi[0].ni[13].y" 957.14288330078125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2532.857177734375;
	setAttr ".tgi[0].ni[14].y" 4085.71435546875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[15].y" 3265.71435546875;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2532.857177734375;
	setAttr ".tgi[0].ni[16].y" 3984.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[17].y" 2701.428466796875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1820;
	setAttr ".tgi[0].ni[18].y" 3864.28564453125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -494.28570556640625;
	setAttr ".tgi[0].ni[19].y" 1814.2857666015625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 2532.857177734375;
	setAttr ".tgi[0].ni[20].y" 3882.857177734375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 160;
	setAttr ".tgi[0].ni[21].y" 2905.71435546875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[22].y" 3182.857177734375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1512.857177734375;
	setAttr ".tgi[0].ni[23].y" 2948.571533203125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 2532.857177734375;
	setAttr ".tgi[0].ni[24].y" 3781.428466796875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -801.4285888671875;
	setAttr ".tgi[0].ni[25].y" 2662.857177734375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[26].y" 3367.142822265625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 2532.857177734375;
	setAttr ".tgi[0].ni[27].y" 3680;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1820;
	setAttr ".tgi[0].ni[28].y" 3638.571533203125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1820;
	setAttr ".tgi[0].ni[29].y" 3454.28564453125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -494.28570556640625;
	setAttr ".tgi[0].ni[30].y" 2764.28564453125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -494.28570556640625;
	setAttr ".tgi[0].ni[31].y" 2321.428466796875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[32].y" 3284.28564453125;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2532.857177734375;
	setAttr ".tgi[0].ni[33].y" 3578.571533203125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -2441.428466796875;
	setAttr ".tgi[0].ni[34].y" 3377.142822265625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2167.142822265625;
	setAttr ".tgi[0].ni[35].y" 3815.71435546875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1820;
	setAttr ".tgi[0].ni[36].y" 2947.142822265625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 467.14285278320313;
	setAttr ".tgi[0].ni[37].y" 2517.142822265625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2532.857177734375;
	setAttr ".tgi[0].ni[38].y" 3477.142822265625;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1820;
	setAttr ".tgi[0].ni[39].y" 3251.428466796875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 160;
	setAttr ".tgi[0].ni[40].y" 2381.428466796875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -187.14285278320313;
	setAttr ".tgi[0].ni[41].y" 3870;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -494.28570556640625;
	setAttr ".tgi[0].ni[42].y" 3244.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[43].y" 3164.28564453125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2532.857177734375;
	setAttr ".tgi[0].ni[44].y" 567.14288330078125;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -801.4285888671875;
	setAttr ".tgi[0].ni[45].y" 2764.28564453125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -801.4285888671875;
	setAttr ".tgi[0].ni[46].y" 2041.4285888671875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2532.857177734375;
	setAttr ".tgi[0].ni[47].y" 3375.71435546875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[48].y" 2967.142822265625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2532.857177734375;
	setAttr ".tgi[0].ni[49].y" 3274.28564453125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 812.85711669921875;
	setAttr ".tgi[0].ni[50].y" 3124.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -801.4285888671875;
	setAttr ".tgi[0].ni[51].y" 1680;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -801.4285888671875;
	setAttr ".tgi[0].ni[52].y" 3607.142822265625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -2134.28564453125;
	setAttr ".tgi[0].ni[53].y" 3415.71435546875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 160;
	setAttr ".tgi[0].ni[54].y" 3638.571533203125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 812.85711669921875;
	setAttr ".tgi[0].ni[55].y" 2888.571533203125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 812.85711669921875;
	setAttr ".tgi[0].ni[56].y" 3340;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 467.14285278320313;
	setAttr ".tgi[0].ni[57].y" 3658.571533203125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 812.85711669921875;
	setAttr ".tgi[0].ni[58].y" 3600;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1918.5714111328125;
	setAttr ".tgi[0].ni[59].y" 1347.142822265625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 812.85711669921875;
	setAttr ".tgi[0].ni[60].y" 2652.857177734375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1512.857177734375;
	setAttr ".tgi[0].ni[61].y" 3570;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -187.14285278320313;
	setAttr ".tgi[0].ni[62].y" 2245.71435546875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 2532.857177734375;
	setAttr ".tgi[0].ni[63].y" 3172.857177734375;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -2748.571533203125;
	setAttr ".tgi[0].ni[64].y" 3478.571533203125;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 2167.142822265625;
	setAttr ".tgi[0].ni[65].y" 3104.28564453125;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 2532.857177734375;
	setAttr ".tgi[0].ni[66].y" 3071.428466796875;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2532.857177734375;
	setAttr ".tgi[0].ni[67].y" 2970;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -187.14285278320313;
	setAttr ".tgi[0].ni[68].y" 3768.571533203125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -494.28570556640625;
	setAttr ".tgi[0].ni[69].y" 1915.7142333984375;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -2441.428466796875;
	setAttr ".tgi[0].ni[70].y" 3681.428466796875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 1820;
	setAttr ".tgi[0].ni[71].y" 3150;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1820;
	setAttr ".tgi[0].ni[72].y" 3048.571533203125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -801.4285888671875;
	setAttr ".tgi[0].ni[73].y" 3505.71435546875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -801.4285888671875;
	setAttr ".tgi[0].ni[74].y" 3081.428466796875;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2532.857177734375;
	setAttr ".tgi[0].ni[75].y" 2795.71435546875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[76].y" 3487.142822265625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[77].y" 3588.571533203125;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 1512.857177734375;
	setAttr ".tgi[0].ni[78].y" 2574.28564453125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -2441.428466796875;
	setAttr ".tgi[0].ni[79].y" 3478.571533203125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -187.14285278320313;
	setAttr ".tgi[0].ni[80].y" 2804.28564453125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -1797.142822265625;
	setAttr ".tgi[0].ni[81].y" 3415.71435546875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" -187.14285278320313;
	setAttr ".tgi[0].ni[82].y" 3258.571533203125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -801.4285888671875;
	setAttr ".tgi[0].ni[83].y" 3708.571533203125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -801.4285888671875;
	setAttr ".tgi[0].ni[84].y" 3810;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 467.14285278320313;
	setAttr ".tgi[0].ni[85].y" 3117.142822265625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -494.28570556640625;
	setAttr ".tgi[0].ni[86].y" 3710;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 2167.142822265625;
	setAttr ".tgi[0].ni[87].y" 3207.142822265625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1512.857177734375;
	setAttr ".tgi[0].ni[88].y" 3265.71435546875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 2532.857177734375;
	setAttr ".tgi[0].ni[89].y" 1087.142822265625;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 160;
	setAttr ".tgi[0].ni[90].y" 3797.142822265625;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[91].y" 2700;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -494.28570556640625;
	setAttr ".tgi[0].ni[92].y" 2220;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1512.857177734375;
	setAttr ".tgi[0].ni[93].y" 3050;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 160;
	setAttr ".tgi[0].ni[94].y" 2617.142822265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[95].y" 3385.71435546875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 2532.857177734375;
	setAttr ".tgi[0].ni[96].y" 1347.142822265625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[97].y" 3640;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 2532.857177734375;
	setAttr ".tgi[0].ni[98].y" 957.14288330078125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 2225.71435546875;
	setAttr ".tgi[0].ni[99].y" 1087.142822265625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" -801.4285888671875;
	setAttr ".tgi[0].ni[100].y" 2561.428466796875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 2167.142822265625;
	setAttr ".tgi[0].ni[101].y" 3655.71435546875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 467.14285278320313;
	setAttr ".tgi[0].ni[102].y" 3332.857177734375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 2225.71435546875;
	setAttr ".tgi[0].ni[103].y" 1217.142822265625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" -1490;
	setAttr ".tgi[0].ni[104].y" 3311.428466796875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1512.857177734375;
	setAttr ".tgi[0].ni[105].y" 3671.428466796875;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -801.4285888671875;
	setAttr ".tgi[0].ni[106].y" 1477.142822265625;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -801.4285888671875;
	setAttr ".tgi[0].ni[107].y" 3182.857177734375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 2167.142822265625;
	setAttr ".tgi[0].ni[108].y" 3554.28564453125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[109].y" 2860;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 2532.857177734375;
	setAttr ".tgi[0].ni[110].y" 2694.28564453125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -494.28570556640625;
	setAttr ".tgi[0].ni[111].y" 3950;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1512.857177734375;
	setAttr ".tgi[0].ni[112].y" 2790;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -801.4285888671875;
	setAttr ".tgi[0].ni[113].y" 2980;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[114].y" 3690;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -801.4285888671875;
	setAttr ".tgi[0].ni[115].y" 1940;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -2134.28564453125;
	setAttr ".tgi[0].ni[116].y" 3314.28564453125;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -187.14285278320313;
	setAttr ".tgi[0].ni[117].y" 3610;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -1108.5714111328125;
	setAttr ".tgi[0].ni[118].y" 2961.428466796875;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" -801.4285888671875;
	setAttr ".tgi[0].ni[119].y" 2142.857177734375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 1611.4285888671875;
	setAttr ".tgi[0].ni[120].y" 1347.142822265625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" -187.14285278320313;
	setAttr ".tgi[0].ni[121].y" 2475.71435546875;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1512.857177734375;
	setAttr ".tgi[0].ni[122].y" 3468.571533203125;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" -801.4285888671875;
	setAttr ".tgi[0].ni[123].y" 4025.71435546875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 812.85711669921875;
	setAttr ".tgi[0].ni[124].y" 3498.571533203125;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 2532.857177734375;
	setAttr ".tgi[0].ni[125].y" 1217.142822265625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2532.857177734375;
	setAttr ".tgi[0].ni[126].y" 827.14288330078125;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 467.14285278320313;
	setAttr ".tgi[0].ni[127].y" 3557.142822265625;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 160;
	setAttr ".tgi[0].ni[128].y" 3311.428466796875;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 2532.857177734375;
	setAttr ".tgi[0].ni[129].y" 2592.857177734375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 2167.142822265625;
	setAttr ".tgi[0].ni[130].y" 3002.857177734375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -1490;
	setAttr ".tgi[0].ni[131].y" 3210;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 2532.857177734375;
	setAttr ".tgi[0].ni[132].y" 697.14288330078125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -2134.28564453125;
	setAttr ".tgi[0].ni[133].y" 3517.142822265625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1820;
	setAttr ".tgi[0].ni[134].y" 2637.142822265625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 467.14285278320313;
	setAttr ".tgi[0].ni[135].y" 3455.71435546875;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 467.14285278320313;
	setAttr ".tgi[0].ni[136].y" 2752.857177734375;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -801.4285888671875;
	setAttr ".tgi[0].ni[137].y" 3284.28564453125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -2441.428466796875;
	setAttr ".tgi[0].ni[138].y" 3580;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" -494.28570556640625;
	setAttr ".tgi[0].ni[139].y" 2662.857177734375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 2167.142822265625;
	setAttr ".tgi[0].ni[140].y" 3410;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -801.4285888671875;
	setAttr ".tgi[0].ni[141].y" 1781.4285888671875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" -801.4285888671875;
	setAttr ".tgi[0].ni[142].y" 2460;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 467.14285278320313;
	setAttr ".tgi[0].ni[143].y" 3015.71435546875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2225.71435546875;
	setAttr ".tgi[0].ni[144].y" 1347.142822265625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" -801.4285888671875;
	setAttr ".tgi[0].ni[145].y" 2244.28564453125;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -531.66079692516587 -648.43594133029364 ;
	setAttr ".tgi[1].vh" -type "double2" 812.38676871480141 697.74165214745494 ;
	setAttr -s 12 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 367.14285278320313;
	setAttr ".tgi[1].ni[0].y" -227.14285278320313;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 60;
	setAttr ".tgi[1].ni[1].y" -97.142860412597656;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 60;
	setAttr ".tgi[1].ni[2].y" 292.85714721679688;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 60;
	setAttr ".tgi[1].ni[3].y" 32.857143402099609;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 367.14285278320313;
	setAttr ".tgi[1].ni[4].y" 292.85714721679688;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 60;
	setAttr ".tgi[1].ni[5].y" -227.14285278320313;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 367.14285278320313;
	setAttr ".tgi[1].ni[6].y" 32.857143402099609;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" -554.28570556640625;
	setAttr ".tgi[1].ni[7].y" 292.85714721679688;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 367.14285278320313;
	setAttr ".tgi[1].ni[8].y" 162.85714721679688;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 60;
	setAttr ".tgi[1].ni[9].y" 162.85714721679688;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 367.14285278320313;
	setAttr ".tgi[1].ni[10].y" -97.142860412597656;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" -247.14285278320313;
	setAttr ".tgi[1].ni[11].y" 292.85714721679688;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "Untitled_5";
	setAttr ".tgi[2].vl" -type "double2" -545.05386700364556 -941.02911096504454 ;
	setAttr ".tgi[2].vh" -type "double2" 1119.1723840157117 725.83458260743396 ;
	setAttr -s 37 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -751.4285888671875;
	setAttr ".tgi[2].ni[0].y" -234.28572082519531;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" -1073.4910888671875;
	setAttr ".tgi[2].ni[1].y" 75.796920776367188;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" -432.85714721679688;
	setAttr ".tgi[2].ni[2].y" -115.71428680419922;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 255.71427917480469;
	setAttr ".tgi[2].ni[3].y" 54.285713195800781;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 872.85711669921875;
	setAttr ".tgi[2].ni[4].y" 388.57144165039063;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" -432.85714721679688;
	setAttr ".tgi[2].ni[5].y" -217.14285278320313;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" -1079.0859375;
	setAttr ".tgi[2].ni[6].y" -189.32476806640625;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 255.71427917480469;
	setAttr ".tgi[2].ni[7].y" -64.285713195800781;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 872.85711669921875;
	setAttr ".tgi[2].ni[8].y" 287.14285278320313;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" -751.4285888671875;
	setAttr ".tgi[2].ni[9].y" 171.42857360839844;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" -51.428569793701172;
	setAttr ".tgi[2].ni[10].y" -104.28571319580078;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" -432.85714721679688;
	setAttr ".tgi[2].ni[11].y" 188.57142639160156;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" -751.4285888671875;
	setAttr ".tgi[2].ni[12].y" 70;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 872.85711669921875;
	setAttr ".tgi[2].ni[13].y" 185.71427917480469;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" -751.4285888671875;
	setAttr ".tgi[2].ni[14].y" -31.428571701049805;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" -751.4285888671875;
	setAttr ".tgi[2].ni[15].y" -132.85714721679688;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" -1056.7064208984375;
	setAttr ".tgi[2].ni[16].y" 408.18142700195313;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 872.85711669921875;
	setAttr ".tgi[2].ni[17].y" 84.285713195800781;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" -1067.896240234375;
	setAttr ".tgi[2].ni[18].y" -91.203315734863281;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 562.85711669921875;
	setAttr ".tgi[2].ni[19].y" 74.285713195800781;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" -51.428569793701172;
	setAttr ".tgi[2].ni[20].y" 200;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" -51.428569793701172;
	setAttr ".tgi[2].ni[21].y" -2.8571429252624512;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" -51.428569793701172;
	setAttr ".tgi[2].ni[22].y" 98.571426391601563;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 562.85711669921875;
	setAttr ".tgi[2].ni[23].y" 205.71427917480469;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" 872.85711669921875;
	setAttr ".tgi[2].ni[24].y" -17.142856597900391;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" 872.85711669921875;
	setAttr ".tgi[2].ni[25].y" -118.57142639160156;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 255.71427917480469;
	setAttr ".tgi[2].ni[26].y" -165.71427917480469;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 255.71427917480469;
	setAttr ".tgi[2].ni[27].y" 178.57142639160156;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" -432.85714721679688;
	setAttr ".tgi[2].ni[28].y" -14.285714149475098;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 872.85711669921875;
	setAttr ".tgi[2].ni[29].y" -220;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" -1073.4910888671875;
	setAttr ".tgi[2].ni[30].y" 177.22549438476563;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" 562.85711669921875;
	setAttr ".tgi[2].ni[31].y" -184.28572082519531;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" -1073.4910888671875;
	setAttr ".tgi[2].ni[32].y" -25.631649017333984;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" 872.85711669921875;
	setAttr ".tgi[2].ni[33].y" -321.42855834960938;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" 562.85711669921875;
	setAttr ".tgi[2].ni[34].y" -27.142856597900391;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" -432.85714721679688;
	setAttr ".tgi[2].ni[35].y" 87.142860412597656;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" -51.428569793701172;
	setAttr ".tgi[2].ni[36].y" -205.71427917480469;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -432.30873369520071 -395.52592525431209 ;
	setAttr ".tgi[3].vh" -type "double2" 1213.524534238594 1252.9156362895203 ;
	setAttr -s 48 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 402.72964477539063;
	setAttr ".tgi[3].ni[0].y" 792.60894775390625;
	setAttr ".tgi[3].ni[0].nvs" 18312;
	setAttr ".tgi[3].ni[1].x" 1090.364013671875;
	setAttr ".tgi[3].ni[1].y" 371.35501098632813;
	setAttr ".tgi[3].ni[1].nvs" 18312;
	setAttr ".tgi[3].ni[2].x" 407.94622802734375;
	setAttr ".tgi[3].ni[2].y" 721.59527587890625;
	setAttr ".tgi[3].ni[2].nvs" 18312;
	setAttr ".tgi[3].ni[3].x" 102.51665496826172;
	setAttr ".tgi[3].ni[3].y" 397.67330932617188;
	setAttr ".tgi[3].ni[3].nvs" 18312;
	setAttr ".tgi[3].ni[4].x" -1527.142822265625;
	setAttr ".tgi[3].ni[4].y" 354.28570556640625;
	setAttr ".tgi[3].ni[4].nvs" 18312;
	setAttr ".tgi[3].ni[5].x" 1397.5068359375;
	setAttr ".tgi[3].ni[5].y" 371.35501098632813;
	setAttr ".tgi[3].ni[5].nvs" 18312;
	setAttr ".tgi[3].ni[6].x" 92.399917602539063;
	setAttr ".tgi[3].ni[6].y" 864.004638671875;
	setAttr ".tgi[3].ni[6].nvs" 18312;
	setAttr ".tgi[3].ni[7].x" -1220;
	setAttr ".tgi[3].ni[7].y" 342.85714721679688;
	setAttr ".tgi[3].ni[7].nvs" 18312;
	setAttr ".tgi[3].ni[8].x" 95.008209228515625;
	setAttr ".tgi[3].ni[8].y" 791.686767578125;
	setAttr ".tgi[3].ni[8].nvs" 18312;
	setAttr ".tgi[3].ni[9].x" 1083.84326171875;
	setAttr ".tgi[3].ni[9].y" 534.963134765625;
	setAttr ".tgi[3].ni[9].nvs" 18312;
	setAttr ".tgi[3].ni[10].x" 742.7926025390625;
	setAttr ".tgi[3].ni[10].y" 620.3223876953125;
	setAttr ".tgi[3].ni[10].nvs" 18312;
	setAttr ".tgi[3].ni[11].x" 401.83462524414063;
	setAttr ".tgi[3].ni[11].y" 329.26791381835938;
	setAttr ".tgi[3].ni[11].nvs" 18312;
	setAttr ".tgi[3].ni[12].x" 1390.9862060546875;
	setAttr ".tgi[3].ni[12].y" 534.963134765625;
	setAttr ".tgi[3].ni[12].nvs" 18312;
	setAttr ".tgi[3].ni[13].x" 1077.322509765625;
	setAttr ".tgi[3].ni[13].y" 710.8983154296875;
	setAttr ".tgi[3].ni[13].nvs" 18312;
	setAttr ".tgi[3].ni[14].x" -1527.142822265625;
	setAttr ".tgi[3].ni[14].y" 108.57142639160156;
	setAttr ".tgi[3].ni[14].nvs" 18312;
	setAttr ".tgi[3].ni[15].x" -1527.142822265625;
	setAttr ".tgi[3].ni[15].y" 231.42857360839844;
	setAttr ".tgi[3].ni[15].nvs" 18312;
	setAttr ".tgi[3].ni[16].x" 409.65951538085938;
	setAttr ".tgi[3].ni[16].y" 207.09761047363281;
	setAttr ".tgi[3].ni[16].nvs" 18312;
	setAttr ".tgi[3].ni[17].x" 98.920646667480469;
	setAttr ".tgi[3].ni[17].y" 599.09259033203125;
	setAttr ".tgi[3].ni[17].nvs" 18312;
	setAttr ".tgi[3].ni[18].x" 409.25039672851563;
	setAttr ".tgi[3].ni[18].y" 662.364501953125;
	setAttr ".tgi[3].ni[18].nvs" 18312;
	setAttr ".tgi[3].ni[19].x" -1527.142822265625;
	setAttr ".tgi[3].ni[19].y" 477.14285278320313;
	setAttr ".tgi[3].ni[19].nvs" 18312;
	setAttr ".tgi[3].ni[20].x" 1389.6820068359375;
	setAttr ".tgi[3].ni[20].y" 621.6265869140625;
	setAttr ".tgi[3].ni[20].nvs" 18312;
	setAttr ".tgi[3].ni[21].x" 409.25039672851563;
	setAttr ".tgi[3].ni[21].y" 597.40643310546875;
	setAttr ".tgi[3].ni[21].nvs" 18312;
	setAttr ".tgi[3].ni[22].x" -1220;
	setAttr ".tgi[3].ni[22].y" 140;
	setAttr ".tgi[3].ni[22].nvs" 18312;
	setAttr ".tgi[3].ni[23].x" 1082.5391845703125;
	setAttr ".tgi[3].ni[23].y" 621.6265869140625;
	setAttr ".tgi[3].ni[23].nvs" 18312;
	setAttr ".tgi[3].ni[24].x" -605.2237548828125;
	setAttr ".tgi[3].ni[24].y" 708.036865234375;
	setAttr ".tgi[3].ni[24].nvs" 18312;
	setAttr ".tgi[3].ni[25].x" -1220;
	setAttr ".tgi[3].ni[25].y" 444.28570556640625;
	setAttr ".tgi[3].ni[25].nvs" 18312;
	setAttr ".tgi[3].ni[26].x" 98.920646667480469;
	setAttr ".tgi[3].ni[26].y" 720.673095703125;
	setAttr ".tgi[3].ni[26].nvs" 18312;
	setAttr ".tgi[3].ni[27].x" 748.00921630859375;
	setAttr ".tgi[3].ni[27].y" 418.30429077148438;
	setAttr ".tgi[3].ni[27].nvs" 18312;
	setAttr ".tgi[3].ni[28].x" -244.15972900390625;
	setAttr ".tgi[3].ni[28].y" 762.180419921875;
	setAttr ".tgi[3].ni[28].nvs" 18312;
	setAttr ".tgi[3].ni[29].x" 1384.4654541015625;
	setAttr ".tgi[3].ni[29].y" 710.8983154296875;
	setAttr ".tgi[3].ni[29].nvs" 18312;
	setAttr ".tgi[3].ni[30].x" 395.31390380859375;
	setAttr ".tgi[3].ni[30].y" 450.42892456054688;
	setAttr ".tgi[3].ni[30].nvs" 18312;
	setAttr ".tgi[3].ni[31].x" -573.86993408203125;
	setAttr ".tgi[3].ni[31].y" 287.537109375;
	setAttr ".tgi[3].ni[31].nvs" 18312;
	setAttr ".tgi[3].ni[32].x" 105.12494659423828;
	setAttr ".tgi[3].ni[32].y" 190.14370727539063;
	setAttr ".tgi[3].ni[32].nvs" 18312;
	setAttr ".tgi[3].ni[33].x" 97.616500854492188;
	setAttr ".tgi[3].ni[33].y" 661.44232177734375;
	setAttr ".tgi[3].ni[33].nvs" 18312;
	setAttr ".tgi[3].ni[34].x" -882.85711669921875;
	setAttr ".tgi[3].ni[34].y" 292.85714721679688;
	setAttr ".tgi[3].ni[34].nvs" 18312;
	setAttr ".tgi[3].ni[35].x" 741.48846435546875;
	setAttr ".tgi[3].ni[35].y" 692.6402587890625;
	setAttr ".tgi[3].ni[35].nvs" 18312;
	setAttr ".tgi[3].ni[36].x" -1220;
	setAttr ".tgi[3].ni[36].y" 241.42857360839844;
	setAttr ".tgi[3].ni[36].nvs" 18312;
	setAttr ".tgi[3].ni[37].x" 101.21250152587891;
	setAttr ".tgi[3].ni[37].y" 329.26791381835938;
	setAttr ".tgi[3].ni[37].nvs" 18312;
	setAttr ".tgi[3].ni[38].x" 99.908355712890625;
	setAttr ".tgi[3].ni[38].y" 257.7100830078125;
	setAttr ".tgi[3].ni[38].nvs" 18312;
	setAttr ".tgi[3].ni[39].x" 742.7926025390625;
	setAttr ".tgi[3].ni[39].y" 557.13360595703125;
	setAttr ".tgi[3].ni[39].nvs" 18312;
	setAttr ".tgi[3].ni[40].x" 746.705078125;
	setAttr ".tgi[3].ni[40].y" 491.08724975585938;
	setAttr ".tgi[3].ni[40].nvs" 18312;
	setAttr ".tgi[3].ni[41].x" 101.21250152587891;
	setAttr ".tgi[3].ni[41].y" 464.7745361328125;
	setAttr ".tgi[3].ni[41].nvs" 18312;
	setAttr ".tgi[3].ni[42].x" 407.05120849609375;
	setAttr ".tgi[3].ni[42].y" 270.75155639648438;
	setAttr ".tgi[3].ni[42].nvs" 18312;
	setAttr ".tgi[3].ni[43].x" 401.42550659179688;
	setAttr ".tgi[3].ni[43].y" 853.189453125;
	setAttr ".tgi[3].ni[43].nvs" 18312;
	setAttr ".tgi[3].ni[44].x" 404.44293212890625;
	setAttr ".tgi[3].ni[44].y" 389.84841918945313;
	setAttr ".tgi[3].ni[44].nvs" 18312;
	setAttr ".tgi[3].ni[45].x" 1091.668212890625;
	setAttr ".tgi[3].ni[45].y" 451.96286010742188;
	setAttr ".tgi[3].ni[45].nvs" 18312;
	setAttr ".tgi[3].ni[46].x" -185.06401062011719;
	setAttr ".tgi[3].ni[46].y" 323.64569091796875;
	setAttr ".tgi[3].ni[46].nvs" 18312;
	setAttr ".tgi[3].ni[47].x" 1398.81103515625;
	setAttr ".tgi[3].ni[47].y" 451.96286010742188;
	setAttr ".tgi[3].ni[47].nvs" 18312;
	setAttr ".tgi[4].tn" -type "string" "Untitled_6";
	setAttr ".tgi[4].vl" -type "double2" -431.74925517475322 -743.60396519242647 ;
	setAttr ".tgi[4].vh" -type "double2" 1092.8484528098625 783.40990397758503 ;
	setAttr -s 18 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 580.3341064453125;
	setAttr ".tgi[4].ni[0].y" -83.838279724121094;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 576.70989990234375;
	setAttr ".tgi[4].ni[1].y" -274.66482543945313;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" -62.655128479003906;
	setAttr ".tgi[4].ni[2].y" -282.26712036132813;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" -95.273307800292969;
	setAttr ".tgi[4].ni[3].y" 308.43408203125;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" -92.857139587402344;
	setAttr ".tgi[4].ni[4].y" 63.711391448974609;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 582.75030517578125;
	setAttr ".tgi[4].ni[5].y" 467.1468505859375;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 582.75030517578125;
	setAttr ".tgi[4].ni[6].y" -16.035173416137695;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" -92.857139587402344;
	setAttr ".tgi[4].ni[7].y" 145.91107177734375;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" -92.857139587402344;
	setAttr ".tgi[4].ni[8].y" 224.28572082519531;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 581.542236328125;
	setAttr ".tgi[4].ni[9].y" -209.27786254882813;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" 583.9583740234375;
	setAttr ".tgi[4].ni[10].y" 346.48941040039063;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" -96.48138427734375;
	setAttr ".tgi[4].ni[11].y" 573.621826171875;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 582.75030517578125;
	setAttr ".tgi[4].ni[12].y" -140.31687927246094;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 581.542236328125;
	setAttr ".tgi[4].ni[13].y" 278.93728637695313;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" -97.689468383789063;
	setAttr ".tgi[4].ni[14].y" -29.361011505126953;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 582.75030517578125;
	setAttr ".tgi[4].ni[15].y" 214.95921325683594;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 579.12603759765625;
	setAttr ".tgi[4].ni[16].y" 408.30230712890625;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" -400;
	setAttr ".tgi[4].ni[17].y" 148.57142639160156;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[5].tn" -type "string" "Untitled_5";
	setAttr ".tgi[5].vl" -type "double2" -385.95739681816838 -480.82339276163799 ;
	setAttr ".tgi[5].vh" -type "double2" 998.79332798043583 906.12186567373089 ;
	setAttr -s 43 ".tgi[5].ni";
	setAttr ".tgi[5].ni[0].x" -294.43511962890625;
	setAttr ".tgi[5].ni[0].y" 895.90045166015625;
	setAttr ".tgi[5].ni[0].nvs" 18312;
	setAttr ".tgi[5].ni[1].x" 467.82009887695313;
	setAttr ".tgi[5].ni[1].y" 275.97744750976563;
	setAttr ".tgi[5].ni[1].nvs" 18312;
	setAttr ".tgi[5].ni[2].x" -584.508544921875;
	setAttr ".tgi[5].ni[2].y" 743.10882568359375;
	setAttr ".tgi[5].ni[2].nvs" 18312;
	setAttr ".tgi[5].ni[3].x" 456.95770263671875;
	setAttr ".tgi[5].ni[3].y" 192.29190063476563;
	setAttr ".tgi[5].ni[3].nvs" 18312;
	setAttr ".tgi[5].ni[4].x" -556.57666015625;
	setAttr ".tgi[5].ni[4].y" -319.15606689453125;
	setAttr ".tgi[5].ni[4].nvs" 18312;
	setAttr ".tgi[5].ni[5].x" 745.47930908203125;
	setAttr ".tgi[5].ni[5].y" 189.1883544921875;
	setAttr ".tgi[5].ni[5].nvs" 18312;
	setAttr ".tgi[5].ni[6].x" -514.67889404296875;
	setAttr ".tgi[5].ni[6].y" -457.39730834960938;
	setAttr ".tgi[5].ni[6].nvs" 18312;
	setAttr ".tgi[5].ni[7].x" -264.95150756835938;
	setAttr ".tgi[5].ni[7].y" -233.0982666015625;
	setAttr ".tgi[5].ni[7].nvs" 18312;
	setAttr ".tgi[5].ni[8].x" -292.88336181640625;
	setAttr ".tgi[5].ni[8].y" 1054.584716796875;
	setAttr ".tgi[5].ni[8].nvs" 18312;
	setAttr ".tgi[5].ni[9].x" -289.77981567382813;
	setAttr ".tgi[5].ni[9].y" 970.08673095703125;
	setAttr ".tgi[5].ni[9].nvs" 18312;
	setAttr ".tgi[5].ni[10].x" 129.641845703125;
	setAttr ".tgi[5].ni[10].y" 392.03790283203125;
	setAttr ".tgi[5].ni[10].nvs" 18312;
	setAttr ".tgi[5].ni[11].x" 742.37579345703125;
	setAttr ".tgi[5].ni[11].y" 100.56975555419922;
	setAttr ".tgi[5].ni[11].nvs" 18312;
	setAttr ".tgi[5].ni[12].x" -428.2685546875;
	setAttr ".tgi[5].ni[12].y" 57.371967315673828;
	setAttr ".tgi[5].ni[12].nvs" 18312;
	setAttr ".tgi[5].ni[13].x" -572.0943603515625;
	setAttr ".tgi[5].ni[13].y" -214.52684020996094;
	setAttr ".tgi[5].ni[13].nvs" 18312;
	setAttr ".tgi[5].ni[14].x" -207.53604125976563;
	setAttr ".tgi[5].ni[14].y" -433.11160278320313;
	setAttr ".tgi[5].ni[14].nvs" 18312;
	setAttr ".tgi[5].ni[15].x" 737.720458984375;
	setAttr ".tgi[5].ni[15].y" 273.83328247070313;
	setAttr ".tgi[5].ni[15].nvs" 18312;
	setAttr ".tgi[5].ni[16].x" 433.68115234375;
	setAttr ".tgi[5].ni[16].y" 483.13613891601563;
	setAttr ".tgi[5].ni[16].nvs" 18312;
	setAttr ".tgi[5].ni[17].x" -249.43382263183594;
	setAttr ".tgi[5].ni[17].y" -294.870361328125;
	setAttr ".tgi[5].ni[17].nvs" 18312;
	setAttr ".tgi[5].ni[18].x" -601.5780029296875;
	setAttr ".tgi[5].ni[18].y" 1041.7275390625;
	setAttr ".tgi[5].ni[18].nvs" 18312;
	setAttr ".tgi[5].ni[19].x" -426.07403564453125;
	setAttr ".tgi[5].ni[19].y" 474.40130615234375;
	setAttr ".tgi[5].ni[19].nvs" 18312;
	setAttr ".tgi[5].ni[20].x" -582.95672607421875;
	setAttr ".tgi[5].ni[20].y" 812.5137939453125;
	setAttr ".tgi[5].ni[20].nvs" 18312;
	setAttr ".tgi[5].ni[21].x" -424.97677612304688;
	setAttr ".tgi[5].ni[21].y" 385.55941772460938;
	setAttr ".tgi[5].ni[21].nvs" 18312;
	setAttr ".tgi[5].ni[22].x" -235.4678955078125;
	setAttr ".tgi[5].ni[22].y" -357.49957275390625;
	setAttr ".tgi[5].ni[22].nvs" 18312;
	setAttr ".tgi[5].ni[23].x" 126.53830718994141;
	setAttr ".tgi[5].ni[23].y" 481.70755004882813;
	setAttr ".tgi[5].ni[23].nvs" 18312;
	setAttr ".tgi[5].ni[24].x" -289.77981567382813;
	setAttr ".tgi[5].ni[24].y" 737.910888671875;
	setAttr ".tgi[5].ni[24].nvs" 18312;
	setAttr ".tgi[5].ni[25].x" 740.82403564453125;
	setAttr ".tgi[5].ni[25].y" 490.27899169921875;
	setAttr ".tgi[5].ni[25].nvs" 18312;
	setAttr ".tgi[5].ni[26].x" -431.9659423828125;
	setAttr ".tgi[5].ni[26].y" 302.09805297851563;
	setAttr ".tgi[5].ni[26].nvs" 18312;
	setAttr ".tgi[5].ni[27].x" 152.91839599609375;
	setAttr ".tgi[5].ni[27].y" 107.24604034423828;
	setAttr ".tgi[5].ni[27].nvs" 18312;
	setAttr ".tgi[5].ni[28].x" -542.6107177734375;
	setAttr ".tgi[5].ni[28].y" -381.7852783203125;
	setAttr ".tgi[5].ni[28].nvs" 18312;
	setAttr ".tgi[5].ni[29].x" -592.26739501953125;
	setAttr ".tgi[5].ni[29].y" 968.48516845703125;
	setAttr ".tgi[5].ni[29].nvs" 18312;
	setAttr ".tgi[5].ni[30].x" 458.50949096679688;
	setAttr ".tgi[5].ni[30].y" 380.28955078125;
	setAttr ".tgi[5].ni[30].nvs" 18312;
	setAttr ".tgi[5].ni[31].x" -578.30145263671875;
	setAttr ".tgi[5].ni[31].y" -142.83619689941406;
	setAttr ".tgi[5].ni[31].nvs" 18312;
	setAttr ".tgi[5].ni[32].x" -271.15859985351563;
	setAttr ".tgi[5].ni[32].y" -129.97904968261719;
	setAttr ".tgi[5].ni[32].nvs" 18312;
	setAttr ".tgi[5].ni[33].x" -584.508544921875;
	setAttr ".tgi[5].ni[33].y" 896.44305419921875;
	setAttr ".tgi[5].ni[33].nvs" 18312;
	setAttr ".tgi[5].ni[34].x" 444.54354858398438;
	setAttr ".tgi[5].ni[34].y" 103.77291107177734;
	setAttr ".tgi[5].ni[34].nvs" 18312;
	setAttr ".tgi[5].ni[35].x" 145.1595458984375;
	setAttr ".tgi[5].ni[35].y" 286.47024536132813;
	setAttr ".tgi[5].ni[35].nvs" 18312;
	setAttr ".tgi[5].ni[36].x" 143.60777282714844;
	setAttr ".tgi[5].ni[36].y" 192.29190063476563;
	setAttr ".tgi[5].ni[36].nvs" 18312;
	setAttr ".tgi[5].ni[37].x" -997.17169189453125;
	setAttr ".tgi[5].ni[37].y" -265.1639404296875;
	setAttr ".tgi[5].ni[37].nvs" 18312;
	setAttr ".tgi[5].ni[38].x" -419.89599609375;
	setAttr ".tgi[5].ni[38].y" 134.25296020507813;
	setAttr ".tgi[5].ni[38].nvs" 18312;
	setAttr ".tgi[5].ni[39].x" -425.38235473632813;
	setAttr ".tgi[5].ni[39].y" 223.16831970214844;
	setAttr ".tgi[5].ni[39].nvs" 18312;
	setAttr ".tgi[5].ni[40].x" -291.33160400390625;
	setAttr ".tgi[5].ni[40].y" 810.41937255859375;
	setAttr ".tgi[5].ni[40].nvs" 18312;
	setAttr ".tgi[5].ni[41].x" 745.47930908203125;
	setAttr ".tgi[5].ni[41].y" 374.378662109375;
	setAttr ".tgi[5].ni[41].nvs" 18312;
	setAttr ".tgi[5].ni[42].x" -1022.0000610351563;
	setAttr ".tgi[5].ni[42].y" 400.27789306640625;
	setAttr ".tgi[5].ni[42].nvs" 18313;
	setAttr ".tgi[6].tn" -type "string" "Untitled_7";
	setAttr ".tgi[6].vl" -type "double2" -389.6548514081282 -763.02198163716901 ;
	setAttr ".tgi[6].vh" -type "double2" 1701.0793180753412 1331.0255542004734 ;
	setAttr -s 40 ".tgi[6].ni";
	setAttr ".tgi[6].ni[0].x" -192.92306518554688;
	setAttr ".tgi[6].ni[0].y" 550.56939697265625;
	setAttr ".tgi[6].ni[0].nvs" 18312;
	setAttr ".tgi[6].ni[1].x" -212.35250854492188;
	setAttr ".tgi[6].ni[1].y" 32.711917877197266;
	setAttr ".tgi[6].ni[1].nvs" 18312;
	setAttr ".tgi[6].ni[2].x" 566.62042236328125;
	setAttr ".tgi[6].ni[2].y" 266.91217041015625;
	setAttr ".tgi[6].ni[2].nvs" 18312;
	setAttr ".tgi[6].ni[3].x" 1095.670654296875;
	setAttr ".tgi[6].ni[3].y" 452.43060302734375;
	setAttr ".tgi[6].ni[3].nvs" 18313;
	setAttr ".tgi[6].ni[4].x" 556.6802978515625;
	setAttr ".tgi[6].ni[4].y" 629.3302001953125;
	setAttr ".tgi[6].ni[4].nvs" 18312;
	setAttr ".tgi[6].ni[5].x" 541.53466796875;
	setAttr ".tgi[6].ni[5].y" -233.78228759765625;
	setAttr ".tgi[6].ni[5].nvs" 18312;
	setAttr ".tgi[6].ni[6].x" -207.38246154785156;
	setAttr ".tgi[6].ni[6].y" -751.39898681640625;
	setAttr ".tgi[6].ni[6].nvs" 18312;
	setAttr ".tgi[6].ni[7].x" 539.87799072265625;
	setAttr ".tgi[6].ni[7].y" -677.0562744140625;
	setAttr ".tgi[6].ni[7].nvs" 18312;
	setAttr ".tgi[6].ni[8].x" 541.53466796875;
	setAttr ".tgi[6].ni[8].y" -596.99151611328125;
	setAttr ".tgi[6].ni[8].nvs" 18312;
	setAttr ".tgi[6].ni[9].x" -209.03913879394531;
	setAttr ".tgi[6].ni[9].y" -55.463188171386719;
	setAttr ".tgi[6].ni[9].nvs" 18312;
	setAttr ".tgi[6].ni[10].x" 556.6802978515625;
	setAttr ".tgi[6].ni[10].y" 527.901611328125;
	setAttr ".tgi[6].ni[10].nvs" 18312;
	setAttr ".tgi[6].ni[11].x" 1097.327392578125;
	setAttr ".tgi[6].ni[11].y" 251.23013305664063;
	setAttr ".tgi[6].ni[11].nvs" 18313;
	setAttr ".tgi[6].ni[12].x" 551.71026611328125;
	setAttr ".tgi[6].ni[12].y" 718.073974609375;
	setAttr ".tgi[6].ni[12].nvs" 18312;
	setAttr ".tgi[6].ni[13].x" 1095.670654296875;
	setAttr ".tgi[6].ni[13].y" 831.984130859375;
	setAttr ".tgi[6].ni[13].nvs" 18313;
	setAttr ".tgi[6].ni[14].x" -192.15357971191406;
	setAttr ".tgi[6].ni[14].y" 768.63287353515625;
	setAttr ".tgi[6].ni[14].nvs" 18313;
	setAttr ".tgi[6].ni[15].x" 1110.2620849609375;
	setAttr ".tgi[6].ni[15].y" -111.15226745605469;
	setAttr ".tgi[6].ni[15].nvs" 18313;
	setAttr ".tgi[6].ni[16].x" 551.71026611328125;
	setAttr ".tgi[6].ni[16].y" 819.5025634765625;
	setAttr ".tgi[6].ni[16].nvs" 18312;
	setAttr ".tgi[6].ni[17].x" -204.069091796875;
	setAttr ".tgi[6].ni[17].y" 119.7537841796875;
	setAttr ".tgi[6].ni[17].nvs" 18312;
	setAttr ".tgi[6].ni[18].x" 552.59747314453125;
	setAttr ".tgi[6].ni[18].y" 1003.8517456054688;
	setAttr ".tgi[6].ni[18].nvs" 18312;
	setAttr ".tgi[6].ni[19].x" 561.65032958984375;
	setAttr ".tgi[6].ni[19].y" 341.83383178710938;
	setAttr ".tgi[6].ni[19].nvs" 18312;
	setAttr ".tgi[6].ni[20].x" 566.62042236328125;
	setAttr ".tgi[6].ni[20].y" 165.48361206054688;
	setAttr ".tgi[6].ni[20].nvs" 18312;
	setAttr ".tgi[6].ni[21].x" 541.53466796875;
	setAttr ".tgi[6].ni[21].y" -960.54693603515625;
	setAttr ".tgi[6].ni[21].nvs" 18312;
	setAttr ".tgi[6].ni[22].x" 544.84808349609375;
	setAttr ".tgi[6].ni[22].y" -317.7291259765625;
	setAttr ".tgi[6].ni[22].nvs" 18312;
	setAttr ".tgi[6].ni[23].x" -202.41241455078125;
	setAttr ".tgi[6].ni[23].y" 207.0345458984375;
	setAttr ".tgi[6].ni[23].nvs" 18312;
	setAttr ".tgi[6].ni[24].x" 1094.013916015625;
	setAttr ".tgi[6].ni[24].y" 1019.3624267578125;
	setAttr ".tgi[6].ni[24].nvs" 18313;
	setAttr ".tgi[6].ni[25].x" 1113.575439453125;
	setAttr ".tgi[6].ni[25].y" -298.18435668945313;
	setAttr ".tgi[6].ni[25].nvs" 18313;
	setAttr ".tgi[6].ni[26].x" 1097.327392578125;
	setAttr ".tgi[6].ni[26].y" 646.78179931640625;
	setAttr ".tgi[6].ni[26].nvs" 18313;
	setAttr ".tgi[6].ni[27].x" -204.069091796875;
	setAttr ".tgi[6].ni[27].y" -633.51190185546875;
	setAttr ".tgi[6].ni[27].nvs" 18312;
	setAttr ".tgi[6].ni[28].x" 1110.2620849609375;
	setAttr ".tgi[6].ni[28].y" -657.51153564453125;
	setAttr ".tgi[6].ni[28].nvs" 18313;
	setAttr ".tgi[6].ni[29].x" 541.53466796875;
	setAttr ".tgi[6].ni[29].y" -859.11834716796875;
	setAttr ".tgi[6].ni[29].nvs" 18312;
	setAttr ".tgi[6].ni[30].x" -554.28570556640625;
	setAttr ".tgi[6].ni[30].y" 71.428573608398438;
	setAttr ".tgi[6].ni[30].nvs" 18312;
	setAttr ".tgi[6].ni[31].x" 561.65032958984375;
	setAttr ".tgi[6].ni[31].y" 443.26239013671875;
	setAttr ".tgi[6].ni[31].nvs" 18312;
	setAttr ".tgi[6].ni[32].x" 539.87799072265625;
	setAttr ".tgi[6].ni[32].y" -778.48486328125;
	setAttr ".tgi[6].ni[32].nvs" 18312;
	setAttr ".tgi[6].ni[33].x" 1115.232177734375;
	setAttr ".tgi[6].ni[33].y" -479.33154296875;
	setAttr ".tgi[6].ni[33].nvs" 18313;
	setAttr ".tgi[6].ni[34].x" 541.53466796875;
	setAttr ".tgi[6].ni[34].y" -495.56292724609375;
	setAttr ".tgi[6].ni[34].nvs" 18312;
	setAttr ".tgi[6].ni[35].x" 544.84808349609375;
	setAttr ".tgi[6].ni[35].y" -419.15771484375;
	setAttr ".tgi[6].ni[35].nvs" 18312;
	setAttr ".tgi[6].ni[36].x" 541.53466796875;
	setAttr ".tgi[6].ni[36].y" -132.35371398925781;
	setAttr ".tgi[6].ni[36].nvs" 18312;
	setAttr ".tgi[6].ni[37].x" 1111.9188232421875;
	setAttr ".tgi[6].ni[37].y" -846.2003173828125;
	setAttr ".tgi[6].ni[37].nvs" 18313;
	setAttr ".tgi[6].ni[38].x" 546.740234375;
	setAttr ".tgi[6].ni[38].y" 907.10894775390625;
	setAttr ".tgi[6].ni[38].nvs" 18312;
	setAttr ".tgi[6].ni[39].x" -202.41241455078125;
	setAttr ".tgi[6].ni[39].y" 308.46310424804688;
	setAttr ".tgi[6].ni[39].nvs" 18312;
	setAttr ".tgi[7].tn" -type "string" "Untitled_8";
	setAttr ".tgi[7].vl" -type "double2" 112.68807953347734 -1187.476811317099 ;
	setAttr ".tgi[7].vh" -type "double2" 1777.5926227364203 480.06624938695791 ;
	setAttr -s 37 ".tgi[7].ni";
	setAttr ".tgi[7].ni[0].x" 1188.3603515625;
	setAttr ".tgi[7].ni[0].y" -390.92611694335938;
	setAttr ".tgi[7].ni[0].nvs" 18304;
	setAttr ".tgi[7].ni[1].x" 232.41238403320313;
	setAttr ".tgi[7].ni[1].y" -362.45321655273438;
	setAttr ".tgi[7].ni[1].nvs" 18304;
	setAttr ".tgi[7].ni[2].x" 816.35516357421875;
	setAttr ".tgi[7].ni[2].y" -327.38729858398438;
	setAttr ".tgi[7].ni[2].nvs" 18304;
	setAttr ".tgi[7].ni[3].x" -137.14285278320313;
	setAttr ".tgi[7].ni[3].y" -518.5714111328125;
	setAttr ".tgi[7].ni[3].nvs" 18304;
	setAttr ".tgi[7].ni[4].x" -762.85711669921875;
	setAttr ".tgi[7].ni[4].y" -254.28572082519531;
	setAttr ".tgi[7].ni[4].nvs" 18304;
	setAttr ".tgi[7].ni[5].x" -762.85711669921875;
	setAttr ".tgi[7].ni[5].y" -500;
	setAttr ".tgi[7].ni[5].nvs" 18304;
	setAttr ".tgi[7].ni[6].x" 817.67437744140625;
	setAttr ".tgi[7].ni[6].y" -419.66033935546875;
	setAttr ".tgi[7].ni[6].nvs" 18304;
	setAttr ".tgi[7].ni[7].x" 240.32794189453125;
	setAttr ".tgi[7].ni[7].y" -453.64813232421875;
	setAttr ".tgi[7].ni[7].nvs" 18304;
	setAttr ".tgi[7].ni[8].x" 1173.8485107421875;
	setAttr ".tgi[7].ni[8].y" 48.220970153808594;
	setAttr ".tgi[7].ni[8].nvs" 18304;
	setAttr ".tgi[7].ni[9].x" -137.14285278320313;
	setAttr ".tgi[7].ni[9].y" -72.857139587402344;
	setAttr ".tgi[7].ni[9].nvs" 18304;
	setAttr ".tgi[7].ni[10].x" 1190.998779296875;
	setAttr ".tgi[7].ni[10].y" -583.87005615234375;
	setAttr ".tgi[7].ni[10].nvs" 18304;
	setAttr ".tgi[7].ni[11].x" 538.2359619140625;
	setAttr ".tgi[7].ni[11].y" -423.9610595703125;
	setAttr ".tgi[7].ni[11].nvs" 18304;
	setAttr ".tgi[7].ni[12].x" -455.71429443359375;
	setAttr ".tgi[7].ni[12].y" -417.14285278320313;
	setAttr ".tgi[7].ni[12].nvs" 18304;
	setAttr ".tgi[7].ni[13].x" -137.14285278320313;
	setAttr ".tgi[7].ni[13].y" -414.28570556640625;
	setAttr ".tgi[7].ni[13].nvs" 18304;
	setAttr ".tgi[7].ni[14].x" -455.71429443359375;
	setAttr ".tgi[7].ni[14].y" -112.85713958740234;
	setAttr ".tgi[7].ni[14].nvs" 18304;
	setAttr ".tgi[7].ni[15].x" 542.19378662109375;
	setAttr ".tgi[7].ni[15].y" -217.48252868652344;
	setAttr ".tgi[7].ni[15].nvs" 18304;
	setAttr ".tgi[7].ni[16].x" -762.85711669921875;
	setAttr ".tgi[7].ni[16].y" -622.85711669921875;
	setAttr ".tgi[7].ni[16].nvs" 18304;
	setAttr ".tgi[7].ni[17].x" -137.14285278320313;
	setAttr ".tgi[7].ni[17].y" -188.57142639160156;
	setAttr ".tgi[7].ni[17].nvs" 18304;
	setAttr ".tgi[7].ni[18].x" -762.85711669921875;
	setAttr ".tgi[7].ni[18].y" -131.42857360839844;
	setAttr ".tgi[7].ni[18].nvs" 18304;
	setAttr ".tgi[7].ni[19].x" 812.39739990234375;
	setAttr ".tgi[7].ni[19].y" -105.84283447265625;
	setAttr ".tgi[7].ni[19].nvs" 18304;
	setAttr ".tgi[7].ni[20].x" -762.85711669921875;
	setAttr ".tgi[7].ni[20].y" -8.5714282989501953;
	setAttr ".tgi[7].ni[20].nvs" 18304;
	setAttr ".tgi[7].ni[21].x" 227.13534545898438;
	setAttr ".tgi[7].ni[21].y" -165.22871398925781;
	setAttr ".tgi[7].ni[21].nvs" 18304;
	setAttr ".tgi[7].ni[22].x" -137.14285278320313;
	setAttr ".tgi[7].ni[22].y" -295.71429443359375;
	setAttr ".tgi[7].ni[22].nvs" 18304;
	setAttr ".tgi[7].ni[23].x" 229.77386474609375;
	setAttr ".tgi[7].ni[23].y" -266.47946166992188;
	setAttr ".tgi[7].ni[23].nvs" 18304;
	setAttr ".tgi[7].ni[24].x" 1188.3603515625;
	setAttr ".tgi[7].ni[24].y" -312.26882934570313;
	setAttr ".tgi[7].ni[24].nvs" 18304;
	setAttr ".tgi[7].ni[25].x" 1177.8062744140625;
	setAttr ".tgi[7].ni[25].y" -142.25053405761719;
	setAttr ".tgi[7].ni[25].nvs" 18304;
	setAttr ".tgi[7].ni[26].x" 811.078125;
	setAttr ".tgi[7].ni[26].y" -206.06146240234375;
	setAttr ".tgi[7].ni[26].nvs" 18304;
	setAttr ".tgi[7].ni[27].x" 529.00115966796875;
	setAttr ".tgi[7].ni[27].y" -102.86136627197266;
	setAttr ".tgi[7].ni[27].nvs" 18304;
	setAttr ".tgi[7].ni[28].x" 1192.318115234375;
	setAttr ".tgi[7].ni[28].y" -492.02017211914063;
	setAttr ".tgi[7].ni[28].nvs" 18304;
	setAttr ".tgi[7].ni[29].x" 527.681884765625;
	setAttr ".tgi[7].ni[29].y" -325.1710205078125;
	setAttr ".tgi[7].ni[29].nvs" 18304;
	setAttr ".tgi[7].ni[30].x" 235.0509033203125;
	setAttr ".tgi[7].ni[30].y" -71.395256042480469;
	setAttr ".tgi[7].ni[30].nvs" 18304;
	setAttr ".tgi[7].ni[31].x" -455.71429443359375;
	setAttr ".tgi[7].ni[31].y" -315.71429443359375;
	setAttr ".tgi[7].ni[31].nvs" 18304;
	setAttr ".tgi[7].ni[32].x" 1180.4447021484375;
	setAttr ".tgi[7].ni[32].y" -223.05746459960938;
	setAttr ".tgi[7].ni[32].nvs" 18304;
	setAttr ".tgi[7].ni[33].x" 1180.4447021484375;
	setAttr ".tgi[7].ni[33].y" -49.081394195556641;
	setAttr ".tgi[7].ni[33].nvs" 18304;
	setAttr ".tgi[7].ni[34].x" -455.71429443359375;
	setAttr ".tgi[7].ni[34].y" -214.28572082519531;
	setAttr ".tgi[7].ni[34].nvs" 18304;
	setAttr ".tgi[7].ni[35].x" -455.71429443359375;
	setAttr ".tgi[7].ni[35].y" -518.5714111328125;
	setAttr ".tgi[7].ni[35].nvs" 18304;
	setAttr ".tgi[7].ni[36].x" -762.85711669921875;
	setAttr ".tgi[7].ni[36].y" -377.14285278320313;
	setAttr ".tgi[7].ni[36].nvs" 18304;
	setAttr ".tgi[8].tn" -type "string" "Untitled_9";
	setAttr ".tgi[8].vl" -type "double2" -669.04759246205629 -655.23165459131053 ;
	setAttr ".tgi[8].vh" -type "double2" 674.99997317791099 690.94593888643806 ;
	setAttr -s 4 ".tgi[8].ni";
	setAttr ".tgi[8].ni[0].x" 367.14285278320313;
	setAttr ".tgi[8].ni[0].y" 44.285713195800781;
	setAttr ".tgi[8].ni[0].nvs" 18304;
	setAttr ".tgi[8].ni[1].x" -554.28570556640625;
	setAttr ".tgi[8].ni[1].y" 44.285713195800781;
	setAttr ".tgi[8].ni[1].nvs" 18304;
	setAttr ".tgi[8].ni[2].x" -247.14285278320313;
	setAttr ".tgi[8].ni[2].y" 44.285713195800781;
	setAttr ".tgi[8].ni[2].nvs" 18304;
	setAttr ".tgi[8].ni[3].x" 60;
	setAttr ".tgi[8].ni[3].y" 44.285713195800781;
	setAttr ".tgi[8].ni[3].nvs" 18304;
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
	setAttr -s 51 ".u";
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
connectAttr "parent_space_decomp.ot" "|temp:Spine_component|temp:input|temp:fit_spine.t"
		;
connectAttr "parent_space_decomp.os" "|temp:Spine_component|temp:input|temp:fit_spine.s"
		;
connectAttr "parent_space_decomp.or" "|temp:Spine_component|temp:input|temp:fit_spine.r"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.fit_display" "|temp:Spine_component|temp:input|temp:fit_spine.v"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.p" "temp:spine_twist_end_ctrl.t"
		;
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.p" "temp:chest_twist_end_ctrl.t"
		;
connectAttr "parent_space_decomp.ot" "temp:ik_ctrl_space.t";
connectAttr "parent_space_decomp.or" "temp:ik_ctrl_space.r";
connectAttr "parent_space_decomp.os" "temp:ik_ctrl_space.s";
connectAttr "parent_space_decomp.osh" "temp:ik_ctrl_space.sh";
connectAttr "M_Spine_fit_chest_localMat_decomp.ot" "temp:chest_Ctrl_space.t";
connectAttr "temp:fit_chest_sub.t" "temp:chest_sub_ctrl_space.t";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "temp:chest_sub_Ctrl.v"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.v"
		;
connectAttr "M_Spine_fit_spine_localMat_decomp.ot" "temp:spine_Ctrl_space.t";
connectAttr "temp:fit_spine_sub.t" "temp:spine_sub_ctrl_space.t";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "temp:spine_sub_Ctrl.v"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.curve_sub_ctrl_display" "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.v"
		;
connectAttr "M_Spine_fit_spine_start_decomp.ot" "bezierShape1.cp[0]";
connectAttr "M_Spine_fit_spine_sub_decomp.ot" "bezierShape1.cp[1]";
connectAttr "M_Spine_fit_chest_sub_decomp.ot" "bezierShape1.cp[2]";
connectAttr "M_Spine_fit_chest_decomp.ot" "bezierShape1.cp[3]";
connectAttr "spineA_pointOnCurveInfo.p" "temp:init_spineA_space.t";
connectAttr "temp:init_spineA_space_aimConstraint1.crx" "temp:init_spineA_space.rx"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.cry" "temp:init_spineA_space.ry"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.crz" "temp:init_spineA_space.rz"
		;
connectAttr "unitConversion11.o" "temp:twist_spineA.ry";
connectAttr "temp:init_spineA_space.pim" "temp:init_spineA_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineA_space.t" "temp:init_spineA_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineA_space.rp" "temp:init_spineA_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineA_space.rpt" "temp:init_spineA_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineA_space.ro" "temp:init_spineA_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineB_space.t" "temp:init_spineA_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineB_space.rp" "temp:init_spineA_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineB_space.rpt" "temp:init_spineA_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineB_space.pm" "temp:init_spineA_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.w0" "temp:init_spineA_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineA_space_aimConstraint1.wum"
		;
connectAttr "spineB_pointOnCurveInfo.p" "temp:init_spineB_space.t";
connectAttr "temp:init_spineB_space_aimConstraint1.crx" "temp:init_spineB_space.rx"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.cry" "temp:init_spineB_space.ry"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.crz" "temp:init_spineB_space.rz"
		;
connectAttr "unitConversion12.o" "temp:twist_spineB.ry";
connectAttr "temp:init_spineB_space.pim" "temp:init_spineB_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineB_space.t" "temp:init_spineB_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineB_space.rp" "temp:init_spineB_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineB_space.rpt" "temp:init_spineB_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineB_space.ro" "temp:init_spineB_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineC_space.t" "temp:init_spineB_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineC_space.rp" "temp:init_spineB_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineC_space.rpt" "temp:init_spineB_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineC_space.pm" "temp:init_spineB_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.w0" "temp:init_spineB_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineB_space_aimConstraint1.wum"
		;
connectAttr "spineC_pointOnCurveInfo.p" "temp:init_spineC_space.t";
connectAttr "temp:init_spineC_space_aimConstraint1.crx" "temp:init_spineC_space.rx"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.cry" "temp:init_spineC_space.ry"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.crz" "temp:init_spineC_space.rz"
		;
connectAttr "unitConversion13.o" "temp:twist_spineC.ry";
connectAttr "temp:init_spineC_space.pim" "temp:init_spineC_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineC_space.t" "temp:init_spineC_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineC_space.rp" "temp:init_spineC_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineC_space.rpt" "temp:init_spineC_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineC_space.ro" "temp:init_spineC_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineD_space.t" "temp:init_spineC_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineD_space.rp" "temp:init_spineC_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineD_space.rpt" "temp:init_spineC_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineD_space.pm" "temp:init_spineC_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.w0" "temp:init_spineC_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineC_space_aimConstraint1.wum"
		;
connectAttr "spineD_pointOnCurveInfo.p" "temp:init_spineD_space.t";
connectAttr "temp:init_spineD_space_aimConstraint1.crx" "temp:init_spineD_space.rx"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.cry" "temp:init_spineD_space.ry"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.crz" "temp:init_spineD_space.rz"
		;
connectAttr "unitConversion16.o" "temp:twist_spineD.ry";
connectAttr "temp:init_spineD_space.pim" "temp:init_spineD_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_spineD_space.t" "temp:init_spineD_space_aimConstraint1.ct"
		;
connectAttr "temp:init_spineD_space.rp" "temp:init_spineD_space_aimConstraint1.crp"
		;
connectAttr "temp:init_spineD_space.rpt" "temp:init_spineD_space_aimConstraint1.crt"
		;
connectAttr "temp:init_spineD_space.ro" "temp:init_spineD_space_aimConstraint1.cro"
		;
connectAttr "temp:output_spine_end_space.t" "temp:init_spineD_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:output_spine_end_space.rp" "temp:init_spineD_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:output_spine_end_space.rpt" "temp:init_spineD_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:output_spine_end_space.pm" "temp:init_spineD_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.w0" "temp:init_spineD_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_spineD_space_aimConstraint1.wum"
		;
connectAttr "chest_pointOnCurveInfo.p" "temp:init_chest_space.t";
connectAttr "temp:init_chest_space_aimConstraint1.crx" "temp:init_chest_space.rx"
		;
connectAttr "temp:init_chest_space_aimConstraint1.cry" "temp:init_chest_space.ry"
		;
connectAttr "temp:init_chest_space_aimConstraint1.crz" "temp:init_chest_space.rz"
		;
connectAttr "unitConversion19.o" "temp:twist_chest.ry";
connectAttr "temp:init_chest_space.pim" "temp:init_chest_space_aimConstraint1.cpim"
		;
connectAttr "temp:init_chest_space.t" "temp:init_chest_space_aimConstraint1.ct";
connectAttr "temp:init_chest_space.rp" "temp:init_chest_space_aimConstraint1.crp"
		;
connectAttr "temp:init_chest_space.rpt" "temp:init_chest_space_aimConstraint1.crt"
		;
connectAttr "temp:init_chest_space.ro" "temp:init_chest_space_aimConstraint1.cro"
		;
connectAttr "temp:init_spineD_space.t" "temp:init_chest_space_aimConstraint1.tg[0].tt"
		;
connectAttr "temp:init_spineD_space.rp" "temp:init_chest_space_aimConstraint1.tg[0].trp"
		;
connectAttr "temp:init_spineD_space.rpt" "temp:init_chest_space_aimConstraint1.tg[0].trt"
		;
connectAttr "temp:init_spineD_space.pm" "temp:init_chest_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "temp:init_chest_space_aimConstraint1.w0" "temp:init_chest_space_aimConstraint1.tg[0].tw"
		;
connectAttr "temp:fk_init_upVec_Ctrl.wm" "temp:init_chest_space_aimConstraint1.wum"
		;
connectAttr "chest_pointOnCurveInfo.p" "temp:output_spine_end_space.t";
connectAttr "parent_space_decomp.ot" "temp:fk_spine_jnt_space.t";
connectAttr "parent_space_decomp.or" "temp:fk_spine_jnt_space.r";
connectAttr "parent_space_decomp.os" "temp:fk_spine_jnt_space.s";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineA_jnt_space.r"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineA_jnt_space.t"
		;
connectAttr "temp:fk_spineA_Ctrl.r" "temp:fk_spineA_jnt.r";
connectAttr "fk_spineB_localMat_decomp.or" "temp:fk_spineB_jnt_space.r";
connectAttr "fk_spineB_localMat_decomp.ot" "temp:fk_spineB_jnt_space.t";
connectAttr "temp:fk_spineB_Ctrl.r" "temp:fk_spineB_jnt.r";
connectAttr "fk_spineC_localMat_decomp.or" "temp:fk_spineC_jnt_space.r";
connectAttr "fk_spineC_localMat_decomp.ot" "temp:fk_spineC_jnt_space.t";
connectAttr "temp:fk_spineC_Ctrl.r" "temp:fk_spineC_jnt.r";
connectAttr "fk_spineD_localMat_decomp.or" "temp:fk_spineD_jnt_space.r";
connectAttr "fk_spineD_localMat_decomp.ot" "temp:fk_spineD_jnt_space.t";
connectAttr "temp:fk_spineD_Ctrl.r" "temp:fk_spineD_jnt.r";
connectAttr "fk_chest_localMat_decomp.or" "temp:fk_chest_jnt_space.r";
connectAttr "fk_chest_localMat_decomp.ot" "temp:fk_chest_jnt_space.t";
connectAttr "temp:fk_chest_Ctrl.r" "temp:fk_chest_jnt.r";
connectAttr "parent_space_decomp.ot" "temp:fk_ctrl_space.t";
connectAttr "parent_space_decomp.or" "temp:fk_ctrl_space.r";
connectAttr "parent_space_decomp.os" "temp:fk_ctrl_space.s";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.fk_display" "temp:fk_ctrl_space.v"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineA_Ctrl_space.t"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineA_Ctrl_space.r"
		;
connectAttr "fk_spineB_localMat_decomp.ot" "temp:fk_spineB_Ctrl_space.t";
connectAttr "fk_spineB_localMat_decomp.or" "temp:fk_spineB_Ctrl_space.r";
connectAttr "fk_spineC_localMat_decomp.ot" "temp:fk_spineC_Ctrl_space.t";
connectAttr "fk_spineC_localMat_decomp.or" "temp:fk_spineC_Ctrl_space.r";
connectAttr "fk_spineD_localMat_decomp.ot" "temp:fk_spineD_Ctrl_space.t";
connectAttr "fk_spineD_localMat_decomp.or" "temp:fk_spineD_Ctrl_space.r";
connectAttr "fk_chest_localMat_decomp.ot" "temp:fk_chest_Ctrl_space.t";
connectAttr "fk_chest_localMat_decomp.or" "temp:fk_chest_Ctrl_space.r";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.or" "temp:chest_local_init.r";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.ot" "temp:chest_local_init.t";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineA_local_init.r"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineA_local_init.t"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineB_local_init.r"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineB_local_init.t"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineC_local_init.t"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineC_local_init.r"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.ot" "temp:fk_spineD_local_init.t"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.or" "temp:fk_spineD_local_init.r"
		;
connectAttr "fk_spineC_jnt_decomp.ot" "temp:end_plug.t";
connectAttr "fk_spineC_jnt_decomp.or" "temp:end_plug.r";
connectAttr "fk_spineC_jnt_decomp.os" "temp:end_plug.s";
connectAttr "fk_spineC_jnt_decomp.osh" "temp:end_plug.sh";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bezierShape1.ws" "spineA_pointOnCurveInfo.ic";
connectAttr "spineA_param.ox" "spineA_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineA_param.i1x";
connectAttr "spineA_twist_combine.o1" "unitConversion11.i";
connectAttr "spineA_spine_twist_mul.ox" "spineA_twist_combine.i1[0]";
connectAttr "spineA_chest_twist_mul.ox" "spineA_twist_combine.i1[1]";
connectAttr "unitConversion1.o" "spineA_spine_twist_mul.i1x";
connectAttr "spineA_spine_twist_remap.ov" "spineA_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion1.i"
		;
connectAttr "spineA_param.ox" "spineA_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineA_spine_twist_remap.imx"
		;
connectAttr "unitConversion6.o" "spineA_chest_twist_mul.i1x";
connectAttr "spineA_chest_twist_remap.ov" "spineA_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion6.i"
		;
connectAttr "spineA_param.ox" "spineA_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineA_chest_twist_remap.imn"
		;
connectAttr "bezierShape1.ws" "spineB_pointOnCurveInfo.ic";
connectAttr "spineB_param.ox" "spineB_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineB_param.i1x";
connectAttr "spineB_twist_combine.o1" "unitConversion12.i";
connectAttr "spineB_spine_twist_mul.ox" "spineB_twist_combine.i1[0]";
connectAttr "spineB_chest_twist_mul.ox" "spineB_twist_combine.i1[1]";
connectAttr "unitConversion2.o" "spineB_spine_twist_mul.i1x";
connectAttr "spineB_spine_twist_remap.ov" "spineB_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion2.i"
		;
connectAttr "spineB_param.ox" "spineB_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineB_spine_twist_remap.imx"
		;
connectAttr "unitConversion7.o" "spineB_chest_twist_mul.i1x";
connectAttr "spineB_chest_twist_remap.ov" "spineB_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion7.i"
		;
connectAttr "spineB_param.ox" "spineB_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineB_chest_twist_remap.imn"
		;
connectAttr "bezierShape1.ws" "spineC_pointOnCurveInfo.ic";
connectAttr "spineC_param.ox" "spineC_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineC_param.i1x";
connectAttr "spineC_twist_combine.o1" "unitConversion13.i";
connectAttr "spineC_spine_twist_mul.ox" "spineC_twist_combine.i1[0]";
connectAttr "spineC_chest_twist_mul.ox" "spineC_twist_combine.i1[1]";
connectAttr "unitConversion3.o" "spineC_spine_twist_mul.i1x";
connectAttr "spineC_spine_twist_remap.ov" "spineC_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion3.i"
		;
connectAttr "spineC_param.ox" "spineC_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineC_spine_twist_remap.imx"
		;
connectAttr "unitConversion8.o" "spineC_chest_twist_mul.i1x";
connectAttr "spineC_chest_twist_remap.ov" "spineC_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion8.i"
		;
connectAttr "spineC_param.ox" "spineC_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineC_chest_twist_remap.imn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.o" "fk_spineB_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "bezierShape1.ws" "spine_twist_end_ctrl_pointOnCurveInfo.ic";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spine_twist_end_ctrl_pointOnCurveInfo.pr"
		;
connectAttr "bezierShape1.ws" "chest_twist_end_ctrl_pointOnCurveInfo.ic";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "chest_twist_end_ctrl_pointOnCurveInfo.pr"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.wm" "M_Spine_fit_spine_start_decomp.imat"
		;
connectAttr "temp:spine_sub_Ctrl.wm" "M_Spine_fit_spine_sub_decomp.imat";
connectAttr "temp:chest_sub_Ctrl.wm" "M_Spine_fit_chest_sub_decomp.imat";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.wm" "M_Spine_fit_chest_decomp.imat"
		;
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine.wm" "M_Spine_fit_spine_localMat.i[0]"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.wim" "M_Spine_fit_spine_localMat.i[1]"
		;
connectAttr "M_Spine_fit_spine_localMat.o" "M_Spine_fit_spine_localMat_decomp.imat"
		;
connectAttr "temp:fit_chest.wm" "M_Spine_fit_chest_localMat.i[0]";
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.wim" "M_Spine_fit_chest_localMat.i[1]"
		;
connectAttr "M_Spine_fit_chest_localMat.o" "M_Spine_fit_chest_localMat_decomp.imat"
		;
connectAttr "temp:parent_space.wm" "parent_space_decomp.imat";
connectAttr "fk_spineC_ctrl_scaleSpaceMat.o" "fk_spineC_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.o" "fk_spineA_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "spineD_param.ox" "spineD_pointOnCurveInfo.pr";
connectAttr "bezierShape1.ws" "spineD_pointOnCurveInfo.ic";
connectAttr "chest_param.ox" "chest_pointOnCurveInfo.pr";
connectAttr "bezierShape1.ws" "chest_pointOnCurveInfo.ic";
connectAttr "spine_param.ox" "spineD_param.i1x";
connectAttr "spine_param.ox" "chest_param.i1x";
connectAttr "fk_spineD_ctrl_scaleSpaceMat.o" "fk_spineD_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.o" "fk_chest_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "temp:fk_spineC_jnt.wm" "fk_spineC_jnt_decomp.imat";
connectAttr "temp:twist_chest.wm" "fk_chest_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_chest_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineD.wm" "fk_spineD_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineD_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineA.wm" "fk_spineA_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineA_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineB.wm" "fk_spineB_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineB_ctrl_scaleSpaceMat.i[1]";
connectAttr "temp:twist_spineC.wm" "fk_spineC_ctrl_scaleSpaceMat.i[0]";
connectAttr "temp:parent_space.wim" "fk_spineC_ctrl_scaleSpaceMat.i[1]";
connectAttr "nodeView1.msg" "MayaNodeEditorBookmarks.b[0]";
connectAttr "temp:twist_chest.msg" "nodeView1.ni[0].dn";
connectAttr "temp:twist_spineD.msg" "nodeView1.ni[1].dn";
connectAttr "temp:twist_spineC.msg" "nodeView1.ni[2].dn";
connectAttr "temp:twist_spineB.msg" "nodeView1.ni[3].dn";
connectAttr "temp:twist_spineA.msg" "nodeView1.ni[4].dn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[5].dn";
connectAttr "temp:fk_spineB_Ctrl_space.msg" "nodeView1.ni[6].dn";
connectAttr "temp:fk_spineB_jnt_space.msg" "nodeView1.ni[7].dn";
connectAttr "temp:fk_spineA_jnt_space.msg" "nodeView1.ni[8].dn";
connectAttr "temp:fk_spineA_Ctrl_space.msg" "nodeView1.ni[11].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[12].dn";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "nodeView1.ni[13].dn"
		;
connectAttr "unitConversion12.msg" "nodeView1.ni[14].dn";
connectAttr "spineB_chest_twist_mul.msg" "nodeView1.ni[16].dn";
connectAttr "temp:fk_spineD_Ctrl_space.msg" "nodeView1.ni[17].dn";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[18].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[19].dn";
connectAttr "spineB_chest_twist_remap.msg" "nodeView1.ni[20].dn";
connectAttr "temp:fk_spineC_jnt_space.msg" "nodeView1.ni[21].dn";
connectAttr "spineC_spine_twist_mul.msg" "nodeView1.ni[22].dn";
connectAttr "spine_param.msg" "nodeView1.ni[23].dn";
connectAttr "temp:chest_twist_end_ctrl.msg" "nodeView1.ni[24].dn";
connectAttr "spineC_spine_twist_remap.msg" "nodeView1.ni[26].dn";
connectAttr "spineC_chest_twist_mul.msg" "nodeView1.ni[27].dn";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "nodeView1.ni[28].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "nodeView1.ni[29].dn";
connectAttr "spineC_twist_combine.msg" "nodeView1.ni[30].dn";
connectAttr "temp:fk_spineD_jnt_space.msg" "nodeView1.ni[31].dn";
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[32].dn";
connectAttr "spineC_chest_twist_remap.msg" "nodeView1.ni[33].dn";
connectAttr "temp:fk_chest_Ctrl_space.msg" "nodeView1.ni[34].dn";
connectAttr "temp:fk_spineC_Ctrl_space.msg" "nodeView1.ni[35].dn";
connectAttr "temp:fk_chest_jnt_space.msg" "nodeView1.ni[36].dn";
connectAttr "spineC_param.msg" "nodeView1.ni[37].dn";
connectAttr "spineB_spine_twist_mul.msg" "nodeView1.ni[38].dn";
connectAttr "temp:spine_twist_end_ctrl.msg" "nodeView1.ni[39].dn";
connectAttr "unitConversion8.msg" "nodeView1.ni[40].dn";
connectAttr "unitConversion13.msg" "nodeView1.ni[41].dn";
connectAttr "unitConversion2.msg" "nodeView1.ni[42].dn";
connectAttr "spineB_twist_combine.msg" "nodeView1.ni[44].dn";
connectAttr "unitConversion7.msg" "nodeView1.ni[45].dn";
connectAttr "spineB_param.msg" "nodeView1.ni[46].dn";
connectAttr "unitConversion3.msg" "nodeView1.ni[47].dn";
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "nodeView1.ni[48].dn";
connectAttr "temp:parent_spaceShape.msg" "nodeView1.ni[49].dn";
connectAttr "temp:parent_space.msg" "nodeView1.ni[50].dn";
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "nodeView1.ni[51].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "nodeView1.ni[52].dn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "nodeView1.ni[53].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "nodeView1.ni[54].dn";
connectAttr "temp:fk_spineB_local_init.wm" "fk_spineB_localMat.i[0]";
connectAttr "temp:fk_spineA_local_init.wim" "fk_spineB_localMat.i[1]";
connectAttr "fk_spineB_localMat.o" "fk_spineB_localMat_decomp.imat";
connectAttr "temp:fk_spineC_local_init.wm" "fk_spineC_localMat.i[0]";
connectAttr "temp:fk_spineB_local_init.wim" "fk_spineC_localMat.i[1]";
connectAttr "fk_spineC_localMat.o" "fk_spineC_localMat_decomp.imat";
connectAttr "temp:fk_spineD_local_init.wm" "fk_spineD_localMat.i[0]";
connectAttr "temp:fk_spineC_local_init.wim" "fk_spineD_localMat.i[1]";
connectAttr "fk_spineD_localMat.o" "fk_spineD_localMat_decomp.imat";
connectAttr "temp:chest_local_init.wm" "fk_chest_localMat.i[0]";
connectAttr "temp:fk_spineD_local_init.wim" "fk_chest_localMat.i[1]";
connectAttr "fk_chest_localMat.o" "fk_chest_localMat_decomp.imat";
connectAttr "spineD_param.ox" "spineD_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "spineD_chest_twist_remap.imn"
		;
connectAttr "unitConversion14.o" "spineD_chest_twist_mul.i1x";
connectAttr "spineD_chest_twist_remap.ov" "spineD_chest_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion14.i"
		;
connectAttr "spineD_spine_twist_mul.ox" "spineD_twist_combine.i1[0]";
connectAttr "spineD_chest_twist_mul.ox" "spineD_twist_combine.i1[1]";
connectAttr "spineD_param.ox" "spineD_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "spineD_spine_twist_remap.imx"
		;
connectAttr "unitConversion15.o" "spineD_spine_twist_mul.i1x";
connectAttr "spineD_spine_twist_remap.ov" "spineD_spine_twist_mul.i2x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion15.i"
		;
connectAttr "spineD_twist_combine.o1" "unitConversion16.i";
connectAttr "chest_param.ox" "chest_chest_twist_remap.i";
connectAttr "temp:chest_twist_end_ctrl.End_UValue" "chest_chest_twist_remap.imn"
		;
connectAttr "chest_param.ox" "chest_spine_twist_remap.i";
connectAttr "temp:spine_twist_end_ctrl.End_UValue" "chest_spine_twist_remap.imx"
		;
connectAttr "unitConversion17.o" "chest_chest_twist_mul.i1x";
connectAttr "chest_chest_twist_remap.ov" "chest_chest_twist_mul.i2x";
connectAttr "chest_spine_twist_mul.ox" "chest_twist_combine.i1[0]";
connectAttr "chest_chest_twist_mul.ox" "chest_twist_combine.i1[1]";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.ry" "unitConversion17.i"
		;
connectAttr "chest_spine_twist_remap.ov" "chest_spine_twist_mul.i2x";
connectAttr "unitConversion18.o" "chest_spine_twist_mul.i1x";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.ry" "unitConversion18.i"
		;
connectAttr "chest_twist_combine.o1" "unitConversion19.i";
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "temp:fit_chest_sub.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "M_Spine_fit_spine_start_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "temp:fk_init_upVec_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "M_Spine_fit_spine_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "temp:fk_spineD_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "temp:fit_spine_sub.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "temp:init_spineB_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "temp:fk_spineA_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "temp:fk_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "spineC_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "temp:fk_spine_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "chest_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "temp:init_chest_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "temp:fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "temp:fk_spineA_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "spineA_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "temp:chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "M_Spine_fit_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "spineB_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "temp:fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "temp:init_chest_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "temp:fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "temp:init_spineD_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "temp:chest_sub_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "temp:fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "temp:fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "M_Spine_fit_spine_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "temp:fk_spineC_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "temp:fit_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "chest_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "temp:fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "temp:init_spineA_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "temp:fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "temp:fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "spineD_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "spineA_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "temp:init_spineA_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "temp:fk_spineA_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "parent_space_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine|temp:fit_spine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "temp:spine_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "spineC_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "bezierShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "spineA_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "temp:parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "temp:fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "temp:fk_spineB_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "temp:init_spineD_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "temp:fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "temp:end_plug.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "spineB_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "temp:fk_spineA_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "temp:fk_spineB_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "temp:fk_chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "spine_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "temp:fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "M_Spine_fit_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "temp:ik_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "temp:output_spine_end_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "temp:chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "temp:init_spineB_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "M_Spine_fit_chest_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "spineB_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "spineD_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "temp:fk_spineC_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "spineD_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "temp:fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "chest_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "temp:init_spineC_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "temp:fk_chest_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "temp:spine_sub_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "spineC_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "temp:spine_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "temp:fk_spineD_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "M_Spine_fit_chest_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "M_Spine_fit_spine_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "temp:init_spineC_space_aimConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "temp:chest_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "fk_spineC_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "temp:fk_spineD_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "temp:fk_spineA_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "fk_spineC_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "temp:fk_spineB_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "temp:end_plug.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn";
connectAttr "temp:fk_spineD_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "temp:fk_spineB_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "temp:fk_spineC_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "temp:fk_chest_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "temp:fk_chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "temp:fk_spineA_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "temp:fk_spineC_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "temp:fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "temp:fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "temp:chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "temp:fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "temp:parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "temp:fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "temp:fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "temp:fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "temp:fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "temp:fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "temp:fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "temp:fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn"
		;
connectAttr "temp:fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "temp:fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "M_Spine_fit_spine_start_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "spineB_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "temp:chest_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "temp:spine_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "M_Spine_fit_chest_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[22].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[23].dn"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[24].dn"
		;
connectAttr "M_Spine_fit_spine_sub_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[25].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[26].dn"
		;
connectAttr "chest_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[27].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[28].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[29].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[30].dn"
		;
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[31].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[32].dn"
		;
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[33].dn"
		;
connectAttr "bezierShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[34].dn";
connectAttr "spineA_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[35].dn"
		;
connectAttr "M_Spine_fit_chest_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[36].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[37].dn"
		;
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[38].dn"
		;
connectAttr "spineC_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[39].dn"
		;
connectAttr "spineD_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[40].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[41].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[42].dn"
		;
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[43].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[44].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[45].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[46].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[47].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "spineA_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn";
connectAttr "spineD_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn";
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "spineC_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn";
connectAttr "spineB_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn";
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "chest_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn";
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "spine_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn";
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[0].dn"
		;
connectAttr "unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[1].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[2].dn"
		;
connectAttr "unitConversion16.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[3].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[4].dn";
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[5].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[6].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[7].dn"
		;
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[8].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[9].dn"
		;
connectAttr "spineB_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[10].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[11].dn"
		;
connectAttr "temp:fk_ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[12].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[13].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[14].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[15].dn"
		;
connectAttr "unitConversion11.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[16].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[17].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[18].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[19].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[20].dn"
		;
connectAttr "temp:chest_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[21].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[22].dn"
		;
connectAttr "spineA_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[23].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[24].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[25].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[26].dn"
		;
connectAttr "chest_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[27].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[28].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[29].dn"
		;
connectAttr "unitConversion12.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[30].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[31].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[32].dn"
		;
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[33].dn"
		;
connectAttr "unitConversion19.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[34].dn"
		;
connectAttr "spineC_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[35].dn"
		;
connectAttr "spineD_twist_combine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[36].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[37].dn"
		;
connectAttr "|temp:Spine_component|temp:input|temp:fit_spine.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[38].dn"
		;
connectAttr "temp:spine_sub_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[39].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[40].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[41].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[42].dn"
		;
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:spine_Ctrl_space|temp:spine_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[0].dn"
		;
connectAttr "spineD_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[1].dn";
connectAttr "chest_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[2].dn"
		;
connectAttr "spineD_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[3].dn"
		;
connectAttr "spineC_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[4].dn"
		;
connectAttr "unitConversion6.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[5].dn";
connectAttr "|temp:Spine_component|temp:ik_spine|temp:ik_ctrl_space|temp:chest_Ctrl_space|temp:chest_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[6].dn"
		;
connectAttr "unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[7].dn"
		;
connectAttr "unitConversion8.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[8].dn";
connectAttr "chest_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[9].dn";
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[10].dn"
		;
connectAttr "chest_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[11].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[12].dn"
		;
connectAttr "spineB_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[13].dn"
		;
connectAttr "temp:spine_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[14].dn"
		;
connectAttr "spineA_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[15].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[16].dn"
		;
connectAttr "spineC_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[17].dn";
connectAttr "spineA_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[18].dn"
		;
connectAttr "unitConversion15.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[19].dn"
		;
connectAttr "unitConversion18.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[20].dn"
		;
connectAttr "unitConversion17.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[21].dn"
		;
connectAttr "spineB_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[22].dn"
		;
connectAttr "spineB_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[23].dn";
connectAttr "spineA_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[24].dn"
		;
connectAttr "spineB_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[25].dn"
		;
connectAttr "spineC_spine_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[26].dn"
		;
connectAttr "temp:chest_twist_end_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[27].dn"
		;
connectAttr "spineD_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[28].dn"
		;
connectAttr "chest_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[29].dn"
		;
connectAttr "spine_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[30].dn";
connectAttr "spineD_spine_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[31].dn"
		;
connectAttr "spineD_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[32].dn"
		;
connectAttr "spineC_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[33].dn"
		;
connectAttr "spineC_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[34].dn"
		;
connectAttr "unitConversion7.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[35].dn"
		;
connectAttr "spineA_chest_twist_remap.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[36].dn"
		;
connectAttr "chest_chest_twist_mul.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[37].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[38].dn"
		;
connectAttr "spineA_param.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[39].dn";
connectAttr "temp:fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[0].dn"
		;
connectAttr "temp:fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[1].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[2].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[3].dn"
		;
connectAttr "temp:twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[4].dn"
		;
connectAttr "temp:twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[5].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[6].dn"
		;
connectAttr "temp:chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[7].dn"
		;
connectAttr "temp:fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[8].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[9].dn"
		;
connectAttr "temp:fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[10].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[11].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[12].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[13].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[14].dn"
		;
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[15].dn"
		;
connectAttr "temp:twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[16].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[17].dn"
		;
connectAttr "temp:twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[18].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[19].dn"
		;
connectAttr "temp:twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[20].dn"
		;
connectAttr "temp:fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[21].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[22].dn"
		;
connectAttr "temp:fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[23].dn"
		;
connectAttr "temp:fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[24].dn"
		;
connectAttr "temp:fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[25].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[26].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[27].dn"
		;
connectAttr "temp:fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[28].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[29].dn"
		;
connectAttr "temp:fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[30].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[31].dn"
		;
connectAttr "temp:fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[32].dn"
		;
connectAttr "temp:fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[33].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[34].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[35].dn"
		;
connectAttr "temp:parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[36].dn"
		;
connectAttr "temp:end_plug.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[0].dn";
connectAttr "temp:fk_spineC_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[1].dn"
		;
connectAttr "temp:fk_spineC_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[2].dn"
		;
connectAttr "fk_spineC_jnt_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[3].dn"
		;
connectAttr "spineA_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineA_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineB_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineC_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_jnt_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "parent_space_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_Spine_fit_spine_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_Spine_fit_spine_localMat_decomp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "M_Spine_fit_chest_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_Spine_fit_chest_localMat_decomp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spineD_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_param.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineB_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spineD_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_chest_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_spine_twist_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_chest_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_twist_combine.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_spine_twist_mul.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of spine_01.ma
>>>>>>> 7fbe2e4865dac72f9e1d3236bb58bc662cf9bf6b
