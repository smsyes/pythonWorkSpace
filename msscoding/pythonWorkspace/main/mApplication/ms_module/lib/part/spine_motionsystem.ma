//Maya ASCII 2016 scene
//Name: spine_motionsystem.ma
//Last modified: Sat, Aug 19, 2017 10:38:48 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2016.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -n "Spine_component";
	rename -uid "73C94587-4A46-8A5E-4F9A-CF8E3FA58974";
createNode transform -n "input" -p "Spine_component";
	rename -uid "BE2D4D88-4821-A03C-1650-55B4F3DD5F03";
createNode transform -n "parent_space" -p "input";
	rename -uid "098D15EF-4CFE-F58E-D8E1-D6A2E87B577C";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
createNode locator -n "parent_spaceShape" -p "parent_space";
	rename -uid "2CECBF09-4E81-9539-AE49-A19C774DE712";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
createNode transform -n "fit_spine" -p "input";
	rename -uid "99C33770-4F77-4DFE-5E4B-F79FE4A26843";
createNode transform -n "fit_spine" -p "|Spine_component|input|fit_spine";
	rename -uid "90EE3FBC-4760-8422-D68F-2080ADE15AB4";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -6.1629758220391547e-033 5.1528527950028264 0 ;
createNode locator -n "fit_spineShape" -p "|Spine_component|input|fit_spine|fit_spine";
	rename -uid "0242E843-4C8D-8505-D6AF-1AA1F50E0758";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "fit_spine_sub" -p "|Spine_component|input|fit_spine|fit_spine";
	rename -uid "D8087DA6-423D-7E80-2299-98A131F83E93";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -1.332267629550188e-015 3.5182144177500998 0 ;
createNode locator -n "fit_spine_subShape" -p "fit_spine_sub";
	rename -uid "20A2A702-4F07-15A6-F8D5-22B18F606DEF";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "fit_chest" -p "|Spine_component|input|fit_spine";
	rename -uid "7FAB5A01-4124-43D7-341B-5FB59C71719E";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -4.0245584642661934e-016 17.28268512563892 0 ;
createNode locator -n "fit_chestShape" -p "fit_chest";
	rename -uid "B89F63A5-423C-890D-E3BD-30BFDAD7D7BE";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "fit_chest_sub" -p "fit_chest";
	rename -uid "0D89146F-44CA-86C2-8332-5999E57BCA27";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -3.9072046689379061 0 ;
createNode locator -n "fit_chest_subShape" -p "fit_chest_sub";
	rename -uid "40AD657C-4F18-3AB6-36B6-8EBE2BABB89C";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
createNode transform -n "ik_spine" -p "Spine_component";
	rename -uid "625535AD-4824-501D-1C5A-E4A50C201430";
createNode transform -n "spine_twist_end_ctrl" -p "ik_spine";
	rename -uid "D382DD52-48D7-1537-47EC-808F87E2804C";
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
createNode nurbsCurve -n "nurbsCircleShape1" -p "spine_twist_end_ctrl";
	rename -uid "2E5C8F3D-4A7B-9252-BBE5-5186EC475D6E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.079248709591617 6.6084923884264133e-017 -1.0792487095916141
		-1.0108341068570976e-016 9.3458195625520092e-017 -1.5262881622781241
		-1.0792487095916143 6.6084923884264195e-017 -1.0792487095916143
		-1.5262881622781241 2.7081846952830656e-032 -5.3967721636980937e-016
		-1.0792487095916146 -6.6084923884264145e-017 1.0792487095916143
		-3.8685259177240873e-016 -9.3458195625520104e-017 1.5262881622781244
		1.0792487095916141 -6.6084923884264207e-017 1.0792487095916146
		1.5262881622781241 -5.0196579182590163e-032 7.223752576859768e-016
		1.079248709591617 6.6084923884264133e-017 -1.0792487095916141
		-1.0108341068570976e-016 9.3458195625520092e-017 -1.5262881622781241
		-1.0792487095916143 6.6084923884264195e-017 -1.0792487095916143
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "spine_twist_end_ctrl";
	rename -uid "3289BE03-444B-C1E7-D3D1-AFA4CCC6160E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.72413667245901314 4.4340582903607194e-017 -0.72413667245901137
		-4.5752785818672678e-018 6.2707053705809874e-017 -1.0240839032032572
		-0.72413667245901137 4.4340582903607243e-017 -0.72413667245901137
		-1.0240839032032572 1.8170935357326246e-032 -4.4643449427454046e-016
		-0.7241366724590117 -4.43405829036072e-017 0.72413667245901137
		-1.9631601641583945e-016 -6.2707053705809886e-017 1.0240839032032574
		0.72413667245901137 -4.4340582903607256e-017 0.7241366724590117
		1.0240839032032572 -3.3680080870201433e-032 4.0035686244362902e-016
		0.72413667245901314 4.4340582903607194e-017 -0.72413667245901137
		-4.5752785818672678e-018 6.2707053705809874e-017 -1.0240839032032572
		-0.72413667245901137 4.4340582903607243e-017 -0.72413667245901137
		;
createNode transform -n "chest_twist_end_ctrl" -p "ik_spine";
	rename -uid "47E4FB57-4E54-C054-D031-3DAADC36A04F";
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
createNode nurbsCurve -n "nurbsCircleShape1" -p "chest_twist_end_ctrl";
	rename -uid "89377C21-4BA9-F8F0-73D6-E99B09CA623C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0779747132623019 6.6006914107923055e-017 -1.0779747132622997
		-1.7392567667169365e-016 9.3347873141820861e-017 -1.5244864593907945
		-1.0779747132623001 6.6006914107923092e-017 -1.0779747132623001
		-1.5244864593907945 2.7049878257105222e-032 -5.3897462781090262e-016
		-1.0779747132623012 -6.6006914107923067e-017 1.0779747132622999
		-4.5935752227260472e-016 -9.3347873141820861e-017 1.5244864593907947
		1.0779747132622997 -6.6006914107923116e-017 1.0779747132623012
		1.5244864593907945 -5.0137324761385433e-032 7.2158805968775279e-016
		1.0779747132623019 6.6006914107923055e-017 -1.0779747132622997
		-1.7392567667169365e-016 9.3347873141820861e-017 -1.5244864593907945
		-1.0779747132623001 6.6006914107923092e-017 -1.0779747132623001
		;
createNode nurbsCurve -n "nurbsCircleShape2" -p "chest_twist_end_ctrl";
	rename -uid "BFA4F17F-44A7-FD30-75FA-C18CDB36E551";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.7237251376202577 4.4315383662456245e-017 -0.72372513762025559
		-1.1676932931384003e-016 6.2671416597212709e-017 -1.0235019050529022
		-0.72372513762025592 4.4315383662456269e-017 -0.72372513762025592
		-1.0235019050529022 1.8160608614824834e-032 -4.4614923304120937e-016
		-0.72372513762025714 -4.4315383662456257e-017 0.72372513762025581
		-3.0840109877674598e-016 -6.2671416597212709e-017 1.0235019050529024
		0.72372513762025559 -4.4315383662456288e-017 0.72372513762025714
		1.0235019050529022 -3.366094010965533e-032 4.0016088283155273e-016
		0.7237251376202577 4.4315383662456245e-017 -0.72372513762025559
		-1.1676932931384003e-016 6.2671416597212709e-017 -1.0235019050529022
		-0.72372513762025592 4.4315383662456269e-017 -0.72372513762025592
		;
createNode transform -n "ik_ctrl_space" -p "ik_spine";
	rename -uid "97BA2508-4262-BDB1-3EE5-2EB9100CE76B";
createNode transform -n "chest_Ctrl_space" -p "ik_ctrl_space";
	rename -uid "BCBA7543-43D9-195F-3847-5DAE37FC5BD3";
createNode transform -n "chest_Ctrl" -p "chest_Ctrl_space";
	rename -uid "23994676-4848-6032-FEF0-439170429584";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 9.4663308626521417e-030 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "chest_CtrlShape" -p "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl";
	rename -uid "235E9AFC-48E0-D9A0-F5CF-75AA85E2D0B2";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2622352353850834 2.7704391399327006e-016 -2.2622352353850741
		-4.3227832762291528e-016 3.9179926054220778e-016 -3.1992837511598755
		-2.262235235385079 2.7704391399327016e-016 -2.2622352353850785
		-3.199283751159876 1.1353362366156046e-031 -7.5047175591964874e-016
		-2.2622352353850825 -2.7704391399327006e-016 2.2622352353850745
		-1.0312849374025023e-015 -3.9179926054220778e-016 3.1992837511598755
		2.2622352353850737 -2.7704391399327035e-016 2.2622352353850785
		3.1992837511598751 -2.1043614713354141e-031 1.8949421791076717e-015
		2.2622352353850834 2.7704391399327006e-016 -2.2622352353850741
		-4.3227832762291528e-016 3.9179926054220778e-016 -3.1992837511598755
		-2.262235235385079 2.7704391399327016e-016 -2.2622352353850785
		;
createNode transform -n "chest_sub_ctrl_space" -p "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl";
	rename -uid "52D4344C-4746-8568-73F7-93AAC26AB81C";
createNode transform -n "chest_sub_Ctrl" -p "chest_sub_ctrl_space";
	rename -uid "472F57C9-457B-EE2F-17BB-9F8C4E90E59C";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "chest_sub_CtrlShape" -p "chest_sub_Ctrl";
	rename -uid "63A537B7-481D-212B-9C62-CABA9BEF5778";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		4.1633363423443272e-017 0.9889330522182388 7.1054273576010019e-015
		4.1633363423443272e-017 -2.1958724887710419e-016 -0.98893305221824157
		4.1633363423443272e-017 -0.9889330522182388 7.1054273576010019e-015
		4.1633363423443272e-017 -2.1958724887710419e-016 0.98893305221822914
		-0.98893305221824035 -2.1958724887710419e-016 7.1054273576010019e-015
		4.1633363423443272e-017 -2.1958724887710419e-016 -0.98893305221823979
		0.98893305221824035 -2.1958724887710419e-016 7.1054273576010019e-015
		4.1633363423443272e-017 -2.1958724887710419e-016 0.98893305221824157
		4.1633363423443272e-017 0.9889330522182388 7.1054273576010019e-015
		0.98893305221824035 -2.1958724887710419e-016 7.1054273576010019e-015
		4.1633363423443272e-017 -0.9889330522182388 7.1054273576010019e-015
		-0.98893305221824035 -2.1958724887710419e-016 7.1054273576010019e-015
		4.1633363423443272e-017 0.9889330522182388 7.1054273576010019e-015
		;
createNode transform -n "chest_Ctrl" -p "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl";
	rename -uid "29B37A62-46AC-9B59-95E1-E6B3E84E5D7D";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "chest_CtrlShape" -p "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl|chest_Ctrl";
	rename -uid "CAED73FF-4173-F9CA-6855-C2BA69677723";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		4.1633363423443272e-017 1.0430785327837251 -1.7763568394002505e-015
		4.1633363423443272e-017 -4.4408920985006262e-016 -1.0430785327837278
		4.1633363423443272e-017 -1.0430785327837242 -1.7763568394002505e-015
		4.1633363423443272e-017 -4.4408920985006262e-016 1.043078532783726
		-1.0430785327837264 -4.4408920985006262e-016 5.3290705182007514e-015
		4.1633363423443272e-017 -4.4408920985006262e-016 -1.0430785327837278
		1.0430785327837264 -4.4408920985006262e-016 5.3290705182007514e-015
		4.1633363423443272e-017 -4.4408920985006262e-016 1.043078532783726
		4.1633363423443272e-017 1.0430785327837251 -1.7763568394002505e-015
		1.0430785327837264 -4.4408920985006262e-016 5.3290705182007514e-015
		4.1633363423443272e-017 -1.0430785327837242 -1.7763568394002505e-015
		-1.0430785327837264 -4.4408920985006262e-016 5.3290705182007514e-015
		4.1633363423443272e-017 1.0430785327837251 -1.7763568394002505e-015
		;
createNode transform -n "spine_Ctrl_space" -p "ik_ctrl_space";
	rename -uid "9861D28B-4787-90D4-2B01-7A8EC9C34C1D";
createNode transform -n "spine_Ctrl" -p "spine_Ctrl_space";
	rename -uid "CCDEB6D6-48BA-E251-6E52-0FAA0F84FFF6";
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
	setAttr ".t" -type "double3" 1.9721522630525295e-031 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fit_display" 1;
	setAttr -k on ".fk_display" 1;
	setAttr -k on ".curve_sub_ctrl_display";
createNode nurbsCurve -n "spine_CtrlShape" -p "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl";
	rename -uid "2528C166-43C3-8787-6D44-AE8F05AD8277";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2485521040442364 2.7536821369338074e-016 -2.248552104044224
		-5.8483692409169886e-016 3.8942946245163267e-016 -3.1799328812418981
		-2.2485521040442293 2.7536821369338183e-016 -2.248552104044224
		-3.1799328812419043 1.4011002956185187e-031 1.2327001432704876e-014
		-2.2485521040442311 -2.7536821369338168e-016 2.2485521040442351
		-1.1802204419896638e-015 -3.8942946245163267e-016 3.1799328812419194
		2.2485521040442293 -2.7536821369338183e-016 2.2485521040442369
		3.1799328812419034 -1.8190020985697336e-031 1.4956414579769165e-014
		2.2485521040442364 2.7536821369338074e-016 -2.248552104044224
		-5.8483692409169886e-016 3.8942946245163267e-016 -3.1799328812418981
		-2.2485521040442293 2.7536821369338183e-016 -2.248552104044224
		;
createNode transform -n "spine_sub_ctrl_space" -p "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl";
	rename -uid "9C3067F1-4218-C92F-C1D2-B8B0118B8F46";
createNode transform -n "spine_sub_Ctrl" -p "spine_sub_ctrl_space";
	rename -uid "13813C8E-47F8-5627-C848-4D909F1BC44E";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 0 -4.2632564145606024e-014 -1.9721522630525295e-031 ;
createNode nurbsCurve -n "spine_sub_CtrlShape" -p "spine_sub_Ctrl";
	rename -uid "C6D1D42D-47F0-17EC-9B3E-D3B0F68B652E";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		6.3285229292198063e-017 0.94403305988006958 4.4408920985006262e-015
		6.3285229292198063e-017 4.241051954068098e-014 -0.94403305988002995
		6.3285229292198063e-017 -0.9440330598799842 4.4408920985006262e-015
		6.3285229292198063e-017 4.241051954068098e-014 0.94403305988002995
		-0.94403305988002839 4.241051954068098e-014 6.2172489379008766e-015
		6.3285229292198063e-017 4.241051954068098e-014 -0.94403305988002639
		0.94403305988002839 4.241051954068098e-014 6.2172489379008766e-015
		6.3285229292198063e-017 4.241051954068098e-014 0.94403305988002995
		6.3285229292198063e-017 0.94403305988006958 4.4408920985006262e-015
		0.94403305988002839 4.241051954068098e-014 6.2172489379008766e-015
		6.3285229292198063e-017 -0.9440330598799842 4.4408920985006262e-015
		-0.94403305988002839 4.241051954068098e-014 6.2172489379008766e-015
		6.3285229292198063e-017 0.94403305988006958 4.4408920985006262e-015
		;
createNode transform -n "spine_Ctrl" -p "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl";
	rename -uid "04D2E30F-4219-E93A-C9A8-008657DB722F";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "spine_CtrlShape" -p "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl|spine_Ctrl";
	rename -uid "04C7B935-4DB2-C9AF-7E9D-B694D75969CE";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 2 3 4 5 6 7 8 9 10 11 12 13 14
		13
		-6.1629758220391547e-033 1.0037929107292245 3.5527136788005009e-015
		-6.1629758220391547e-033 -2.2288680028941787e-016 -1.0037929107292296
		-6.1629758220391547e-033 -1.0037929107292245 3.5527136788005009e-015
		-6.1629758220391547e-033 -2.2288680028941787e-016 1.0037929107292296
		-1.0037929107292258 -2.2288680028941787e-016 5.3290705182007514e-015
		-6.1629758220391547e-033 -2.2288680028941787e-016 -1.0037929107292207
		1.0037929107292258 -2.2288680028941787e-016 5.3290705182007514e-015
		-6.1629758220391547e-033 -2.2288680028941787e-016 1.0037929107292296
		-6.1629758220391547e-033 1.0037929107292245 3.5527136788005009e-015
		1.0037929107292258 -2.2288680028941787e-016 5.3290705182007514e-015
		-6.1629758220391547e-033 -1.0037929107292245 3.5527136788005009e-015
		-1.0037929107292258 -2.2288680028941787e-016 5.3290705182007514e-015
		-6.1629758220391547e-033 1.0037929107292245 3.5527136788005009e-015
		;
createNode transform -n "upVec_Ctrl_space" -p "spine_Ctrl_space";
	rename -uid "F9F495F9-4458-C101-51BA-9390FC378B53";
	setAttr ".t" -type "double3" -0.13828114467012398 6.7086543307026814 -9.656325252554522 ;
createNode transform -n "fk_init_upVec_Ctrl" -p "upVec_Ctrl_space";
	rename -uid "4D5474D5-4923-02AF-D493-65B65914CD09";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_init_upVec_CtrlShape" -p "fk_init_upVec_Ctrl";
	rename -uid "1CFB176E-4B5A-6E99-52C0-EE97FAA96795";
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
createNode transform -n "spine_curve" -p "ik_spine";
	rename -uid "D342FC77-406E-241C-D67E-799FA1F1CBA3";
createNode bezierCurve -n "bezierShape1" -p "spine_curve";
	rename -uid "D2C0B8E1-4604-ACDC-5450-4AAD2F8A93DC";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		1.910522504832138e-031 5.1528527950028264 0
		-1.3322676295501878e-015 8.6710672127528845 -1.9721522630525295e-031
		-4.0245584642661934e-016 13.375480456701014 0
		-4.0245584642661934e-016 17.28268512563892 0
		;
createNode transform -n "offset_Fk" -p "Spine_component";
	rename -uid "61CF46E3-4581-3A2A-07CD-6386E8759864";
createNode transform -n "init_on_curve_space" -p "offset_Fk";
	rename -uid "6974A9DE-40F3-1834-E875-49A0AFEABC54";
createNode transform -n "init_spineA_space" -p "init_on_curve_space";
	rename -uid "29C2D588-4BD6-73A1-2CC6-0994DBB73FC0";
createNode transform -n "twist_spineA" -p "init_spineA_space";
	rename -uid "04525758-449E-9746-81C3-02894CA09F46";
createNode aimConstraint -n "init_spineA_space_aimConstraint1" -p "init_spineA_space";
	rename -uid "86A72029-4000-D75C-0AA1-91A0403A1C7B";
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
	setAttr ".rsrr" -type "double3" 14.919429362848538 -2.3065762020292835e-015 1.7615887966663944e-014 ;
	setAttr -k on ".w0";
createNode transform -n "init_spineB_space" -p "init_on_curve_space";
	rename -uid "EE8C8DA8-4F84-B5FE-1ED1-02A13E957AD7";
createNode transform -n "twist_spineB" -p "init_spineB_space";
	rename -uid "440DA91E-4254-B0FF-E201-648B11D172E8";
createNode aimConstraint -n "init_spineB_space_aimConstraint1" -p "init_spineB_space";
	rename -uid "E3064CE7-45D5-C7EC-B801-61B16405F204";
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
createNode transform -n "init_spineC_space" -p "init_on_curve_space";
	rename -uid "C8E8C423-42DB-B3CE-3395-C0965A9891CC";
createNode transform -n "twist_spineC" -p "init_spineC_space";
	rename -uid "539ADA77-410E-8F08-9203-9DAE7E5B5511";
createNode aimConstraint -n "init_spineC_space_aimConstraint1" -p "init_spineC_space";
	rename -uid "83A5EC95-4BE0-19EA-DCB2-F8A35D48CE5B";
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
createNode transform -n "init_spineD_space" -p "init_on_curve_space";
	rename -uid "A88B1C9B-456D-3B46-63E0-9E9FF7AE11E0";
createNode transform -n "twist_spineD" -p "init_spineD_space";
	rename -uid "4E6BC9C0-4A5D-A845-4CB0-2987BB4271BA";
createNode aimConstraint -n "init_spineD_space_aimConstraint1" -p "init_spineD_space";
	rename -uid "9F5AB741-4387-B607-912D-EE9CB3FEFA15";
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
	setAttr ".rsrr" -type "double3" 23.950862842443442 1.9207835621546834e-015 -9.0556683396695464e-015 ;
	setAttr -k on ".w0";
createNode transform -n "init_chest_space" -p "init_on_curve_space";
	rename -uid "F5B1A890-4C17-35C6-7BB4-AA9E50D3DC37";
createNode transform -n "twist_chest" -p "init_chest_space";
	rename -uid "9D773656-4476-E8DC-0877-6F8A863955AF";
createNode aimConstraint -n "init_chest_space_aimConstraint1" -p "init_chest_space";
	rename -uid "963DBFAF-41EB-BC5D-A140-BB8176321F55";
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
	setAttr ".rsrr" -type "double3" 23.950862842443442 1.9207835621546834e-015 -9.0556683396695464e-015 ;
	setAttr -k on ".w0";
createNode transform -n "output_spine_end_space" -p "init_on_curve_space";
	rename -uid "6B2C9ADF-4B22-4595-E92C-45A775C48C1F";
createNode transform -n "fk_spine_jnt_space" -p "offset_Fk";
	rename -uid "1F06154A-4964-D4AD-7819-1F8C608A51FD";
createNode transform -n "fk_spineA_jnt_space" -p "fk_spine_jnt_space";
	rename -uid "A754397A-4ED8-6B03-2042-73BAF169F74C";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode joint -n "fk_spineA_jnt" -p "fk_spineA_jnt_space";
	rename -uid "468DF6CF-443A-6FC9-9E44-BBA39FF060EB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.9999989498779418 0.0011835977894311138 0.00083626508144769916 0
		 -0.001270705721568167 0.99356324289719744 0.11327165431198495 0 -0.00069681416659599419 -0.11327259800974594 0.99356370353900292 0
		 0 96.981148568509965 2.0338004703341883 1;
	setAttr ".radi" 0.63495623330098816;
createNode transform -n "fk_spineB_jnt_space" -p "fk_spineA_jnt";
	rename -uid "AFBA9580-4043-508F-C446-9490395C3223";
createNode joint -n "fk_spineB_jnt" -p "fk_spineB_jnt_space";
	rename -uid "4F97727C-4BE7-721C-45AE-25BE4271EE0B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -3.5527136788005009e-015 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -0.015511342278313286 109.10944804347419 3.41649307228115 1;
	setAttr ".radi" 0.5;
createNode transform -n "fk_spineC_jnt_space" -p "fk_spineB_jnt";
	rename -uid "6786314B-4D14-96E5-F2CE-309F86F143C6";
createNode joint -n "fk_spineC_jnt" -p "fk_spineC_jnt_space";
	rename -uid "17369310-4968-4026-2E47-C6ADD98610E0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-016 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-017 121.90116773063582 2.9354727293561167 1;
	setAttr ".radi" 0.5;
createNode transform -n "fk_spineD_jnt_space" -p "fk_spineC_jnt";
	rename -uid "DFC3CF5A-4BA0-585F-474D-E6A691FEA79E";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode joint -n "fk_spineD_jnt" -p "fk_spineD_jnt_space";
	rename -uid "883BE775-492C-7640-739D-68A3B177FD63";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-016 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-017 121.90116773063582 2.9354727293561167 1;
	setAttr ".ds" 1;
	setAttr ".radi" 0.5;
createNode transform -n "fk_chest_jnt_space" -p "fk_spineD_jnt";
	rename -uid "1DC4F34E-4492-E23B-0FEA-42AA7F24831C";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode joint -n "fk_chest_jnt" -p "fk_chest_jnt_space";
	rename -uid "07F78E16-4745-43CF-5D1D-25A24F223E62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -4.4408920985006262e-016 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999903875516494 -0.0011855709041864067 0.00071896479555179273 0
		 0.0012117507169205918 0.99929298338273276 -0.03757745364227634 0 -0.00067390573980241099 0.03757828872724954 0.99929345943390691 0
		 -2.0816681711721685e-017 121.90116773063582 2.9354727293561167 1;
	setAttr ".radi" 0.5;
createNode transform -n "fk_ctrl_space" -p "offset_Fk";
	rename -uid "A9E368EC-4FD0-74C8-797E-C3AD8FDADCA3";
createNode transform -n "fk_spineA_Ctrl_space" -p "fk_ctrl_space";
	rename -uid "F3E7AFAB-4EF8-C48F-6CA7-2690C26E4B0D";
createNode transform -n "fk_spineA_Ctrl" -p "fk_spineA_Ctrl_space";
	rename -uid "9AA6F420-41D8-E2B9-8A2F-00ADB1E1E176";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_spineA_CtrlShape" -p "fk_spineA_Ctrl";
	rename -uid "3246AFD3-4742-6CA8-C0BC-AF88AC1E3F5C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6942000198802147 -3.7775509690401307e-006 -1.6836386124263596
		-9.9226182825873366e-016 -5.3422638129168455e-006 -2.3810245598283788
		-1.6942000198802127 -3.7775509690401307e-006 -1.68363861242636
		-2.3959606454873668 -1.3426785825313448e-016 -1.2975921133525078e-015
		-1.6942000198802152 3.7775509687750644e-006 1.6836386124263583
		-1.4398204850607499e-015 5.3422638126517784e-006 2.3810245598283788
		1.6942000198802116 3.7775509687750644e-006 1.6836386124263583
		2.3959606454873668 -1.3426785825313448e-016 7.0080933097277383e-016
		1.6942000198802147 -3.7775509690401307e-006 -1.6836386124263596
		-9.9226182825873366e-016 -5.3422638129168455e-006 -2.3810245598283788
		-1.6942000198802127 -3.7775509690401307e-006 -1.68363861242636
		;
createNode nurbsCurve -n "fk_spineA_Ctrl_subShape" -p "fk_spineA_Ctrl";
	rename -uid "A07FCF3F-4225-1DAF-A0B7-409E344B76E8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.25740178698788735 3.6440851458260229e-006 1.630960714765163
		0.25740178698788468 3.6440851458260229e-006 1.630960714765163
		-1.8318679906315083e-015 4.4674016539795324e-006 2.0148625962506981
		-0.25740178698788735 3.6440851458260229e-006 1.630960714765163
		;
createNode transform -n "fk_spineB_Ctrl_space" -p "fk_spineA_Ctrl";
	rename -uid "B67689BC-464E-F972-12C1-8B969AAF1690";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "fk_spineB_Ctrl" -p "fk_spineB_Ctrl_space";
	rename -uid "3D4B2F12-49E4-3A63-42E0-4790888AC56A";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_spineB_CtrlShape" -p "fk_spineB_Ctrl";
	rename -uid "4ECD6A4D-4892-898A-B745-ACB1EFF553AB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6635310989700296 -3.7969302175303099e-015 -1.6635310989700292
		-9.8061968104408285e-016 -3.7969302175218715e-015 -2.3525882415928256
		-1.6635310989700294 -3.7969302175303099e-015 -1.6635310989700296
		-2.3525882415928252 -3.7969302175506823e-015 -1.4415552085367267e-015
		-1.6635310989700294 -3.7969302175710554e-015 1.6635310989700278
		-1.4210982432513108e-015 -3.796930217579493e-015 2.3525882415928239
		1.6635310989700276 -3.7969302175710554e-015 1.6635310989700278
		2.3525882415928243 -3.7969302175506823e-015 5.0393716977126246e-016
		1.6635310989700296 -3.7969302175303099e-015 -1.6635310989700292
		-9.8061968104408285e-016 -3.7969302175218715e-015 -2.3525882415928256
		-1.6635310989700294 -3.7969302175303099e-015 -1.6635310989700296
		;
createNode nurbsCurve -n "fk_spineB_Ctrl_subShape" -p "fk_spineB_Ctrl";
	rename -uid "10EC4ADD-4EE8-5AF4-38BF-A7B5CDE8EEDE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.30501877693098151 -3.7969302184175978e-015 1.5227958375302459
		0.3050187769309784 -3.7969302184175978e-015 1.5227958375302459
		-1.5543122344752192e-015 -3.7969302184175978e-015 1.9803240029267142
		-0.30501877693098151 -3.7969302184175978e-015 1.5227958375302459
		;
createNode transform -n "fk_spineC_Ctrl_space" -p "fk_spineB_Ctrl";
	rename -uid "579FA30D-4670-CD97-E179-E2809A2508A6";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "fk_spineC_Ctrl" -p "fk_spineC_Ctrl_space";
	rename -uid "D165EE6E-407C-3891-346F-EB859F99EB49";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_spineC_CtrlShape" -p "fk_spineC_Ctrl";
	rename -uid "4A3FE5D5-4090-092A-0B93-A48EEF132798";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6552016897530453 1.1035767861211632e-006 -1.6544143425376965
		-9.3742592252684569e-005 1.5617141331664142e-006 -2.3395997025882078
		-1.6553342617983786 1.1050205251800227e-006 -1.654279287386613
		-2.3409024207038645 1.0208838496783557e-009 9.5498413159090557e-005
		-1.6552016897530513 -1.1035767737560542e-006 1.6544143425376885
		9.3742592240307114e-005 -1.5617141208013052e-006 2.3395997025882056
		1.6553342617983697 -1.1050205128149138e-006 1.6542792873866121
		2.3409024207038627 -1.0208714984472067e-009 -9.5498413164709327e-005
		1.6552016897530453 1.1035767861211632e-006 -1.6544143425376965
		-9.3742592252684569e-005 1.5617141331664142e-006 -2.3395997025882078
		-1.6553342617983786 1.1050205251800227e-006 -1.654279287386613
		;
createNode nurbsCurve -n "fk_spineC_Ctrl_subShape" -p "fk_spineC_Ctrl";
	rename -uid "E6E92532-439F-F994-4D1E-16B07A386C70";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506573 6.1756155744774333e-015 1.4956688250853725
		0.26640775810505452 6.1756155744774333e-015 1.4956688250853725
		-5.6760152133961128e-015 6.1756155744774333e-015 1.8952804622429644
		-0.26640775810506573 6.1756155744774333e-015 1.4956688250853725
		;
createNode transform -n "fk_spineD_Ctrl_space" -p "fk_spineC_Ctrl";
	rename -uid "9C669FAF-4054-8DCD-2A8E-FAAC833B1FBA";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "fk_spineD_Ctrl" -p "fk_spineD_Ctrl_space";
	rename -uid "7F9B60BE-41F6-D88F-7784-43A7A846512D";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_spineD_CtrlShape" -p "fk_spineD_Ctrl";
	rename -uid "4416CDBD-4E0B-539C-59EF-D1845930A778";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.655201689753045 1.1035767891465209e-006 -1.6544143425376974
		-9.3742592252906614e-005 1.5617141361917719e-006 -2.3395997025882087
		-1.6553342617983788 1.1050205282053804e-006 -1.6542792873866139
		-2.3409024207038649 1.0208868750360978e-009 9.5498413158146001e-005
		-1.6552016897530515 -1.1035767707306965e-006 1.6544143425376876
		9.3742592240085056e-005 -1.5617141177759475e-006 2.3395997025882047
		1.6553342617983695 -1.105020509789556e-006 1.6542792873866112
		2.3409024207038622 -1.0208684730894646e-009 -9.5498413165640006e-005
		1.655201689753045 1.1035767891465209e-006 -1.6544143425376974
		-9.3742592252906614e-005 1.5617141361917719e-006 -2.3395997025882087
		-1.6553342617983788 1.1050205282053804e-006 -1.6542792873866139
		;
createNode nurbsCurve -n "fk_spineD_Ctrl_subShape" -p "fk_spineD_Ctrl";
	rename -uid "236403CC-4F2A-9758-75D9-83B0B4ED76FA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506595 9.2009733165809848e-015 1.4956688250853714
		0.26640775810505429 9.2009733165809848e-015 1.4956688250853714
		-5.8980598183211441e-015 9.2009733165809848e-015 1.8952804622429635
		-0.26640775810506595 9.2009733165809848e-015 1.4956688250853714
		;
createNode transform -n "fk_chest_Ctrl_space" -p "fk_spineD_Ctrl";
	rename -uid "0239DC21-46D6-C4FF-661D-1AB5009981D4";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "fk_chest_Ctrl" -p "fk_chest_Ctrl_space";
	rename -uid "23512BD6-4DDE-7945-9542-DA8FB0D86593";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_chest_CtrlShape" -p "fk_chest_Ctrl";
	rename -uid "12B99FB4-4698-1CDC-AB17-F281D17AEEB7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6552016897530462 1.1035767785994022e-006 -1.6544143425376947
		-9.3742592251796391e-005 1.5617141256446532e-006 -2.339599702588206
		-1.6553342617983777 1.1050205176582617e-006 -1.6542792873866112
		-2.340902420703864 1.0208763279173638e-009 9.5498413160644002e-005
		-1.6552016897530504 -1.1035767812778152e-006 1.6544143425376903
		9.3742592241195279e-005 -1.5617141283230662e-006 2.3395997025882074
		1.6553342617983706 -1.1050205203366747e-006 1.6542792873866139
		2.3409024207038631 -1.0208790202081985e-009 -9.5498413163142004e-005
		1.6552016897530462 1.1035767785994022e-006 -1.6544143425376947
		-9.3742592251796391e-005 1.5617141256446532e-006 -2.339599702588206
		-1.6553342617983777 1.1050205176582617e-006 -1.6542792873866112
		;
createNode nurbsCurve -n "fk_chest_Ctrl_subShape" -p "fk_chest_Ctrl";
	rename -uid "6FD285DB-484F-2ABB-7429-AFB7D1794175";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.26640775810506484 -1.3461454173580023e-015 1.495668825085374
		0.2664077581050554 -1.3461454173580023e-015 1.495668825085374
		-4.7878367936959876e-015 -1.3461454173580023e-015 1.8952804622429662
		-0.26640775810506484 -1.3461454173580023e-015 1.495668825085374
		;
createNode transform -n "fk_scale_space_init" -p "offset_Fk";
	rename -uid "028DB44D-4E9B-9453-A9D8-24A7BE8C28F2";
	setAttr ".v" no;
createNode transform -n "chest_local_init" -p "fk_scale_space_init";
	rename -uid "E932E0C3-4C7A-98FB-4EB5-B692615CABBA";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "fk_spineA_local_init" -p "fk_scale_space_init";
	rename -uid "1E2334E3-4452-AFD1-3FFE-7BA8E5EDDAFA";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "fk_spineB_local_init" -p "fk_scale_space_init";
	rename -uid "901DC7FF-4DDE-93C8-31C2-1F89FA535171";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "fk_spineC_local_init" -p "fk_scale_space_init";
	rename -uid "E0CFCB88-4868-C542-EC02-33AF96B79515";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "fk_spineD_local_init" -p "fk_scale_space_init";
	rename -uid "A2927A01-420E-38A8-8ECE-598712791549";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
createNode transform -n "output" -p "Spine_component";
	rename -uid "9A5E4129-49F9-3F2A-0006-B28BF1ACC764";
createNode transform -n "end_plug" -p "output";
	rename -uid "5678F891-4E2B-EC4A-5B90-42AF8191EB96";
createNode transform -s -n "persp";
	rename -uid "22687F45-4C93-93F7-E7DC-9AB9822A92EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 66.200189474937218 28.803065108815122 2.9754965139107679 ;
	setAttr ".r" -type "double3" -21.938352728533363 80.599999999999682 -1.9473662593569403e-014 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-015 0 -7.1054273576010019e-015 ;
	setAttr ".rpt" -type "double3" 2.6284338045294039e-015 -2.0938276845025289e-015 
		1.5854519323151238e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19B27F4E-4992-0B2E-AF8B-CEA230CD5067";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 66.521540953305646;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 5.1528527950028264 5.5511151231257827e-017 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "832C13DA-4407-C0EC-A253-719735D0475C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 163.45781995114663 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8FB94C2A-4846-C7EA-89DB-18B0A2C060FF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 163.45781995114663;
	setAttr ".ow" 82.547413343795895;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "821688B8-400D-4373-D142-70B55AB0B00B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.42836816328722 13.498003781501334 163.45781995114663 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B82FE88F-406D-A096-BEB3-F2B521B5C456";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 163.45781995114663;
	setAttr ".ow" 36.790167219939079;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "99C55699-4F8C-210D-4F09-6683FB0573B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 163.62437933701722 13.635444342150269 0.30001610639574516 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F094F770-49DF-329D-1025-84AA8B04C52D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 163.45781995114663;
	setAttr ".ow" 29.564921665756991;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode pointOnCurveInfo -n "spineA_pointOnCurveInfo";
	rename -uid "FFA40BE7-4B6E-7840-D4AD-A885BCD83019";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineA_param";
	rename -uid "260E4BF7-4957-6B07-EFDC-D9AEC3214675";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode unitConversion -n "unitConversion11";
	rename -uid "FD585202-40B2-5735-1910-739F7975DB4B";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineA_twist_combine";
	rename -uid "17614CEE-4610-FBA6-6EF3-058118DFE97D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineA_spine_twist_mul";
	rename -uid "2E8DA97A-465A-ED6A-71A4-E4ACDB6558FC";
createNode unitConversion -n "unitConversion1";
	rename -uid "75034AAF-4B36-8013-4C13-8CA4A30C595B";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineA_spine_twist_remap";
	rename -uid "AD2A3C81-469C-7DFC-F354-78ABA015BC8F";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineA_chest_twist_mul";
	rename -uid "143F0323-45B2-6642-6B50-838DA37357D6";
createNode unitConversion -n "unitConversion6";
	rename -uid "F294B70A-4844-EE81-D469-6BB3E74703E2";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineA_chest_twist_remap";
	rename -uid "1CE939F8-401A-5C89-2EFA-5DBAE245CECD";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnCurveInfo -n "spineB_pointOnCurveInfo";
	rename -uid "7646A710-4F19-FD94-0809-7789FFEBB794";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineB_param";
	rename -uid "9D51EBBE-4D0F-5E95-30B9-5396A5820519";
createNode unitConversion -n "unitConversion12";
	rename -uid "A3C61E51-425C-27B3-90E7-8FAC55617801";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineB_twist_combine";
	rename -uid "A2FC5E47-4C8B-8BE1-6631-16BBB89B03EE";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineB_spine_twist_mul";
	rename -uid "F8738103-4906-6AB8-DD9E-3AB45E74ED75";
createNode unitConversion -n "unitConversion2";
	rename -uid "12CE61FE-4F8F-628B-3860-E6B8A1BE80EC";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineB_spine_twist_remap";
	rename -uid "EE901405-4004-41FD-B3EE-F7ADEEDE0772";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineB_chest_twist_mul";
	rename -uid "A515F0EA-49C5-C695-50D9-58A915F9D56D";
createNode unitConversion -n "unitConversion7";
	rename -uid "3E706DB2-49D8-506D-C573-859F76A08DEA";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineB_chest_twist_remap";
	rename -uid "B3903487-49AF-E582-9F3F-4BB0749D4735";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode pointOnCurveInfo -n "spineC_pointOnCurveInfo";
	rename -uid "3FF884A5-4DE5-BD2D-1C01-55B0C08BA980";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineC_param";
	rename -uid "D122EC62-4469-9CEA-DECC-769BE761DC3B";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "B12F8580-4CFA-D72E-427B-95A26B16FC61";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineC_twist_combine";
	rename -uid "FA62CA70-47C1-EED4-E8C0-8DB11DF9E72C";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spineC_spine_twist_mul";
	rename -uid "8D142E58-4960-D078-1469-E3BEC220FB3B";
createNode unitConversion -n "unitConversion3";
	rename -uid "DA41A1D0-4C1C-085F-F044-9895D178D957";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineC_spine_twist_remap";
	rename -uid "E60BFEBF-44CA-FC36-AE71-91B4513BCB73";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineC_chest_twist_mul";
	rename -uid "2B0AAFDA-4645-A13A-84D7-C19B1C56C407";
createNode unitConversion -n "unitConversion8";
	rename -uid "60356D04-4A1B-4392-0A7A-1B864860EE4F";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "spineC_chest_twist_remap";
	rename -uid "C41A647F-44EB-C40F-09F7-36B31CA58620";
	setAttr -s 2 ".vl[1:2]"  1 1 1 0 0 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode decomposeMatrix -n "fk_spineB_ctrl_scaleSpaceMat_decomp";
	rename -uid "EFCA6AD4-44FF-9EAA-38BD-DD82E01BC591";
	setAttr ".ot" -type "double3" -6.2493413222064466e-016 7.9829351475836283 -8.3200173597528589e-032 ;
	setAttr ".or" -type "double3" 0 0.82043471511283483 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 0.99997436986168775;
createNode pointOnCurveInfo -n "spine_twist_end_ctrl_pointOnCurveInfo";
	rename -uid "AA5F6B61-46EE-B930-A532-C1815D8B11CF";
createNode pointOnCurveInfo -n "chest_twist_end_ctrl_pointOnCurveInfo";
	rename -uid "12F369D5-4488-A022-0582-7FA984D0EBA7";
createNode decomposeMatrix -n "M_Spine_fit_spine_start_decomp";
	rename -uid "457ADE4A-499C-DD62-0B0A-D0B0996E944E";
	setAttr ".ot" -type "double3" 1.910522504832138e-031 5.1528527950028264 0 ;
createNode decomposeMatrix -n "M_Spine_fit_spine_sub_decomp";
	rename -uid "FCFFBF5A-4B89-73E5-2FAA-FFA7516D6CFE";
	setAttr ".ot" -type "double3" -1.3322676295501878e-015 8.6710672127528845 -1.9721522630525295e-031 ;
createNode decomposeMatrix -n "M_Spine_fit_chest_sub_decomp";
	rename -uid "E7BC77AC-492B-D8D8-C399-86BB2E79EAC0";
	setAttr ".ot" -type "double3" -4.0245584642661934e-016 13.375480456701014 0 ;
createNode decomposeMatrix -n "M_Spine_fit_chest_decomp";
	rename -uid "7FEF9167-4586-FF37-0BA6-6B84D02B4BC7";
	setAttr ".ot" -type "double3" -4.0245584642661934e-016 17.28268512563892 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0D77FBB9-4E1A-89F7-1448-9B8D1365442B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E92F549E-4C5C-09BA-8CC4-0EA36E85940A";
createNode displayLayer -n "defaultLayer";
	rename -uid "A6348963-4A6B-097F-2B9B-CA83858C3AED";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B48574B3-4AFC-D140-37E6-A6A8F023CC36";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B24B24EA-40B0-23E2-A946-9AAAC01E2AD6";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "8445242E-4F0E-7E5B-4FAB-6994AF676E26";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "357D560F-466A-BF9F-57EF-2EBB4BE954C8";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "D8A25FF3-4B58-60CB-C9A3-92AB6FF4C0AF";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "4F9F17E0-4F54-DA4E-B460-E5927DE0D898";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "056F203C-4AEF-C410-C5D3-12A45B434B30";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -docTag \"RADRENDER\" \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 673\n                -height 504\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 673\n            -height 504\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -docTag \"RADRENDER\" \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 672\n                -height 504\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 672\n            -height 504\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -docTag \"RADRENDER\" \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 673\n                -height 504\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n"
		+ "            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 673\n            -height 504\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -docTag \"RADRENDER\" \n                -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n"
		+ "                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 995\n"
		+ "                -height 1053\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n"
		+ "            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 995\n            -height 1053\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 26 100 -ps 2 74 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 995\\n    -height 1053\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 995\\n    -height 1053\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9DC62B62-4E5A-8979-6634-AFA462D5E449";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multMatrix -n "M_Spine_fit_spine_localMat";
	rename -uid "46715E49-4A98-2874-487D-A8BDA8FD6FC9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_Spine_fit_spine_localMat_decomp";
	rename -uid "1619F1A7-4FC2-C6F4-67CD-F0B5353812F3";
	setAttr ".ot" -type "double3" -6.1629758220391547e-033 5.1528527950028264 0 ;
createNode multMatrix -n "M_Spine_fit_chest_localMat";
	rename -uid "1E77824E-4037-82B3-A520-EF99A59C604F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_Spine_fit_chest_localMat_decomp";
	rename -uid "8515C2E0-4A40-1849-EF15-C5A4DD71679D";
	setAttr ".ot" -type "double3" -4.0245584642661934e-016 17.28268512563892 0 ;
createNode decomposeMatrix -n "parent_space_decomp";
	rename -uid "C2258FBF-4766-15BC-051B-1E8C6D4B94FC";
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "fk_spineC_ctrl_scaleSpaceMat_decomp";
	rename -uid "93FD62BF-43A4-F75E-117E-E5B3D022E0B1";
	setAttr ".ot" -type "double3" -7.0082828429463007e-016 11.07189761612543 -7.3955709864469857e-032 ;
	setAttr ".or" -type "double3" 0 0.82043471511283483 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 0.99997436986168775;
createNode decomposeMatrix -n "fk_spineA_ctrl_scaleSpaceMat_decomp";
	rename -uid "AC215BE8-46E3-73CE-821F-D8AD552631CE";
	setAttr ".ot" -type "double3" 1.910522504832138e-031 5.1528527950028264 0 ;
	setAttr ".or" -type "double3" 0 0.82043471511283483 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 0.99997436986168775;
createNode pointOnCurveInfo -n "spineD_pointOnCurveInfo";
	rename -uid "EE199D3C-4CD1-4CBF-FBD2-F99B3A237C26";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "chest_pointOnCurveInfo";
	rename -uid "E12E66C4-4268-6232-2569-BB9BA0BE638A";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineD_param";
	rename -uid "5BEC2D7A-425E-BF95-5114-CF9DB0CFE318";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode multiplyDivide -n "chest_param";
	rename -uid "EB2BC2DF-4222-AF82-13BF-D09CD46E759C";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "spine_param";
	rename -uid "AAD2FFFE-4DB4-2CB7-5626-DE81574061CE";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode decomposeMatrix -n "fk_spineD_ctrl_scaleSpaceMat_decomp";
	rename -uid "880FEB5D-4B19-859D-D906-5994A8826ED2";
	setAttr ".ot" -type "double3" -5.2692225582795525e-016 14.233795756764954 -2.7733391199176196e-032 ;
	setAttr ".or" -type "double3" 0 0.82043471511283494 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 0.99997436986168775;
createNode decomposeMatrix -n "fk_chest_ctrl_scaleSpaceMat_decomp";
	rename -uid "E693952A-40F5-C404-D7CE-A3B2033B5C7F";
	setAttr ".ot" -type "double3" -4.0245584642661934e-016 17.28268512563892 0 ;
	setAttr ".or" -type "double3" 0 0.82043471511283494 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqy" 0.0071595823705344255;
	setAttr ".oqw" 0.99997436986168775;
createNode decomposeMatrix -n "fk_spineC_jnt_decomp";
	rename -uid "4BFDC662-40BD-5EEA-FE75-039B9D10F255";
	setAttr ".ot" -type "double3" -1.6016332957664184e-015 11.071897616125433 -8.7536971717631135e-016 ;
	setAttr ".or" -type "double3" 0 0.82043471511283483 0 ;
	setAttr ".os" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".oqw" 0.99997436986168775;
createNode multMatrix -n "fk_chest_ctrl_scaleSpaceMat";
	rename -uid "D3184799-40AB-4974-69EB-5E9CEB7B8C2C";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineD_ctrl_scaleSpaceMat";
	rename -uid "6A928777-4853-FE99-B7C5-0EAABF6BA08D";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineA_ctrl_scaleSpaceMat";
	rename -uid "126105AA-48FC-42C8-4BA9-6A90B2B61202";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineB_ctrl_scaleSpaceMat";
	rename -uid "C9B63006-4A3F-9FAB-8EA8-6080346EABF1";
	setAttr -s 2 ".i";
createNode multMatrix -n "fk_spineC_ctrl_scaleSpaceMat";
	rename -uid "67387A9C-4BEE-CA44-B780-F8B2BD16E0AA";
	setAttr -s 2 ".i";
createNode nodeGraphEditorBookmarks -n "MayaNodeEditorBookmarks";
	rename -uid "E54B27A3-4F5E-E300-FBDC-24A2EB527CAE";
createNode nodeGraphEditorBookmarkInfo -n "nodeView1";
	rename -uid "95C81383-4CC4-1046-AE92-65B233FD03DA";
	setAttr ".nm" -type "string" "nodeView1";
	setAttr ".vl" -type "double2" -1601.55485972681 -2014.0315689002935 ;
	setAttr ".vh" -type "double2" 3763.0043644154612 1303.9721083892232 ;
	setAttr -s 59 ".ni";
	setAttr ".ni[0].x" 865.7247314453125;
	setAttr ".ni[0].y" 160.18220520019531;
	setAttr ".ni[0].nvs" 18304;
	setAttr ".ni[1].x" 814.00653076171875;
	setAttr ".ni[1].y" -163.73379516601562;
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
	setAttr ".ni[8].y" -261.42855834960937;
	setAttr ".ni[8].nvs" 18304;
	setAttr ".ni[9].x" 1804.5341796875;
	setAttr ".ni[9].y" -490.34011840820312;
	setAttr ".ni[9].nvs" 18305;
	setAttr ".ni[10].x" 1820.8056640625;
	setAttr ".ni[10].y" -212.01368713378906;
	setAttr ".ni[10].nvs" 18305;
	setAttr ".ni[11].x" 2432.857177734375;
	setAttr ".ni[11].y" -391.42855834960937;
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
	setAttr ".ni[27].y" -1006.5753784179687;
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
	setAttr ".ni[37].y" -1006.5753784179687;
	setAttr ".ni[37].nvs" 18304;
	setAttr ".ni[38].x" -632.67584228515625;
	setAttr ".ni[38].y" -1136.575439453125;
	setAttr ".ni[38].nvs" 18304;
	setAttr ".ni[39].x" -1189.8187255859375;
	setAttr ".ni[39].y" -1266.575439453125;
	setAttr ".ni[39].nvs" 18304;
	setAttr ".ni[40].x" -894.10443115234375;
	setAttr ".ni[40].y" -1006.5753784179687;
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
	setAttr ".ni[48].y" 265.34335327148437;
	setAttr ".ni[48].nvs" 18305;
	setAttr ".ni[49].x" 2890;
	setAttr ".ni[49].y" -1447.142822265625;
	setAttr ".ni[49].nvs" 18304;
	setAttr ".ni[50].x" 431.90707397460937;
	setAttr ".ni[50].y" -441.84756469726562;
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
	setAttr ".ni[57].y" -510.44442749023437;
	setAttr ".ni[57].nvs" 18304;
	setAttr ".ni[58].x" 1528.134521484375;
	setAttr ".ni[58].y" -106.39633941650391;
	setAttr ".ni[58].nvs" 18304;
createNode multMatrix -n "fk_spineB_localMat";
	rename -uid "DA535E8C-4CEB-B204-B4CF-828A8121E3EB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineB_localMat_decomp";
	rename -uid "6A21D2BA-4FA3-5440-1433-159627699F5D";
	setAttr ".ot" -type "double3" -6.2487006444870892e-016 2.8300823525808019 -8.9483054394000011e-018 ;
	setAttr ".os" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "fk_spineC_localMat";
	rename -uid "C28E70C1-4D06-2631-38BB-38A3D47AD7D9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_localMat_decomp";
	rename -uid "08FA8C18-481E-D590-212E-DB849CA1FA52";
	setAttr ".ot" -type "double3" -7.5886371463236892e-017 3.0889624685418013 -1.0867130131124047e-018 ;
createNode multMatrix -n "fk_spineD_localMat";
	rename -uid "295C6887-44E3-FE2E-2E4E-EF882028368E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_localMat_decomp";
	rename -uid "725B9587-4251-9A67-760F-2BBD3502D163";
	setAttr ".ot" -type "double3" 1.7388819975290222e-016 3.1618981406395239 2.4901252471890567e-018 ;
	setAttr ".or" -type "double3" 0 9.9392333795734899e-017 0 ;
createNode multMatrix -n "fk_chest_localMat";
	rename -uid "255D26E3-4938-82D3-7DB4-AA8D7EACF310";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_decomp";
	rename -uid "598A1BA4-4E1B-00C9-5DE9-1A87AC098B9E";
	setAttr ".ot" -type "double3" 1.2445364919970817e-016 3.0488893688739669 1.7822093415043831e-018 ;
createNode remapValue -n "spineD_chest_twist_remap";
	rename -uid "7493E8A2-4EB7-03F3-EC42-42A64235755E";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineD_chest_twist_mul";
	rename -uid "1DF67F06-4925-423B-BCD1-CDA07182927B";
createNode unitConversion -n "unitConversion14";
	rename -uid "9A1EFFC0-4110-3B46-22E6-3CA9913A2C07";
	setAttr ".cf" 57.295779513082323;
createNode plusMinusAverage -n "spineD_twist_combine";
	rename -uid "F88639BF-4ED7-C34F-1044-A3A4FA50F79F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "spineD_spine_twist_remap";
	rename -uid "13529CA6-443F-172A-19F8-7E8E88FBB6E6";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "spineD_spine_twist_mul";
	rename -uid "8C06F349-44A6-7732-136E-588CE55F591E";
createNode unitConversion -n "unitConversion15";
	rename -uid "BACD62D5-47BD-46D1-12AD-A8B91EEDD317";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion16";
	rename -uid "1811F80E-4F0A-D9FE-D887-66B8DDA7BDD8";
	setAttr ".cf" 0.017453292519943295;
createNode remapValue -n "chest_chest_twist_remap";
	rename -uid "C781EB97-42CD-98A6-AC16-18B827A8D563";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "chest_spine_twist_remap";
	rename -uid "ED7C544E-474A-2AA3-E3C1-9089452B16B1";
	setAttr ".omn" 1;
	setAttr ".omx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "chest_chest_twist_mul";
	rename -uid "480CCD8D-4AFA-E89B-780B-699D2F7698F1";
createNode plusMinusAverage -n "chest_twist_combine";
	rename -uid "47654039-49FC-D47F-D725-5FBF1C979463";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion17";
	rename -uid "016151C0-46C6-6073-AAFD-7C8778E7D6A5";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spine_twist_mul";
	rename -uid "828A800E-4B86-A3B2-2B99-639D698DB1B1";
createNode unitConversion -n "unitConversion18";
	rename -uid "9A71CC04-4CBC-6D4D-8627-B8B3A7CF8B93";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion19";
	rename -uid "FFE45690-4E3A-05CF-9DF0-0D9FEA7A5A82";
	setAttr ".cf" 0.017453292519943295;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "41CA43B0-442E-C52C-0E52-48A22C6EACF6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -383.52459245226783 -1145.2621630620579 ;
	setAttr ".tgi[0].vh" -type "double2" 1965.8152303214802 109.82989320143881 ;
	setAttr -s 39 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 315.55221557617187;
	setAttr ".tgi[0].ni[0].y" -362.29928588867187;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 314.28570556640625;
	setAttr ".tgi[0].ni[1].y" -521.4285888671875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 315.55221557617187;
	setAttr ".tgi[0].ni[2].y" -131.42857360839844;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 314.28570556640625;
	setAttr ".tgi[0].ni[3].y" -780.162109375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 314.28570556640625;
	setAttr ".tgi[0].ni[4].y" -911.4285888671875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1142.857177734375;
	setAttr ".tgi[0].ni[5].y" -261.42855834960937;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1142.857177734375;
	setAttr ".tgi[0].ni[6].y" -911.4285888671875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1142.857177734375;
	setAttr ".tgi[0].ni[7].y" -715.71429443359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1142.857177734375;
	setAttr ".tgi[0].ni[8].y" -455.71429443359375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 881.4285888671875;
	setAttr ".tgi[0].ni[9].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -113.82205963134766;
	setAttr ".tgi[0].ni[10].y" -117.49717712402344;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 574.28570556640625;
	setAttr ".tgi[0].ni[11].y" -131.42857360839844;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 881.4285888671875;
	setAttr ".tgi[0].ni[12].y" -521.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 581.4285888671875;
	setAttr ".tgi[0].ni[13].y" -521.4285888671875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 881.4285888671875;
	setAttr ".tgi[0].ni[14].y" -911.4285888671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[15].y" -1041.4285888671875;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 881.4285888671875;
	setAttr ".tgi[0].ni[16].y" -391.42855834960937;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[17].y" -651.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -49.215457916259766;
	setAttr ".tgi[0].ni[18].y" -317.8741455078125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[19].y" -521.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1404.2857666015625;
	setAttr ".tgi[0].ni[20].y" -261.42855834960937;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1404.2857666015625;
	setAttr ".tgi[0].ni[21].y" -455.71429443359375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -49.215457916259766;
	setAttr ".tgi[0].ni[22].y" -577.8741455078125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 881.4285888671875;
	setAttr ".tgi[0].ni[23].y" -131.42857360839844;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[24].y" -261.42855834960937;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[25].y" -781.4285888671875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[26].y" -391.42855834960937;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -49.215457916259766;
	setAttr ".tgi[0].ni[27].y" -707.8741455078125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 881.4285888671875;
	setAttr ".tgi[0].ni[28].y" -261.42855834960937;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1404.2857666015625;
	setAttr ".tgi[0].ni[29].y" -715.71429443359375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1404.2857666015625;
	setAttr ".tgi[0].ni[30].y" -911.4285888671875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[31].y" -911.4285888671875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 881.4285888671875;
	setAttr ".tgi[0].ni[32].y" -781.4285888671875;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -49.215457916259766;
	setAttr ".tgi[0].ni[33].y" -447.8741455078125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 581.4285888671875;
	setAttr ".tgi[0].ni[34].y" -911.4285888671875;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[35].y" -131.42857360839844;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 587.14288330078125;
	setAttr ".tgi[0].ni[36].y" -391.42855834960937;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 575.71429443359375;
	setAttr ".tgi[0].ni[37].y" -781.4285888671875;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -49.215457916259766;
	setAttr ".tgi[0].ni[38].y" -837.8741455078125;
	setAttr ".tgi[0].ni[38].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 2;
	setAttr -av ".unw" 2;
	setAttr -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".vac" 2;
	setAttr -av ".aoam";
	setAttr -k on ".mbsof";
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 51 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
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
	setAttr -k on ".ro" yes;
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
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep" 1;
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -k on ".pff";
	setAttr -k on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultRenderQuality;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".rfl" 10;
	setAttr ".rfr" 10;
	setAttr ".sl" 10;
	setAttr ".eaa" 0;
	setAttr ".ufil" yes;
	setAttr ".pft" 4;
	setAttr ".ss" 2;
	setAttr -av ".mss";
	setAttr -k on ".mvs";
	setAttr -k on ".mvm";
	setAttr -k on ".vs";
	setAttr -k on ".pss";
	setAttr -k on ".rct";
	setAttr -k on ".gct";
	setAttr -k on ".bct";
	setAttr -k on ".cct";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w" 640;
	setAttr -av -k on ".h" 480;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1.3329999446868896;
	setAttr -av -k on ".ldar";
	setAttr -cb on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -cb on ".isu";
	setAttr -cb on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
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
connectAttr "parent_space_decomp.ot" "|Spine_component|input|fit_spine.t";
connectAttr "parent_space_decomp.os" "|Spine_component|input|fit_spine.s";
connectAttr "parent_space_decomp.or" "|Spine_component|input|fit_spine.r";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.fit_display" "|Spine_component|input|fit_spine.v"
		;
connectAttr "spine_twist_end_ctrl_pointOnCurveInfo.p" "spine_twist_end_ctrl.t";
connectAttr "chest_twist_end_ctrl_pointOnCurveInfo.p" "chest_twist_end_ctrl.t";
connectAttr "parent_space_decomp.ot" "ik_ctrl_space.t";
connectAttr "parent_space_decomp.or" "ik_ctrl_space.r";
connectAttr "parent_space_decomp.os" "ik_ctrl_space.s";
connectAttr "parent_space_decomp.osh" "ik_ctrl_space.sh";
connectAttr "M_Spine_fit_chest_localMat_decomp.ot" "chest_Ctrl_space.t";
connectAttr "fit_chest_sub.t" "chest_sub_ctrl_space.t";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.curve_sub_ctrl_display" "chest_sub_Ctrl.v"
		;
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.curve_sub_ctrl_display" "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl|chest_Ctrl.v"
		;
connectAttr "M_Spine_fit_spine_localMat_decomp.ot" "spine_Ctrl_space.t";
connectAttr "fit_spine_sub.t" "spine_sub_ctrl_space.t";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.curve_sub_ctrl_display" "spine_sub_Ctrl.v"
		;
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.curve_sub_ctrl_display" "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl|spine_Ctrl.v"
		;
connectAttr "M_Spine_fit_spine_start_decomp.ot" "bezierShape1.cp[0]";
connectAttr "M_Spine_fit_spine_sub_decomp.ot" "bezierShape1.cp[1]";
connectAttr "M_Spine_fit_chest_sub_decomp.ot" "bezierShape1.cp[2]";
connectAttr "M_Spine_fit_chest_decomp.ot" "bezierShape1.cp[3]";
connectAttr "spineA_pointOnCurveInfo.p" "init_spineA_space.t";
connectAttr "init_spineA_space_aimConstraint1.crx" "init_spineA_space.rx";
connectAttr "init_spineA_space_aimConstraint1.cry" "init_spineA_space.ry";
connectAttr "init_spineA_space_aimConstraint1.crz" "init_spineA_space.rz";
connectAttr "unitConversion11.o" "twist_spineA.ry";
connectAttr "init_spineA_space.pim" "init_spineA_space_aimConstraint1.cpim";
connectAttr "init_spineA_space.t" "init_spineA_space_aimConstraint1.ct";
connectAttr "init_spineA_space.rp" "init_spineA_space_aimConstraint1.crp";
connectAttr "init_spineA_space.rpt" "init_spineA_space_aimConstraint1.crt";
connectAttr "init_spineA_space.ro" "init_spineA_space_aimConstraint1.cro";
connectAttr "init_spineB_space.t" "init_spineA_space_aimConstraint1.tg[0].tt";
connectAttr "init_spineB_space.rp" "init_spineA_space_aimConstraint1.tg[0].trp";
connectAttr "init_spineB_space.rpt" "init_spineA_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spineB_space.pm" "init_spineA_space_aimConstraint1.tg[0].tpm";
connectAttr "init_spineA_space_aimConstraint1.w0" "init_spineA_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fk_init_upVec_Ctrl.wm" "init_spineA_space_aimConstraint1.wum";
connectAttr "spineB_pointOnCurveInfo.p" "init_spineB_space.t";
connectAttr "init_spineB_space_aimConstraint1.crx" "init_spineB_space.rx";
connectAttr "init_spineB_space_aimConstraint1.cry" "init_spineB_space.ry";
connectAttr "init_spineB_space_aimConstraint1.crz" "init_spineB_space.rz";
connectAttr "unitConversion12.o" "twist_spineB.ry";
connectAttr "init_spineB_space.pim" "init_spineB_space_aimConstraint1.cpim";
connectAttr "init_spineB_space.t" "init_spineB_space_aimConstraint1.ct";
connectAttr "init_spineB_space.rp" "init_spineB_space_aimConstraint1.crp";
connectAttr "init_spineB_space.rpt" "init_spineB_space_aimConstraint1.crt";
connectAttr "init_spineB_space.ro" "init_spineB_space_aimConstraint1.cro";
connectAttr "init_spineC_space.t" "init_spineB_space_aimConstraint1.tg[0].tt";
connectAttr "init_spineC_space.rp" "init_spineB_space_aimConstraint1.tg[0].trp";
connectAttr "init_spineC_space.rpt" "init_spineB_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spineC_space.pm" "init_spineB_space_aimConstraint1.tg[0].tpm";
connectAttr "init_spineB_space_aimConstraint1.w0" "init_spineB_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fk_init_upVec_Ctrl.wm" "init_spineB_space_aimConstraint1.wum";
connectAttr "spineC_pointOnCurveInfo.p" "init_spineC_space.t";
connectAttr "init_spineC_space_aimConstraint1.crx" "init_spineC_space.rx";
connectAttr "init_spineC_space_aimConstraint1.cry" "init_spineC_space.ry";
connectAttr "init_spineC_space_aimConstraint1.crz" "init_spineC_space.rz";
connectAttr "unitConversion13.o" "twist_spineC.ry";
connectAttr "init_spineC_space.pim" "init_spineC_space_aimConstraint1.cpim";
connectAttr "init_spineC_space.t" "init_spineC_space_aimConstraint1.ct";
connectAttr "init_spineC_space.rp" "init_spineC_space_aimConstraint1.crp";
connectAttr "init_spineC_space.rpt" "init_spineC_space_aimConstraint1.crt";
connectAttr "init_spineC_space.ro" "init_spineC_space_aimConstraint1.cro";
connectAttr "init_spineD_space.t" "init_spineC_space_aimConstraint1.tg[0].tt";
connectAttr "init_spineD_space.rp" "init_spineC_space_aimConstraint1.tg[0].trp";
connectAttr "init_spineD_space.rpt" "init_spineC_space_aimConstraint1.tg[0].trt"
		;
connectAttr "init_spineD_space.pm" "init_spineC_space_aimConstraint1.tg[0].tpm";
connectAttr "init_spineC_space_aimConstraint1.w0" "init_spineC_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fk_init_upVec_Ctrl.wm" "init_spineC_space_aimConstraint1.wum";
connectAttr "spineD_pointOnCurveInfo.p" "init_spineD_space.t";
connectAttr "init_spineD_space_aimConstraint1.crx" "init_spineD_space.rx";
connectAttr "init_spineD_space_aimConstraint1.cry" "init_spineD_space.ry";
connectAttr "init_spineD_space_aimConstraint1.crz" "init_spineD_space.rz";
connectAttr "unitConversion16.o" "twist_spineD.ry";
connectAttr "init_spineD_space.pim" "init_spineD_space_aimConstraint1.cpim";
connectAttr "init_spineD_space.t" "init_spineD_space_aimConstraint1.ct";
connectAttr "init_spineD_space.rp" "init_spineD_space_aimConstraint1.crp";
connectAttr "init_spineD_space.rpt" "init_spineD_space_aimConstraint1.crt";
connectAttr "init_spineD_space.ro" "init_spineD_space_aimConstraint1.cro";
connectAttr "output_spine_end_space.t" "init_spineD_space_aimConstraint1.tg[0].tt"
		;
connectAttr "output_spine_end_space.rp" "init_spineD_space_aimConstraint1.tg[0].trp"
		;
connectAttr "output_spine_end_space.rpt" "init_spineD_space_aimConstraint1.tg[0].trt"
		;
connectAttr "output_spine_end_space.pm" "init_spineD_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_spineD_space_aimConstraint1.w0" "init_spineD_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fk_init_upVec_Ctrl.wm" "init_spineD_space_aimConstraint1.wum";
connectAttr "chest_pointOnCurveInfo.p" "init_chest_space.t";
connectAttr "init_chest_space_aimConstraint1.crx" "init_chest_space.rx";
connectAttr "init_chest_space_aimConstraint1.cry" "init_chest_space.ry";
connectAttr "init_chest_space_aimConstraint1.crz" "init_chest_space.rz";
connectAttr "unitConversion19.o" "twist_chest.ry";
connectAttr "init_chest_space.pim" "init_chest_space_aimConstraint1.cpim";
connectAttr "init_chest_space.t" "init_chest_space_aimConstraint1.ct";
connectAttr "init_chest_space.rp" "init_chest_space_aimConstraint1.crp";
connectAttr "init_chest_space.rpt" "init_chest_space_aimConstraint1.crt";
connectAttr "init_chest_space.ro" "init_chest_space_aimConstraint1.cro";
connectAttr "init_spineD_space.t" "init_chest_space_aimConstraint1.tg[0].tt";
connectAttr "init_spineD_space.rp" "init_chest_space_aimConstraint1.tg[0].trp";
connectAttr "init_spineD_space.rpt" "init_chest_space_aimConstraint1.tg[0].trt";
connectAttr "init_spineD_space.pm" "init_chest_space_aimConstraint1.tg[0].tpm";
connectAttr "init_chest_space_aimConstraint1.w0" "init_chest_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fk_init_upVec_Ctrl.wm" "init_chest_space_aimConstraint1.wum";
connectAttr "chest_pointOnCurveInfo.p" "output_spine_end_space.t";
connectAttr "parent_space_decomp.ot" "fk_spine_jnt_space.t";
connectAttr "parent_space_decomp.or" "fk_spine_jnt_space.r";
connectAttr "parent_space_decomp.os" "fk_spine_jnt_space.s";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "fk_spineA_jnt_space.r";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "fk_spineA_jnt_space.t";
connectAttr "fk_spineA_Ctrl.r" "fk_spineA_jnt.r";
connectAttr "fk_spineB_localMat_decomp.or" "fk_spineB_jnt_space.r";
connectAttr "fk_spineB_localMat_decomp.ot" "fk_spineB_jnt_space.t";
connectAttr "fk_spineB_Ctrl.r" "fk_spineB_jnt.r";
connectAttr "fk_spineC_localMat_decomp.or" "fk_spineC_jnt_space.r";
connectAttr "fk_spineC_localMat_decomp.ot" "fk_spineC_jnt_space.t";
connectAttr "fk_spineC_Ctrl.r" "fk_spineC_jnt.r";
connectAttr "fk_spineD_localMat_decomp.or" "fk_spineD_jnt_space.r";
connectAttr "fk_spineD_localMat_decomp.ot" "fk_spineD_jnt_space.t";
connectAttr "fk_spineD_Ctrl.r" "fk_spineD_jnt.r";
connectAttr "fk_chest_localMat_decomp.or" "fk_chest_jnt_space.r";
connectAttr "fk_chest_localMat_decomp.ot" "fk_chest_jnt_space.t";
connectAttr "fk_chest_Ctrl.r" "fk_chest_jnt.r";
connectAttr "parent_space_decomp.ot" "fk_ctrl_space.t";
connectAttr "parent_space_decomp.or" "fk_ctrl_space.r";
connectAttr "parent_space_decomp.os" "fk_ctrl_space.s";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.fk_display" "fk_ctrl_space.v"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "fk_spineA_Ctrl_space.t";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "fk_spineA_Ctrl_space.r";
connectAttr "fk_spineB_localMat_decomp.ot" "fk_spineB_Ctrl_space.t";
connectAttr "fk_spineB_localMat_decomp.or" "fk_spineB_Ctrl_space.r";
connectAttr "fk_spineC_localMat_decomp.ot" "fk_spineC_Ctrl_space.t";
connectAttr "fk_spineC_localMat_decomp.or" "fk_spineC_Ctrl_space.r";
connectAttr "fk_spineD_localMat_decomp.ot" "fk_spineD_Ctrl_space.t";
connectAttr "fk_spineD_localMat_decomp.or" "fk_spineD_Ctrl_space.r";
connectAttr "fk_chest_localMat_decomp.ot" "fk_chest_Ctrl_space.t";
connectAttr "fk_chest_localMat_decomp.or" "fk_chest_Ctrl_space.r";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.or" "chest_local_init.r";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.ot" "chest_local_init.t";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.or" "fk_spineA_local_init.r";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.ot" "fk_spineA_local_init.t";
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.or" "fk_spineB_local_init.r";
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.ot" "fk_spineB_local_init.t";
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.ot" "fk_spineC_local_init.t";
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.or" "fk_spineC_local_init.r";
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.ot" "fk_spineD_local_init.t";
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.or" "fk_spineD_local_init.r";
connectAttr "fk_spineC_jnt_decomp.ot" "end_plug.t";
connectAttr "fk_spineC_jnt_decomp.or" "end_plug.r";
connectAttr "fk_spineC_jnt_decomp.os" "end_plug.s";
connectAttr "fk_spineC_jnt_decomp.osh" "end_plug.sh";
connectAttr "bezierShape1.ws" "spineA_pointOnCurveInfo.ic";
connectAttr "spineA_param.ox" "spineA_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineA_param.i1x";
connectAttr "spineA_twist_combine.o1" "unitConversion11.i";
connectAttr "spineA_spine_twist_mul.ox" "spineA_twist_combine.i1[0]";
connectAttr "spineA_chest_twist_mul.ox" "spineA_twist_combine.i1[1]";
connectAttr "unitConversion1.o" "spineA_spine_twist_mul.i1x";
connectAttr "spineA_spine_twist_remap.ov" "spineA_spine_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.ry" "unitConversion1.i"
		;
connectAttr "spineA_param.ox" "spineA_spine_twist_remap.i";
connectAttr "spine_twist_end_ctrl.End_UValue" "spineA_spine_twist_remap.imx";
connectAttr "unitConversion6.o" "spineA_chest_twist_mul.i1x";
connectAttr "spineA_chest_twist_remap.ov" "spineA_chest_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl.ry" "unitConversion6.i"
		;
connectAttr "spineA_param.ox" "spineA_chest_twist_remap.i";
connectAttr "chest_twist_end_ctrl.End_UValue" "spineA_chest_twist_remap.imn";
connectAttr "bezierShape1.ws" "spineB_pointOnCurveInfo.ic";
connectAttr "spineB_param.ox" "spineB_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineB_param.i1x";
connectAttr "spineB_twist_combine.o1" "unitConversion12.i";
connectAttr "spineB_spine_twist_mul.ox" "spineB_twist_combine.i1[0]";
connectAttr "spineB_chest_twist_mul.ox" "spineB_twist_combine.i1[1]";
connectAttr "unitConversion2.o" "spineB_spine_twist_mul.i1x";
connectAttr "spineB_spine_twist_remap.ov" "spineB_spine_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.ry" "unitConversion2.i"
		;
connectAttr "spineB_param.ox" "spineB_spine_twist_remap.i";
connectAttr "spine_twist_end_ctrl.End_UValue" "spineB_spine_twist_remap.imx";
connectAttr "unitConversion7.o" "spineB_chest_twist_mul.i1x";
connectAttr "spineB_chest_twist_remap.ov" "spineB_chest_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl.ry" "unitConversion7.i"
		;
connectAttr "spineB_param.ox" "spineB_chest_twist_remap.i";
connectAttr "chest_twist_end_ctrl.End_UValue" "spineB_chest_twist_remap.imn";
connectAttr "bezierShape1.ws" "spineC_pointOnCurveInfo.ic";
connectAttr "spineC_param.ox" "spineC_pointOnCurveInfo.pr";
connectAttr "spine_param.ox" "spineC_param.i1x";
connectAttr "spineC_twist_combine.o1" "unitConversion13.i";
connectAttr "spineC_spine_twist_mul.ox" "spineC_twist_combine.i1[0]";
connectAttr "spineC_chest_twist_mul.ox" "spineC_twist_combine.i1[1]";
connectAttr "unitConversion3.o" "spineC_spine_twist_mul.i1x";
connectAttr "spineC_spine_twist_remap.ov" "spineC_spine_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.ry" "unitConversion3.i"
		;
connectAttr "spineC_param.ox" "spineC_spine_twist_remap.i";
connectAttr "spine_twist_end_ctrl.End_UValue" "spineC_spine_twist_remap.imx";
connectAttr "unitConversion8.o" "spineC_chest_twist_mul.i1x";
connectAttr "spineC_chest_twist_remap.ov" "spineC_chest_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl.ry" "unitConversion8.i"
		;
connectAttr "spineC_param.ox" "spineC_chest_twist_remap.i";
connectAttr "chest_twist_end_ctrl.End_UValue" "spineC_chest_twist_remap.imn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat.o" "fk_spineB_ctrl_scaleSpaceMat_decomp.imat"
		;
connectAttr "bezierShape1.ws" "spine_twist_end_ctrl_pointOnCurveInfo.ic";
connectAttr "spine_twist_end_ctrl.End_UValue" "spine_twist_end_ctrl_pointOnCurveInfo.pr"
		;
connectAttr "bezierShape1.ws" "chest_twist_end_ctrl_pointOnCurveInfo.ic";
connectAttr "chest_twist_end_ctrl.End_UValue" "chest_twist_end_ctrl_pointOnCurveInfo.pr"
		;
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl|spine_Ctrl.wm" "M_Spine_fit_spine_start_decomp.imat"
		;
connectAttr "spine_sub_Ctrl.wm" "M_Spine_fit_spine_sub_decomp.imat";
connectAttr "chest_sub_Ctrl.wm" "M_Spine_fit_chest_sub_decomp.imat";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl|chest_Ctrl.wm" "M_Spine_fit_chest_decomp.imat"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "|Spine_component|input|fit_spine|fit_spine.wm" "M_Spine_fit_spine_localMat.i[0]"
		;
connectAttr "|Spine_component|input|fit_spine.wim" "M_Spine_fit_spine_localMat.i[1]"
		;
connectAttr "M_Spine_fit_spine_localMat.o" "M_Spine_fit_spine_localMat_decomp.imat"
		;
connectAttr "fit_chest.wm" "M_Spine_fit_chest_localMat.i[0]";
connectAttr "|Spine_component|input|fit_spine.wim" "M_Spine_fit_chest_localMat.i[1]"
		;
connectAttr "M_Spine_fit_chest_localMat.o" "M_Spine_fit_chest_localMat_decomp.imat"
		;
connectAttr "parent_space.wm" "parent_space_decomp.imat";
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
connectAttr "fk_spineC_jnt.wm" "fk_spineC_jnt_decomp.imat";
connectAttr "twist_chest.wm" "fk_chest_ctrl_scaleSpaceMat.i[0]";
connectAttr "parent_space.wim" "fk_chest_ctrl_scaleSpaceMat.i[1]";
connectAttr "twist_spineD.wm" "fk_spineD_ctrl_scaleSpaceMat.i[0]";
connectAttr "parent_space.wim" "fk_spineD_ctrl_scaleSpaceMat.i[1]";
connectAttr "twist_spineA.wm" "fk_spineA_ctrl_scaleSpaceMat.i[0]";
connectAttr "parent_space.wim" "fk_spineA_ctrl_scaleSpaceMat.i[1]";
connectAttr "twist_spineB.wm" "fk_spineB_ctrl_scaleSpaceMat.i[0]";
connectAttr "parent_space.wim" "fk_spineB_ctrl_scaleSpaceMat.i[1]";
connectAttr "twist_spineC.wm" "fk_spineC_ctrl_scaleSpaceMat.i[0]";
connectAttr "parent_space.wim" "fk_spineC_ctrl_scaleSpaceMat.i[1]";
connectAttr "nodeView1.msg" "MayaNodeEditorBookmarks.b[0]";
connectAttr "twist_chest.msg" "nodeView1.ni[0].dn";
connectAttr "twist_spineD.msg" "nodeView1.ni[1].dn";
connectAttr "twist_spineC.msg" "nodeView1.ni[2].dn";
connectAttr "twist_spineB.msg" "nodeView1.ni[3].dn";
connectAttr "twist_spineA.msg" "nodeView1.ni[4].dn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[5].dn";
connectAttr "fk_spineB_Ctrl_space.msg" "nodeView1.ni[6].dn";
connectAttr "fk_spineB_jnt_space.msg" "nodeView1.ni[7].dn";
connectAttr "fk_spineA_jnt_space.msg" "nodeView1.ni[8].dn";
connectAttr "fk_spineA_Ctrl_space.msg" "nodeView1.ni[11].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[12].dn";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl.msg" "nodeView1.ni[13].dn"
		;
connectAttr "unitConversion12.msg" "nodeView1.ni[14].dn";
connectAttr "spineB_chest_twist_mul.msg" "nodeView1.ni[16].dn";
connectAttr "fk_spineD_Ctrl_space.msg" "nodeView1.ni[17].dn";
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[18].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[19].dn";
connectAttr "spineB_chest_twist_remap.msg" "nodeView1.ni[20].dn";
connectAttr "fk_spineC_jnt_space.msg" "nodeView1.ni[21].dn";
connectAttr "spineC_spine_twist_mul.msg" "nodeView1.ni[22].dn";
connectAttr "spine_param.msg" "nodeView1.ni[23].dn";
connectAttr "chest_twist_end_ctrl.msg" "nodeView1.ni[24].dn";
connectAttr "spineC_spine_twist_remap.msg" "nodeView1.ni[26].dn";
connectAttr "spineC_chest_twist_mul.msg" "nodeView1.ni[27].dn";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.msg" "nodeView1.ni[28].dn"
		;
connectAttr "spineB_spine_twist_remap.msg" "nodeView1.ni[29].dn";
connectAttr "spineC_twist_combine.msg" "nodeView1.ni[30].dn";
connectAttr "fk_spineD_jnt_space.msg" "nodeView1.ni[31].dn";
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "nodeView1.ni[32].dn";
connectAttr "spineC_chest_twist_remap.msg" "nodeView1.ni[33].dn";
connectAttr "fk_chest_Ctrl_space.msg" "nodeView1.ni[34].dn";
connectAttr "fk_spineC_Ctrl_space.msg" "nodeView1.ni[35].dn";
connectAttr "fk_chest_jnt_space.msg" "nodeView1.ni[36].dn";
connectAttr "spineC_param.msg" "nodeView1.ni[37].dn";
connectAttr "spineB_spine_twist_mul.msg" "nodeView1.ni[38].dn";
connectAttr "spine_twist_end_ctrl.msg" "nodeView1.ni[39].dn";
connectAttr "unitConversion8.msg" "nodeView1.ni[40].dn";
connectAttr "unitConversion13.msg" "nodeView1.ni[41].dn";
connectAttr "unitConversion2.msg" "nodeView1.ni[42].dn";
connectAttr "spineB_twist_combine.msg" "nodeView1.ni[44].dn";
connectAttr "unitConversion7.msg" "nodeView1.ni[45].dn";
connectAttr "spineB_param.msg" "nodeView1.ni[46].dn";
connectAttr "unitConversion3.msg" "nodeView1.ni[47].dn";
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "nodeView1.ni[48].dn";
connectAttr "parent_spaceShape.msg" "nodeView1.ni[49].dn";
connectAttr "parent_space.msg" "nodeView1.ni[50].dn";
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "nodeView1.ni[51].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "nodeView1.ni[52].dn";
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "nodeView1.ni[53].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "nodeView1.ni[54].dn";
connectAttr "fk_spineB_local_init.wm" "fk_spineB_localMat.i[0]";
connectAttr "fk_spineA_local_init.wim" "fk_spineB_localMat.i[1]";
connectAttr "fk_spineB_localMat.o" "fk_spineB_localMat_decomp.imat";
connectAttr "fk_spineC_local_init.wm" "fk_spineC_localMat.i[0]";
connectAttr "fk_spineB_local_init.wim" "fk_spineC_localMat.i[1]";
connectAttr "fk_spineC_localMat.o" "fk_spineC_localMat_decomp.imat";
connectAttr "fk_spineD_local_init.wm" "fk_spineD_localMat.i[0]";
connectAttr "fk_spineC_local_init.wim" "fk_spineD_localMat.i[1]";
connectAttr "fk_spineD_localMat.o" "fk_spineD_localMat_decomp.imat";
connectAttr "chest_local_init.wm" "fk_chest_localMat.i[0]";
connectAttr "fk_spineD_local_init.wim" "fk_chest_localMat.i[1]";
connectAttr "fk_chest_localMat.o" "fk_chest_localMat_decomp.imat";
connectAttr "spineD_param.ox" "spineD_chest_twist_remap.i";
connectAttr "chest_twist_end_ctrl.End_UValue" "spineD_chest_twist_remap.imn";
connectAttr "unitConversion14.o" "spineD_chest_twist_mul.i1x";
connectAttr "spineD_chest_twist_remap.ov" "spineD_chest_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl.ry" "unitConversion14.i"
		;
connectAttr "spineD_spine_twist_mul.ox" "spineD_twist_combine.i1[0]";
connectAttr "spineD_chest_twist_mul.ox" "spineD_twist_combine.i1[1]";
connectAttr "spineD_param.ox" "spineD_spine_twist_remap.i";
connectAttr "spine_twist_end_ctrl.End_UValue" "spineD_spine_twist_remap.imx";
connectAttr "unitConversion15.o" "spineD_spine_twist_mul.i1x";
connectAttr "spineD_spine_twist_remap.ov" "spineD_spine_twist_mul.i2x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.ry" "unitConversion15.i"
		;
connectAttr "spineD_twist_combine.o1" "unitConversion16.i";
connectAttr "chest_param.ox" "chest_chest_twist_remap.i";
connectAttr "chest_twist_end_ctrl.End_UValue" "chest_chest_twist_remap.imn";
connectAttr "chest_param.ox" "chest_spine_twist_remap.i";
connectAttr "spine_twist_end_ctrl.End_UValue" "chest_spine_twist_remap.imx";
connectAttr "unitConversion17.o" "chest_chest_twist_mul.i1x";
connectAttr "chest_chest_twist_remap.ov" "chest_chest_twist_mul.i2x";
connectAttr "chest_spine_twist_mul.ox" "chest_twist_combine.i1[0]";
connectAttr "chest_chest_twist_mul.ox" "chest_twist_combine.i1[1]";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|chest_Ctrl_space|chest_Ctrl.ry" "unitConversion17.i"
		;
connectAttr "chest_spine_twist_remap.ov" "chest_spine_twist_mul.i2x";
connectAttr "unitConversion18.o" "chest_spine_twist_mul.i1x";
connectAttr "|Spine_component|ik_spine|ik_ctrl_space|spine_Ctrl_space|spine_Ctrl.ry" "unitConversion18.i"
		;
connectAttr "chest_twist_combine.o1" "unitConversion19.i";
connectAttr "fk_chest_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "fk_spineA_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "fk_spineC_ctrl_scaleSpaceMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "fk_spineB_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "fk_spineC_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "fk_spineD_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "fk_chest_localMat.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "fk_spineA_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "twist_spineA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "fk_spineA_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "fk_spineD_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "fk_spineD_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "fk_spineC_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "fk_spineC_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "chest_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "fk_spineD_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "twist_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "fk_chest_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "fk_spineB_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "fk_chest_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "twist_spineD.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "fk_spineA_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "fk_spineB_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "fk_spineD_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "fk_chest_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "twist_spineB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "fk_spineA_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "fk_spineD_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "fk_spineC_localMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "fk_spineC_Ctrl_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "fk_spineB_local_init.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "parent_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "fk_spineC_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "fk_spineB_jnt_space.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "fk_chest_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "fk_spineB_ctrl_scaleSpaceMat_decomp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "twist_spineC.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
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
// End of spine_motionsystem.ma
