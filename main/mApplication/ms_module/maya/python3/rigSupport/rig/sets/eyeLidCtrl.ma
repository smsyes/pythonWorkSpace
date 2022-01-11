//Maya ASCII 2022 scene
//Name: eyeLidCtrl06.ma
//Last modified: Tue, Jan 11, 2022 09:15:08 PM
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
fileInfo "UUID" "A4B7C2C2-4022-2C97-1C18-CAB4AF5A9FE8";
createNode transform -n "EyeLidGrp";
	rename -uid "D8E6AE1C-44C8-5092-32E7-69A174770EBD";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode transform -n "EyeLidCtrlGrp" -p "EyeLidGrp";
	rename -uid "D16E1013-4668-E73C-5EBD-F9BC1932C039";
	setAttr ".r" -type "double3" -90 3.1805546814635168e-15 -90.000000000003254 ;
createNode transform -n "LeftEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "58F2D37D-4086-3724-7EEE-F9AB25BCBF7C";
createNode transform -n "LeftEyeLidOutCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "2E6AEC13-4E76-5F77-9CF2-1BBC1BAEEC7E";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidOutUpCtrlGrp" -p "LeftEyeLidOutCtrlGrp";
	rename -uid "6F9E230A-42E9-1F16-C7D3-1185B57BB8AD";
createNode transform -n "LeftEyeLidOutUp1CtrlPos" -p "LeftEyeLidOutUpCtrlGrp";
	rename -uid "26AE8EDA-4AF6-ED6F-B4E8-49B56F546862";
createNode transform -n "LeftEyeLidOutUp1CtrlGrp" -p "LeftEyeLidOutUp1CtrlPos";
	rename -uid "6CCD4739-4BA8-0C8C-D71C-309666E5A316";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp1CtrlRvs" -p "LeftEyeLidOutUp1CtrlGrp";
	rename -uid "0F7479CA-486F-A33C-D3EF-ED81146DF9EA";
createNode transform -n "LeftEyeLidOutUp1Ctrl" -p "LeftEyeLidOutUp1CtrlRvs";
	rename -uid "F4CA3B77-4125-7C0B-E2F7-C59B178F6D74";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.7;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutUp1CtrlShape" -p "LeftEyeLidOutUp1Ctrl";
	rename -uid "42863644-4051-E1DF-FD3B-D89FEEDD3EA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.5472157011697999 0.11149137057019719 
		1.3782219243057334 0.0013124362540576189 0.20886613936914639 1.7028044869688947 0.5498405736779145 
		0.11149137057019719 1.378221924305733 0.77704836754212847 -0.12359211689717003 0.59461029941450794 
		0.5498405736779145 -0.20587133751074854 -0.18900132547671589 0.0013124362540577299 
		-0.20504438968241762 -0.51358388813988154 -0.5472157011697999 -0.20587133751074854 
		-0.18900132547671589 -0.77442349503401386 -0.12359211689717009 0.59461029941450771 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftEyeLidOutUp2CtrlPos" -p "LeftEyeLidOutUpCtrlGrp";
	rename -uid "82F7408B-4C11-F1E7-86FE-BB90BF837B15";
createNode transform -n "LeftEyeLidOutUp2CtrlGrp" -p "LeftEyeLidOutUp2CtrlPos";
	rename -uid "5CD69E3F-43BA-D960-D3A5-5FA01A2847D8";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp2CtrlRvs" -p "LeftEyeLidOutUp2CtrlGrp";
	rename -uid "76713A6A-4CE8-3368-B823-A580902F4F04";
createNode transform -n "LeftEyeLidOutUp2Ctrl" -p "LeftEyeLidOutUp2CtrlRvs";
	rename -uid "E1B80C68-494E-113D-D922-BBAA70873347";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.7;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutUp2CtrlShape" -p "LeftEyeLidOutUp2Ctrl";
	rename -uid "7FAFFD50-40BE-6928-F973-D29869CEC495";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23639596406820232 0.11149065300393626 0.59461021576451834
		0.0013124766008350379 0.20886542180288536 0.59461021576451834
		-0.23377101086653243 0.11149065300393626 0.59461021576451834
		-0.33114577966548181 -0.12359283446343114 0.59461021576451834
		-0.23377101086653243 -0.20587205507700956 0.59461021576451834
		0.0013124766008349824 -0.20504510724867864 0.59461021576451822
		0.23639596406820232 -0.20587205507700956 0.59461021576451822
		0.33377073286715125 -0.12359283446343114 0.59461021576451834
		0.23639596406820232 0.11149065300393626 0.59461021576451834
		0.0013124766008350379 0.20886542180288536 0.59461021576451834
		-0.23377101086653243 0.11149065300393626 0.59461021576451834
		;
createNode transform -n "LeftEyeLidOutUp3CtrlPos" -p "LeftEyeLidOutUpCtrlGrp";
	rename -uid "2284D0CD-4890-FE68-271C-A4AAB17B8929";
createNode transform -n "LeftEyeLidOutUp3CtrlGrp" -p "LeftEyeLidOutUp3CtrlPos";
	rename -uid "18F35C71-40A7-8568-1B88-D58373964E0C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp3CtrlRvs" -p "LeftEyeLidOutUp3CtrlGrp";
	rename -uid "54F0F305-41F9-4871-7712-2F929D91BDDE";
createNode transform -n "LeftEyeLidOutUp3Ctrl" -p "LeftEyeLidOutUp3CtrlRvs";
	rename -uid "BAC52259-4407-B860-E65F-DF8E6216E953";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.7;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutUp3CtrlShape" -p "LeftEyeLidOutUp3Ctrl";
	rename -uid "FED2BAEC-4F65-103C-E7F9-C1AD2EE949A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23639564986574443 0.11149061414324024 0.59461100436939529
		0.0013121623983770973 0.20886538294218943 0.59461100436939518
		-0.23377132506899059 0.11149061414324024 0.59461100436939529
		-0.33114609386793964 -0.12359287332412708 0.59461100436939518
		-0.23377132506899059 -0.20587209393770561 0.59461100436939518
		0.0013121623983770973 -0.20504514610937458 0.59461100436939507
		0.23639564986574443 -0.20587209393770561 0.59461100436939507
		0.33377041866469342 -0.12359287332412713 0.59461100436939518
		0.23639564986574443 0.11149061414324024 0.59461100436939529
		0.0013121623983770973 0.20886538294218943 0.59461100436939518
		-0.23377132506899059 0.11149061414324024 0.59461100436939529
		;
createNode transform -n "LeftEyeLidOutDownCtrlGrp" -p "LeftEyeLidOutCtrlGrp";
	rename -uid "BB68164E-4924-732D-07DB-6C8A89C06977";
createNode transform -n "LeftEyeLidOutDown1CtrlPos" -p "LeftEyeLidOutDownCtrlGrp";
	rename -uid "8EFF4440-4C61-2532-135D-97807BB87403";
createNode transform -n "LeftEyeLidOutDown1CtrlGrp" -p "LeftEyeLidOutDown1CtrlPos";
	rename -uid "91145368-41B7-9C0C-479C-0BBC8F33B252";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown1CtrlRvs" -p "LeftEyeLidOutDown1CtrlGrp";
	rename -uid "082CF0D6-4A98-3308-58ED-1690164901BA";
createNode transform -n "LeftEyeLidOutDown1Ctrl" -p "LeftEyeLidOutDown1CtrlRvs";
	rename -uid "775E9C5C-40CD-CF31-D402-0B81133AEE61";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutDown1CtrlShape" -p "LeftEyeLidOutDown1Ctrl";
	rename -uid "669A4941-4866-5FE2-F9B8-E3AFA5252845";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.23639566016528393 -0.11149145370941914 0.80538830045208232
		-0.0013121726979168809 -0.20886622250836806 0.80538830045208232
		0.23377131476945065 -0.11149145370941903 0.80538830045208232
		0.33114608356840025 0.12359203375794829 0.80538830045208232
		0.23377131476945065 0.20587125437152692 0.80538830045208232
		-0.0013121726979171029 0.20504430654319589 0.8053883004520821
		-0.23639566016528393 0.2058712543715267 0.80538830045208232
		-0.33377042896423337 0.12359203375794818 0.80538830045208232
		-0.23639566016528393 -0.11149145370941914 0.80538830045208232
		-0.0013121726979168809 -0.20886622250836806 0.80538830045208232
		0.23377131476945065 -0.11149145370941903 0.80538830045208232
		;
createNode transform -n "LeftEyeLidOutDown2CtrlPos" -p "LeftEyeLidOutDownCtrlGrp";
	rename -uid "C5EADC4E-4BAC-076F-1BE5-24B6E98E195D";
createNode transform -n "LeftEyeLidOutDown2CtrlGrp" -p "LeftEyeLidOutDown2CtrlPos";
	rename -uid "EFE9E17F-48DA-BB1B-BBF9-44B5A33B33C6";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown2CtrlRvs" -p "LeftEyeLidOutDown2CtrlGrp";
	rename -uid "2E159E96-4CE9-B778-DA6D-8F83D57D5ED3";
createNode transform -n "LeftEyeLidOutDown2Ctrl" -p "LeftEyeLidOutDown2CtrlRvs";
	rename -uid "E83A86BA-412B-F68E-F9F1-189F3AAC40EE";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutDown2CtrlShape" -p "LeftEyeLidOutDown2Ctrl";
	rename -uid "F203A10C-4842-4AF0-EC48-4596A90A0C2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.23639595224876078 -0.11149065407882008 0.80538980199154642
		-0.0013124647813934874 -0.20886542287776888 0.80538980199154642
		0.23377102268597375 -0.11149065407881997 0.80538980199154642
		0.33114579148492274 0.12359283338854729 0.80538980199154642
		0.23377102268597363 0.20587205400212583 0.80538980199154642
		-0.0013124647813935776 0.20504510617379468 0.80538980199154619
		-0.23639595224876095 0.2058720540021256 0.80538980199154619
		-0.33377072104771011 0.12359283338854707 0.80538980199154642
		-0.23639595224876078 -0.11149065407882008 0.80538980199154642
		-0.0013124647813934874 -0.20886542287776888 0.80538980199154642
		0.23377102268597375 -0.11149065407881997 0.80538980199154642
		;
createNode transform -n "LeftEyeLidOutDown3CtrlPos" -p "LeftEyeLidOutDownCtrlGrp";
	rename -uid "D0C0B843-4878-7C7C-AE19-5D81456CE44D";
createNode transform -n "LeftEyeLidOutDown3CtrlGrp" -p "LeftEyeLidOutDown3CtrlPos";
	rename -uid "649DEE0A-4682-753F-DE72-D595C6767F0E";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown3CtrlRvs" -p "LeftEyeLidOutDown3CtrlGrp";
	rename -uid "8DC47368-4101-F5FD-E217-AF89B2685B4A";
createNode transform -n "LeftEyeLidOutDown3Ctrl" -p "LeftEyeLidOutDown3CtrlRvs";
	rename -uid "16587EDD-49BA-88BE-7F25-D58BEA675CF0";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutDown3CtrlShape" -p "LeftEyeLidOutDown3Ctrl";
	rename -uid "1F21F60E-4174-6E98-5309-CC8D10EA210C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.23639575983353431 -0.11149120535676149 0.60538908620832688
		-0.0013122723661672005 -0.20886597415571062 0.60538908620832677
		0.23377121510119989 -0.11149120535676149 0.60538908620832688
		0.33114598390014888 0.12359228211060588 0.60538908620832677
		0.23377121510119989 0.20587150272418447 0.60538908620832677
		-0.0013122723661674225 0.20504455489585344 0.60538908620832665
		-0.23639575983353453 0.20587150272418436 0.60538908620832677
		-0.33377052863248341 0.12359228211060577 0.60538908620832677
		-0.23639575983353431 -0.11149120535676149 0.60538908620832688
		-0.0013122723661672005 -0.20886597415571062 0.60538908620832677
		0.23377121510119989 -0.11149120535676149 0.60538908620832688
		;
createNode transform -n "LeftEyeLidMainCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "51AA3434-4A00-6606-F6DB-DB8261CF4F58";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidInCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "AB4073E7-48CA-066C-3430-3688FC4BE0E0";
createNode transform -n "LeftEyeLidInMainCtrlGrp" -p "LeftEyeLidInCtrlPos";
	rename -uid "5F1BF978-4378-4863-5C93-B5953EDDBDB8";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidInMainCtrlRvs" -p "LeftEyeLidInMainCtrlGrp";
	rename -uid "30E34BB6-4F89-E092-4C09-85BF578A0761";
createNode transform -n "LeftEyeLidInMainCtrl" -p "LeftEyeLidInMainCtrlRvs";
	rename -uid "B13B2DDB-4E40-28EB-51F1-6C9DAEFA6EFF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrlShape" -p "LeftEyeLidInMainCtrl";
	rename -uid "16ECCE94-4226-F7C0-8CB2-1993F6052EB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78360739338855701 0.4231502774412621 
		0.78361162489122604 -3.1214368686310183e-17 0.59842486127937022 1.1081941875543893 
		0.36046134744996317 0.4231502774412621 0.78361162489122582 0.50976932627501836 7.4156518624273392e-16 
		1.478534453895448e-15 0.36046134744996317 -0.42315027744126049 -0.78361162489122316 
		5.1063942060174821e-17 -0.59842486127936922 -1.1081941875543868 -0.78360739338855701 
		-0.42315027744126049 -0.78361162489122316 -1.1081882033059267 6.289357487179821e-16 
		1.2699614214422038e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftEyeLidUpCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "3C2B0A59-4FF7-7A40-DEEC-31A6DF026655";
createNode transform -n "LeftEyeLidUpMainCtrlGrp" -p "LeftEyeLidUpCtrlPos";
	rename -uid "4D8418C6-4C26-8499-0F0B-1B8118F317FB";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftEyeLidUpMainCtrlRvs" -p "LeftEyeLidUpMainCtrlGrp";
	rename -uid "8984D707-457D-694F-47EF-A4B37815242A";
createNode transform -n "LeftEyeLidUpMainCtrl" -p "LeftEyeLidUpMainCtrlRvs";
	rename -uid "1F991ACE-4F05-4961-155B-979688A4A923";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Blink" -ln "Blink" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
createNode nurbsCurve -n "LeftEyeLidUpMainCtrlShape" -p "LeftEyeLidUpMainCtrl";
	rename -uid "89908E75-458C-F7F2-4BB9-A6B32252BAEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.36046134744996539 0.22315027744126076 
		0.98361162489122766 -2.2465863517693909e-15 0.39842486127936921 1.3081941875543914 
		0.36046134744996094 0.22315027744126043 0.98361162489122722 0.50976932627501637 -0.20000000000000051 
		0.2000000000000027 0.36046134744996094 -0.20000423150266805 -0.58361162489122242 
		-2.1643080410229059e-15 -0.20000598424846211 -0.90819418755438575 -0.36046134744996539 
		-0.20000423150266805 -0.5836116248912222 -0.50976932627502025 -0.20000000000000062 
		0.20000000000000248 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftEyeLidOutCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "E6F60890-4DB8-6E8C-7FDF-A98ED361DD68";
createNode transform -n "LeftEyeLidOutMainCtrlGrp" -p "LeftEyeLidOutCtrlPos";
	rename -uid "A2C13641-4769-E102-57CA-B985AF052719";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutMainCtrlRvs" -p "LeftEyeLidOutMainCtrlGrp";
	rename -uid "4418E7D5-42C0-4158-B824-95981998AD16";
createNode transform -n "LeftEyeLidOutMainCtrl" -p "LeftEyeLidOutMainCtrlRvs";
	rename -uid "70E5457A-413B-4D37-220A-7DA67EE51713";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "LeftEyeLidOutMainCtrl";
	rename -uid "131D6D24-4D2D-A863-A4A6-2A94DE82FFCF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.2315026674843966e-06 0.42315027744126216 -1.4432873909138617e-15
		-3.6642954544799944e-17 0.59842486127937033 -1.5543122344752188e-15
		0.4231502774412611 0.42315027744126216 -1.5681900222830336e-15
		0.59842486127936978 7.4156518624273392e-16 -1.4432899320127035e-15
		0.42315027744126132 -0.42315027744126055 -1.4988010832439613e-15
		5.9944627635856884e-17 -0.59842486127936934 -1.5543122344752186e-15
		-4.2315026674843975e-06 -0.42315027744126055 -1.2212436330217777e-15
		-5.9842484614325278e-06 6.289357487179821e-16 -1.4210830574763007e-15
		-4.2315026674843966e-06 0.42315027744126216 -1.4432873909138617e-15
		-3.6642954544799944e-17 0.59842486127937033 -1.5543122344752188e-15
		0.4231502774412611 0.42315027744126216 -1.5681900222830336e-15
		;
createNode transform -n "LeftEyeLidDownCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "5C3AF698-4F37-EF42-6282-1DB905CF91F7";
createNode transform -n "LeftEyeLidDownMainCtrlGrp" -p "LeftEyeLidDownCtrlPos";
	rename -uid "486508E3-40D6-BC03-AB1C-44A5F0CFB890";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDownMainCtrlRvs" -p "LeftEyeLidDownMainCtrlGrp";
	rename -uid "E55D42FA-418A-6BB0-62C7-95889D43B7B3";
createNode transform -n "LeftEyeLidDownMainCtrl" -p "LeftEyeLidDownMainCtrlRvs";
	rename -uid "2548F4F4-4879-3F66-7E03-14B2EBA18D29";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Blink" -ln "Blink" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
createNode nurbsCurve -n "LeftEyeLidDownMainCtrlShape" -p "LeftEyeLidDownMainCtrl";
	rename -uid "B62D627C-43D6-D566-040D-91B38743218E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.42315027744126255 -0.12315027744126227 0.30000000000000437
		-8.7773538437474489e-16 -0.29842486127937062 0.30000000000000482
		0.42315027744126044 -0.1231502774412616 0.30000000000000437
		0.59842486127936945 0.29999999999999921 0.30000000000000393
		0.42315027744126055 0.3000042315026667 0.30000000000000371
		-6.3793201373252193e-16 0.30000598424846087 0.30000000000000326
		-0.42315027744126221 0.30000423150266681 0.30000000000000371
		-0.59842486127937033 0.29999999999999949 0.30000000000000393
		-0.42315027744126255 -0.12315027744126227 0.30000000000000437
		-8.7773538437474489e-16 -0.29842486127937062 0.30000000000000482
		0.42315027744126044 -0.1231502774412616 0.30000000000000437
		;
createNode transform -n "LeftEyeLidCCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "A87CF3C0-41B9-ED59-2A65-D98401E3EAB2";
createNode transform -n "LeftEyeLidCCtrlOffGrp" -p "LeftEyeLidCCtrlGrp";
	rename -uid "3232CA49-4294-67ED-C772-5A87258981F4";
	setAttr ".t" -type "double3" 0 0 3 ;
createNode transform -n "LeftEyeLidCCtrl" -p "LeftEyeLidCCtrlOffGrp";
	rename -uid "7EC5CC2C-402B-C380-DF03-43899F21670F";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftEyeLidCCtrlShape" -p "LeftEyeLidCCtrl";
	rename -uid "6B55D333-4652-7F3E-C9BD-DA94EE134E3B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.68330933690514639 1.4669209617963705 
		1.3836116248912247 -1.1846409808249781e-16 2.0745395191018123 1.7081941875543878 
		-0.68330933690514639 1.4669209617963705 1.3836116248912242 -0.96634533154742641 1.075444950064649e-16 
		0.60000000000000009 -0.68330933690514639 -1.4669209617963705 -0.1836116248912244 
		-2.7443515671496518e-16 -2.0745395191018154 -0.50819418755438839 0.68330933690514639 
		-1.4669209617963705 -0.1836116248912244 0.96634533154742641 -2.8290422174600808e-16 
		0.6 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftEyeLidSegmentCtrlGrp" -p "LeftEyeLidCCtrl";
	rename -uid "3400D006-4707-EFAC-5342-E7BEA15DD555";
	setAttr ".t" -type "double3" -3.0000000277940013 1.2079227474570066e-13 -2.9999999999999964 ;
createNode transform -n "LeftEyeLidUpCtrlGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "30203FE7-45D4-814D-E307-E38F034A004C";
createNode transform -n "LeftEyeLidUp2CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "0AACECCC-46E0-3B60-4A07-4389C8517D2C";
createNode transform -n "LeftEyeLidUp2CtrlGrpGrp" -p "LeftEyeLidUp2CtrlPosGrp";
	rename -uid "6AEC5C9A-4AA2-F9DB-46A6-D0BEDDDC8704";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp2CtrlRvsGrp" -p "LeftEyeLidUp2CtrlGrpGrp";
	rename -uid "FA7DFB23-410A-AD8E-F6A9-C78F3A59D774";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp2Ctrl" -p "LeftEyeLidUp2CtrlRvsGrp";
	rename -uid "B652FE30-48C1-83C3-4AA5-9088E0DDF9CD";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidUp2CtrlShape" -p "LeftEyeLidUp2Ctrl";
	rename -uid "4C1961F5-46A2-E475-D564-9B803C7ACAA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 1.1171619185290653e-16 0.19999999999999996
		-1.9026447084513623e-15 0.2400000000000001 0.19999999999999996
		0.23999999999999805 1.1171619185290653e-16 0.19999999999999996
		-1.9026447084513623e-15 -0.23999999999999988 0.19999999999999996
		-0.24000000000000199 1.1171619185290653e-16 0.19999999999999996
		;
createNode transform -n "LeftEyeLidUp3CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "CF220718-406F-FEC6-175B-40ACA09F2BB1";
createNode transform -n "LeftEyeLidUp3CtrlGrpGrp" -p "LeftEyeLidUp3CtrlPosGrp";
	rename -uid "2291BDB2-4304-806B-CEC9-ADB6823F2FDA";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp3CtrlRvsGrp" -p "LeftEyeLidUp3CtrlGrpGrp";
	rename -uid "3511A1AC-40F5-ACF8-2CC0-2EA8713B7328";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp3Ctrl" -p "LeftEyeLidUp3CtrlRvsGrp";
	rename -uid "655E2E28-43B2-20D4-C612-CAA770CF5348";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidUp3CtrlShape" -p "LeftEyeLidUp3Ctrl";
	rename -uid "BD7E7C63-4A5F-65C8-BA3A-669089B8B5B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000166 1.1171619185290653e-16 0.19999999999999996
		-1.5473733405713119e-15 0.2400000000000001 0.19999999999999996
		0.23999999999999849 1.1171619185290653e-16 0.19999999999999996
		-1.5473733405713119e-15 -0.23999999999999988 0.19999999999999996
		-0.24000000000000166 1.1171619185290653e-16 0.19999999999999996
		;
createNode transform -n "LeftEyeLidUp4CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "96EC2B8A-4148-5F7C-763D-84A93512238F";
createNode transform -n "LeftEyeLidUp4CtrlGrpGrp" -p "LeftEyeLidUp4CtrlPosGrp";
	rename -uid "592B7557-4CA3-4CB0-1456-3A92BF9B29B0";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp4CtrlRvsGrp" -p "LeftEyeLidUp4CtrlGrpGrp";
	rename -uid "DA2F1A52-4169-8C9F-F404-D3B64CF4D27B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp4Ctrl" -p "LeftEyeLidUp4CtrlRvsGrp";
	rename -uid "894F7ABB-4881-49D3-D476-E585F1A3BE9B";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidUp4CtrlShape" -p "LeftEyeLidUp4Ctrl";
	rename -uid "B1CF6D06-47B5-50C3-31DE-C8A26B3A6D9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000166 2.2433443991332066e-15 0.2000000000000014
		-1.5473733405713119e-15 0.24000000000000221 0.2000000000000014
		0.23999999999999849 2.2433443991332066e-15 0.2000000000000014
		-1.5473733405713119e-15 -0.23999999999999777 0.2000000000000014
		-0.24000000000000166 2.2433443991332066e-15 0.2000000000000014
		;
createNode transform -n "LeftEyeLidUp5CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "8799F67C-4CC0-626C-FA01-408A74E2442C";
createNode transform -n "LeftEyeLidUp5CtrlGrpGrp" -p "LeftEyeLidUp5CtrlPosGrp";
	rename -uid "7F07275A-429F-7276-7289-719381414483";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp5CtrlRvsGrp" -p "LeftEyeLidUp5CtrlGrpGrp";
	rename -uid "DBAF0313-41CC-61EB-26FC-468EF567E9D9";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp5Ctrl" -p "LeftEyeLidUp5CtrlRvsGrp";
	rename -uid "AD567577-4A9E-D449-5554-429D2F69F194";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidUp5CtrlShape" -p "LeftEyeLidUp5Ctrl";
	rename -uid "D9882250-48CF-8BB3-B937-1DA31713F976";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000143 1.5328016633731066e-15 0.2000000000000014
		-1.3697376566312867e-15 0.24000000000000149 0.2000000000000014
		0.23999999999999871 1.5328016633731066e-15 0.2000000000000014
		-1.3697376566312867e-15 -0.23999999999999849 0.2000000000000014
		-0.24000000000000143 1.5328016633731066e-15 0.2000000000000014
		;
createNode transform -n "LeftEyeLidUp6CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "4D4F00CD-41C5-3287-D806-D8AE2184129C";
createNode transform -n "LeftEyeLidUp6CtrlGrpGrp" -p "LeftEyeLidUp6CtrlPosGrp";
	rename -uid "CF1CF7C2-4A8C-08B6-513E-B88F893AA351";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp6CtrlRvsGrp" -p "LeftEyeLidUp6CtrlGrpGrp";
	rename -uid "8DDC32DD-4678-0A99-C959-048C736FA716";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp6Ctrl" -p "LeftEyeLidUp6CtrlRvsGrp";
	rename -uid "6BB80008-4ACF-48F2-75A0-14BDA36A6EB8";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidUp6CtrlShape" -p "LeftEyeLidUp6Ctrl";
	rename -uid "EB119DEA-48CD-5174-39D7-BCAF4959604B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000143 1.1171619185290653e-16 0.2000000000000014
		-1.3697376566312867e-15 0.2400000000000001 0.2000000000000014
		0.23999999999999871 1.1171619185290653e-16 0.2000000000000014
		-1.3697376566312867e-15 -0.23999999999999988 0.2000000000000014
		-0.24000000000000143 1.1171619185290653e-16 0.2000000000000014
		;
createNode transform -n "LeftEyeLidDownCtrlGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "EC029FE9-4D1D-413D-F50A-C79FA8D001C1";
createNode transform -n "LeftEyeLidDown2CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "CADE39E1-419F-A6FB-C06A-8BAD0C165FFD";
createNode transform -n "LeftEyeLidDown2CtrlGrpGrp" -p "LeftEyeLidDown2CtrlPosGrp";
	rename -uid "F452102C-49F5-FD9C-C97F-5F872B0BB833";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown2CtrlRvsGrp" -p "LeftEyeLidDown2CtrlGrpGrp";
	rename -uid "9B2A212A-46CD-8E3F-254F-B5922167DD3C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown2Ctrl" -p "LeftEyeLidDown2CtrlRvsGrp";
	rename -uid "36102470-4028-A0ED-E1E4-03A9CEA685C1";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidDown2CtrlShape" -p "LeftEyeLidDown2Ctrl";
	rename -uid "E811A2B2-43C4-6AF3-16F8-2E8466A2BD52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000166 8.2225892761300656e-16 0.20000000000000284
		-1.5473733405713119e-15 0.24000000000000077 0.20000000000000284
		0.23999999999999849 8.2225892761300656e-16 0.20000000000000284
		-1.5473733405713119e-15 -0.23999999999999916 0.20000000000000284
		-0.24000000000000166 8.2225892761300656e-16 0.20000000000000284
		;
createNode transform -n "LeftEyeLidDown3CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "0AE2DAD2-4679-4BEB-07F0-D9B02F0B3D0E";
createNode transform -n "LeftEyeLidDown3CtrlGrpGrp" -p "LeftEyeLidDown3CtrlPosGrp";
	rename -uid "596E8633-47FB-463B-D009-DCA7794A6A55";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown3CtrlRvsGrp" -p "LeftEyeLidDown3CtrlGrpGrp";
	rename -uid "8529884F-4ED3-631E-2671-FD8FB002BB49";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown3Ctrl" -p "LeftEyeLidDown3CtrlRvsGrp";
	rename -uid "30B85380-4108-7F35-3C71-6A8917CD9A71";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidDown3CtrlShape" -p "LeftEyeLidDown3Ctrl";
	rename -uid "FA3051EF-479C-5133-E8AF-39B57C29DBD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000166 8.2225892761300656e-16 0.2000000000000014
		-1.5473733405713119e-15 0.24000000000000077 0.2000000000000014
		0.23999999999999849 8.2225892761300656e-16 0.2000000000000014
		-1.5473733405713119e-15 -0.23999999999999916 0.2000000000000014
		-0.24000000000000166 8.2225892761300656e-16 0.2000000000000014
		;
createNode transform -n "LeftEyeLidDown4CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "B111DA63-4706-159A-7306-40B4C6A98CAA";
createNode transform -n "LeftEyeLidDown4CtrlGrpGrp" -p "LeftEyeLidDown4CtrlPosGrp";
	rename -uid "CC729594-495A-562E-8C6D-328FB55B8D8F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown4CtrlRvsGrp" -p "LeftEyeLidDown4CtrlGrpGrp";
	rename -uid "F5BC4662-4D98-DC6F-86AF-3C95FE8F6FB3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown4Ctrl" -p "LeftEyeLidDown4CtrlRvsGrp";
	rename -uid "1DAACA49-4CA7-04B7-0DC9-0E8F033F52C8";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidDown4CtrlShape" -p "LeftEyeLidDown4Ctrl";
	rename -uid "36FE6388-4A16-BF73-24F1-EBAE8F4DCEEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000166 8.2225892761300656e-16 0.19999999999999996
		-1.5473733405713119e-15 0.24000000000000077 0.19999999999999996
		0.23999999999999849 8.2225892761300656e-16 0.19999999999999996
		-1.5473733405713119e-15 -0.23999999999999916 0.19999999999999996
		-0.24000000000000166 8.2225892761300656e-16 0.19999999999999996
		;
createNode transform -n "LeftEyeLidDown5CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "02461479-49FD-E921-E7CE-2B96D9FDE6D6";
createNode transform -n "LeftEyeLidDown5CtrlGrpGrp" -p "LeftEyeLidDown5CtrlPosGrp";
	rename -uid "9072B6E6-4AC0-9EAE-91CF-DEB7C510190D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown5CtrlRvsGrp" -p "LeftEyeLidDown5CtrlGrpGrp";
	rename -uid "81C47D4D-45B1-3260-8780-EC9D8237BE68";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown5Ctrl" -p "LeftEyeLidDown5CtrlRvsGrp";
	rename -uid "84F64E8A-4E96-6CEC-A5C1-B393D2C66A1B";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidDown5CtrlShape" -p "LeftEyeLidDown5Ctrl";
	rename -uid "05AB7559-49E2-8529-A9D2-74BC8712EE2E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000138 1.1171619185290653e-16 0.2000000000000014
		-1.2809198146612745e-15 0.2400000000000001 0.2000000000000014
		0.23999999999999871 1.1171619185290653e-16 0.2000000000000014
		-1.2809198146612745e-15 -0.23999999999999988 0.2000000000000014
		-0.24000000000000138 1.1171619185290653e-16 0.2000000000000014
		;
createNode transform -n "LeftEyeLidDown6CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "770CA0E2-4099-FCE7-9B6D-2C9DD4A2CDF2";
createNode transform -n "LeftEyeLidDown6CtrlGrpGrp" -p "LeftEyeLidDown6CtrlPosGrp";
	rename -uid "50D5EF72-49D4-B2A0-4FD3-368FB2547A48";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown6CtrlRvsGrp" -p "LeftEyeLidDown6CtrlGrpGrp";
	rename -uid "15ECC493-4647-775D-B4A5-5AABF729526D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown6Ctrl" -p "LeftEyeLidDown6CtrlRvsGrp";
	rename -uid "4FB6097B-49F1-B0F1-9A83-E2B3267F4AF2";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidDown6CtrlShape" -p "LeftEyeLidDown6Ctrl";
	rename -uid "A9938D2A-4818-A39B-AA97-A3BFB5954C13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.2400000000000016 1.1171619185290653e-16 0.2000000000000014
		-1.4585554986012997e-15 0.2400000000000001 0.2000000000000014
		0.23999999999999855 1.1171619185290653e-16 0.2000000000000014
		-1.4585554986012997e-15 -0.23999999999999988 0.2000000000000014
		-0.2400000000000016 1.1171619185290653e-16 0.2000000000000014
		;
createNode transform -n "LeftEyeLidSide1CtrlPosGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "029CAD82-4A50-F735-5312-50A9A443AFC0";
createNode transform -n "LeftEyeLidSide1CtrlGrpGrp" -p "LeftEyeLidSide1CtrlPosGrp";
	rename -uid "67E48B8C-4BEA-1C12-F333-968561ECB67A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide1RvsGrp" -p "LeftEyeLidSide1CtrlGrpGrp";
	rename -uid "69CC7EC2-4C67-AD97-9007-30AEFB8EA6D5";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide1Ctrl" -p "LeftEyeLidSide1RvsGrp";
	rename -uid "3A3AD3DC-4D2F-6878-0392-77B9982B5345";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidSide1CtrlShape" -p "LeftEyeLidSide1Ctrl";
	rename -uid "E88C03E9-4C25-3DC2-B03D-969CC13998E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000166 8.2225892761300656e-16 0.2000000000000014
		-1.5473733405713119e-15 0.24000000000000077 0.2000000000000014
		0.23999999999999849 8.2225892761300656e-16 0.2000000000000014
		5.8873685435885355e-08 -0.24000001451769221 0.19999943202960735
		-0.24000000000000166 8.2225892761300656e-16 0.2000000000000014
		;
createNode transform -n "LeftEyeLidSide2CtrlPosGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "5FEA2F74-4887-897E-35E0-AE9E170E69E9";
createNode transform -n "LeftEyeLidSide2CtrlGrpGrp" -p "LeftEyeLidSide2CtrlPosGrp";
	rename -uid "CAED3C62-43D8-D0EF-55B0-15A91F4619E1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide2CtrlRvsGrp" -p "LeftEyeLidSide2CtrlGrpGrp";
	rename -uid "5F6A9846-46EC-CB1D-AE73-D2A58EBF1D1F";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide2Ctrl" -p "LeftEyeLidSide2CtrlRvsGrp";
	rename -uid "45736735-4451-4A69-44F5-768D869CF029";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidSide2CtrlShape" -p "LeftEyeLidSide2Ctrl";
	rename -uid "EEF33A87-4F49-FBCE-B3B4-59AA17084139";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 8.2225892761300656e-16 0.19999999999999996
		2.8961278023691438e-08 0.23999976591011665 0.19999919495711074
		0.23999999999999805 8.2225892761300656e-16 0.19999999999999996
		-1.9026447084513623e-15 -0.23999999999999916 0.19999999999999996
		-0.24000000000000199 8.2225892761300656e-16 0.19999999999999996
		;
createNode transform -n "RightEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "CCB8308F-4DB8-2387-0DB7-53A201A0FAEC";
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1 ;
createNode transform -n "RightEyeLidSegmentCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "C377F89D-4250-2F86-E262-F7A40E48B6E2";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidUpCtrlGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "FC21E038-4647-832F-E0BD-06B1AC630C3C";
createNode transform -n "RightEyeLidUp2CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "F1C681CD-4E92-1967-6C97-57B6E718B962";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2CtrlGrpGrp" -p "RightEyeLidUp2CtrlPosGrp";
	rename -uid "C61E7055-415C-1E0B-2824-A398CBCC045B";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999911 ;
createNode transform -n "RightEyeLidUp2CtrlRvsGrp" -p "RightEyeLidUp2CtrlGrpGrp";
	rename -uid "F5BAA331-4914-B896-2718-7AB53EBEC3B1";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000024 ;
createNode transform -n "RightEyeLidUp2Ctrl" -p "RightEyeLidUp2CtrlRvsGrp";
	rename -uid "2DAAAA8D-4109-D7FA-D684-3497756C6A40";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidUp2CtrlShape" -p "RightEyeLidUp2Ctrl";
	rename -uid "66A68B69-4EAC-144B-8953-B380C30B9D66";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 0 0.20000000000000284
		-2.6645352591003757e-15 0.24000000000000021 0.20000000000000284
		0.23999999999999844 -1.7763568394002505e-15 0.20000000000000639
		-1.7763568394002505e-15 -0.23999999999999844 0.20000000000000284
		-0.24000000000000199 0 0.20000000000000284
		;
createNode transform -n "RightEyeLidUp3CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "78272B51-47E6-4988-A4AC-E4B889F0E29F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp3CtrlGrpGrp" -p "RightEyeLidUp3CtrlPosGrp";
	rename -uid "F6CAE6D8-4B5F-D9EC-387B-C397E7DE6B39";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp3CtrlRvsGrp" -p "RightEyeLidUp3CtrlGrpGrp";
	rename -uid "B11396E2-4B86-2D3B-1716-F59EDBDFEA3F";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 1.0000000000000011 ;
createNode transform -n "RightEyeLidUp3Ctrl" -p "RightEyeLidUp3CtrlRvsGrp";
	rename -uid "1C86B956-4CA4-8193-D96B-748B2CC37139";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidUp3CtrlShape" -p "RightEyeLidUp3Ctrl";
	rename -uid "20B4870A-4531-95A0-F7BE-DA9E0277ED92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000155 -3.5527136788005009e-15 0.19999999999999574
		-1.3322676295501878e-15 0.24000000000000021 0.19999999999999929
		0.23999999999999844 0 0.20000000000000284
		-1.3322676295501878e-15 -0.24000000000000021 0.19999999999999929
		-0.24000000000000155 -3.5527136788005009e-15 0.19999999999999574
		;
createNode transform -n "RightEyeLidUp4CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "1FE1FE29-45FF-B446-C825-428512133EA7";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp4CtrlGrpGrp" -p "RightEyeLidUp4CtrlPosGrp";
	rename -uid "41EAC42F-4564-2E51-6E28-81A5160691A2";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp4CtrlRvsGrp" -p "RightEyeLidUp4CtrlGrpGrp";
	rename -uid "CF9C1A4C-4962-BACD-E8B7-E1851306C355";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000016 ;
createNode transform -n "RightEyeLidUp4Ctrl" -p "RightEyeLidUp4CtrlRvsGrp";
	rename -uid "37D3C7C1-4A6E-2E73-F312-B1B713861ADA";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidUp4CtrlShape" -p "RightEyeLidUp4Ctrl";
	rename -uid "8569149B-4EA7-7280-E59C-4DB09B4E7469";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000243 3.5527136788005009e-15 0.20000000000000639
		-1.7763568394002505e-15 0.24000000000000554 0.20000000000000639
		0.23999999999999844 3.5527136788005009e-15 0.20000000000000639
		-1.7763568394002505e-15 -0.23999999999999844 0.20000000000000639
		-0.24000000000000243 3.5527136788005009e-15 0.20000000000000639
		;
createNode transform -n "RightEyeLidUp5CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "1577EDA7-4DC0-DC43-57D7-50B17CF60C58";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp5CtrlGrpGrp" -p "RightEyeLidUp5CtrlPosGrp";
	rename -uid "EBA9EFCC-4D8F-28B3-8470-619BF789C52F";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidUp5CtrlRvsGrp" -p "RightEyeLidUp5CtrlGrpGrp";
	rename -uid "03CB749F-44CA-CBD7-86AE-EEB157F2C0A5";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
createNode transform -n "RightEyeLidUp5Ctrl" -p "RightEyeLidUp5CtrlRvsGrp";
	rename -uid "3804C8B4-4235-DA12-CCB3-8390394849D6";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidUp5CtrlShape" -p "RightEyeLidUp5Ctrl";
	rename -uid "FE210339-4DB7-2ED0-3513-E6BDFF2A28A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000177 0 0.20000000000000284
		-1.1102230246251565e-15 0.24000000000000199 0.19999999999999929
		0.23999999999999866 0 0.20000000000000284
		-1.5543122344752192e-15 -0.24000000000000021 0.19999999999999929
		-0.24000000000000177 0 0.20000000000000284
		;
createNode transform -n "RightEyeLidUp6CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "41401BEA-4A38-FE3B-0909-6B99F5B22233";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp6CtrlGrpGrp" -p "RightEyeLidUp6CtrlPosGrp";
	rename -uid "67DFB29B-41A2-A085-7F31-8D8AADCE3BA8";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "RightEyeLidUp6CtrlRvsGrp" -p "RightEyeLidUp6CtrlGrpGrp";
	rename -uid "C36BB306-4DCF-E8C9-52CA-6FAADAD5E046";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidUp6Ctrl" -p "RightEyeLidUp6CtrlRvsGrp";
	rename -uid "954BE9BF-4A93-E058-0FA0-D0812D88D1A4";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidUp6CtrlShape" -p "RightEyeLidUp6Ctrl";
	rename -uid "47201236-4840-9CE3-FA52-4D8D6DE1813B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000177 0 0.20000000000000284
		-1.1102230246251565e-15 0.24000000000000199 0.20000000000000284
		0.23999999999999821 0 0.20000000000000284
		-1.9984014443252818e-15 -0.23999999999999666 0.20000000000000284
		-0.24000000000000177 0 0.20000000000000284
		;
createNode transform -n "RightEyeLidDownCtrlGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "3B1E4AE3-42DA-A14D-03BB-9E9329D545C4";
createNode transform -n "RightEyeLidDown2CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "AD545DD8-41EE-E175-137A-379CA7B1B4CE";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown2CtrlGrpGrp" -p "RightEyeLidDown2CtrlPosGrp";
	rename -uid "38368DEB-467B-BFDB-E720-77849F356149";
	setAttr ".s" -type "double3" 0.99999999999999889 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown2CtrlRvsGrp" -p "RightEyeLidDown2CtrlGrpGrp";
	rename -uid "2350081C-489B-3FC9-AAB2-3585ACD7E02A";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000002 0.99999999999999911 ;
createNode transform -n "RightEyeLidDown2Ctrl" -p "RightEyeLidDown2CtrlRvsGrp";
	rename -uid "ABF3128A-402D-D20B-55CC-509EE797541D";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidDown2CtrlShape" -p "RightEyeLidDown2Ctrl";
	rename -uid "D84761C3-44EA-5FE4-F2BD-44930395D8F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 1.7763568394002505e-15 0.19999999999999929
		-1.7763568394002505e-15 0.24000000000000021 0.20000000000000284
		0.23999999999999844 0 0.20000000000000284
		-1.7763568394002505e-15 -0.24000000000000021 0.20000000000000284
		-0.24000000000000199 1.7763568394002505e-15 0.19999999999999929
		;
createNode transform -n "RightEyeLidDown3CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "5D0A6723-457E-F29B-FB8F-3E9E3B2BD4CF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown3CtrlGrpGrp" -p "RightEyeLidDown3CtrlPosGrp";
	rename -uid "ACCA2584-408C-9996-1BAF-CD970CC84145";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidDown3CtrlRvsGrp" -p "RightEyeLidDown3CtrlGrpGrp";
	rename -uid "AE49671A-4653-19F5-4A69-BA900EDA64D2";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown3Ctrl" -p "RightEyeLidDown3CtrlRvsGrp";
	rename -uid "6CD87A5E-4A59-9970-6710-148CB1CFA20C";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidDown3CtrlShape" -p "RightEyeLidDown3Ctrl";
	rename -uid "3A63B8F4-439F-9C03-DB3B-1A9106A6BBBA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 3.5527136788005009e-15 0.20000000000000284
		-8.8817841970012523e-16 0.24000000000000199 0.19999999999999929
		0.23999999999999888 3.5527136788005009e-15 0.19999999999999574
		-1.3322676295501878e-15 -0.23999999999999844 0.19999999999999929
		-0.24000000000000199 3.5527136788005009e-15 0.20000000000000284
		;
createNode transform -n "RightEyeLidDown4CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "906DEEDC-4C95-3480-D007-A3831955F340";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown4CtrlGrpGrp" -p "RightEyeLidDown4CtrlPosGrp";
	rename -uid "72646A12-40E1-BD5A-ACB2-F4A5FBF1D07D";
	setAttr ".s" -type "double3" 1.0000000000000009 1 0.99999999999999933 ;
createNode transform -n "RightEyeLidDown4CtrlRvsGrp" -p "RightEyeLidDown4CtrlGrpGrp";
	rename -uid "C6BCEB82-4FA6-33F9-9D5E-BEBA6E10D5FF";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidDown4Ctrl" -p "RightEyeLidDown4CtrlRvsGrp";
	rename -uid "F491B9E8-4A24-D669-BCE4-E8ABE1302827";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidDown4CtrlShape" -p "RightEyeLidDown4Ctrl";
	rename -uid "70ACCDBB-460E-23A5-8CD7-189D479570D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000155 1.7763568394002505e-15 0.19999999999999929
		-1.3322676295501878e-15 0.24000000000000199 0.19999999999999929
		0.23999999999999888 3.5527136788005009e-15 0.20000000000000284
		-1.7763568394002505e-15 -0.23999999999999666 0.19999999999999929
		-0.24000000000000155 1.7763568394002505e-15 0.19999999999999929
		;
createNode transform -n "RightEyeLidDown5CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "AE2F6A35-433C-1A97-3658-1EAB34056948";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown5CtrlGrpGrp" -p "RightEyeLidDown5CtrlPosGrp";
	rename -uid "96E1B66F-48D9-1E92-379D-EE9C68BF4443";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown5CtrlRvsGrp" -p "RightEyeLidDown5CtrlGrpGrp";
	rename -uid "96257D83-4787-A16F-DB5E-0DA879B89254";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown5Ctrl" -p "RightEyeLidDown5CtrlRvsGrp";
	rename -uid "D8B9D1A4-4510-01D8-E8A8-DAB3F0B3BADF";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidDown5CtrlShape" -p "RightEyeLidDown5Ctrl";
	rename -uid "BBCFEF04-4531-5EB5-88A3-19894337D5A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000221 1.7763568394002505e-15 0.20000000000000639
		-1.5543122344752192e-15 0.24000000000000021 0.20000000000000639
		0.23999999999999777 0 0.20000000000000284
		-1.5543122344752192e-15 -0.23999999999999844 0.20000000000000639
		-0.24000000000000221 1.7763568394002505e-15 0.20000000000000639
		;
createNode transform -n "RightEyeLidDown6CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "48668420-4697-4FF2-3F19-13AC548503A2";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown6CtrlGrpGrp" -p "RightEyeLidDown6CtrlPosGrp";
	rename -uid "D0269E08-42DB-394E-0B4D-2B8066FBAF6F";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1 ;
createNode transform -n "RightEyeLidDown6CtrlRvsGrp" -p "RightEyeLidDown6CtrlGrpGrp";
	rename -uid "BB03A271-427E-FF44-73C6-40B277636191";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown6Ctrl" -p "RightEyeLidDown6CtrlRvsGrp";
	rename -uid "EC67770A-496C-101A-8968-C0BC65224199";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidDown6CtrlShape" -p "RightEyeLidDown6Ctrl";
	rename -uid "E395D2B2-4166-136E-C5CC-B48953A6EE6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000243 1.7763568394002505e-15 0.20000000000000284
		-1.7763568394002505e-15 0.24000000000000021 0.20000000000000284
		0.23999999999999799 0 0.20000000000000284
		-2.6645352591003757e-15 -0.23999999999999844 0.19999999999999929
		-0.24000000000000243 1.7763568394002505e-15 0.20000000000000284
		;
createNode transform -n "RightEyeLidSide1CtrlPosGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "0DC9D0E3-417C-877A-FDD8-8680A789BBC2";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide1CtrlGrpGrp" -p "RightEyeLidSide1CtrlPosGrp";
	rename -uid "A3778A1C-407E-9EE0-FAC3-1A91200C7BAF";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide1CtrlRvsGrp" -p "RightEyeLidSide1CtrlGrpGrp";
	rename -uid "8558B472-4346-F592-4610-ADBE2E54E1FC";
	setAttr ".s" -type "double3" 1.0000000000000011 1 0.99999999999999967 ;
createNode transform -n "RightEyeLidSide1Ctrl" -p "RightEyeLidSide1CtrlRvsGrp";
	rename -uid "BAA173DE-4540-71ED-BE5B-C6BAA09CD55E";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidSide1CtrlShape" -p "RightEyeLidSide1Ctrl";
	rename -uid "0879DC33-40CA-E7FD-64EA-57AF29446BCA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 0 0.20000000000000995
		-1.7763568394002505e-15 0.24000000000000199 0.20000000000000639
		0.23999999999999844 1.7763568394002505e-15 0.20000000000000639
		5.8875520986365403e-08 -0.24000001451762903 0.1999994320299025
		-0.24000000000000199 0 0.20000000000000995
		;
createNode transform -n "RightEyeLidSide2CtrlPosGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "8C79B301-426C-912F-FDE4-A59D44DE58EA";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide2CtrlGrpGrp" -p "RightEyeLidSide2CtrlPosGrp";
	rename -uid "40908AF0-4AB7-7B68-30D2-A59A0406DFF7";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide2CtrlRvsGrp" -p "RightEyeLidSide2CtrlGrpGrp";
	rename -uid "016353F8-4BC2-69EE-113C-A6945026D0FB";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "RightEyeLidSide2Ctrl" -p "RightEyeLidSide2CtrlRvsGrp";
	rename -uid "228DCB8F-44CE-4E62-E814-49A9C3718F27";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidSide2CtrlShape" -p "RightEyeLidSide2Ctrl";
	rename -uid "CCCFF762-4E6B-1B09-F079-D0A55832534D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.24000000000000199 0 0.19999999999999218
		2.8962440560706138e-08 0.23999976591018526 0.1999991949570977
		0.23999999999999755 1.7763568394002505e-15 0.19999999999999574
		-2.6645352591003757e-15 -0.23999999999999844 0.19999999999999218
		-0.24000000000000199 0 0.19999999999999218
		;
createNode transform -n "RightEyeLidOutCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "87F3D901-4075-F1FB-65D8-129093CA3128";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUpCtrlGrp" -p "RightEyeLidOutCtrlGrp";
	rename -uid "5F194205-4B23-0F31-8B8F-55AD23EA43FD";
createNode transform -n "RightEyeLidOutUp1CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "B66CFE0F-4FE2-2568-76D4-D3875A309169";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1CtrlGrp" -p "RightEyeLidOutUp1CtrlPos";
	rename -uid "55A1C4A0-453D-0015-4ED5-B0B1AB1B6370";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUp1CtrlRvs" -p "RightEyeLidOutUp1CtrlGrp";
	rename -uid "B7055F32-4A67-0FD4-1AC6-3293904DA851";
createNode transform -n "RightEyeLidOutUp1Ctrl" -p "RightEyeLidOutUp1CtrlRvs";
	rename -uid "054DB667-430F-AABB-B2BE-4BBCF2B0699C";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.7;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutUp1CtrlShape" -p "RightEyeLidOutUp1Ctrl";
	rename -uid "8FAE72F2-4F9A-D4F9-93D5-57A4DA270646";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.54721570118671925 0.11149137057159418 
		1.3782219243022171 0.0013124362371389302 0.20886613937054088 1.7028044869653762 0.54984057366099492 
		0.11149137057159418 1.3782219243022131 0.77704836752520956 -0.12359211689578017 0.5946102994109892 
		0.54984057366099404 -0.20587133750935876 -0.18900132548023563 0.001312436237138264 
		-0.20504438968102207 -0.51358388814339984 -0.54721570118671925 -0.20587133750935166 
		-0.1890013254802354 -0.77442349505093344 -0.12359211689578017 0.59461029941098875 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeLidOutUp2CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "C78C980C-4998-0B2D-6DFE-DCA8A3C64B91";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp2CtrlGrp" -p "RightEyeLidOutUp2CtrlPos";
	rename -uid "5BCB1C79-4263-E779-99E3-C4A188B92983";
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp2CtrlRvs" -p "RightEyeLidOutUp2CtrlGrp";
	rename -uid "752CF1DC-48F7-3C6E-0D54-31907ABA9D81";
createNode transform -n "RightEyeLidOutUp2Ctrl" -p "RightEyeLidOutUp2CtrlRvs";
	rename -uid "3CE85D92-4163-C7D9-A01C-0B9C79919E60";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.7;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutUp2CtrlShape" -p "RightEyeLidOutUp2Ctrl";
	rename -uid "5E1F192C-4143-CE48-8B4B-8CBE8F03A9CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23639596405023119 0.1114906554800266 0.59461021372579237
		0.001312476582864491 0.20886542427898031 0.59461021372578882
		-0.23377101088450244 0.11149065548003015 0.59461021372579237
		-0.33114577968345266 -0.12359283198733359 0.59461021372579237
		-0.23377101088450289 -0.20587205260091213 0.59461021372578882
		0.0013124765828640469 -0.20504510477258608 0.59461021372579237
		0.23639596405023119 -0.20587205260091568 0.59461021372579592
		0.33377073284917952 -0.12359283198733359 0.59461021372579237
		0.23639596405023119 0.1114906554800266 0.59461021372579237
		0.001312476582864491 0.20886542427898031 0.59461021372578882
		-0.23377101088450244 0.11149065548003015 0.59461021372579237
		;
createNode transform -n "RightEyeLidOutUp3CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "7D9C592A-47B2-9841-1250-309FF9894548";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp3CtrlGrp" -p "RightEyeLidOutUp3CtrlPos";
	rename -uid "10982964-45AF-1C74-C896-41A9CC211713";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp3CtrlRvs" -p "RightEyeLidOutUp3CtrlGrp";
	rename -uid "AE57D205-4A19-11D8-CF37-E2B1556321E3";
createNode transform -n "RightEyeLidOutUp3Ctrl" -p "RightEyeLidOutUp3CtrlRvs";
	rename -uid "8614DCBB-461B-ED62-5C7A-1D9C5841948A";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.7;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutUp3CtrlShape" -p "RightEyeLidOutUp3Ctrl";
	rename -uid "E611CEA7-41F0-BE3E-4DFC-1FBFDC26C7FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23639564984884129 0.11149061414885603 0.59461100436536252
		0.0013121623814743959 0.20886538294780982 0.59461100436536252
		-0.23377132508589285 0.11149061414885603 0.59461100436536252
		-0.33114609388484256 -0.12359287331850766 0.59461100436536252
		-0.23377132508589329 -0.20587209393208977 0.59461100436535896
		0.0013121623814743959 -0.20504514610375485 0.59461100436536252
		0.23639564984884173 -0.20587209393208977 0.59461100436536252
		0.33377041864779139 -0.12359287331850766 0.59461100436536252
		0.23639564984884129 0.11149061414885603 0.59461100436536252
		0.0013121623814743959 0.20886538294780982 0.59461100436536252
		-0.23377132508589285 0.11149061414885603 0.59461100436536252
		;
createNode transform -n "RightEyeLidOutDownCtrlGrp" -p "RightEyeLidOutCtrlGrp";
	rename -uid "780A1014-4269-E3D0-874E-20A0643A09E1";
createNode transform -n "RightEyeLidOutDown1CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "7AA525FD-4E7A-BAB9-485C-51A1AE960E28";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown1CtrlGrp" -p "RightEyeLidOutDown1CtrlPos";
	rename -uid "B4AD8C0E-40EC-9601-0E46-9788A0555101";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown1CtrlRvs" -p "RightEyeLidOutDown1CtrlGrp";
	rename -uid "89E2E20A-42A9-353D-CEA7-16A4B819BF46";
createNode transform -n "RightEyeLidOutDown1Ctrl" -p "RightEyeLidOutDown1CtrlRvs";
	rename -uid "6E3500D1-4E53-6107-08C9-85ADA2BB1CED";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutDown1CtrlShape" -p "RightEyeLidOutDown1Ctrl";
	rename -uid "7CA931C6-47A9-0974-B368-6F87088EEF27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.2363956601793554 -0.11149145370833653 0.80538830044912912
		-0.0013121727119889855 -0.20886622250728298 0.80538830044912912
		0.23377131475537835 -0.11149145370833476 0.80538830044912912
		0.33114608355432829 0.12359203375903076 0.80538830044912912
		0.23377131475537835 0.20587125437261139 0.80538830044912912
		-0.0013121727119898736 0.20504430654428002 0.80538830044912912
		-0.23639566017935629 0.20587125437261139 0.80538830044912912
		-0.33377042897830567 0.12359203375903076 0.80538830044912912
		-0.2363956601793554 -0.11149145370833653 0.80538830044912912
		-0.0013121727119889855 -0.20886622250728298 0.80538830044912912
		0.23377131475537835 -0.11149145370833476 0.80538830044912912
		;
createNode transform -n "RightEyeLidOutDown2CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "1E716C08-4369-CE10-0E8F-9BBA9016C5FE";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CtrlGrp" -p "RightEyeLidOutDown2CtrlPos";
	rename -uid "B8BC7BB6-493A-D93C-F208-E78D0F0138B0";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown2CtrlRvs" -p "RightEyeLidOutDown2CtrlGrp";
	rename -uid "D3E53618-4969-1250-513F-248EFA41A5D0";
createNode transform -n "RightEyeLidOutDown2Ctrl" -p "RightEyeLidOutDown2CtrlRvs";
	rename -uid "A65176E4-472A-09CF-9A15-4B98C3B4E09C";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutDown2CtrlShape" -p "RightEyeLidOutDown2Ctrl";
	rename -uid "4E2A6D3C-459E-E7E9-5D8A-E3BD2262C769";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.23639595226178226 -0.11149065407564016 0.80538980198853838
		-0.0013124647944149671 -0.20886542287458659 0.80538980198853838
		0.23377102267295277 -0.11149065407563838 0.80538980198853838
		0.33114579147190271 0.12359283339172891 0.80538980198853838
		0.23377102267295277 0.205872054005306 0.80538980198853838
		-0.0013124647944149671 0.20504510617697463 0.80538980198854193
		-0.23639595226178226 0.20587205400530778 0.80538980198854193
		-0.33377072106073169 0.12359283339172714 0.80538980198854193
		-0.23639595226178226 -0.11149065407564016 0.80538980198853838
		-0.0013124647944149671 -0.20886542287458659 0.80538980198853838
		0.23377102267295277 -0.11149065407563838 0.80538980198853838
		;
createNode transform -n "RightEyeLidOutDown3CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "E627E5DD-4086-7CE0-499C-49A175C6C1A7";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown3CtrlGrp" -p "RightEyeLidOutDown3CtrlPos";
	rename -uid "1D940D96-4F1E-7C7C-9D59-3596E1E86CF0";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999967 ;
createNode transform -n "RightEyeLidOutDown3CtrlRvs" -p "RightEyeLidOutDown3CtrlGrp";
	rename -uid "F3940502-4619-668B-0B0A-0A88DD8CFFC9";
createNode transform -n "RightEyeLidOutDown3Ctrl" -p "RightEyeLidOutDown3CtrlRvs";
	rename -uid "92A795D0-4062-3EE5-27BC-D893378D006E";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutDown3CtrlShape" -p "RightEyeLidOutDown3Ctrl";
	rename -uid "FB0C981D-4FBB-1BE4-AC38-1DA65770E28A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.23639575984760333 -0.11149120535146728 0.60538908620485254
		-0.0013122723802370014 -0.20886597415041913 0.60538908620485254
		0.23377121508712936 -0.11149120535146906 0.60538908620485254
		0.33114598388608035 0.12359228211589648 0.60538908620485254
		0.23377121508713025 0.20587150272947702 0.60538908620485254
		-0.0013122723802370014 0.20504455490114565 0.60538908620484899
		-0.23639575984760333 0.20587150272947702 0.60538908620484899
		-0.33377052864655282 0.12359228211589826 0.60538908620484899
		-0.23639575984760333 -0.11149120535146728 0.60538908620485254
		-0.0013122723802370014 -0.20886597415041913 0.60538908620485254
		0.23377121508712936 -0.11149120535146906 0.60538908620485254
		;
createNode transform -n "RightEyeLidMainCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "B549FF53-441C-43B9-A4BE-A19EDED41F7E";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidInCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "BFA85341-4C02-5A60-0D2A-16B10B623388";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidInMainCtrlGrp" -p "RightEyeLidInCtrlPos";
	rename -uid "EFFE73A6-4165-59C8-FD4E-8FA0DD6CF34C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidInMainCtrlRvs" -p "RightEyeLidInMainCtrlGrp";
	rename -uid "B28BDA0E-44A2-0F8B-A7A5-D5ADE4F1DF8E";
createNode transform -n "RightEyeLidInMainCtrl" -p "RightEyeLidInMainCtrlRvs";
	rename -uid "EB619DA0-46C1-2743-B047-928FA154CF4F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidInMainCtrlShape" -p "RightEyeLidInMainCtrl";
	rename -uid "D80F9F58-41F5-2CE8-FF33-C19EDB127475";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78360739338855534 0.42315027744126071 
		0.7836116248912246 8.2032109646901607e-16 0.59842486127937089 1.1081941875543877 
		0.36046134744996372 0.42315027744126249 0.78361162489122438 0.50976932627501981 -6.1629758220391547e-33 
		5.7448982375248316e-17 0.36046134744996372 -0.42315027744125894 -0.78361162489122449 
		9.9918698939615747e-16 -0.59842486127937089 -1.1081941875543884 -0.78360739338855534 
		-0.42315027744126249 -0.78361162489122438 -1.1081882033059252 1.2325951644078309e-32 
		-1.511240500779959e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeLidUpCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "F6953E77-40D1-621D-CDF6-88B3787340E1";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidUpMainCtrlGrp" -p "RightEyeLidUpCtrlPos";
	rename -uid "22D557DE-4B2E-3303-EACE-91860C36312C";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "RightEyeLidUpMainCtrlRvs" -p "RightEyeLidUpMainCtrlGrp";
	rename -uid "5EA39034-432B-4CED-168D-0AB139BFDDA1";
createNode transform -n "RightEyeLidUpMainCtrl" -p "RightEyeLidUpMainCtrlRvs";
	rename -uid "1B1473AD-4A83-B0AA-5542-5DB0FCCAAC30";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Blink" -ln "Blink" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
createNode nurbsCurve -n "RightEyeLidUpMainCtrlShape" -p "RightEyeLidUpMainCtrl";
	rename -uid "FA87E424-47D8-C13A-734C-D9959AC718E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.36046134744996638 0.22315027744125965 
		0.98361162489123455 -3.6205710020316097e-15 0.39842486127936633 1.3081941875543941 
		0.36046134744996017 0.2231502774412561 0.98361162489123077 0.50976932627501537 -0.19999999999999929 
		0.20000000000000645 0.36046134744995972 -0.2000042315026675 -0.58361162489122165 
		-3.4417051091044687e-15 -0.20000598424845956 -0.90819418755438197 -0.36046134744996683 
		-0.2000042315026675 -0.58361162489121798 -0.50976932627502114 -0.19999999999999929 
		0.20000000000000626 0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeLidOutCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "1092D797-43C0-C24A-3901-B2A41DB8DC42";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutMainCtrlGrp" -p "RightEyeLidOutCtrlPos";
	rename -uid "069E721F-491F-9E89-C935-4EB5C3986255";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "RightEyeLidOutMainCtrlRvs" -p "RightEyeLidOutMainCtrlGrp";
	rename -uid "B2D94F72-4138-7928-045F-FD8F13B6E18A";
createNode transform -n "RightEyeLidOutMainCtrl" -p "RightEyeLidOutMainCtrlRvs";
	rename -uid "E03BED4B-4AFC-7A2F-AEBD-FA832B795842";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "RightEyeLidOutMainCtrl";
	rename -uid "842D9BD6-4334-EE23-DB43-809A4F8FDFC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.2315026674843966e-06 0.42315027744126216 -1.4432873909138617e-15
		-3.6642954544799944e-17 0.59842486127937033 -1.5543122344752188e-15
		0.4231502774412611 0.42315027744126216 -1.5681900222830336e-15
		0.59842486127936978 7.4156518624273392e-16 -1.4432899320127035e-15
		0.42315027744126132 -0.42315027744126055 -1.4988010832439613e-15
		5.9944627635856884e-17 -0.59842486127936934 -1.5543122344752186e-15
		-4.2315026674843975e-06 -0.42315027744126055 -1.2212436330217777e-15
		-5.9842484614325278e-06 6.289357487179821e-16 -1.4210830574763007e-15
		-4.2315026674843966e-06 0.42315027744126216 -1.4432873909138617e-15
		-3.6642954544799944e-17 0.59842486127937033 -1.5543122344752188e-15
		0.4231502774412611 0.42315027744126216 -1.5681900222830336e-15
		;
createNode transform -n "RightEyeLidDownCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "E8284971-4C97-9D01-1DA5-228455E074F7";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidDownMainCtrlGrp" -p "RightEyeLidDownCtrlPos";
	rename -uid "D5839D2C-4396-86B7-FF02-CEBB979CF2BD";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightEyeLidDownMainCtrlRvs" -p "RightEyeLidDownMainCtrlGrp";
	rename -uid "DD09C1CD-4138-DBAD-CE48-9B908AAC665D";
createNode transform -n "RightEyeLidDownMainCtrl" -p "RightEyeLidDownMainCtrlRvs";
	rename -uid "65793727-445F-23C2-028D-0C88CE9DA126";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Blink" -ln "Blink" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
createNode nurbsCurve -n "RightEyeLidDownMainCtrlShape" -p "RightEyeLidDownMainCtrl";
	rename -uid "BA09982F-4339-73C0-F614-C79C24925526";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.42315027744126121 -0.12315027744126184 0.30000000000000071
		-4.4408920985006262e-16 -0.29842486127937029 0.30000000000000426
		0.42315027744126121 -0.12315027744126184 0.30000000000000071
		0.59842486127937011 0.29999999999999893 0.30000000000000071
		0.42315027744126166 0.3000042315026672 0.30000000000000071
		4.4408920985006262e-16 0.30000598424846103 0.29999999999999716
		-0.4231502774412621 0.3000042315026672 0.30000000000000071
		-0.59842486127937056 0.29999999999999893 0.30000000000000426
		-0.42315027744126121 -0.12315027744126184 0.30000000000000071
		-4.4408920985006262e-16 -0.29842486127937029 0.30000000000000426
		0.42315027744126121 -0.12315027744126184 0.30000000000000071
		;
createNode transform -n "RightEyeLidCCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "989963DE-48D2-04A1-E546-65AD44D7AEE7";
createNode transform -n "RightEyeLidCCtrlOffGrp" -p "RightEyeLidCCtrlGrp";
	rename -uid "8DF90383-43A1-8EB1-7013-64BFBF1FA1EC";
createNode transform -n "RightEyeLidCCtrl" -p "RightEyeLidCCtrlOffGrp";
	rename -uid "31FED1BE-40F4-7C69-CF4C-17A8B79DC3D6";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightEyeLidCCtrlShape" -p "RightEyeLidCCtrl";
	rename -uid "ACD53CA4-4CA2-CA21-42B4-85A644EA6FB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.68330933690514684 1.4669209617963723 
		1.3836116248912189 -5.1194653308117177e-16 2.0745395191018154 1.7081941875543856 
		-0.68330933690514639 1.4669209617963705 1.3836116248912222 -0.96634533154742686 -1.7763568394002505e-15 
		0.60000000000000153 -0.68330933690514728 -1.4669209617963705 -0.18361162489122662 
		-3.3308064015403038e-16 -2.0745395191018137 -0.50819418755439405 0.68330933690514684 
		-1.4669209617963688 -0.18361162489123006 0.96634533154742686 3.5527136788005009e-15 
		0.59999999999999776 0 0 0 0 0 0 0 0 0;
createNode transform -n "EyeLidSysGrp" -p "EyeLidGrp";
	rename -uid "F3ECBC29-4898-FF7B-CD9B-6CAA8B41E394";
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "LeftEyeLidSysGrp" -p "EyeLidSysGrp";
	rename -uid "CF2F2596-4874-1A87-19BB-568977730F52";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidCrvGrp" -p "LeftEyeLidSysGrp";
	rename -uid "2459A9A4-4833-7BE2-88DF-368695694CB1";
	setAttr ".ovdt" 2;
createNode transform -n "LeftEyeLidUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "A2CF549A-4B3C-87B9-1BC4-2B8081C41DE8";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidUpCrvShape" -p "LeftEyeLidUpCrv";
	rename -uid "03E90721-4759-7054-6F2A-EFA817BA11E1";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.4229062286566361 3.9494515922300989e-13 2.9999999999999907
		1.4229062286566361 3.9494515922300989e-13 2.9999999999999907
		0.91345199371686059 2.1716438503816442 2.9999999387567886
		3.0000000475162434 2.198864137297444 2.999999938756766
		5.2395649341865811 2.1776223673096555 2.9999999387567673
		5.3180398997728666 1.7808332125578514e-12 2.9999999999999774
		5.3180398997728666 1.7808332125578514e-12 2.9999999999999774
		;
createNode transform -n "LeftEyeLidDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "8B8A2C05-47F0-7E1B-825E-35BD91830445";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidDownCrvShape" -p "LeftEyeLidDownCrv";
	rename -uid "FAA5BBD0-46B3-B720-9E4A-A6921A4C8731";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.4229062286566361 3.9494515922300989e-13 2.9999999999999907
		1.4229062286566361 3.9494515922300989e-13 2.9999999999999907
		0.94987557844686865 -2.0848451828449686 2.9999999909604185
		3.0000000277947456 -2.0782131034139848 2.9999999909604287
		5.44739224126113 -2.0365828998522728 2.9999999909604211
		5.3180398997728666 1.7808332125578514e-12 2.9999999999999774
		5.3180398997728666 1.7808332125578514e-12 2.9999999999999774
		;
createNode transform -n "LeftEyeLidUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "F9DFAD67-4661-03A1-1239-7A861972454B";
createNode nurbsCurve -n "LeftEyeLidUpJntCrvShape" -p "LeftEyeLidUpJntCrv";
	rename -uid "088013E0-4E86-EB7E-869C-728758CD7B60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.6057619006184995 2.1170441559245281e-12 2.6492255351027278
		1.5870434099709856 0.48797602631460801 2.5934855848001748
		1.9031894509306095 1.3252189480909338 2.4528664790148538
		3.0000000445701001 1.7755272619269287 2.4140850883153426
		4.2739829860823848 1.2921419141502184 2.3853931082740569
		4.7634543609654934 0.44871324698002979 2.3804159618505727
		4.8368806683775993 3.3347860018783227e-12 2.3685583538122241
		;
createNode transform -n "LeftEyeLidDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "E9BE8A33-4901-2C28-9984-2C947A8FC7D9";
createNode nurbsCurve -n "LeftEyeLidDownJntCrvShape" -p "LeftEyeLidDownJntCrv";
	rename -uid "87F070AD-4919-56BD-CB29-B0AD85006E60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.6057619006184944 2.113935531455576e-12 2.6492255351027278
		1.591012101905406 -0.46835993238400581 2.5992124607449689
		1.9054410584200594 -1.2774549718480235 2.47870154092604
		3.0000000277952226 -1.7096859142109311 2.4603377139879941
		4.3472019913734012 -1.2145480234046735 2.3858353840180087
		4.7899324080594168 -0.41762382241755847 2.3666027814698709
		4.8368806683775958 3.3356741802980216e-12 2.3685583538122241
		;
createNode transform -n "LeftEyeLidOutUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "5D33A0A9-466A-D492-2549-8CB124E11FC4";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidOutUpCrvShape" -p "LeftEyeLidOutUpCrv";
	rename -uid "6BD172D4-4891-0D00-B019-67A70D3D8C14";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277934658 1.5000000000002387 2.9999999999999827
		1.0000000277934658 1.5000000000002387 2.9999999999999827
		1.5000000277931071 2.5000000000004166 2.999999999999988
		3.0000000277931065 2.5000000000009526 2.999999999999988
		4.5000000277931056 2.5000000000014886 2.999999999999988
		5.0000000277934635 1.5000000000016616 2.9999999999999898
		5.0000000277934635 1.5000000000016616 2.9999999999999898
		;
createNode transform -n "LeftEyeLidOutDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "3C706E73-4B67-26AF-9FCA-B1B7B41AC1ED";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidOutDownCrvShape" -p "LeftEyeLidOutDownCrv";
	rename -uid "CC39A4C5-4CBD-0710-9C77-869B022B9317";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277945384 -1.499999999999758 2.9999999999999907
		1.0000000277945384 -1.499999999999758 2.9999999999999907
		1.5000000277948973 -2.4999999999995808 2.9999999999999893
		3.0000000277948966 -2.4999999999990448 2.9999999999999893
		4.5000000277948962 -2.4999999999985087 2.9999999999999893
		5.0000000277945382 -1.4999999999983242 2.9999999999999898
		5.0000000277945382 -1.4999999999983242 2.9999999999999898
		;
createNode transform -n "LeftEyeLidOutUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "70517F85-4018-83FA-1ECA-C697179A2664";
createNode nurbsCurve -n "LeftEyeLidOutUpJntCrvShape" -p "LeftEyeLidOutUpJntCrv";
	rename -uid "855BA05B-40A2-8875-4C65-33A2D7E06DFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.4625819765459331 1.1555102416209184 2.2995613350221635
		1.9215632495930863 1.7929690625657559 2.147984824626143
		3.000000027792626 1.9237565432932298 2.2997590973116724
		4.078436805992351 1.7929690625672974 2.1479848246261448
		4.5374180790404166 1.15551024162311 2.299561335022168
		;
createNode transform -n "LeftEyeLidOutDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "D9BE3C7A-47CC-52C6-C672-1F8B8D32C47A";
createNode nurbsCurve -n "LeftEyeLidOutDownJntCrvShape" -p "LeftEyeLidOutDownJntCrv";
	rename -uid "57ED27EA-4F28-D239-C598-DB9F2D2A2326";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.4625819765475871 -1.155510241619063 2.2995613350221693
		1.9215632495956509 -1.7929690625632482 2.1479848246261466
		3.0000000277953762 -1.9237565457618047 2.2997590952768991
		4.078436805994917 -1.7929690625617067 2.1479848246261461
		4.5374180790420704 -1.1555102416168628 2.2995613350221698
		;
createNode transform -n "LeftEyeLidSurfPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "E24C90D3-4A97-DD75-C8EA-869E14603A52";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "51179BA5-4F7B-6A78-B155-A5A6E1BEF5F4";
createNode transform -n "LeftEyeLidUp1Pos" -p "LeftEyeLidUpCtrl0PosSurfPos";
	rename -uid "6E8C0D3F-4C10-3530-FE52-94AD3C3A993F";
	setAttr ".t" -type "double3" 8.9364072216180461e-18 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp1PosShape" -p "LeftEyeLidUp1Pos";
	rename -uid "5A37F5FB-4DA8-B67D-463B-4BBD5B1E3A79";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "B322E8D7-4148-DE31-0395-8C82598C4A93";
createNode transform -n "LeftEyeLidUp2Pos" -p "LeftEyeLidUpCtrl1PosSurfPos";
	rename -uid "894C4381-4650-9CEC-111B-95A12649537F";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
createNode locator -n "LeftEyeLidUp2PosShape" -p "LeftEyeLidUp2Pos";
	rename -uid "2C73937D-4183-CF85-4162-3F957C0C642A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "47DF760D-4001-FB20-B5BD-C8BAD6098BF2";
createNode transform -n "LeftEyeLidUp3Pos" -p "LeftEyeLidUpCtrl2PosSurfPos";
	rename -uid "94655E8F-4708-5555-A8AD-32AF43AA1585";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 0 ;
createNode locator -n "LeftEyeLidUp3PosShape" -p "LeftEyeLidUp3Pos";
	rename -uid "89C1E32D-4FF2-0C00-2DDD-859C656FBEC5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "559E09B1-47DD-A22E-5781-B6803654CAD1";
createNode transform -n "LeftEyeLidUp4Pos" -p "LeftEyeLidUpCtrl3PosSurfPos";
	rename -uid "0E8D3761-45B2-9D26-8BCA-A081FABB9A6C";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5180192092809648e-15 0 ;
createNode locator -n "LeftEyeLidUp4PosShape" -p "LeftEyeLidUp4Pos";
	rename -uid "B8E22A9E-479C-C2CF-83E1-34942E522146";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "0C818F0E-4A36-DCC3-FBE7-63AAA2411273";
createNode transform -n "LeftEyeLidUp5Pos" -p "LeftEyeLidUpCtrl4PosSurfPos";
	rename -uid "790ED9CB-472F-BB07-2548-9AA6C5EB5F2A";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -6.6613381477509392e-16 0 ;
createNode locator -n "LeftEyeLidUp5PosShape" -p "LeftEyeLidUp5Pos";
	rename -uid "3CE8C692-4877-090D-4F51-ED9C643F1C61";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "78CC245C-4116-F0FF-FC4B-DAAE215BE89F";
createNode transform -n "LeftEyeLidUp6Pos" -p "LeftEyeLidUpCtrl5PosSurfPos";
	rename -uid "22435158-4F74-4514-9646-399E6AC2A922";
	setAttr ".t" -type "double3" 1.4432899320127035e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp6PosShape" -p "LeftEyeLidUp6Pos";
	rename -uid "E75CC35F-4822-0695-D570-329321A5C4AE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3FED58BD-4864-A9AF-6AF4-28BD23F173E3";
createNode transform -n "LeftEyeLidUp7Pos" -p "LeftEyeLidUpCtrl6PosSurfPos";
	rename -uid "8A4F24AF-439D-814A-1064-E99A9E7C52B5";
	setAttr ".t" -type "double3" 4.468203612828507e-18 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidUp7PosShape" -p "LeftEyeLidUp7Pos";
	rename -uid "57715D81-4991-5F98-077D-43AEA35E8EFC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "77E99F0F-47CD-1ECB-8A50-A8B624D48FEC";
createNode transform -n "LeftEyeLidDown1Pos" -p "LeftEyeLidDownCtrl0PosSurfPos";
	rename -uid "336A152C-4A4D-D8C3-7995-95BC8531F694";
	setAttr ".t" -type "double3" -5.0764197278579096e-15 -2.2204460492503131e-15 0 ;
createNode locator -n "LeftEyeLidDown1PosShape" -p "LeftEyeLidDown1Pos";
	rename -uid "CA712CCB-4003-6D39-B255-B7B3A9EC4CCC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7006D3E2-4574-6728-7EBD-F0B53E859CD6";
createNode transform -n "LeftEyeLidDown2Pos" -p "LeftEyeLidDownCtrl1PosSurfPos";
	rename -uid "C3D3E4F0-4BAE-B123-23E9-E98511C6A948";
	setAttr ".t" -type "double3" -2.1094237467877974e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown2PosShape" -p "LeftEyeLidDown2Pos";
	rename -uid "53498F10-4235-5FFB-BD5A-1EA69AEF24FE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "DA30F426-450A-1825-EA05-0CA567172D5D";
createNode transform -n "LeftEyeLidDown3Pos" -p "LeftEyeLidDownCtrl2PosSurfPos";
	rename -uid "80C8D32D-4647-80BC-5177-9D9F0B662680";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidDown3PosShape" -p "LeftEyeLidDown3Pos";
	rename -uid "9FC28526-476C-03D8-3C31-68A1F7AE7235";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7C708B67-464D-1365-91B3-EFB3371147EF";
createNode transform -n "LeftEyeLidDown4Pos" -p "LeftEyeLidDownCtrl3PosSurfPos";
	rename -uid "C27EBD96-4191-4131-0DA7-96AFFF09B91C";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.4675760606763788e-15 0 ;
createNode locator -n "LeftEyeLidDown4PosShape" -p "LeftEyeLidDown4Pos";
	rename -uid "75F061DC-4A30-F43A-8B01-CFADBD1E1F5C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "6E7F2220-4E20-2405-CC01-809B263D1EE0";
createNode transform -n "LeftEyeLidDown5Pos" -p "LeftEyeLidDownCtrl4PosSurfPos";
	rename -uid "D36C0C1F-4801-6A99-6749-FD924063382D";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 -3.3306690738754696e-15 0 ;
createNode locator -n "LeftEyeLidDown5PosShape" -p "LeftEyeLidDown5Pos";
	rename -uid "AACE2955-42D2-7383-5D3C-E3B57BCA18EC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "65D23368-4075-6DFE-261D-81ABBE95B331";
createNode transform -n "LeftEyeLidDown6Pos" -p "LeftEyeLidDownCtrl5PosSurfPos";
	rename -uid "CBE84D62-45E0-F7EF-FC77-38B764D9F476";
	setAttr ".t" -type "double3" -6.6613381477509392e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown6PosShape" -p "LeftEyeLidDown6Pos";
	rename -uid "3B4AFB47-477D-F83E-058B-4D839D90C076";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "65A1D0AD-4023-9D84-F3EC-2AB5FFC7002F";
createNode transform -n "LeftEyeLidDown7Pos" -p "LeftEyeLidDownCtrl6PosSurfPos";
	rename -uid "8944BAE0-4EF3-DFBC-4740-71BAA51D8510";
	setAttr ".t" -type "double3" -3.3597046987097301e-15 4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown7PosShape" -p "LeftEyeLidDown7Pos";
	rename -uid "6D2A8D71-4B09-83FB-009A-55B2492A6F18";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "6911D6C2-41B6-16CF-04DE-399CAB293C57";
createNode transform -n "LeftLeftEyeLidOutUp1LocSurfPosLoc" -p "LeftEyeLidOutUp1LocSurfPos";
	rename -uid "C018C758-443F-3F16-BC4E-3DB9399F558D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "LeftLeftEyeLidOutUp1LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp1LocSurfPosLoc";
	rename -uid "EA6B022A-4247-A4A4-BEB5-659C0A3A31E3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "26952114-4898-E71F-9D4A-B0B6515DDF2C";
createNode transform -n "LeftEyeLidOutUp2CvPos1SurfPosLoc" -p "LeftEyeLidOutUp2CvPos1SurfPos";
	rename -uid "10EB09B4-4A32-0B2F-F12A-F0B08BACFA7C";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1SurfPosLocShape" -p "LeftEyeLidOutUp2CvPos1SurfPosLoc";
	rename -uid "6C6BA7D3-4FAB-A2E2-2B68-7B84BA9F77DD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "548BF64B-40C5-6293-7F08-0D94FF54A7E1";
createNode transform -n "LeftLeftEyeLidOutUp2LocSurfPosLoc" -p "LeftEyeLidOutUp2LocSurfPos";
	rename -uid "BB6C0040-4F97-4F47-CE03-17923299617F";
createNode locator -n "LeftLeftEyeLidOutUp2LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp2LocSurfPosLoc";
	rename -uid "216D586F-4C52-070F-B92F-9BA6BB54D824";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7F7CDD31-48E1-5DEF-14D2-73B549748E29";
createNode transform -n "LeftEyeLidOutUp2CvPos2SurfPosLoc" -p "LeftEyeLidOutUp2CvPos2SurfPos";
	rename -uid "9E79CD5E-4C36-D9F8-EC96-07A9E6EAD444";
createNode locator -n "LeftEyeLidOutUp2CvPos2SurfPosLocShape" -p "LeftEyeLidOutUp2CvPos2SurfPosLoc";
	rename -uid "6CD6B0DF-408F-E4B0-3116-DD8C6077C77C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "6070EE4B-4C08-4364-5CA1-729CC3A6224E";
createNode transform -n "LeftLeftEyeLidOutUp3LocSurfPosLoc" -p "LeftEyeLidOutUp3LocSurfPos";
	rename -uid "94D81921-4B08-2F06-F7B4-639CEF099F36";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftLeftEyeLidOutUp3LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp3LocSurfPosLoc";
	rename -uid "205EB1FC-491A-86FD-F0F6-6887E8710DB9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown1LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "C11F2411-4AD1-CCC9-9CAE-D2AA72BBBE62";
createNode transform -n "LeftLeftEyeLidOutDown1LocSurfPosLoc" -p "LeftEyeLidOutDown1LocSurfPos";
	rename -uid "B9386318-4FCC-25F0-6B52-008E744CEBFC";
createNode locator -n "LeftLeftEyeLidOutDown1LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown1LocSurfPosLoc";
	rename -uid "19FBE649-4024-4641-BB60-01B7F6F84D64";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "93866B28-4624-D139-065A-2DBA24A0B23C";
createNode transform -n "LeftEyeLidOutDown2CvPos1SurfPosLoc" -p "LeftEyeLidOutDown2CvPos1SurfPos";
	rename -uid "C01BAF57-4833-7BFA-A26B-5DB0DF719685";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1SurfPosLocShape" -p "LeftEyeLidOutDown2CvPos1SurfPosLoc";
	rename -uid "D3CCC280-472B-525E-0F5A-FDA882B7316B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "AFBEEE7C-4DD3-7185-BD1B-DBAFA9678116";
createNode transform -n "LeftLeftEyeLidOutDown2LocSurfPosLoc" -p "LeftEyeLidOutDown2LocSurfPos";
	rename -uid "4C8C949F-4B07-E385-ABC9-1492CC5F65B1";
createNode locator -n "LeftLeftEyeLidOutDown2LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown2LocSurfPosLoc";
	rename -uid "EDFEBC23-4EB7-9990-BA49-118C9243D698";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "0A41B039-433A-5B04-BB8F-7EAF116FDF59";
createNode transform -n "LeftEyeLidOutDown2CvPos2SurfPosLoc" -p "LeftEyeLidOutDown2CvPos2SurfPos";
	rename -uid "996884A5-4E60-E05F-94AE-AB87703A20DF";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2SurfPosLocShape" -p "LeftEyeLidOutDown2CvPos2SurfPosLoc";
	rename -uid "AA0DD863-4D68-888B-28BC-89A4C872EAFB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "76BBB006-400C-6249-C698-44AD584BFE83";
createNode transform -n "LeftLeftEyeLidOutDown3LocSurfPosLoc" -p "LeftEyeLidOutDown3LocSurfPos";
	rename -uid "04796289-4C3C-61C6-AFF5-F68A1CC16491";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftLeftEyeLidOutDown3LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown3LocSurfPosLoc";
	rename -uid "8FDC3FFF-4B0A-3B0C-DA31-9EA59F553C30";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "E07D9B60-40DC-668B-6650-629B499A8D1B";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCrv0Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "1413CF81-4071-93D6-D11F-C0BFE0B71240";
createNode locator -n "LeftEyeLidUpCrv0PosShape" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "90122BD1-409A-E976-9AE3-5C8393522830";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl0Pos" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "5441925D-42E2-FB33-CC97-F582AC26ED44";
createNode locator -n "LeftEyeLidUpCtrl0PosShape" -p "LeftEyeLidUpCtrl0Pos";
	rename -uid "0D311893-4CA1-940E-263F-CBA711916F0D";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv1Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "F5C726B2-4879-1B63-E909-DFADFB6E8EFC";
createNode locator -n "LeftEyeLidUpCrv1PosShape" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "B6A2AADA-4A80-F6EB-9741-74B417E2AF7C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1Pos" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "BD860980-4FF9-B617-690B-D0836168ACFA";
createNode locator -n "LeftEyeLidUpCtrl1PosShape" -p "LeftEyeLidUpCtrl1Pos";
	rename -uid "76C7917A-48A3-EAE1-3D08-989ECB651B39";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv2Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "032EA68D-41D6-AB63-EA47-E9A71B0E698F";
createNode locator -n "LeftEyeLidUpCrv2PosShape" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "CB2592D9-4956-B7A2-F62E-99A22D525651";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2Pos" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "E536BC2D-45DE-CDD6-969C-8981484DEB60";
createNode locator -n "LeftEyeLidUpCtrl2PosShape" -p "LeftEyeLidUpCtrl2Pos";
	rename -uid "1307A340-4A91-813B-B83B-4A9C8F0F6B96";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv3Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "7A0E4716-4637-D6F5-B957-DAB6078D8504";
createNode locator -n "LeftEyeLidUpCrv3PosShape" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "BD2D206C-4ADC-8174-71F6-1F8496A9F303";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3Pos" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "CE7D0F58-4AD4-571E-A22F-32BFD7F168E5";
createNode locator -n "LeftEyeLidUpCtrl3PosShape" -p "LeftEyeLidUpCtrl3Pos";
	rename -uid "19D3327A-4251-FF29-DCEB-F2A232ACA2AD";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv4Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "4019955A-4C21-F4C1-E2A6-179C539F5C8E";
createNode locator -n "LeftEyeLidUpCrv4PosShape" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "5091102D-4837-901D-8217-6886656C3258";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4Pos" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "C8672C7F-44A1-8E41-3F45-568CB246819D";
createNode locator -n "LeftEyeLidUpCtrl4PosShape" -p "LeftEyeLidUpCtrl4Pos";
	rename -uid "CB281B4D-46A5-5A6C-8694-69BA14FFEE65";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv5Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "40225ABB-4804-353A-1B22-8F91A5E79E35";
createNode locator -n "LeftEyeLidUpCrv5PosShape" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "DB7F186D-4990-CE8F-EBB6-BFB137994FC4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5Pos" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "B09758A3-46C5-71A1-4549-E4803F89E63F";
createNode locator -n "LeftEyeLidUpCtrl5PosShape" -p "LeftEyeLidUpCtrl5Pos";
	rename -uid "FE23201B-4C5C-E47F-F6B7-B099D9F6F1F4";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv6Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "0C95D416-41FE-3CA5-6227-64AA722BCBD3";
createNode locator -n "LeftEyeLidUpCrv6PosShape" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "57F1FD3E-462D-4796-7FBF-7BAEDCB13D3B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6Pos" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "D97E2F6D-4894-99A7-6A37-7CBDDBD52688";
createNode locator -n "LeftEyeLidUpCtrl6PosShape" -p "LeftEyeLidUpCtrl6Pos";
	rename -uid "484B5849-415B-567F-040E-32A4BEEAB38A";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv0Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "B0B8FF14-4CF1-D80E-60C9-DB9B8F7CD2B6";
createNode locator -n "LeftEyeLidDownCrv0PosShape" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "C7ED71E0-43B1-D5CF-5421-D0AA05FEF9D4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0Pos" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "F438D11A-4834-E96C-B7CB-789AA097BF5A";
createNode locator -n "LeftEyeLidDownCtrl0PosShape" -p "LeftEyeLidDownCtrl0Pos";
	rename -uid "62F358B2-4D1E-56B3-303B-16A3F66F94BA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv1Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "67DE7DF8-4957-2245-B615-D799E71C71BE";
createNode locator -n "LeftEyeLidDownCrv1PosShape" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "E95F55E8-423E-E08B-EC81-74BEB9ABCD38";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1Pos" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "45540E4F-4AC7-DB50-55AF-80AF6AAA36E1";
createNode locator -n "LeftEyeLidDownCtrl1PosShape" -p "LeftEyeLidDownCtrl1Pos";
	rename -uid "F23C6006-412F-AEE7-671B-F99F23198C6F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv2Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "98694E85-4D76-900D-BD58-4E8FEDE84118";
createNode locator -n "LeftEyeLidDownCrv2PosShape" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "2BF6480A-43FB-3742-64EE-D5A1C34731FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2Pos" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "68DF601E-496E-88BF-A6E8-469BD330A92B";
createNode locator -n "LeftEyeLidDownCtrl2PosShape" -p "LeftEyeLidDownCtrl2Pos";
	rename -uid "C50D095F-41AD-9DD0-9E10-7A8311A62789";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv3Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "914EAB7E-4474-1C7D-E366-AA999208E138";
createNode locator -n "LeftEyeLidDownCrv3PosShape" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "1FC94650-4671-4032-C121-B6AE773E456E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3Pos" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "1126E6EE-4BF0-7345-B173-589555A6F046";
createNode locator -n "LeftEyeLidDownCtrl3PosShape" -p "LeftEyeLidDownCtrl3Pos";
	rename -uid "597D9959-4735-26F9-2C2F-059BCB7FC2E1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv4Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "A9EFC400-42E7-8860-FBB0-70B6DEB09E32";
createNode locator -n "LeftEyeLidDownCrv4PosShape" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "E7CF2330-4558-3BA4-7017-ADA83DCE78F4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4Pos" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "FA85416F-4E56-D4BA-D732-F79B3D9E7A3D";
createNode locator -n "LeftEyeLidDownCtrl4PosShape" -p "LeftEyeLidDownCtrl4Pos";
	rename -uid "4A1788EE-40B7-0475-DBEB-BFAD04DCD9C6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv5Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "93785A49-4D46-5E1C-A995-4CAB2EABA404";
createNode locator -n "LeftEyeLidDownCrv5PosShape" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "42E854FF-485F-1B96-B0F4-D6BF7F6689EA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5Pos" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "31B5FCB2-414B-CAB0-4AB5-368DC220B900";
createNode locator -n "LeftEyeLidDownCtrl5PosShape" -p "LeftEyeLidDownCtrl5Pos";
	rename -uid "FD47FDB9-4AD1-4D9E-8421-D4B2EDE93BA7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv6Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "752EB827-49B0-0E4B-5131-8E80F621F4D5";
createNode locator -n "LeftEyeLidDownCrv6PosShape" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "EE4A9303-4EE4-A10D-B633-D1979291FCD9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6Pos" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "C27581A6-4711-56B7-3A37-10BC3E7EE166";
createNode locator -n "LeftEyeLidDownCtrl6PosShape" -p "LeftEyeLidDownCtrl6Pos";
	rename -uid "D3870BBB-4999-8775-F443-EE9B94B2D135";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "81BBAF02-4654-777B-A147-6B8E2BFF3FC6";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidCtrl0Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "48BA629E-46A1-16C7-61B0-42BED30FCF6E";
createNode locator -n "LeftEyeLidCtrl0PosShape" -p "LeftEyeLidCtrl0Pos";
	rename -uid "2EDDE9B7-4D90-C9BC-9A94-4E94DBCADAAB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl1Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "8636C2EE-4FB1-D7FE-36EA-1BB1FD8448B5";
createNode locator -n "LeftEyeLidCtrl1PosShape" -p "LeftEyeLidCtrl1Pos";
	rename -uid "7164E8A5-4448-2E7F-ED40-109E59E42399";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl2Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "49AEAF24-4A7C-6D98-6229-BDB5FC70A0CB";
createNode locator -n "LeftEyeLidCtrl2PosShape" -p "LeftEyeLidCtrl2Pos";
	rename -uid "59D2AECB-4B92-3F6E-5D19-1CB062867950";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl3Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "A42958B8-48B5-30C4-7D3D-E8A81051D520";
createNode locator -n "LeftEyeLidCtrl3PosShape" -p "LeftEyeLidCtrl3Pos";
	rename -uid "E353C7DD-4B76-6533-7B57-2C8B513A05A8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl4Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "10F9349B-4216-A448-5BE2-BCA668B3E389";
createNode locator -n "LeftEyeLidCtrl4PosShape" -p "LeftEyeLidCtrl4Pos";
	rename -uid "A8E076DC-4BC5-1B9D-BBED-DC8CFB96FF30";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl5Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "82A6FE51-478A-1EF7-786C-83B997DD5486";
createNode locator -n "LeftEyeLidCtrl5PosShape" -p "LeftEyeLidCtrl5Pos";
	rename -uid "6AD1F1A0-400C-B6DD-2067-D6BD44FE1891";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl6Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "3BA57ACE-48F0-54C7-0432-968DA9CFCA36";
createNode locator -n "LeftEyeLidCtrl6PosShape" -p "LeftEyeLidCtrl6Pos";
	rename -uid "6DE812FE-40CC-885A-AC0B-829204B120DE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl7Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "587EB0E5-4222-7203-1BB6-5E9825826EA5";
createNode locator -n "LeftEyeLidCtrl7PosShape" -p "LeftEyeLidCtrl7Pos";
	rename -uid "496BD5AE-4045-C917-0866-43A63CE013B5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl8Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "C95DE800-4760-47D0-372C-16B41F8C9433";
createNode locator -n "LeftEyeLidCtrl8PosShape" -p "LeftEyeLidCtrl8Pos";
	rename -uid "CE808793-4812-0F9E-1FB0-8BB495B3F4BE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl9Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "A83BF867-416A-F036-5CE6-52B7CFB8CD62";
createNode locator -n "LeftEyeLidCtrl9PosShape" -p "LeftEyeLidCtrl9Pos";
	rename -uid "5F91FAAA-4D5D-320B-49EE-2FA6779DF995";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl10Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "5371C7A1-4746-34C5-4ADC-AEB0E66B85DE";
createNode locator -n "LeftEyeLidCtrl10PosShape" -p "LeftEyeLidCtrl10Pos";
	rename -uid "232E04E5-4E90-D7A4-6DB1-708A621BF169";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl11Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "7617A8B8-48F8-3013-50E7-CFBD584C2210";
createNode locator -n "LeftEyeLidCtrl11PosShape" -p "LeftEyeLidCtrl11Pos";
	rename -uid "EA85FFC7-47DA-22CA-7962-C0A51316EC07";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidRootPoserGrp" -p "LeftEyeLidSysGrp";
	rename -uid "D373FFB9-474D-C604-9537-179C0EF18360";
	setAttr ".t" -type "double3" 2.7794001988259347e-08 -1.2079226507921701e-13 -3.5527136788005009e-15 ;
createNode transform -n "LeftEyeLidRootPoser" -p "LeftEyeLidRootPoserGrp";
	rename -uid "CB6FEBB8-490F-B9BC-C013-FBB9B698B84C";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode";
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "LeftEyeLidRootPoserShape" -p "LeftEyeLidRootPoser";
	rename -uid "67667E2D-443F-D787-1D83-5E80F60E8A33";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.92309449412186284 1.7067061190130861 
		0.7836116248912246 7.9935926766246568e-17 2.413646940493456 1.1081941875543875 -0.92309449412186284 
		1.7067061190130861 0.78361162489122438 -1.3054527529390678 -5.8541885214680909e-16 
		5.7448982375248316e-17 -0.92309449412186284 -1.706706119013087 -0.78361162489122438 
		-1.3076809510192606e-16 -2.4136469404934604 -1.1081941875543886 0.92309449412186284 
		-1.706706119013087 -0.78361162489122438 1.3054527529390678 -1.0396909168299748e-15 
		-1.5112405007799592e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "LeftEyeBallSurf" -p "LeftEyeLidRootPoser";
	rename -uid "5F71E8CC-4888-37C0-27B2-29A2284F8930";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "LeftEyeBallSurfShape" -p "LeftEyeBallSurf";
	rename -uid "E152DBC3-4588-6B6C-F361-52BD3BE4A2B8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 3;
	setAttr ".dvv" 3;
	setAttr ".cpr" 15;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "LeftEyeBallSurfShapeOrig" -p "LeftEyeBallSurf";
	rename -uid "A1AF0377-4516-9625-7C72-30AE808CE057";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "LeftEyeBallFFDGrp" -p "LeftEyeLidRootPoser";
	rename -uid "00CAA447-4F83-7259-3321-2296AB4801FB";
createNode transform -n "LeftEyeBallffd1Lattice" -p "LeftEyeBallFFDGrp";
	rename -uid "880D5AAA-470D-3CC8-16C6-FA80AAD05D72";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "LeftEyeBallffd1LatticeShape" -p "LeftEyeBallffd1Lattice";
	rename -uid "FB7779B7-4795-806C-9DE3-E8841DB80B48";
	setAttr -k off ".v";
	setAttr ".sd" 5;
	setAttr ".td" 3;
	setAttr ".ud" 5;
	setAttr ".cc" -type "lattice" 5 3 5 75 -0.5 -0.5 -0.5 -0.25 -0.5
		 -0.5 0 -0.5 -0.5 0.25 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0 -0.5 -0.25 0 -0.5 0 0 -0.5 0.25
		 0 -0.5 0.5 0 -0.5 -0.5 0.5 -0.5 -0.25 0.5 -0.5 0 0.5 -0.5 0.25 0.5 -0.5 0.5 0.5 -0.5 -0.5
		 -0.5 -0.25 -0.25 -0.5 -0.25 0 -0.5 -0.25 0.25 -0.5 -0.25 0.5 -0.5 -0.25 -0.5 0 -0.25 -0.25
		 0 -0.25 0 0 -0.25 0.25 0 -0.25 0.5 0 -0.25 -0.5 0.5 -0.25 -0.25 0.5 -0.25 0 0.5 -0.25 0.25
		 0.5 -0.25 0.5 0.5 -0.25 -0.5 -0.5 0 -0.25 -0.5 0 0 -0.5 0 0.25 -0.5 0 0.5 -0.5 0 -0.5
		 0 0 -0.25 0 0 0 0 0 0.25 0 0 0.5 0 0 -0.5 0.5 0 -0.25 0.5 0 0 0.5 0 0.25 0.5 0 0.5
		 0.5 0 -0.5 -0.5 0.25 -0.25 -0.5 0.25 0 -0.5 0.25 0.25 -0.5 0.25 0.5 -0.5 0.25 -0.5
		 0 0.25 -0.25 0 0.25 0 0 0.25 0.25 0 0.25 0.5 0 0.25 -0.5 0.5 0.25 -0.25 0.5 0.25 0
		 0.5 0.25 0.25 0.5 0.25 0.5 0.5 0.25 -0.5 -0.5 0.5 -0.25 -0.5 0.5 0 -0.5 0.5 0.25
		 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 -0.25 0 0.5 0 0 0.5 0.25 0 0.5 0.5 0 0.5 -0.5 0.5
		 0.5 -0.25 0.5 0.5 0 0.5 0.5 0.25 0.5 0.5 0.5 0.5 0.5 ;
createNode transform -n "LeftEyeBallffd1Base" -p "LeftEyeBallFFDGrp";
	rename -uid "6E86923C-4858-A933-C697-478718332382";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "LeftEyeBallffd1BaseShape" -p "LeftEyeBallffd1Base";
	rename -uid "9549668B-4D20-4CC1-D136-40AAD25D25DD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidAimGrp" -p "LeftEyeLidRootPoser";
	rename -uid "3E090DF9-4B2C-E4C8-BB33-C994DB4DF90E";
	setAttr ".v" no;
createNode transform -n "LeftEyeBallFix" -p "LeftEyeLidAimGrp";
	rename -uid "95250BF7-4199-109F-C58F-EFB23C9201DA";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 -1.8388068845354155e-15 1 ;
createNode locator -n "LeftEyeBallFixShape" -p "LeftEyeBallFix";
	rename -uid "2A37A616-4289-27C2-019C-E3831F78BAB4";
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidUp3AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "629AB38B-4B32-EC4F-1D7F-51853EBCDB47";
createNode transform -n "LeftEyeLidUp3Aim" -p "LeftEyeLidUp3AimGrp";
	rename -uid "D8D68260-4CC1-AB14-E3BC-4BBE5B274DFE";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp3AimShape" -p "LeftEyeLidUp3Aim";
	rename -uid "FEFE3156-4E6F-40CE-56AF-24966B440CCB";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp3AimGrp_aimConstraint1" -p "LeftEyeLidUp3AimGrp";
	rename -uid "86660C47-4611-FCA7-8D04-379D7ED7389A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidUpCrv2PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 20.323138645592948 20.328088068288583 7.3316790815401518 ;
	setAttr ".rsrr" -type "double3" -2.9817700138720465e-16 3.5781240166464568e-15 1.987846675914698e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidUp4AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "3D7AB719-4961-1566-EAD2-FE9BF1AD9F35";
createNode transform -n "LeftEyeLidUp4Aim" -p "LeftEyeLidUp4AimGrp";
	rename -uid "D98CF050-4148-F1A8-B76D-E7A940564A03";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp4AimShape" -p "LeftEyeLidUp4Aim";
	rename -uid "43602A7B-4351-9BB9-29EC-62BE44E79C4C";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp4AimGrp_aimConstraint1" -p "LeftEyeLidUp4AimGrp";
	rename -uid "26374DD5-486B-1C7A-79C0-BD99C9E0E824";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidUpCrv3PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 26.565053528607091 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidUp5AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "21018D1C-4001-D4FB-3C70-B38F73B2138E";
createNode transform -n "LeftEyeLidUp5Aim" -p "LeftEyeLidUp5AimGrp";
	rename -uid "BBA0BE02-4B08-C251-5D62-19A5D6653FEA";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp5AimShape" -p "LeftEyeLidUp5Aim";
	rename -uid "CC9BFBD8-4A98-E77C-05D0-DF97771A2ACF";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp5AimGrp_aimConstraint1" -p "LeftEyeLidUp5AimGrp";
	rename -uid "47CBD5D9-4DFD-33FE-C19B-33891DC2A474";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidUpCrv4PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 20.323138645593033 -20.328088528442116 -7.331679238750449 ;
	setAttr ".rsrr" -type "double3" -3.876301018033661e-15 9.1440947092076103e-15 -3.1805546814635176e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidDown3AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "FA09EC8C-47D5-56BF-A95C-089F552C8EB8";
createNode transform -n "LeftEyeLidDown3Aim" -p "LeftEyeLidDown3AimGrp";
	rename -uid "89C7984F-4A24-8C5D-0DFD-CDA7FCC17D68";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown3AimShape" -p "LeftEyeLidDown3Aim";
	rename -uid "C1143318-49C4-FFCD-293E-4AA928B1F5B1";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown3AimGrp_aimConstraint1" -p "LeftEyeLidDown3AimGrp";
	rename -uid "4A8C7A4F-42C0-47B9-40A1-BD8DE0E06F81";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidDownCrv2PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" -20.323136732308171 20.328088288622968 -7.3316784132843535 ;
	setAttr ".rsrr" -type "double3" 0 -9.9392333795734899e-17 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidDown4AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "CAD490C4-4D0B-A793-80DA-5C83D9A5E214";
createNode transform -n "LeftEyeLidDown4Aim" -p "LeftEyeLidDown4AimGrp";
	rename -uid "D32FFCD2-4767-3B7B-59B3-2890E6910501";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown4AimShape" -p "LeftEyeLidDown4Aim";
	rename -uid "64A7F97A-4A37-86F1-9065-218A8F1414A1";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown4AimGrp_aimConstraint1" -p "LeftEyeLidDown4AimGrp";
	rename -uid "699E324F-4464-EDC0-09C5-29B77AF71F90";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidDownCrv3PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" -26.565051075415507 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidDown5AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "F3B6A50F-4866-644B-6E38-AFB9DE79813A";
createNode transform -n "LeftEyeLidDown5Aim" -p "LeftEyeLidDown5AimGrp";
	rename -uid "1A4D4DA0-411B-7B84-4946-B18856781952";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown5AimShape" -p "LeftEyeLidDown5Aim";
	rename -uid "1FF05B6F-4DDB-0435-DFF1-1292CD9ADB29";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown5AimGrp_aimConstraint1" -p "LeftEyeLidDown5AimGrp";
	rename -uid "F03299C5-4F53-2D45-DB2A-76ACA5EF24E1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidDownCrv4PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" -20.323136732308118 -20.32808828862299 7.3316784132843402 ;
	setAttr ".rsrr" -type "double3" 2.981770013872047e-16 3.0811623476677814e-15 1.9878466759146972e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeBallFixedUp" -p "LeftEyeLidAimGrp";
	rename -uid "4C37D124-4E03-73AA-1C21-0A8FEA12E6D2";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 1 0 ;
createNode locator -n "LeftEyeBallFixedUpShape" -p "LeftEyeBallFixedUp";
	rename -uid "7BA7EDA4-489D-1418-6028-CDBC23E0E392";
	setAttr -k off ".v";
createNode transform -n "LeftEyeBallFixedDown" -p "LeftEyeLidAimGrp";
	rename -uid "ACA24241-48CB-F191-9566-8F808C47253E";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 -1 0 ;
createNode locator -n "LeftEyeBallFixedDownShape" -p "LeftEyeBallFixedDown";
	rename -uid "E4B6875B-43BB-91BF-7C41-7D8B606A7FF9";
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidLocGrpOffGrp" -p "LeftEyeLidRootPoser";
	rename -uid "BA26BE32-41FC-DCDB-64FC-2EB34925F07B";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode transform -n "LeftEyeLidLocGrp" -p "LeftEyeLidLocGrpOffGrp";
	rename -uid "8E379413-4155-58D0-979D-7190679C06A8";
createNode transform -n "LeftEyeLidInPos" -p "LeftEyeLidLocGrp";
	rename -uid "9BFED75F-42EE-94F2-9FC9-16AA448F9EC3";
	setAttr ".t" -type "double3" -1.5770937991373672 5.5996873804531333e-15 3.0000000000000027 ;
createNode locator -n "LeftEyeLidInPosShape" -p "LeftEyeLidInPos";
	rename -uid "FF7D1368-4B60-D134-BD1F-80B6423545DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidInLocOffGrp" -p "LeftEyeLidInPos";
	rename -uid "6EB818F3-49DE-2F8B-4721-489AFC1450E5";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidInLoc" -p "LeftEyeLidInLocOffGrp";
	rename -uid "8F596208-4DC3-ABE9-3768-989EA3300D2C";
createNode locator -n "LeftEyeLidInLocShape" -p "LeftEyeLidInLoc";
	rename -uid "872762C9-4A17-29A9-F264-459427A8442D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "LefteyeLidInEPPosShape" -p "LeftEyeLidInLoc";
	rename -uid "B373324B-41AF-F22D-6C12-168E116E45EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpPos" -p "LeftEyeLidLocGrp";
	rename -uid "5CEF1AF2-455B-00F2-7054-76BA794A0822";
	setAttr ".t" -type "double3" 1.9723026369843502e-08 2.1988641372964919 2.999999938756778 ;
createNode locator -n "LeftEyeLidUpPosShape" -p "LeftEyeLidUpPos";
	rename -uid "03C2C503-49B4-692C-4D81-7D961DCC547C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidUpLocOffGrp" -p "LeftEyeLidUpPos";
	rename -uid "B8F6F0C3-4835-26E4-2708-CD9324CC1425";
createNode transform -n "LeftEyeLidUpLoc" -p "LeftEyeLidUpLocOffGrp";
	rename -uid "DE5A8179-42EE-F96F-E4DC-7BB6505F02E6";
createNode locator -n "LeftEyeLidUpLocShape" -p "LeftEyeLidUpLoc";
	rename -uid "1F9138F0-4530-AB7A-095F-B9BF50289807";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos2" -p "LeftEyeLidUpLoc";
	rename -uid "F5825B4C-42FE-C409-FF8F-20B98B3DA0F0";
	setAttr ".t" -type "double3" -2.0865480537993935 -0.027220286915054563 2.2439515523497988e-14 ;
createNode locator -n "LeftEyeLidUpCvPos2Shape" -p "LeftEyeLidUpCvPos2";
	rename -uid "08318FCF-4F26-19B8-DAC7-EE8073A09910";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos1" -p "LeftEyeLidUpLoc";
	rename -uid "E631B076-41D9-B7EA-78CB-D18D8059D82E";
	setAttr ".t" -type "double3" 2.239564886670331 -0.021241769988588476 1.1171619185290638e-15 ;
createNode locator -n "LeftEyeLidUpCvPos1Shape" -p "LeftEyeLidUpCvPos1";
	rename -uid "D908A65B-454E-5B4E-7C22-C49B5365D530";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutPos" -p "LeftEyeLidLocGrp";
	rename -uid "A04991FF-4BEB-5BF5-DF7D-A3BB34A9A058";
	setAttr ".t" -type "double3" 2.3180398719788649 -1.2576745200831851e-16 2.9999999999999893 ;
createNode locator -n "LeftEyeLidOutPosShape" -p "LeftEyeLidOutPos";
	rename -uid "928B3021-45A1-174E-0503-2F9D26BF4D4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutLocOffGrp" -p "LeftEyeLidOutPos";
	rename -uid "FC03E3AA-4D6E-AB47-D690-F0B4F7A078DB";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidOutLoc" -p "LeftEyeLidOutLocOffGrp";
	rename -uid "BFBD31AA-45BC-D56F-8D76-06ABE142B994";
createNode locator -n "LeftEyeLidOutLocShape" -p "LeftEyeLidOutLoc";
	rename -uid "045A1A0C-4584-5094-CD82-87A16A0879A5";
	setAttr -k off ".v";
createNode locator -n "LefteyeLidOutEPPosShape" -p "LeftEyeLidOutLoc";
	rename -uid "52DD78A5-429C-60A9-2B67-E8AB2A64BDD7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownPos" -p "LeftEyeLidLocGrp";
	rename -uid "F54F76BA-491C-E0AF-E5F9-658E911DBC68";
	setAttr ".t" -type "double3" 6.071532164937965e-16 -2.0782131034149387 2.9999999909604407 ;
createNode locator -n "LeftEyeLidDownPosShape" -p "LeftEyeLidDownPos";
	rename -uid "68C50AB4-45DE-0748-B972-4DA0F0EBF490";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidDownLocOffGrp" -p "LeftEyeLidDownPos";
	rename -uid "C2EFAA0C-4A3E-408C-AD9B-29A9CDAF0971";
createNode transform -n "LeftEyeLidDownLoc" -p "LeftEyeLidDownLocOffGrp";
	rename -uid "5FA2F442-4F1E-674D-F3DC-A1A8D91726ED";
createNode locator -n "LeftEyeLidDownLocShape" -p "LeftEyeLidDownLoc";
	rename -uid "80DCA7CD-4448-1891-FF1A-629723C1F369";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos2" -p "LeftEyeLidDownLoc";
	rename -uid "FD16B53E-498C-036A-864B-69946D95AE32";
	setAttr ".t" -type "double3" -2.0501244493478801 -0.0066320794302513683 -1.017588791007995e-14 ;
createNode locator -n "LeftEyeLidDownCvPos2Shape" -p "LeftEyeLidDownCvPos2";
	rename -uid "24B89576-472E-CE9F-40E6-C691D04BE5B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos1" -p "LeftEyeLidDownLoc";
	rename -uid "99557ABD-4C6C-2324-EC0C-1980674486E7";
	setAttr ".t" -type "double3" 2.4473922134663999 0.041630203560837707 -7.5911499308745078e-15 ;
createNode locator -n "LeftEyeLidDownCvPos1Shape" -p "LeftEyeLidDownCvPos1";
	rename -uid "6F826D1E-441C-BB72-07DA-0ABEF991D190";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "36300138-4EBF-C414-4545-E59B17D8A9E8";
createNode transform -n "LeftEyeLidOutUp1LocGrp" -p "LeftEyeLidOutUp1LocOffGrp";
	rename -uid "78B901F8-4BBC-DEDB-7DDE-2DA88FE89BB8";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidOutUp1Pos" -p "LeftEyeLidOutUp1LocGrp";
	rename -uid "6E041245-4FFC-E690-7183-96BA258A39B9";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp1PosShape" -p "LeftEyeLidOutUp1Pos";
	rename -uid "459B07E7-49CB-96A9-EDBA-0B8D920A5103";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp1Loc" -p "LeftEyeLidOutUp1Pos";
	rename -uid "DD3C837C-4563-B2F1-CC54-07BFBE73FE2E";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "LeftEyeLidOutUp1LocShape" -p "LeftEyeLidOutUp1Loc";
	rename -uid "D5A58CF7-42D6-E42A-1E05-5895B784D188";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "8B84D0E5-4F9D-3845-FCAE-FC81E252E7F3";
createNode transform -n "LeftEyeLidOutUp2LocGrp" -p "LeftEyeLidOutUp2LocOffGrp";
	rename -uid "D3BCC21E-4569-AAAD-8D13-228B0BF5684C";
createNode transform -n "LeftEyeLidOutUp2Pos" -p "LeftEyeLidOutUp2LocGrp";
	rename -uid "8F907BA0-4AF7-F04E-082C-24BA3532F3B3";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -7.4446255129772491e-24 0 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp2PosShape" -p "LeftEyeLidOutUp2Pos";
	rename -uid "88427EE0-4CF3-D325-78D5-AABF3D56A9B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2Loc" -p "LeftEyeLidOutUp2Pos";
	rename -uid "F6CC6BE1-4AD1-C8FA-0FFA-1395D4456B33";
createNode locator -n "LeftEyeLidOutUp2LocShape" -p "LeftEyeLidOutUp2Loc";
	rename -uid "F62A354F-46DE-CD25-724F-718B2DDE8546";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1" -p "LeftEyeLidOutUp2Loc";
	rename -uid "DAA7BEE5-4FBC-FF3C-B958-CAB22DDBA5F3";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1Shape" -p "LeftEyeLidOutUp2CvPos1";
	rename -uid "E40F7E80-4FCF-2A85-334D-90A7C8D56AE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2" -p "LeftEyeLidOutUp2Loc";
	rename -uid "794E55C9-49F5-0EFC-A0FE-E39B2A3CA178";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos2Shape" -p "LeftEyeLidOutUp2CvPos2";
	rename -uid "EE14A711-47A9-C813-3FC4-D38B0F19BC6E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "F948BB99-433F-A3D0-4852-A39BEEFDB2A7";
createNode transform -n "LeftEyeLidOutUp3LocGrp" -p "LeftEyeLidOutUp3LocOffGrp";
	rename -uid "56AB4CEF-4893-A7BF-884A-EBBA611B18F2";
createNode transform -n "LeftEyeLidOutUp3Pos" -p "LeftEyeLidOutUp3LocGrp";
	rename -uid "A53EC0E8-4807-D1E7-BB01-72BA14BC7F7E";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp3PosShape" -p "LeftEyeLidOutUp3Pos";
	rename -uid "1A783052-418D-930F-2B77-3E95175BCEE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp3Loc" -p "LeftEyeLidOutUp3Pos";
	rename -uid "3B03BEA4-477F-0857-A9D6-A4951CC2D67C";
	setAttr ".v" no;
createNode locator -n "LeftEyeLidOutUp3LocShape" -p "LeftEyeLidOutUp3Loc";
	rename -uid "49CAEEAE-463D-61C5-342E-FFAF74066372";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "3086C5C2-44C2-0A77-7825-16A3494A0BDF";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown1LocGrp" -p "LeftEyeLidOutDown1LocOffGrp";
	rename -uid "6789AA5E-447C-9185-D9BC-4180ED9BBF56";
createNode transform -n "LeftEyeLidOutDown1Pos" -p "LeftEyeLidOutDown1LocGrp";
	rename -uid "7C91BC6C-4B7D-51F2-BC33-90A7B98438C5";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown1PosShape" -p "LeftEyeLidOutDown1Pos";
	rename -uid "C8B5CA13-4937-CE34-5198-E4805660B3B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1Loc" -p "LeftEyeLidOutDown1Pos";
	rename -uid "25853610-4B62-BAD3-14CE-76A9F3EAE14B";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftEyeLidOutDown1LocShape" -p "LeftEyeLidOutDown1Loc";
	rename -uid "0D9FCD15-40E0-6BEC-BC4B-26AEBFE05DFD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "A8CA2632-4923-BDE0-D395-9DA07952E932";
createNode transform -n "LeftEyeLidOutDown2LocGrp" -p "LeftEyeLidOutDown2LocOffGrp";
	rename -uid "ADFABBBF-41D0-A515-A5FB-B9B7820ADDD5";
createNode transform -n "LeftEyeLidOutDown2Pos" -p "LeftEyeLidOutDown2LocGrp";
	rename -uid "B21DBE1A-499F-C583-7E43-B59E950D675A";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown2PosShape" -p "LeftEyeLidOutDown2Pos";
	rename -uid "16FA1F37-4C9F-F67B-64EF-1AAEA61B0227";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2Loc" -p "LeftEyeLidOutDown2Pos";
	rename -uid "D285C9EF-45D9-2161-0AA5-059D364CFD6B";
createNode locator -n "LeftEyeLidOutDown2LocShape" -p "LeftEyeLidOutDown2Loc";
	rename -uid "CE2ED513-4740-A5C1-BC18-B3A8FFE1BF8B";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1" -p "LeftEyeLidOutDown2Loc";
	rename -uid "B2AEBABA-4E4E-ABF4-8481-50A32DF5D1AD";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1Shape" -p "LeftEyeLidOutDown2CvPos1";
	rename -uid "67548665-4DEE-B565-B366-E68F2DB0BA8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2" -p "LeftEyeLidOutDown2Loc";
	rename -uid "71612851-4F27-C24C-92A3-72B5E06D4E0D";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2Shape" -p "LeftEyeLidOutDown2CvPos2";
	rename -uid "E6BFE824-47DE-4656-06D5-5ABA654AFDA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "FE6948A8-4F4F-250F-5433-FC97CA413C58";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftEyeLidOutDown3LocGrp" -p "LeftEyeLidOutDown3LocOffGrp";
	rename -uid "FF636B5C-495E-2E8A-1458-3CA56DDB33C4";
createNode transform -n "LeftEyeLidOutDown3Pos" -p "LeftEyeLidOutDown3LocGrp";
	rename -uid "14FEA746-4B34-B1CB-F5F1-7ABF3A77600D";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown3PosShape" -p "LeftEyeLidOutDown3Pos";
	rename -uid "CF160301-44E6-C467-624D-1D99F6E6DCEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown3Loc" -p "LeftEyeLidOutDown3Pos";
	rename -uid "DAE3D077-4F8D-1831-FAB6-D89E7F3F0675";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "LeftEyeLidOutDown3LocShape" -p "LeftEyeLidOutDown3Loc";
	rename -uid "EF400564-46F5-6A00-8FC2-B5BCAF63A3BB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosCrv" -p "LeftEyeLidRootPoser";
	rename -uid "C4D9A046-4DC3-0E78-A257-078651190E0D";
	setAttr ".t" -type "double3" 0 1.2079226507921701e-13 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShape" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "3CA98E2E-4523-88C7-A537-FA84D6F4CE0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 12 ".cp[0:11]" -type "double3" -2.2082783865799658 -14.820045471191404 
		-25.113191604613828 -2.2716148781647441 -14.666393661499015 -25.083902359008398 -2.1627300906052342 
		-14.841145324707032 -24.903356552123817 -2.4166932272782065 -15.123806762695313 -24.664869308471712 
		-2.665244500624155 -14.833849716186524 -24.470087051391825 -2.650816028105234 -14.708286666870112 
		-24.321054458618537 -2.7740088152756441 -14.858072280883789 -24.278085708618583 -2.7238643813004244 
		-14.939403152465825 -24.320398330688853 -2.7368501829972018 -14.741164398193359 -24.554609298706197 
		-2.4046261477341391 -14.517789077758788 -24.833391189575057 -2.1410475897660008 -14.794337463378906 
		-25.023866653442056 -2.2584576296677348 -14.951093292236328 -25.111383438109936;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShapeOrig" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "9E867EE8-40E9-5FE9-55B2-23AFEE0DB71F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.0082783699035645 14.820045471191406 25.113191604614258
		1.0716148614883423 15.266393661499023 25.083902359008789
		1.562730073928833 16.041145324707031 24.903356552124023
		2.4166932106018066 16.323806762695312 24.66486930847168
		3.2652444839477539 16.033849716186523 24.470087051391602
		3.850816011428833 15.308286666870117 24.321054458618164
		3.9740087985992432 14.858072280883789 24.278085708618164
		3.9238643646240234 14.33940315246582 24.320398330688477
		3.3368501663208008 13.541164398193359 24.554609298706055
		2.4046261310577393 13.317789077758789 24.833391189575195
		1.5410475730895996 13.594337463378906 25.023866653442383
		1.058457612991333 14.351093292236328 25.111383438110352
		;
createNode transform -n "RightEyeLidSysGrp" -p "EyeLidSysGrp";
	rename -uid "E64FC29E-4EA0-2750-72FD-8D8D35D622E2";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidCrvGrp" -p "RightEyeLidSysGrp";
	rename -uid "720A527F-44E6-43A9-E9D5-0E896419580C";
	setAttr ".ovdt" 2;
createNode transform -n "RightEyeLidUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "439AE99D-4CED-6A70-4711-97B4DC358EB2";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidUpCrvShape" -p "RightEyeLidUpCrv";
	rename -uid "F44753B8-498C-E982-B76D-BFB6A2963A0B";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.4229061730684622 -6.2355393792116302e-13 3.0000000000000675
		-1.4229061730684622 -6.2355393792116302e-13 3.0000000000000675
		-0.91345193813023817 2.1716438503809901 2.999999938756837
		-2.9999999919296414 2.1988641372952991 2.999999938756932
		-5.2395648785999649 2.1776223673059105 2.9999999387570591
		-5.3180398441846943 -2.0208929009209282e-12 3.000000000000274
		-5.3180398441846943 -2.0208929009209282e-12 3.000000000000274
		;
createNode transform -n "RightEyeLidDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "E6A21E39-44A0-0C46-920E-EC8C2B7CCB9D";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidDownCrvShape" -p "RightEyeLidDownCrv";
	rename -uid "27156B2A-4C83-C5AA-0A4E-BE9894EFCA05";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.4229061730684622 -6.2355393792116302e-13 3.0000000000000675
		-1.4229061730684622 -6.2355393792116302e-13 3.0000000000000675
		-0.94987552285720511 -2.0848451828456493 2.9999999909604691
		-2.9999999722050874 -2.0782131034161306 2.9999999909605948
		-5.447392185671502 -2.0365828998561675 2.9999999909607249
		-5.3180398441846943 -2.0208929009209282e-12 3.000000000000274
		-5.3180398441846943 -2.0208929009209282e-12 3.000000000000274
		;
createNode transform -n "RightEyeLidUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "F07CF848-43BE-DB30-9F6B-A1A9AD57C493";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidUpJntCrvShape" -p "RightEyeLidUpJntCrv";
	rename -uid "DCF65868-49F7-7A28-D2FD-73A5B6D67402";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-1.6057618532849114 -1.2683567134209422e-12 2.649225539405851
		-1.5870433543837374 0.48797602631153791 2.5934855848005247
		-1.9031893953450283 1.3252189480875736 2.4528664790155923
		-2.9999999889858331 1.7755272619215086 2.4140850883163285
		-4.2739829304973043 1.2921419141418216 2.3853931082748798
		-4.7634543053784713 0.44871324697028736 2.3804159618510439
		-4.836880612521675 -3.5778970687399822e-12 2.3685583540165505
		;
createNode transform -n "RightEyeLidDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "D56C9A30-42B2-EAC8-0F0F-228C48E701E0";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidDownJntCrvShape" -p "RightEyeLidDownJntCrv";
	rename -uid "B7897CE6-4E49-020E-2027-42821DDC01CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-1.6057618532849114 -1.2683567134209422e-12 2.649225539405851
		-1.5910120463163842 -0.46835993238709178 2.5992124607448033
		-1.9054410028294457 -1.2774549718514296 2.4787015409255204
		-2.9999999722046367 -1.7096859142164205 2.4603377139873404
		-4.347201935782369 -1.2145480234132715 2.3858353840177062
		-4.7899323524702417 -0.41762382242735313 2.3666027814699491
		-4.836880612521675 -3.5778970687399822e-12 2.3685583540165505
		;
createNode transform -n "RightEyeLidOutUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "66BA087B-411E-9822-A6A4-6498BE9FE72B";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutUpCrvShape" -p "RightEyeLidOutUpCrv";
	rename -uid "DF40AA63-46F4-26EB-24D0-5EAD05D5AB26";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.99999997220636394 1.4999999999995186 3.0000000000000413
		-0.99999997220636394 1.4999999999995186 3.0000000000000413
		-1.499999972206723 2.4999999999993388 3.0000000000000675
		-2.999999972206723 2.4999999999988027 3.0000000000001519
		-4.499999972206723 2.4999999999982667 3.0000000000002363
		-4.9999999722063659 1.4999999999980953 3.0000000000002713
		-4.9999999722063659 1.4999999999980953 3.0000000000002713
		;
createNode transform -n "RightEyeLidOutDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "8C860CA6-4447-A1B7-4C31-F7AF95BC1FE6";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutDownCrvShape" -p "RightEyeLidOutDownCrv";
	rename -uid "1E5593D0-4A91-94FB-9B78-149A83771314";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.99999997220529391 -1.5000000000004821 3.0000000000000373
		-0.99999997220529391 -1.5000000000004821 3.0000000000000373
		-1.4999999722049351 -2.5000000000006541 3.0000000000000808
		-2.9999999722049351 -2.5000000000011902 3.0000000000001652
		-4.4999999722049351 -2.5000000000017262 3.0000000000002496
		-4.999999972205293 -1.5000000000019027 3.0000000000002753
		-4.999999972205293 -1.5000000000019027 3.0000000000002753
		;
createNode transform -n "RightEyeLidOutUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "078D66BB-4CB7-E14B-74EC-8E9BC3365A56";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutUpJntCrvShape" -p "RightEyeLidOutUpJntCrv";
	rename -uid "920AFCCB-4017-12B5-C47B-E39FEEF6353D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.4625819209594502 1.155510241618823 2.2995613350222475
		-1.9215631940075231 1.7929690625630066 2.1479848246262523
		-2.9999999722072426 1.9237565457615637 2.2997590952770661
		-4.0784367504067927 1.792969062561466 2.1479848246263726
		-4.5374180234539363 1.1555102416166285 2.2995613350224198
		;
createNode transform -n "RightEyeLidOutDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "B5F3A5C5-4D0B-D62B-8D5F-6F930EA72336";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutDownJntCrvShape" -p "RightEyeLidOutDownJntCrv";
	rename -uid "6F211FDC-416A-72BE-EA0F-C38F0CF54601";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.4625819209578006 -1.1555102416211609 2.2995613350222457
		-1.9215631940049633 -1.7929690625659915 2.1479848246262554
		-2.9999999722044923 -1.9237565457660915 2.2997590952770666
		-4.0784367504042285 -1.7929690625675325 2.1479848246263762
		-4.5374180234522825 -1.1555102416233505 2.2995613350224233
		;
createNode transform -n "RightEyeLidSurfPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "A7D0883E-454A-DF40-CD88-389DEE9FCE1A";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidUpCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1B659C07-4D8D-2738-F3CD-CFA95C71A96C";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp1Pos" -p "RightEyeLidUpCtrl0PosSurfPos";
	rename -uid "DE313170-4D65-614D-D24D-B687482BEF94";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidUp1PosShape" -p "RightEyeLidUp1Pos";
	rename -uid "B2E2967B-42FA-8683-3059-E2AD3952BD90";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "54671BAE-410B-CC8B-B6DD-D7BEA8449B4E";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2Pos" -p "RightEyeLidUpCtrl1PosSurfPos";
	rename -uid "D7B92B8B-4FB6-05CC-2E10-A2BCF5E1A0E8";
	setAttr ".t" -type "double3" -1.8873791418627661e-15 0 0 ;
createNode locator -n "RightEyeLidUp2PosShape" -p "RightEyeLidUp2Pos";
	rename -uid "ED5D4686-4352-736C-F674-0F9C1D5844FB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "B1CCA831-46EC-1158-AD40-2CA939BF3539";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp3Pos" -p "RightEyeLidUpCtrl2PosSurfPos";
	rename -uid "080E9C7E-4A28-7461-C9D2-39B00CF7B04F";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode locator -n "RightEyeLidUp3PosShape" -p "RightEyeLidUp3Pos";
	rename -uid "308C2855-44D7-52D8-9867-7185AA16C399";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1F554884-46B6-61CA-2529-318062579A90";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp4Pos" -p "RightEyeLidUpCtrl3PosSurfPos";
	rename -uid "AFC06E25-4A27-A9A7-9D41-0B837D8FD233";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 2.5673907444456745e-15 0 ;
createNode locator -n "RightEyeLidUp4PosShape" -p "RightEyeLidUp4Pos";
	rename -uid "9201CB60-407C-4F22-E9A5-D8BA6E30A483";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "6DA7E795-40DF-D246-4859-AEB608DB6897";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp5Pos" -p "RightEyeLidUpCtrl4PosSurfPos";
	rename -uid "A361FB6C-4398-98F6-0B79-0D943C976DCC";
	setAttr ".t" -type "double3" -1.3322676295501878e-15 6.6613381477509392e-16 0 ;
createNode locator -n "RightEyeLidUp5PosShape" -p "RightEyeLidUp5Pos";
	rename -uid "EFDDE4D6-4117-106D-F7E5-4DA896EE5AD2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "E8435EBB-4E90-DBDF-3FC4-20A04813C16E";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp6Pos" -p "RightEyeLidUpCtrl5PosSurfPos";
	rename -uid "4D6C6FC9-4EE0-1FD8-198B-C8B82BC85C37";
	setAttr ".t" -type "double3" 3.3306690738754696e-16 1.3322676295501878e-15 0 ;
createNode locator -n "RightEyeLidUp6PosShape" -p "RightEyeLidUp6Pos";
	rename -uid "CD388FFD-4C83-6B67-0A25-2B948CBF1A32";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "34166976-4122-6CD9-9F52-F69ACED0B192";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidUp7Pos" -p "RightEyeLidUpCtrl6PosSurfPos";
	rename -uid "E22C5E56-469E-1044-ED67-BDAE81B17368";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidUp7PosShape" -p "RightEyeLidUp7Pos";
	rename -uid "1E820A4F-4ED8-D5D0-D569-BDB589F555B4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9EB178D5-4F0F-0C88-C246-EEBA9A6FCA3A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown1Pos" -p "RightEyeLidDownCtrl0PosSurfPos";
	rename -uid "F3269E11-4550-22D5-1F37-37A2617B6B32";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidDown1PosShape" -p "RightEyeLidDown1Pos";
	rename -uid "7ABC209A-4535-4CFB-472A-42B5EE41C10B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1E2A81E3-4003-D5BD-11FF-598EC56488EA";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 -0.99999999999999956 ;
createNode transform -n "RightEyeLidDown2Pos" -p "RightEyeLidDownCtrl1PosSurfPos";
	rename -uid "3C2CF9FB-40C3-F941-7174-07A2978D2496";
	setAttr ".t" -type "double3" -1.4432899320127035e-15 4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown2PosShape" -p "RightEyeLidDown2Pos";
	rename -uid "06604C1D-4A04-8CC2-8082-E99B1A38E68F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "3753DF53-4907-05C0-E7F5-6CB05F14328F";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown3Pos" -p "RightEyeLidDownCtrl2PosSurfPos";
	rename -uid "00FDB951-4A86-775B-E473-A7B3CBE7FE49";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.5543122344752192e-15 0 ;
createNode locator -n "RightEyeLidDown3PosShape" -p "RightEyeLidDown3Pos";
	rename -uid "25DE1CC7-480E-D6AC-88E3-A183B8A12478";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1E5CD941-4EC7-6455-CEC7-518F9BD80A6A";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown4Pos" -p "RightEyeLidDownCtrl3PosSurfPos";
	rename -uid "3823BD5E-44BD-5EFB-58FF-F8B26734C495";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -1.3704315460216776e-15 0 ;
createNode locator -n "RightEyeLidDown4PosShape" -p "RightEyeLidDown4Pos";
	rename -uid "D2A19757-40B0-167B-4CE4-69897D21409F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "FF0AC4E4-4B7F-16CC-9B7F-1AA9EE2BBA38";
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown5Pos" -p "RightEyeLidDownCtrl4PosSurfPos";
	rename -uid "86FAD72C-403F-6279-DCD2-C09CC75F2CE8";
createNode locator -n "RightEyeLidDown5PosShape" -p "RightEyeLidDown5Pos";
	rename -uid "AF79AF11-448B-D0F6-10F0-D3B5B2A8F74E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "C44B0D18-4F3C-384B-4925-6AA82360569E";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown6Pos" -p "RightEyeLidDownCtrl5PosSurfPos";
	rename -uid "125861B4-4B79-F2FF-B1F4-E088A412100E";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown6PosShape" -p "RightEyeLidDown6Pos";
	rename -uid "BC44F084-487A-A5BB-BC30-DBBD1CC8F42F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "3D8672AE-43DD-F47F-25C5-E0AB1F477012";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidDown7Pos" -p "RightEyeLidDownCtrl6PosSurfPos";
	rename -uid "6D4F9059-495A-A7C6-703B-278E6823B17D";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidDown7PosShape" -p "RightEyeLidDown7Pos";
	rename -uid "8F5DEEBE-45D8-4539-DE75-F19287443508";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "408EA8F1-4DF3-D66E-923A-BBBF06338FF9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1LocSurfPosLoc" -p "RightEyeLidOutUp1LocSurfPos";
	rename -uid "49FEC4CE-48D6-5CD9-A988-F2864FF008E8";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutUp1LocSurfPosLocShape" -p "RightEyeLidOutUp1LocSurfPosLoc";
	rename -uid "FFD26C34-432D-40C7-3438-749E37B09728";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2CvPos1SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "62BBD7FD-45AE-5D10-3881-5795B23A114E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp2CvPos1SurfPosLoc" -p "RightEyeLidOutUp2CvPos1SurfPos";
	rename -uid "628D6478-495F-AA35-E754-B3945C10D38A";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode locator -n "RightEyeLidOutUp2CvPos1SurfPosLocShape" -p "RightEyeLidOutUp2CvPos1SurfPosLoc";
	rename -uid "E925F0DA-40EB-A17C-6B2D-E88E978D7175";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9A6A6480-4EC7-B1E8-F2FD-6E8576826CE2";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUp2LocSurfPosLoc" -p "RightEyeLidOutUp2LocSurfPos";
	rename -uid "73778C81-4556-CCE7-F3CF-ADA9524CBB5E";
createNode locator -n "RightEyeLidOutUp2LocSurfPosLocShape" -p "RightEyeLidOutUp2LocSurfPosLoc";
	rename -uid "328DAE01-44DD-5F90-BEE7-44B3FD85A504";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2CvPos2SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "0D10211B-4C14-F2D6-2CCF-D4B84AF97D8C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999967 ;
createNode transform -n "RightEyeLidOutUp2CvPos2SurfPosLoc" -p "RightEyeLidOutUp2CvPos2SurfPos";
	rename -uid "14C2A0AE-4553-9BA2-8F61-ED92B8CB97C0";
createNode locator -n "RightEyeLidOutUp2CvPos2SurfPosLocShape" -p "RightEyeLidOutUp2CvPos2SurfPosLoc";
	rename -uid "A5C326F7-4B16-AF3F-63DF-29B1A9845806";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp3LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "4724CBCE-43C2-E589-CF3D-16B8A7E2E232";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 -0.99999999999999967 ;
createNode transform -n "RightEyeLidOutUp3LocSurfPosLoc" -p "RightEyeLidOutUp3LocSurfPos";
	rename -uid "07C85FEC-41F1-FDD8-F791-68ADAD8AAD1C";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutUp3LocSurfPosLocShape" -p "RightEyeLidOutUp3LocSurfPosLoc";
	rename -uid "4341E725-4037-FCD7-1C41-058E9808EC90";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown1LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F58469EF-4857-9AFA-034B-308C40031BCE";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocSurfPosLoc" -p "RightEyeLidOutDown1LocSurfPos";
	rename -uid "6F5F0687-4F2E-BC12-040E-32937A2F4655";
createNode locator -n "RightEyeLidOutDown1LocSurfPosLocShape" -p "RightEyeLidOutDown1LocSurfPosLoc";
	rename -uid "E4C0B481-42A0-3870-B2CE-7FBC5CC63DC7";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2CvPos1SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A9426A29-469F-ABD1-5E98-1FA25559EECB";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown2CvPos1SurfPosLoc" -p "RightEyeLidOutDown2CvPos1SurfPos";
	rename -uid "07E66CB1-4A0B-8CC5-6C3D-2A963F782F73";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDown2CvPos1SurfPosLocShape" -p "RightEyeLidOutDown2CvPos1SurfPosLoc";
	rename -uid "230FF85D-46C7-5E57-764E-E3A0A090D8FC";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "7ADC74C4-4D74-591C-1B6C-0DA7517AC02C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown2LocSurfPosLoc" -p "RightEyeLidOutDown2LocSurfPos";
	rename -uid "CA9DFEBC-4E96-1E38-0A74-D482DB7D8BBF";
createNode locator -n "RightEyeLidOutDown2LocSurfPosLocShape" -p "RightEyeLidOutDown2LocSurfPosLoc";
	rename -uid "60DC86BB-4161-EA02-A198-03BC1164A928";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2CvPos2SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F961D0B6-42AE-33F4-9F7F-2BB7011096F5";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2SurfPosLoc" -p "RightEyeLidOutDown2CvPos2SurfPos";
	rename -uid "4970F7BD-4674-536E-0B6E-1A847F7494F2";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "RightEyeLidOutDown2CvPos2SurfPosLocShape" -p "RightEyeLidOutDown2CvPos2SurfPosLoc";
	rename -uid "04DBC1C5-445F-FAAD-2CBE-079D13BD64CE";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown3LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "82E5908A-4C14-1C94-054C-65991CE2C761";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1 ;
createNode transform -n "RightEyeLidOutDown3LocSurfPosLoc" -p "RightEyeLidOutDown3LocSurfPos";
	rename -uid "5FAFC043-43BE-ABBE-8808-A7B833E5340E";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDown3LocSurfPosLocShape" -p "RightEyeLidOutDown3LocSurfPosLoc";
	rename -uid "25E79CBD-45AD-C4B2-39DC-999268B3BB1C";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidCrvPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "C30210EA-43F7-0F94-0F4E-81BBDAB00CDB";
	setAttr ".v" no;
createNode transform -n "RightEyeLidUpCrv0Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "6EEA45B3-4937-121E-8349-04B0AEA6DA7C";
createNode locator -n "RightEyeLidUpCrv0PosShape" -p "RightEyeLidUpCrv0Pos";
	rename -uid "413F6512-485D-9C1E-EE3D-52A560C2DFD5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl0Pos" -p "RightEyeLidUpCrv0Pos";
	rename -uid "5F322006-4295-753A-EBAE-05853B6F261A";
createNode locator -n "RightEyeLidUpCtrl0PosShape" -p "RightEyeLidUpCtrl0Pos";
	rename -uid "85AE92FD-4EB6-9164-1BFE-B3B419B27D84";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv1Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "444C80F7-430A-DB5A-32DB-97831F1DC725";
createNode locator -n "RightEyeLidUpCrv1PosShape" -p "RightEyeLidUpCrv1Pos";
	rename -uid "80C4EEFA-4B4C-E1F9-F5CF-88B5C7E92232";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1Pos" -p "RightEyeLidUpCrv1Pos";
	rename -uid "C92442EA-435D-23AB-2B22-CCB60098FF18";
createNode locator -n "RightEyeLidUpCtrl1PosShape" -p "RightEyeLidUpCtrl1Pos";
	rename -uid "F0033DA6-41EA-B07D-7F8D-8AB8F89357F9";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv2Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "B7E099C9-4166-7BA9-3014-F6B4CC36F00C";
createNode locator -n "RightEyeLidUpCrv2PosShape" -p "RightEyeLidUpCrv2Pos";
	rename -uid "80CBA568-4BA4-9806-9E41-EEB142100F85";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2Pos" -p "RightEyeLidUpCrv2Pos";
	rename -uid "4F951942-47FF-9405-8BC3-7DBBBE2B5897";
createNode locator -n "RightEyeLidUpCtrl2PosShape" -p "RightEyeLidUpCtrl2Pos";
	rename -uid "118B40C2-41B5-C7CE-B43C-F7AE69224D0F";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv3Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "29B3E8D2-488B-464C-7AD5-BCB1579A3B0D";
createNode locator -n "RightEyeLidUpCrv3PosShape" -p "RightEyeLidUpCrv3Pos";
	rename -uid "F83B4135-4AE3-C7E6-7612-ECA30746440D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3Pos" -p "RightEyeLidUpCrv3Pos";
	rename -uid "686BD8DE-461A-FF66-F193-57B997944CB3";
createNode locator -n "RightEyeLidUpCtrl3PosShape" -p "RightEyeLidUpCtrl3Pos";
	rename -uid "2F8B2D86-4738-C6FD-FC0F-E2A43C8B05CE";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv4Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "0BD8FE0C-4B64-61C1-8455-9690E43CB064";
createNode locator -n "RightEyeLidUpCrv4PosShape" -p "RightEyeLidUpCrv4Pos";
	rename -uid "AFB0B322-4D90-97E4-38CF-2D8F688F6928";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4Pos" -p "RightEyeLidUpCrv4Pos";
	rename -uid "D6469DB2-456F-B820-13E6-4BAF69466B7D";
createNode locator -n "RightEyeLidUpCtrl4PosShape" -p "RightEyeLidUpCtrl4Pos";
	rename -uid "0396D073-46F7-A637-5934-50B8131FC1F6";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv5Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "329D6525-48A9-7851-C2F7-40A19FC01B46";
createNode locator -n "RightEyeLidUpCrv5PosShape" -p "RightEyeLidUpCrv5Pos";
	rename -uid "B2D6CEF7-4FF3-7793-F622-EBA1AED2D68A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5Pos" -p "RightEyeLidUpCrv5Pos";
	rename -uid "BDBF077B-4BBE-362B-3F88-8D92F589C000";
createNode locator -n "RightEyeLidUpCtrl5PosShape" -p "RightEyeLidUpCtrl5Pos";
	rename -uid "9F2A2064-4ABF-4F36-12F1-D2BC867256CC";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv6Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "C0E2D046-4B6A-9830-B078-31A17963C3CD";
createNode locator -n "RightEyeLidUpCrv6PosShape" -p "RightEyeLidUpCrv6Pos";
	rename -uid "5B4A24E3-49DF-DC0A-0A7E-3C9E594D0EEB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6Pos" -p "RightEyeLidUpCrv6Pos";
	rename -uid "CBD9E37E-4BE1-42AD-5033-58A95DB49C47";
createNode locator -n "RightEyeLidUpCtrl6PosShape" -p "RightEyeLidUpCtrl6Pos";
	rename -uid "01612DBA-4423-F83A-36F4-41823372CB6A";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv0Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "711A666C-45C7-DBC4-B8F3-ABA3EFF2D47B";
createNode locator -n "RightEyeLidDownCrv0PosShape" -p "RightEyeLidDownCrv0Pos";
	rename -uid "FCA20740-4CFE-1189-4956-7CB537905FB9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0Pos" -p "RightEyeLidDownCrv0Pos";
	rename -uid "2E1BA6F9-4999-A103-C707-558CB7FF1FBE";
createNode locator -n "RightEyeLidDownCtrl0PosShape" -p "RightEyeLidDownCtrl0Pos";
	rename -uid "9460B2C8-4C45-497F-EA8F-4CB7A888602C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv1Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "BB4145F8-4514-DBD4-D33A-A88EEF7BCD73";
createNode locator -n "RightEyeLidDownCrv1PosShape" -p "RightEyeLidDownCrv1Pos";
	rename -uid "86C59BBD-4601-564E-35AA-AD8793D49717";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1Pos" -p "RightEyeLidDownCrv1Pos";
	rename -uid "A23B4895-4561-B23D-5095-75BE03F49915";
createNode locator -n "RightEyeLidDownCtrl1PosShape" -p "RightEyeLidDownCtrl1Pos";
	rename -uid "F9C8994F-4C3C-4006-BEB9-44B8D5D4329E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv2Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "04FAF853-4368-A69F-4273-7D8F467410DA";
createNode locator -n "RightEyeLidDownCrv2PosShape" -p "RightEyeLidDownCrv2Pos";
	rename -uid "F6767384-4814-0CD1-6F09-FBB42440CFB2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2Pos" -p "RightEyeLidDownCrv2Pos";
	rename -uid "D3032F8A-4104-F242-47B9-C78BCD523594";
createNode locator -n "RightEyeLidDownCtrl2PosShape" -p "RightEyeLidDownCtrl2Pos";
	rename -uid "5C4EE376-4BC1-8B70-39CA-79A9C8D2B96A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv3Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "E6EE3C1A-4F3E-F60B-EE62-C28563765C00";
createNode locator -n "RightEyeLidDownCrv3PosShape" -p "RightEyeLidDownCrv3Pos";
	rename -uid "A7B53914-4693-352D-567D-F096E532295F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3Pos" -p "RightEyeLidDownCrv3Pos";
	rename -uid "669F7F5D-439F-167C-2CBF-629087A06A0D";
createNode locator -n "RightEyeLidDownCtrl3PosShape" -p "RightEyeLidDownCtrl3Pos";
	rename -uid "90CAEDBE-4567-7EA9-77D1-9C877D22BC99";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv4Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "EABB7BA3-4113-19A2-35E3-54AF7DE74821";
createNode locator -n "RightEyeLidDownCrv4PosShape" -p "RightEyeLidDownCrv4Pos";
	rename -uid "3ED1E4E3-405E-2EBC-95F4-CC9A978DA86C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4Pos" -p "RightEyeLidDownCrv4Pos";
	rename -uid "D37F87B5-4E7B-897C-2248-5AB67FF596DF";
createNode locator -n "RightEyeLidDownCtrl4PosShape" -p "RightEyeLidDownCtrl4Pos";
	rename -uid "470B812A-4C71-CCBE-BDEA-86AD7F804222";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv5Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "F60A9E3E-4700-EB98-3BF7-C39A5CB96C1B";
createNode locator -n "RightEyeLidDownCrv5PosShape" -p "RightEyeLidDownCrv5Pos";
	rename -uid "36866FEF-467F-60F9-1223-C09A58FE0A7C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5Pos" -p "RightEyeLidDownCrv5Pos";
	rename -uid "5A886AA9-42E6-8C0E-02D2-CB883280AF81";
createNode locator -n "RightEyeLidDownCtrl5PosShape" -p "RightEyeLidDownCtrl5Pos";
	rename -uid "89065B25-4BD6-A215-1CAE-11A27445FC40";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv6Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "D2EE6BBE-4629-27B5-401E-06B3A01FAB71";
createNode locator -n "RightEyeLidDownCrv6PosShape" -p "RightEyeLidDownCrv6Pos";
	rename -uid "27B47651-443E-BC34-9E58-30A50C94CF74";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6Pos" -p "RightEyeLidDownCrv6Pos";
	rename -uid "C4E7C1DF-437A-406D-BB59-2F98DB3F727F";
createNode locator -n "RightEyeLidDownCtrl6PosShape" -p "RightEyeLidDownCtrl6Pos";
	rename -uid "19FCB268-4301-A03B-A630-81B2D52DD46C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "0E1957CA-4689-9A98-DD8E-2B88393C09AB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidCtrl0Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "09A303F4-45FD-D875-BFBA-0F990144C3F6";
createNode locator -n "RightEyeLidCtrl0PosShape" -p "RightEyeLidCtrl0Pos";
	rename -uid "A77B3C39-46F8-D4CB-C27A-3D97BBF174FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl1Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "4323F848-41C7-7FB8-0242-7D8EE9087E92";
createNode locator -n "RightEyeLidCtrl1PosShape" -p "RightEyeLidCtrl1Pos";
	rename -uid "A9BD4765-4FC6-003B-4B47-02A820E3E4B4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl2Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "5BD501E7-43BD-782C-4D07-A8B7A0F29664";
createNode locator -n "RightEyeLidCtrl2PosShape" -p "RightEyeLidCtrl2Pos";
	rename -uid "610955C0-417A-CAE6-3B43-2787619401FC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl3Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "03CD32DD-4E32-7D33-DB35-958D11C6C89F";
createNode locator -n "RightEyeLidCtrl3PosShape" -p "RightEyeLidCtrl3Pos";
	rename -uid "FDE3FD6C-4569-50FF-FDDD-14ADAB114D67";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl4Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "3A6AF422-4107-83F7-63BD-189D536D6EA5";
createNode locator -n "RightEyeLidCtrl4PosShape" -p "RightEyeLidCtrl4Pos";
	rename -uid "3609349A-411C-622B-3A71-829967058DC3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl5Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "35FF39DC-4DF1-7224-65FC-EABB2CFBBEEB";
createNode locator -n "RightEyeLidCtrl5PosShape" -p "RightEyeLidCtrl5Pos";
	rename -uid "8AC0EC65-436C-CA29-9F00-18B69AF7A542";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl6Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "5B4A95E4-4492-DA2F-33E7-96B8015596CC";
createNode locator -n "RightEyeLidCtrl6PosShape" -p "RightEyeLidCtrl6Pos";
	rename -uid "625AA5AD-4F19-2560-0CBE-64B073AF454E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl7Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "F59593C0-402E-85FB-19AF-13802986EDD8";
createNode locator -n "RightEyeLidCtrl7PosShape" -p "RightEyeLidCtrl7Pos";
	rename -uid "54651B6A-4BE5-C6E0-2DF0-4C981F5BA548";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl8Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "5F3B2CCA-4AC7-2890-F7AE-4D83F96AAC1B";
createNode locator -n "RightEyeLidCtrl8PosShape" -p "RightEyeLidCtrl8Pos";
	rename -uid "694A2E51-471E-86B1-70B2-5A9EECE6621A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl9Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "5A7FA198-4B97-59B1-3498-D495FB15C3EB";
createNode locator -n "RightEyeLidCtrl9PosShape" -p "RightEyeLidCtrl9Pos";
	rename -uid "64A40EA1-42AE-82CD-C73E-8D941B24A28E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl10Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "C6D90552-4066-760B-A9BF-0DAB37AC8DE5";
createNode locator -n "RightEyeLidCtrl10PosShape" -p "RightEyeLidCtrl10Pos";
	rename -uid "0811612A-4C7F-3C52-9B2D-3482EEB7F3B8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl11Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "5D7A3519-4C75-9208-36C1-32835CFB62B2";
createNode locator -n "RightEyeLidCtrl11PosShape" -p "RightEyeLidCtrl11Pos";
	rename -uid "85276C7A-42BB-66FF-9DF5-01A8B02ACC36";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidRootPoserGrp" -p "RightEyeLidSysGrp";
	rename -uid "203A9110-4657-D228-B4EE-7589A7319FB3";
	setAttr ".t" -type "double3" -2.7794001988259354e-08 -1.2079226507921703e-13 -3.5527121146412049e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "RightEyeLidRootPoser" -p "RightEyeLidRootPoserGrp";
	rename -uid "E7F2A08B-4295-30AE-9210-5BBDC67215DB";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode";
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "RightEyeLidRootPoserShape" -p "RightEyeLidRootPoser";
	rename -uid "BD7C2E19-482E-4582-F31E-109D696DBB85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.92309449412186373 1.7067061190130897 
		0.78361162489121394 3.7623188661895346e-16 2.4136469404934626 1.1081941875543841 
		-0.92309449412186373 1.7067061190130897 0.78361162489122793 -1.3054527529390696 1.7763568394002505e-15 
		3.6101626611757496e-15 -0.92309449412186373 -1.7067061190130861 -0.78361162489122449 
		1.1100856969603224e-16 -2.4136469404934591 -1.1081941875543919 0.92309449412186417 
		-1.7067061190130861 -0.78361162489123504 1.3054527529390696 -1.7763568394002505e-15 
		-1.4361978765279999e-14 0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeBallSurf" -p "RightEyeLidRootPoser";
	rename -uid "3F3E30B1-4A8A-CDB7-1DCB-308EC3741474";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "RightEyeBallSurfShape" -p "RightEyeBallSurf";
	rename -uid "0715576D-4B69-7780-5E0E-3897C7676241";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 3;
	setAttr ".dvv" 3;
	setAttr ".cpr" 15;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "RightEyeBallSurfShapeOrig" -p "RightEyeBallSurf";
	rename -uid "E5112BF2-48E9-9741-A1E9-7B9E94AAA83B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "RightEyeBallFFDGrp" -p "RightEyeLidRootPoser";
	rename -uid "F94D4DF6-4B49-5F96-90F5-819B1DC0A90C";
createNode transform -n "RightEyeBallffd1Lattice" -p "RightEyeBallFFDGrp";
	rename -uid "EFF0C75D-4E3F-A638-C754-2FBC91D74A31";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "RightEyeBallffd1LatticeShape" -p "RightEyeBallffd1Lattice";
	rename -uid "FF4DC3FB-4B32-0FA2-E6F0-B98E39945ED2";
	setAttr -k off ".v";
	setAttr ".sd" 5;
	setAttr ".td" 3;
	setAttr ".ud" 5;
	setAttr ".cc" -type "lattice" 5 3 5 75 -0.5 -0.5 -0.5 -0.25 -0.5
		 -0.5 0 -0.5 -0.5 0.25 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0 -0.5 -0.25 0 -0.5 0 0 -0.5 0.25
		 0 -0.5 0.5 0 -0.5 -0.5 0.5 -0.5 -0.25 0.5 -0.5 0 0.5 -0.5 0.25 0.5 -0.5 0.5 0.5 -0.5 -0.5
		 -0.5 -0.25 -0.25 -0.5 -0.25 0 -0.5 -0.25 0.25 -0.5 -0.25 0.5 -0.5 -0.25 -0.5 0 -0.25 -0.25
		 0 -0.25 0 0 -0.25 0.25 0 -0.25 0.5 0 -0.25 -0.5 0.5 -0.25 -0.25 0.5 -0.25 0 0.5 -0.25 0.25
		 0.5 -0.25 0.5 0.5 -0.25 -0.5 -0.5 0 -0.25 -0.5 0 0 -0.5 0 0.25 -0.5 0 0.5 -0.5 0 -0.5
		 0 0 -0.25 0 0 0 0 0 0.25 0 0 0.5 0 0 -0.5 0.5 0 -0.25 0.5 0 0 0.5 0 0.25 0.5 0 0.5
		 0.5 0 -0.5 -0.5 0.25 -0.25 -0.5 0.25 0 -0.5 0.25 0.25 -0.5 0.25 0.5 -0.5 0.25 -0.5
		 0 0.25 -0.25 0 0.25 0 0 0.25 0.25 0 0.25 0.5 0 0.25 -0.5 0.5 0.25 -0.25 0.5 0.25 0
		 0.5 0.25 0.25 0.5 0.25 0.5 0.5 0.25 -0.5 -0.5 0.5 -0.25 -0.5 0.5 0 -0.5 0.5 0.25
		 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 -0.25 0 0.5 0 0 0.5 0.25 0 0.5 0.5 0 0.5 -0.5 0.5
		 0.5 -0.25 0.5 0.5 0 0.5 0.5 0.25 0.5 0.5 0.5 0.5 0.5 ;
createNode transform -n "RightEyeBallffd1Base" -p "RightEyeBallFFDGrp";
	rename -uid "79A8954D-4508-1A16-03D4-5BA009FEDBC7";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "RightEyeBallffd1BaseShape" -p "RightEyeBallffd1Base";
	rename -uid "7135CDBF-4930-D04A-627C-34862174A8E4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "RightEyeLidAimGrp" -p "RightEyeLidRootPoser";
	rename -uid "5851D07D-4436-9452-64C5-CE8733244F9F";
	setAttr ".v" no;
createNode transform -n "RightEyeBallFix" -p "RightEyeLidAimGrp";
	rename -uid "4E42DB6F-4136-C61A-89C1-F58B189B6AB8";
createNode locator -n "RightEyeBallFixShape" -p "RightEyeBallFix";
	rename -uid "4EE4794D-4877-284E-F8AD-5792DF681D71";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidUp3AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "683B42B5-45C4-908E-A5CA-89B0DC6596FF";
createNode transform -n "RightEyeLidUp3Aim" -p "RightEyeLidUp3AimGrp";
	rename -uid "FB9CD2A3-493A-8024-7D40-A7B6758DAE6B";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp3AimShape" -p "RightEyeLidUp3Aim";
	rename -uid "A22FD0C3-4019-6588-C59E-F5BBB3308362";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp3AimGrp_aimConstraint1" -p "RightEyeLidUp3AimGrp";
	rename -uid "6E10C714-4703-B115-271C-F5BF8B13396F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidUpCrv2PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 20.323138645592948 20.328088068288583 7.3316790815401518 ;
	setAttr ".rsrr" -type "double3" -2.9817700138720465e-16 3.5781240166464568e-15 1.987846675914698e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidUp4AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "1F8CF5F0-42A9-583D-6CFD-549067630D2B";
createNode transform -n "RightEyeLidUp4Aim" -p "RightEyeLidUp4AimGrp";
	rename -uid "2110E5D1-4057-09BA-8D57-F0B64F5CD3D1";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp4AimShape" -p "RightEyeLidUp4Aim";
	rename -uid "0D71088F-4F85-87C5-08A6-D88AE4A909FA";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp4AimGrp_aimConstraint1" -p "RightEyeLidUp4AimGrp";
	rename -uid "0F315CC0-46DE-E092-C9EE-69A5349E1E74";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidUpCrv3PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 26.565053528607091 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidUp5AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "9AAD5ECD-4275-02EB-9D1C-2BBA19E97C1E";
createNode transform -n "RightEyeLidUp5Aim" -p "RightEyeLidUp5AimGrp";
	rename -uid "DBF29B93-40EE-444A-9327-A58A3800FD74";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp5AimShape" -p "RightEyeLidUp5Aim";
	rename -uid "C6664D35-4B92-6633-4E33-5792BC6F35EA";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp5AimGrp_aimConstraint1" -p "RightEyeLidUp5AimGrp";
	rename -uid "F36AC9E0-480C-86CB-8342-1983F7BD2297";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidUpCrv4PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 20.323138645593033 -20.328088528442116 -7.331679238750449 ;
	setAttr ".rsrr" -type "double3" -3.876301018033661e-15 9.1440947092076103e-15 -3.1805546814635176e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidDown3AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "7EBA48B1-4465-7530-1A72-A68F1C98B5C7";
createNode transform -n "RightEyeLidDown3Aim" -p "RightEyeLidDown3AimGrp";
	rename -uid "B43C6448-4BC6-0A85-7513-8486A05FDA1C";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown3AimShape" -p "RightEyeLidDown3Aim";
	rename -uid "F3444789-422E-4005-297F-48941B0CBB52";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown3AimGrp_aimConstraint1" -p "RightEyeLidDown3AimGrp";
	rename -uid "677C035A-44C4-4008-E2D3-F7B696E71B9C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidDownCrv2PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" -20.323136732308171 20.328088288622968 -7.3316784132843535 ;
	setAttr ".rsrr" -type "double3" 0 -9.9392333795734899e-17 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidDown4AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "391F29D8-4920-A089-76AB-239745CD3E84";
createNode transform -n "RightEyeLidDown4Aim" -p "RightEyeLidDown4AimGrp";
	rename -uid "944467F0-432D-FCFC-0EF1-98BFA43FE916";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown4AimShape" -p "RightEyeLidDown4Aim";
	rename -uid "24D939C4-46D8-D01E-2651-169B159E4BF6";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown4AimGrp_aimConstraint1" -p "RightEyeLidDown4AimGrp";
	rename -uid "E03AAA3D-41D1-73FE-772A-E38860B6D004";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidDownCrv3PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" -26.565051075415507 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidDown5AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "53193740-4F32-25C1-CF24-4CB50AD2A375";
createNode transform -n "RightEyeLidDown5Aim" -p "RightEyeLidDown5AimGrp";
	rename -uid "860B7B51-40FB-998E-DC81-CD9DDA7B3FDE";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown5AimShape" -p "RightEyeLidDown5Aim";
	rename -uid "E2ED66A4-40B1-1FDD-262A-D09742729835";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown5AimGrp_aimConstraint1" -p "RightEyeLidDown5AimGrp";
	rename -uid "39E48827-41EB-F610-FA4F-4E9CF8D8CD91";
	addAttr -dcb 0 -ci true -sn "w0" -ln "EyeLidDownCrv4PosW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" -20.323136732308118 -20.32808828862299 7.3316784132843402 ;
	setAttr ".rsrr" -type "double3" 2.981770013872047e-16 3.0811623476677814e-15 1.9878466759146972e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidLocGrpOffGrp" -p "RightEyeLidRootPoser";
	rename -uid "BFB3ECA4-42E2-B5A5-2D18-DDBDF7E590AD";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightEyeLidLocGrp" -p "RightEyeLidLocGrpOffGrp";
	rename -uid "5F16F52D-469E-804E-07C0-35BCCB648182";
createNode transform -n "RightEyeLidInPos" -p "RightEyeLidLocGrp";
	rename -uid "3D3B63D1-45AC-89A2-D3EA-E1B319C359BB";
createNode locator -n "RightEyeLidInPosShape" -p "RightEyeLidInPos";
	rename -uid "9846C661-48D9-53E0-9FB5-B5A2F240781A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidInLocOffGrp" -p "RightEyeLidInPos";
	rename -uid "C29946EB-4310-9E91-15F9-ACA8A4B8B4A4";
	setAttr ".v" no;
createNode transform -n "RightEyeLidInLoc" -p "RightEyeLidInLocOffGrp";
	rename -uid "E8C7B335-4380-8555-3E33-65815AFF355F";
createNode locator -n "RightEyeLidInLocShape" -p "RightEyeLidInLoc";
	rename -uid "21429AAB-4840-9B0A-FFEE-31AF893CA5FA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "RighteyeLidInEPPosShape" -p "RightEyeLidInLoc";
	rename -uid "3930277B-40FE-D7B8-46F3-A2B05F78F6D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpPos" -p "RightEyeLidLocGrp";
	rename -uid "8D9E8678-449C-DC68-A590-798481B458F0";
createNode locator -n "RightEyeLidUpPosShape" -p "RightEyeLidUpPos";
	rename -uid "189E2261-4D7C-D34C-CEC5-6BAD37F1ED0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidUpLocOffGrp" -p "RightEyeLidUpPos";
	rename -uid "2E691C57-41E5-7FFE-B811-6D800B82D13B";
createNode transform -n "RightEyeLidUpLoc" -p "RightEyeLidUpLocOffGrp";
	rename -uid "6EFA24F9-459C-CD9B-F7D4-B5B1F48EF795";
createNode locator -n "RightEyeLidUpLocShape" -p "RightEyeLidUpLoc";
	rename -uid "A903B4D9-4A60-5127-C7FE-B38D63AE830A";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos2" -p "RightEyeLidUpLoc";
	rename -uid "7906D103-4A22-A194-B4A4-42A751508EC8";
createNode locator -n "RightEyeLidUpCvPos2Shape" -p "RightEyeLidUpCvPos2";
	rename -uid "3F30565E-4638-8F64-880A-618661A13AB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos1" -p "RightEyeLidUpLoc";
	rename -uid "62A50B43-464D-1EA5-91BB-6294FF701F62";
createNode locator -n "RightEyeLidUpCvPos1Shape" -p "RightEyeLidUpCvPos1";
	rename -uid "C5A1DAD5-4ACD-F9EB-9586-E384CF4C9E77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutPos" -p "RightEyeLidLocGrp";
	rename -uid "5A392AFE-48AD-8084-C1C0-929FEBBD5E8C";
createNode locator -n "RightEyeLidOutPosShape" -p "RightEyeLidOutPos";
	rename -uid "B5C5C46C-49C3-0FB7-A6E6-B1876CB74116";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutLocOffGrp" -p "RightEyeLidOutPos";
	rename -uid "14DBC7AA-410C-1993-BE6F-178ABC04057F";
	setAttr ".v" no;
createNode transform -n "RightEyeLidOutLoc" -p "RightEyeLidOutLocOffGrp";
	rename -uid "3E03125F-45FA-0EFF-13AD-CEBDBE1A6975";
createNode locator -n "RightEyeLidOutLocShape" -p "RightEyeLidOutLoc";
	rename -uid "0B710337-41AC-CC00-613F-698AD0F7BB4D";
	setAttr -k off ".v";
createNode locator -n "RighteyeLidOutEPPosShape" -p "RightEyeLidOutLoc";
	rename -uid "1DD034CA-4A25-FB00-9398-2D967DF44AAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownPos" -p "RightEyeLidLocGrp";
	rename -uid "9A820E69-4856-067A-935A-A7AB45456E66";
createNode locator -n "RightEyeLidDownPosShape" -p "RightEyeLidDownPos";
	rename -uid "B51ACF6A-4401-6FC2-D5E8-039A042EFCC1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidDownLocOffGrp" -p "RightEyeLidDownPos";
	rename -uid "953E0DAE-4EDC-92A9-24A5-16A464C4D60E";
createNode transform -n "RightEyeLidDownLoc" -p "RightEyeLidDownLocOffGrp";
	rename -uid "06741E0C-4C50-3B62-4ECE-68BF4F1E1D20";
createNode locator -n "RightEyeLidDownLocShape" -p "RightEyeLidDownLoc";
	rename -uid "D54FF9A2-435D-0EF0-7A46-698EBE73BBF9";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos2" -p "RightEyeLidDownLoc";
	rename -uid "10EF05A2-4A7C-9EA9-C99A-34937C6AC1B0";
createNode locator -n "RightEyeLidDownCvPos2Shape" -p "RightEyeLidDownCvPos2";
	rename -uid "08AE1CEB-42D5-7EBF-E2E7-EB93E8A7C421";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos1" -p "RightEyeLidDownLoc";
	rename -uid "DDCABA52-42FB-4C06-3790-0F94C1E67A3B";
createNode locator -n "RightEyeLidDownCvPos1Shape" -p "RightEyeLidDownCvPos1";
	rename -uid "1C41CF77-4C54-D33C-ABFD-07AE8273076E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "ACC0681F-4547-682B-026E-A1B2641F6DC7";
createNode transform -n "RightEyeLidOutUp1LocGrp" -p "RightEyeLidOutUp1LocOffGrp";
	rename -uid "F1E6444D-4708-E0CF-5ED8-66ADBCE0188E";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp1Pos" -p "RightEyeLidOutUp1LocGrp";
	rename -uid "43EF4429-4893-34E3-263C-D6AB46C70DF2";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp1PosShape" -p "RightEyeLidOutUp1Pos";
	rename -uid "5A33A23B-49DD-A234-163A-87BA716BFE36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp1Loc" -p "RightEyeLidOutUp1Pos";
	rename -uid "E81E92FA-4B80-1A84-7E3C-4690B842C40C";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "RightEyeLidOutUp1LocShape" -p "RightEyeLidOutUp1Loc";
	rename -uid "BCC2FA35-46C8-54F6-1283-9FB636E351E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "5A5D9F7F-459C-811E-8C5F-729F89893159";
createNode transform -n "RightEyeLidOutUp2LocGrp" -p "RightEyeLidOutUp2LocOffGrp";
	rename -uid "C5C3B957-4EFE-3BD0-8D28-1F9176888CC7";
createNode transform -n "RightEyeLidOutUp2Pos" -p "RightEyeLidOutUp2LocGrp";
	rename -uid "E2824D94-4CEB-3D99-C581-F48441C33DB5";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp2PosShape" -p "RightEyeLidOutUp2Pos";
	rename -uid "EF457B95-402A-1675-32FA-039E24A0F6AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2Loc" -p "RightEyeLidOutUp2Pos";
	rename -uid "F9C887A6-4193-CDD4-59EC-EFA14755AD77";
createNode locator -n "RightEyeLidOutUp2LocShape" -p "RightEyeLidOutUp2Loc";
	rename -uid "3C44F77F-4444-7A62-1043-8E8128908333";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos1" -p "RightEyeLidOutUp2Loc";
	rename -uid "0535B727-4C4C-6D9F-CB1F-2DB5FD30BC4F";
createNode locator -n "RightEyeLidOutUp2CvPos1Shape" -p "RightEyeLidOutUp2CvPos1";
	rename -uid "005FE8A8-41F4-5B57-99C1-9AAE1C37918E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos2" -p "RightEyeLidOutUp2Loc";
	rename -uid "BEFC4760-4F2C-C598-F3E9-578386220579";
createNode locator -n "RightEyeLidOutUp2CvPos2Shape" -p "RightEyeLidOutUp2CvPos2";
	rename -uid "1274D6A0-414B-B9DB-0FA4-F58F04675843";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "E9EAF817-444A-E08A-CAE0-6DB5D27A5FD8";
createNode transform -n "RightEyeLidOutUp3LocGrp" -p "RightEyeLidOutUp3LocOffGrp";
	rename -uid "A7B79C56-40B3-D3E1-5CF3-2A89C87B1E08";
createNode transform -n "RightEyeLidOutUp3Pos" -p "RightEyeLidOutUp3LocGrp";
	rename -uid "628CC089-4E33-9508-4DBA-F2B606154F98";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp3PosShape" -p "RightEyeLidOutUp3Pos";
	rename -uid "ED205ED9-4AA4-5AF1-C019-1F967016AEAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp3Loc" -p "RightEyeLidOutUp3Pos";
	rename -uid "0A294642-4D73-D5EB-3C63-6D96AF617BDA";
	setAttr ".v" no;
createNode locator -n "RightEyeLidOutUp3LocShape" -p "RightEyeLidOutUp3Loc";
	rename -uid "791DA292-4E42-82B5-E1FA-47A24D1EB40F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "FCB228BC-4EED-FF67-F1A6-CA8F0C0869AC";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocGrp" -p "RightEyeLidOutDown1LocOffGrp";
	rename -uid "9281B6BC-4094-B3DA-BD2B-CB9B32CEBA04";
createNode transform -n "RightEyeLidOutDown1Pos" -p "RightEyeLidOutDown1LocGrp";
	rename -uid "F7C77A20-426C-434A-69D7-62BC8BF13D2F";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown1PosShape" -p "RightEyeLidOutDown1Pos";
	rename -uid "7CB82D2D-491F-C3A8-32B7-C9892DDA9E5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1Loc" -p "RightEyeLidOutDown1Pos";
	rename -uid "96EB91E5-4B46-6B8C-EF0C-CF96EAB0752A";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDown1LocShape" -p "RightEyeLidOutDown1Loc";
	rename -uid "C016E3A7-4BE6-B68E-1656-79B1B96671A7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "5D80D70B-4E20-E8CA-4382-C895A5D8E680";
createNode transform -n "RightEyeLidOutDown2LocGrp" -p "RightEyeLidOutDown2LocOffGrp";
	rename -uid "87D10CB5-4ABA-A393-75A6-B7A03D681327";
createNode transform -n "RightEyeLidOutDown2Pos" -p "RightEyeLidOutDown2LocGrp";
	rename -uid "9B4508E8-4CFF-0B74-50DE-658FAA7F3C73";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown2PosShape" -p "RightEyeLidOutDown2Pos";
	rename -uid "23F6DCB3-4802-248E-4CF3-1FBFE65D6A63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown2Loc" -p "RightEyeLidOutDown2Pos";
	rename -uid "C4D40AFC-4705-2FDD-D3F7-47982E4CB76E";
createNode locator -n "RightEyeLidOutDown2LocShape" -p "RightEyeLidOutDown2Loc";
	rename -uid "4D10787E-40A2-6DA3-4286-0CAE7559804A";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos1" -p "RightEyeLidOutDown2Loc";
	rename -uid "1E0F2F95-4EE1-AC6D-C686-68BACBD081CD";
createNode locator -n "RightEyeLidOutDown2CvPos1Shape" -p "RightEyeLidOutDown2CvPos1";
	rename -uid "88AF2D97-4880-F473-691B-EDA271FAAC29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2" -p "RightEyeLidOutDown2Loc";
	rename -uid "4388BD7E-441C-0F68-BC8F-ABBB054CB1E1";
createNode locator -n "RightEyeLidOutDown2CvPos2Shape" -p "RightEyeLidOutDown2CvPos2";
	rename -uid "4A1F0FBF-4B1A-A862-7AAD-C7AD5E0EE3BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "8B4993D8-491F-596F-74BF-B1879AB02C9E";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown3LocGrp" -p "RightEyeLidOutDown3LocOffGrp";
	rename -uid "1484BA69-4B71-6756-D113-3B88739AACFC";
createNode transform -n "RightEyeLidOutDown3Pos" -p "RightEyeLidOutDown3LocGrp";
	rename -uid "9CCA2752-40FB-AABA-97CB-8597E4452F43";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown3PosShape" -p "RightEyeLidOutDown3Pos";
	rename -uid "3FACA7F6-4F0F-7760-99C7-4195872E5DBF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown3Loc" -p "RightEyeLidOutDown3Pos";
	rename -uid "838C926C-4BD2-1952-8C07-EBBC7956B32D";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "RightEyeLidOutDown3LocShape" -p "RightEyeLidOutDown3Loc";
	rename -uid "B3F62BB7-41E5-92BC-7AAA-C8BA78B386B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosCrv" -p "RightEyeLidRootPoser";
	rename -uid "E8968FEE-4C53-57DA-110E-1DB8D5BDD9A3";
	setAttr ".t" -type "double3" 0 1.2079226507921706e-13 3.5527121146411737e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShape" -p "RightEyeLidCtrlPosCrv";
	rename -uid "60C240CD-4F6E-1594-2CCF-138E71CCF19A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShapeOrig" -p "RightEyeLidCtrlPosCrv";
	rename -uid "992B7BB2-4BA3-D9B7-BC76-569190EC05DD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.0082783699035645 14.820045471191406 25.113191604614258
		1.0716148614883423 15.266393661499023 25.083902359008789
		1.562730073928833 16.041145324707031 24.903356552124023
		2.4166932106018066 16.323806762695312 24.66486930847168
		3.2652444839477539 16.033849716186523 24.470087051391602
		3.850816011428833 15.308286666870117 24.321054458618164
		3.9740087985992432 14.858072280883789 24.278085708618164
		3.9238643646240234 14.33940315246582 24.320398330688477
		3.3368501663208008 13.541164398193359 24.554609298706055
		2.4046261310577393 13.317789077758789 24.833391189575195
		1.5410475730895996 13.594337463378906 25.023866653442383
		1.058457612991333 14.351093292236328 25.111383438110352
		;
createNode transform -n "EyeLidJntGrp" -p "EyeLidGrp";
	rename -uid "1536F1E9-447F-FEFB-0A68-C6AF23A9F6A3";
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode joint -n "LeftEyeLidOutUp0Jnt" -p "EyeLidJntGrp";
	rename -uid "78C2B6B8-441D-5FA6-2DEA-72AB1E2A37D6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutUp1Jnt" -p "EyeLidJntGrp";
	rename -uid "5FE81D51-42D4-ACE5-F088-E08B257651D0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutUp2Jnt" -p "EyeLidJntGrp";
	rename -uid "7E78D70E-48E7-0788-86C1-80B7EB53A153";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutDown0Jnt" -p "EyeLidJntGrp";
	rename -uid "6E151E9B-463E-8161-6A00-C6B13EDA3DC1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutDown1Jnt" -p "EyeLidJntGrp";
	rename -uid "E2AF22C3-4E10-4D1B-8A1A-4C96BD65E00E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutDown2Jnt" -p "EyeLidJntGrp";
	rename -uid "7644BE0D-4B5F-004B-9290-6889E2257F23";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutUp0Jnt" -p "EyeLidJntGrp";
	rename -uid "437DF3FA-4090-E891-0B62-63B6C907F719";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutUp1Jnt" -p "EyeLidJntGrp";
	rename -uid "716E8FB4-40D1-4989-D291-A1AF5D127BC0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutUp2Jnt" -p "EyeLidJntGrp";
	rename -uid "EEE57294-4A2D-02C3-166B-96AB8BF00C8A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutDown0Jnt" -p "EyeLidJntGrp";
	rename -uid "AF992DFE-4534-D511-A77A-94B42FDCF06B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutDown1Jnt" -p "EyeLidJntGrp";
	rename -uid "593E4944-4AB7-2C03-95BC-36A79F6A5DEF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutDown2Jnt" -p "EyeLidJntGrp";
	rename -uid "9DBC3E42-45CC-CA05-E4C4-E9903D0EFDB6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS";
	rename -uid "4524AF73-4EFB-501E-7C7A-229DA7CF77F5";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS";
	rename -uid "45BDD7C0-4FAE-01A2-5C3F-5B88FF1F16BF";
createNode multiplyDivide -n "LeftEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "CF470748-430C-7AA9-C8EB-D7919F2B0B5E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "2F2AA3B7-4AEC-F8F3-7FE7-C9B6F4199194";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS";
	rename -uid "76CD336D-4AB7-B7BE-0603-7E9311CC5262";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS";
	rename -uid "B9DFB100-4EDB-855C-B413-28A1B42F4841";
createNode multiplyDivide -n "LeftEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "611FFCB0-4261-0AE4-06F4-4AB8AFC7A5E0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS";
	rename -uid "9A8062F2-4508-D57F-FBB7-6E9581D9DA1A";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS";
	rename -uid "CFD99480-4724-3113-1B9D-D0AD0328E1C9";
createNode multiplyDivide -n "LeftEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "EF3FF76A-409D-34CE-6FCB-AEBB610A33DA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS";
	rename -uid "B3351CC5-414C-A4F6-2C19-1DA4183E96CB";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS";
	rename -uid "C6218D00-4648-A728-273C-9CB648C86DB6";
createNode multiplyDivide -n "LeftEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "A9634C10-4673-4310-F7EF-C78B5F248AEF";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS";
	rename -uid "048E8CB5-4948-8098-282D-779A8B1FF796";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS";
	rename -uid "9708CA66-4A02-EF0D-E87D-81BD1E05AAA6";
createNode multiplyDivide -n "LeftEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "7CECDC63-458F-70B0-D5AB-AEB7D19F15A0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS";
	rename -uid "949BF9E6-443C-5C13-D128-41B0A142822A";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS";
	rename -uid "C5A26957-419C-5CC7-672B-748065B888F8";
createNode multiplyDivide -n "LeftEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "957A4D76-451C-273E-E049-F28567BF4ACA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidInLocPS";
	rename -uid "E0E3DFC9-4D98-7B0D-11EC-30BF1444276A";
createNode closestPointOnSurface -n "LeftEyeLidInLocCS";
	rename -uid "979D715B-4DDB-67C5-54DE-5783968B703C";
createNode multiplyDivide -n "LefteyeLidInCtrlRvsMultMD";
	rename -uid "738A8826-47C2-1ACD-5A92-93BA2094099E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "5D172FC6-4BDF-BB4D-1A7C-57A63C6418FE";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpLocPS";
	rename -uid "12F8C8F8-473F-B0EC-8116-0584AB85E39D";
createNode closestPointOnSurface -n "LeftEyeLidUpLocCS";
	rename -uid "A945F4BA-4FA7-31FC-9F41-16A235066C86";
createNode multiplyDivide -n "LeftEyeLidUpCtrlRvsMultMD";
	rename -uid "60858192-4326-5CE0-8ABD-C2A91F483601";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "AF58DB20-442D-F075-5B63-3CB9CB3B4D35";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutLocPS";
	rename -uid "D7B04A0C-4AF2-03DC-E296-DABCC19C8C1C";
createNode closestPointOnSurface -n "LeftEyeLidOutLocCS";
	rename -uid "BD56E1F2-4380-0533-109D-6286781143CE";
createNode multiplyDivide -n "LefteyeLidOutCtrlRvsMultMD";
	rename -uid "ADC3CAC7-416F-453F-BDEC-3A905C4EB7C2";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownLocPS";
	rename -uid "6E78B265-4516-3E56-8C0F-76820EDAECFD";
createNode closestPointOnSurface -n "LeftEyeLidDownLocCS";
	rename -uid "ECE74A0F-4907-E4B8-87CE-BFA57D2E04AC";
createNode multiplyDivide -n "LefteyeLidDownCtrlRvsMultMD";
	rename -uid "6B744A23-47D7-549F-554D-1489839392F5";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "BC004C59-425B-993E-69C3-73A7D696E97D";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode decomposeMatrix -n "LeftEyeLidUp2CtrlPosGrpDM";
	rename -uid "B3EF936D-4F98-CAA8-7971-519C23529455";
createNode multMatrix -n "LeftEyeLidUp2CtrlPosGrpMM";
	rename -uid "524C7937-4D20-AFD9-22C0-B39C5737D876";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0716148614883423 15.266393661499023 25.083902359008789 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999989 0 0 0 0 1 0 -1.0716148614883423 -15.266393661499023 -25.083902359008789 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp2CtrlRvsMultMD";
	rename -uid "7B867648-485A-215B-5037-81AD7B6C8F8E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp3CtrlPosGrpDM";
	rename -uid "1EADE650-48DF-C56C-E88B-1CBDB7044C3E";
createNode multMatrix -n "LeftEyeLidUp3CtrlPosGrpMM";
	rename -uid "F6F77E0E-4130-5FF0-ED18-9B91442B8F6D";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.562730073928833 16.041145324707031 24.903356552124023 1;
	setAttr ".i[2]" -type "matrix" 1 0 1.7763568394002505e-15 0 -1.3877787807814457e-17 1 0 0
		 0 0 1 0 -1.562730073928833 -16.041145324707031 -24.903356552124027 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp3CtrlRvsMultMD";
	rename -uid "9E738104-43D0-76CF-DB0A-C78CBF466DA4";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp4CtrlPosGrpDM";
	rename -uid "C39AA7E8-4EC3-A445-B55E-F8A2DEE4F334";
createNode multMatrix -n "LeftEyeLidUp4CtrlPosGrpMM";
	rename -uid "2C55C4A2-490D-77E2-5D61-82863E11C802";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4166932106018066 16.323806762695312 24.66486930847168 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.6769177786658861e-17 0.99999999999999989 -1.7114691128522261e-16 0
		 -1.3877787807814457e-17 0 1 0 -2.4166932106018062 -16.323806762695312 -24.664869308471676 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp4CtrlRvsMultMD";
	rename -uid "F4ED92D6-48FC-D1D3-5CF7-D5BB2AB68091";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp5CtrlPosGrpDM";
	rename -uid "E8FCA544-41DA-6607-CA33-1CB3ABDB5845";
createNode multMatrix -n "LeftEyeLidUp5CtrlPosGrpMM";
	rename -uid "F7C84B45-4AD3-54BA-540D-E7BEA77CB9F2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.2652444839477539 16.033849716186523 24.470087051391602 1;
	setAttr ".i[2]" -type "matrix" 1 -9.8607613152626476e-32 -8.8817841970012523e-16 0
		 2.2657185044431773e-17 1.0000000000000002 1.6979533786898039e-16 0 0 1.1102230246251565e-16 1 0
		 -3.2652444839477539 -16.033849716186527 -24.470087051391602 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp5CtrlRvsMultMD";
	rename -uid "8E221A96-4B59-1F3E-6EB3-C5850B071D81";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp6CtrlPosGrpDM";
	rename -uid "E438E992-410D-1524-164A-DF8ED34CD513";
createNode multMatrix -n "LeftEyeLidUp6CtrlPosGrpMM";
	rename -uid "00D77B87-4EE5-679E-00CC-C1BCB957AAC4";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.850816011428833 15.308286666870117 24.321054458618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.8508160114288321 -15.308286666870115 -24.321054458618161 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp6CtrlRvsMultMD";
	rename -uid "14C97A79-41F0-26C4-0DB5-0197667677F7";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown2CtrlPosGrpDM";
	rename -uid "55757776-45EB-0B9A-77E9-9E93DAD3E9CD";
createNode multMatrix -n "LeftEyeLidDown2CtrlPosGrpMM";
	rename -uid "75E08B8B-49D0-05D4-A955-96A3B438F825";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.058457612991333 14.351093292236328 25.111383438110352 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 0.99999999999999989 0 0
		 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0584576129913328 -14.351093292236326 -25.111383438110352 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown2CtrlRvsMultMD";
	rename -uid "55F862BF-4E1E-1BA2-F4A8-FF8299DF2DB1";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown3CtrlPosGrpDM";
	rename -uid "818FADEB-46C6-6BCC-0C1C-618083988425";
createNode multMatrix -n "LeftEyeLidDown3CtrlPosGrpMM";
	rename -uid "322D860F-4694-63EA-507F-F594FAA386E4";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.5410475730895996 13.594337463378906 25.023866653442383 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 -1.5410475730895996 -13.594337463378906 -25.023866653442383 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown3CtrlRvsMultMD";
	rename -uid "556A5755-4F75-907E-4D13-3D8B0197F22B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown4CtrlPosGrpDM";
	rename -uid "97725515-4E80-F122-6183-A1B0AA939BCF";
createNode multMatrix -n "LeftEyeLidDown4CtrlPosGrpMM";
	rename -uid "57CDDBBF-4FEC-8E6C-EBC2-ECB776BC55E1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4046261310577393 13.317789077758789 24.833391189575195 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.3928580356146194e-16 -3.9782670549075614e-16 0
		 -2.7755575615628914e-17 0.99999999999999989 0 0 0 0 1 0 -2.4046261310577393 -13.317789077758791 -24.833391189575195 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown4CtrlRvsMultMD";
	rename -uid "CF5A9F17-470D-D023-42CA-E589A643CA20";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown5CtrlPosGrpDM";
	rename -uid "9F747071-4CA3-6BB6-1286-6EAC3CECC52B";
createNode multMatrix -n "LeftEyeLidDown5CtrlPosGrpMM";
	rename -uid "3833A8C5-4411-96B9-985E-BCAC2B6B9127";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.3368501663208008 13.541164398193359 24.554609298706055 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.5168562475543605e-16 1.3630546302049217e-15 0
		 0 0.99999999999999989 0 0 0 0 1 0 -3.3368501663208012 -13.541164398193361 -24.554609298706058 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown5CtrlRvsMultMD";
	rename -uid "49E8B7E1-4393-853E-BF49-40B4C9C89ADE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown6CtrlPosGrpDM";
	rename -uid "584F5529-4201-29EC-5E1C-51B701583C77";
createNode multMatrix -n "LeftEyeLidDown6CtrlPosGrpMM";
	rename -uid "1729D2AD-4A61-E724-9F32-BBBAE71EBAEB";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9238643646240234 14.33940315246582 24.320398330688477 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.9238643646240243 -14.339403152465822 -24.32039833068848 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown6CtrlRvsMultMD";
	rename -uid "8DAB44A3-4F96-2E99-A28A-F1965A2C777A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp1CtrlPosGrpDM";
	rename -uid "8A3ECC54-4A62-70D2-751C-A0A5D3CAC422";
createNode multMatrix -n "LeftEyeLidUp1CtrlPosGrpMM";
	rename -uid "778B762C-4725-68BF-5C8D-FCAD7FE986E5";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0082783699035645 14.820045471191406 25.113191604614258 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 -1.6453555708108474e-15 -2.7881243541265926e-15 -1.2325951644078309e-32
		 0 1 0 0 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0082783699035642 -14.820045471191404 -25.113191604614254 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide1RvsMultMD";
	rename -uid "C7A17718-4734-A95E-8DDA-C3B8D69A7332";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown7CtrlPosGrpDM";
	rename -uid "3F32DEA6-40FF-BC6D-ADE7-959564B89E4C";
createNode multMatrix -n "LeftEyeLidDown7CtrlPosGrpMM";
	rename -uid "7717F767-43F7-0B05-956E-6BBC6D084E36";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9740087985992432 14.858072280883789 24.278085708618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 8.8817841970012523e-16 0 0 1 0 0 0 0 1 0 -3.9740087985992427 -14.858072280883789 -24.278085708618164 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide2RvsMultMD";
	rename -uid "2427DB28-4CF2-CE88-25BF-A2B4931096B3";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp2CtrlPosGrpDM";
	rename -uid "54456177-470B-9333-987C-219E6CFC0B82";
createNode multMatrix -n "RightEyeLidUp2CtrlPosGrpMM";
	rename -uid "917B554B-467B-9A86-F87E-A6AF8410AD2F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0716148614869307 15.266393661499023 25.083902359008849 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 1.6949101745987762e-15 -7.6784108415841052e-16 0
		 0 1 0 0 0 0 1 0 1.0716148614869307 -15.266393661499022 -25.083902359008849 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp2CtrlRvsMultMD";
	rename -uid "27587936-49D8-AAF1-44B0-50901D6A4DEE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp3CtrlPosGrpDM";
	rename -uid "8D4FF683-4F25-542A-686B-3388639EF0C9";
createNode multMatrix -n "RightEyeLidUp3CtrlPosGrpMM";
	rename -uid "CD704019-4EE3-07FA-4B5B-349DEF4A83C0";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5627300739274315 16.041145324707031 24.903356552124112 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.0843618183427545e-17 0.99999999999999989 -1.7280174896636211e-16 0
		 0 1.1102230246251565e-16 1 0 1.5627300739274312 -16.041145324707031 -24.903356552124109 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp3CtrlRvsMultMD";
	rename -uid "4D19C263-4C94-682C-5DA6-B28BBAAEB85E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp4CtrlPosGrpDM";
	rename -uid "E0F68954-4A51-6503-FF24-538A51AA10F4";
createNode multMatrix -n "RightEyeLidUp4CtrlPosGrpMM";
	rename -uid "9B399CB1-4E95-1E4A-B16E-E999820533C4";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4166932106004184 16.323806762695312 24.664869308471815 1;
	setAttr ".i[2]" -type "matrix" 1 -9.0615330587380894e-16 -1.3691752902817888e-15 0
		 0 1 0 0 0 0 1 0 2.4166932106004184 -16.323806762695316 -24.664869308471818 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp4CtrlRvsMultMD";
	rename -uid "21FB6B0E-44B5-B1F5-774C-1E94E7E9F49A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp5CtrlPosGrpDM";
	rename -uid "F4274A30-4629-F4BD-D172-07B7BCF277B7";
createNode multMatrix -n "RightEyeLidUp5CtrlPosGrpMM";
	rename -uid "B2B5900A-4D86-8E8F-26CF-50956D5F41E7";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.2652444839463768 16.033849716186523 24.470087051391786 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 2.2657185044422218e-17 0.99999999999999989 -1.6979533786898167e-16 0
		 0 0 1 0 3.2652444839463768 -16.03384971618652 -24.470087051391786 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp5CtrlRvsMultMD";
	rename -uid "17492DD1-49B0-1B04-266F-10A5881C6D5C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp6CtrlPosGrpDM";
	rename -uid "E9F8F61D-4195-14C6-24F0-90B535BBFB1E";
createNode multMatrix -n "RightEyeLidUp6CtrlPosGrpMM";
	rename -uid "B4D7F336-468D-17A8-5FB4-5FA65EEE4DA8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.8508160114274643 15.308286666870117 24.321054458618381 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999978 8.4978061625607498e-16 1.3500897321560226e-15 0
		 -5.344080749352476e-17 1 3.3752243303900565e-16 0 0 1.1102230246251565e-16 1 0 3.8508160114274643 -15.308286666870119 -24.321054458618384 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp6CtrlRvsMultMD";
	rename -uid "65D91936-4BBF-734A-54D7-998B41629690";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown2CtrlPosGrpDM";
	rename -uid "454A3CFA-4254-B169-FA37-6F894F1369DD";
createNode multMatrix -n "RightEyeLidDown2CtrlPosGrpMM";
	rename -uid "ACCDFC1D-4CC5-C355-70AD-BDA341C5B776";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0584576129899199 14.351093292236328 25.111383438110412 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.3877787807814457e-17 1 0 0 0 0 1 0 1.0584576129899199 -14.35109329223633 -25.111383438110419 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown2CtrlRvsMultMD";
	rename -uid "200E856B-4529-C928-E9BC-41A228DC724C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown3CtrlPosGrpDM";
	rename -uid "AE6D1CFE-4307-E478-31D3-39AD3AAB8837";
createNode multMatrix -n "RightEyeLidDown3CtrlPosGrpMM";
	rename -uid "9C776796-4DBF-BDFC-56CB-9BB9A0643A15";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5410475730881914 13.594337463378906 25.023866653442468 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 1.5410475730881914 -13.594337463378906 -25.023866653442465 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown3CtrlRvsMultMD";
	rename -uid "74823242-4A47-FDCE-12F3-D4972003E64C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown4CtrlPosGrpDM";
	rename -uid "175985B2-4E7F-383B-79D7-F4AF9A78AEAC";
createNode multMatrix -n "RightEyeLidDown4CtrlPosGrpMM";
	rename -uid "A8BF371F-448D-8BCD-59A1-FB879F0CDEA2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4046261310563417 13.317789077758789 24.83339118957533 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.99999999999999989 6.9388939039072284e-18
		 2.4046261310563422 -13.317789077758789 -24.83339118957533 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown4CtrlRvsMultMD";
	rename -uid "A74EFB5A-49C3-8EA7-7D76-3D9251A6542B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown5CtrlPosGrpDM";
	rename -uid "9DDF1298-4694-7099-025A-F28B93B2A4AA";
createNode multMatrix -n "RightEyeLidDown5CtrlPosGrpMM";
	rename -uid "98A1832E-4F87-3147-AFEA-C7B8D96BA718";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.3368501663194188 13.541164398193359 24.554609298706243 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3368501663194188 -13.541164398193359 -24.554609298706243 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown5CtrlRvsMultMD";
	rename -uid "580F4470-4916-CBDA-B159-22932B394C64";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown6CtrlPosGrpDM";
	rename -uid "09348CDC-4F0E-D6BD-935B-C88F9188B66B";
createNode multMatrix -n "RightEyeLidDown6CtrlPosGrpMM";
	rename -uid "D81109A5-48E0-309F-83D1-E09EFE6DE24A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9238643646226548 14.33940315246582 24.320398330688697 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9238643646226548 -14.33940315246582 -24.320398330688697 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown6CtrlRvsMultMD";
	rename -uid "B9DEB2D5-4F20-FEAF-8F4C-D385E726DE34";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp1CtrlPosGrpDM";
	rename -uid "749E76AC-45D9-96A3-7423-FA85526737A1";
createNode multMatrix -n "RightEyeLidUp1CtrlPosGrpMM";
	rename -uid "C3F8C1EE-4D05-B8D9-CE23-F9B77BD390E8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0082783699021511 14.820045471191406 25.113191604614315 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 -1.6453555708108478e-15 -2.7881243541265997e-15 0
		 1.3877787807814457e-17 0.99999999999999989 0 0 0 0 1 0 1.0082783699021511 -14.820045471191408 -25.113191604614318 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp1CtrlRvsMultMD";
	rename -uid "BE398AC4-4873-8AE7-0A78-68BE9B93EBFA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown7CtrlPosGrpDM";
	rename -uid "12A716A1-4810-80DB-9DFB-C39B7A0787A4";
createNode multMatrix -n "RightEyeLidDown7CtrlPosGrpMM";
	rename -uid "DB72EC2E-4E97-0EF0-968A-50A6D2C1DE2B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9740087985978767 14.858072280883789 24.278085708618388 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9740087985978771 -14.858072280883789 -24.278085708618388 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidSide2CtrlRvsMultMD";
	rename -uid "6AC46933-491A-32CC-7454-51A2FBF9652F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS";
	rename -uid "514D4A17-4C4E-1455-68A8-55B7802BA79C";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS";
	rename -uid "FF0D997A-4197-D781-9216-D5A157D906AC";
createNode multiplyDivide -n "RightEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "DAC27231-4E41-611F-9EB8-E9A5286BFAD0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "A1BE5D32-4113-019D-56D6-04A10AC08F8E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS";
	rename -uid "B0736B0F-4F13-D519-55EB-6B92E3B876E6";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS";
	rename -uid "85E37123-4CA2-67F0-E923-9AB433862F43";
createNode multiplyDivide -n "RightEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "80DF6914-42B4-CC3B-86F7-60827DEB3136";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS";
	rename -uid "5D59382C-43AF-81C2-1C28-E18404F6805A";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS";
	rename -uid "F7D5ABDF-4546-E871-3A74-F9804E87B608";
createNode multiplyDivide -n "RightEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "C1B60A12-4D5D-90B1-9867-98AC41DCBB66";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS";
	rename -uid "1510EAC1-44EC-804C-B8BA-F297ACD5609D";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS";
	rename -uid "504B0DBF-4C91-B601-7F39-93BA59D12D6D";
createNode multiplyDivide -n "RightEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "DEE37355-4B93-E3FF-C14A-FA9C1E7E0201";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS";
	rename -uid "BFEFCE90-4460-ABA9-1D6E-248F999ECEB6";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS";
	rename -uid "5C9035A7-4E6B-36D6-F12C-A0A75B9D1B51";
createNode multiplyDivide -n "RightEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "05E5751A-4CCC-FF13-B1A2-B8971B8BE879";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS";
	rename -uid "D85871C5-4925-01D2-10A5-979FFE4006C0";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS";
	rename -uid "5F13AEA1-4C1A-5099-03B0-AEBEF3EC1C5E";
createNode multiplyDivide -n "RightEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "A31B6502-4297-5F60-F4C5-B69B8E5CF748";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidInLocPS";
	rename -uid "C886D808-4342-3960-41EC-CD98D3553928";
createNode closestPointOnSurface -n "RightEyeLidInLocCS";
	rename -uid "B65333B9-4D87-F6D0-0047-0785B88041AF";
createNode multiplyDivide -n "RighteyeLidInCtrlRvsMultMD";
	rename -uid "8997980F-4155-FB12-1162-199223C31158";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "D9DE670C-4A48-7A36-392D-2F84E854E6AD";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidUpLocPS";
	rename -uid "898ACF2B-4512-3829-7417-BA9A57611F7B";
createNode closestPointOnSurface -n "RightEyeLidUpLocCS";
	rename -uid "46D58EA8-4C5A-FC50-CA21-2CBC159E8323";
createNode multiplyDivide -n "RightEyeLidUpCtrlRvsMultMD";
	rename -uid "AAB6E595-47FA-7EFD-E0C5-D19E9A48AF36";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "0AD46DDC-482B-54EF-3823-30A0DF882DD0";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutLocPS";
	rename -uid "348D1E07-49F5-0BA9-1BD5-38ADDB007CD0";
createNode closestPointOnSurface -n "RightEyeLidOutLocCS";
	rename -uid "4CF1B076-4B67-E86B-F7A8-66A365C1AE82";
createNode multiplyDivide -n "RighteyeLidOutCtrlRvsMultMD";
	rename -uid "6B70EA38-420C-442A-9ACC-9E81920FD182";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidDownLocPS";
	rename -uid "EEF07F10-4795-F34B-C774-EFA430044072";
createNode closestPointOnSurface -n "RightEyeLidDownLocCS";
	rename -uid "DAFC0DCA-46B5-BC95-59E7-C98893CE303C";
createNode multiplyDivide -n "RighteyeLidDownCtrlRvsMultMD";
	rename -uid "E4441D1B-4089-3A4E-138F-519677D6ABBD";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "EBF5414E-4180-213B-A7E4-3E84E7B53477";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "LeftEyeLidRootModeRvs";
	rename -uid "A9CD94A0-4340-3114-7732-AFA718203B5B";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl0PosPS";
	rename -uid "F868BD6D-4FCF-EBD5-6135-FBAC330D1E06";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl0PosCS";
	rename -uid "20B7A239-4FAE-1525-7934-5295D343644F";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "075EDD21-4DA8-9E51-1049-1B8C8CCF634C";
createNode multMatrix -n "LeftEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "98CA1A56-4FD0-115D-6F29-35940F163DDD";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp1ZAL";
	rename -uid "60DF0D8E-40CE-0F29-E21C-FE8ECA7522B5";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp1ZML";
	rename -uid "80E5AECF-4FB3-456D-6E67-BCA59A0F356B";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl1PosPS";
	rename -uid "C2CCEA64-451A-8124-6C6F-E68A12CE5079";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl1PosCS";
	rename -uid "20B569BC-4454-BB93-280C-BA883FB2367A";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "545D2888-4BC3-789E-F55E-29A8A3134B11";
createNode multMatrix -n "LeftEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "C77A6F01-416E-53C7-C5A4-1BB17FDD7BB1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.587043409970982 0.48797602631460396 2.5934855848001748 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp2ZAL";
	rename -uid "8840BFA3-4700-6B46-CA51-4B83E2BDF8DA";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp2ZML";
	rename -uid "804C7493-4335-8BD2-F88C-968E758E1082";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl2PosPS";
	rename -uid "6B928B3B-4E50-FCB5-7544-CBB7FA169515";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl2PosCS";
	rename -uid "1EE4E516-4FD0-1AB8-DBC2-75936213A608";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "9998257D-4750-156B-2D16-ED9EAB141114";
createNode multMatrix -n "LeftEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "EEEF4F17-45F1-3EB7-74EF-FDA73CE2EB88";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9031894509306093 1.3252189480909276 2.4528664790148569 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp3ZAL";
	rename -uid "8FB1CBC4-4A16-5A62-52B2-77BD321A4CDE";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp3ZML";
	rename -uid "DDDA1EB4-4072-02DC-4142-9D8970EE1F44";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl3PosPS";
	rename -uid "B872992B-48DA-49BB-FB39-FEB150C6948A";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl3PosCS";
	rename -uid "7E823E0E-4716-F874-6E79-86843CB67D60";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "BA64ACF1-446F-72B1-980B-EDB16D0FC5CF";
createNode multMatrix -n "LeftEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "C5C0EC7B-4AF3-C448-5075-B48FC61D085C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000445700983 1.7755272619269271 2.4140850883153409 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp4ZAL";
	rename -uid "44C8C22F-4ACE-9FA3-E870-02A2AF103C19";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp4ZML";
	rename -uid "305D4939-4253-69BE-A2E8-E8AAC0C8447C";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl4PosPS";
	rename -uid "9D62FF11-45B3-3EC2-B0BB-EFA7AF7C487F";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl4PosCS";
	rename -uid "CB64ECC0-4B2C-4170-7F53-B59623C98065";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "9EE62112-4A0B-CEAA-C97A-69BF1850AE4B";
createNode multMatrix -n "LeftEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "EBEC0D81-43DD-AE71-AF92-0E83F7764E88";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.273982986082383 1.2921419141502111 2.3853931082740627 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp5ZAL";
	rename -uid "5E817995-43F2-3459-66AA-7490BBCBFBED";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp5ZML";
	rename -uid "1A1793B4-4CE7-BEA2-3A79-A4920E219139";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl5PosPS";
	rename -uid "6597613A-47A4-5F7C-0C71-8EA9BCEDD7A7";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl5PosCS";
	rename -uid "50287985-4B34-B261-BFD2-4F94887CB861";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "BB865732-41F5-3ED0-52A7-E6A6ADDF3A3A";
createNode multMatrix -n "LeftEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "4AB50284-4F52-DE09-185D-F69192B49CD2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7634543609654862 0.44871324698002157 2.3804159618505771 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp6ZAL";
	rename -uid "B74ACAB5-4D05-CE06-EACA-52B5F9E2A3A1";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp6ZML";
	rename -uid "AE5C700F-48CC-C041-5A42-3A91B41B9C11";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl6PosPS";
	rename -uid "6AAA26BF-4E6C-56E3-61AA-70B78F76F17F";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl6PosCS";
	rename -uid "DC6D0D41-4B19-7629-5DBB-12841F162B50";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "7472BFF7-49E0-E029-6407-7CA8CD0002D8";
createNode multMatrix -n "LeftEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "00A52553-48AA-067D-32DC-BB8EBD82C4F6";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp7ZAL";
	rename -uid "B4470F42-4C75-AF65-1842-A18FDDB09F3A";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp7ZML";
	rename -uid "B0F67D22-4EA3-37A5-BD61-D189E9E72849";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl0PosPS";
	rename -uid "420303AF-490E-5638-AB31-4293360DAF38";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl0PosCS";
	rename -uid "DEED8D77-4CA4-77E2-7204-AC99F2EE80EC";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "9CCF60A6-4D7F-54EB-49C9-9E88A2DC12E5";
createNode multMatrix -n "LeftEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "35BAE678-4E90-C23C-D393-B9A6E3443130";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown1ZAL";
	rename -uid "177C6FEF-42E9-2909-A349-86B6E186FF8F";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown1ZML";
	rename -uid "4C7495CD-43F7-5F05-B01C-0B942E9415C9";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl1PosPS";
	rename -uid "C3408F91-492F-D78D-F906-C0BEEE60FAAA";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl1PosCS";
	rename -uid "AA06D124-4EF2-BAE8-45CC-94ADE057D184";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "AD7BB384-42EF-A62E-628C-87925AA3B6C7";
createNode multMatrix -n "LeftEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "A6E5D881-46A0-DD79-59FD-DAA7F7499399";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.5910121019054044 -0.46835993238400825 2.5992124607449685 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown2ZAL";
	rename -uid "EB8AB7A4-40AC-23FE-F113-028E63B975BB";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown2ZML";
	rename -uid "5848F038-40A5-CA5E-EFC0-448171A29ABB";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl2PosPS";
	rename -uid "BFA63CDE-41F3-1089-4926-AB8F78DE4236";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl2PosCS";
	rename -uid "5413BFE7-456A-170B-3475-9AB9DFB46DE2";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "9FA7F62C-467F-7ECA-F6C5-F1A473EE15A5";
createNode multMatrix -n "LeftEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "A9D11E34-4319-6230-88B0-F59461F3BDE7";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9054410584200565 -1.2774549718480275 2.4787015409260404 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown3ZAL";
	rename -uid "3DEB6567-47C2-B598-A7E4-87894A41FFBF";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown3ZML";
	rename -uid "0A6AC851-43B2-212D-9D86-A1B957CAF20F";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl3PosPS";
	rename -uid "43D3DCC9-4710-EA59-FFB3-4D8E444CE53E";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl3PosCS";
	rename -uid "08632DF7-4887-13AE-0DCA-24A9BE8715B8";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "4FEC2CA3-48AE-2337-631E-A29AE6B23B21";
createNode multMatrix -n "LeftEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "21990E1D-46C8-B515-33E8-57BB1999B1DE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000277964594 -1.7096859157890627 2.4603377129103148 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown4ZAL";
	rename -uid "0DE516F7-43A0-873D-AD70-17A6120566EA";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown4ZML";
	rename -uid "F045BB59-4096-EFDF-CF66-E7827B0EF70A";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl4PosPS";
	rename -uid "43C24009-495D-BE85-365E-CEB1066D92F3";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl4PosCS";
	rename -uid "D25501C3-46C0-9AB1-8405-79A9FB8AEECC";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "E3898489-4CFB-3C0B-A15E-2C8C056D6D3E";
createNode multMatrix -n "LeftEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "FC31B052-4106-7673-DA95-26B34BCCF3EA";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.3472019913733959 -1.214548023404677 2.3858353840180135 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown5ZAL";
	rename -uid "96A9DCBE-4B68-139A-7CD7-DFBC7C86BBEC";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown5ZML";
	rename -uid "CA8814A8-4B20-E2E6-EDE1-C8BBE07C7D0B";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl5PosPS";
	rename -uid "7017A61B-474C-2DA4-6280-59B9D03BC108";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl5PosCS";
	rename -uid "BBB1009E-4387-39F1-6982-A1BED045612E";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "BE19015D-4E97-C549-D1B7-0289D27307D7";
createNode multMatrix -n "LeftEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "8C3FE9F4-4E86-1BBE-0BC0-E1BFB53F1FCC";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7899324080594177 -0.41762382241756674 2.3666027814698745 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown6ZAL";
	rename -uid "5F151983-4467-556C-4E19-7BA235D495D2";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown6ZML";
	rename -uid "60E2D296-417C-FDB5-9CA9-228CE048146E";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl6PosPS";
	rename -uid "8A7C9D42-4CD7-F1E1-FA09-8098C21AF8D1";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl6PosCS";
	rename -uid "B07B26D5-409A-7CA7-E7C2-D5B701D085D2";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "82ACD4AE-4B12-EB88-3A38-4BABB2E8DE1E";
createNode multMatrix -n "LeftEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "493B445F-47C6-0F71-8CAE-D698C3F6B047";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown7ZAL";
	rename -uid "86849475-41BE-93FA-6763-8A99B7981D50";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown7ZML";
	rename -uid "A4CAADA4-4BF6-B4BA-094F-81B44A1994DD";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS1";
	rename -uid "1193CB5D-4463-6A8A-D89F-C4A62AC97F22";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS1";
	rename -uid "B8882C87-4534-9873-0016-0E89C5A3733F";
createNode multDoubleLinear -n "LeftEyeLidOutUp1CtrlZML";
	rename -uid "09B6DF5C-4C39-3B0A-53AB-2F81D153D794";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2CvPos1PS";
	rename -uid "97CE5780-42DC-6BF6-AD3C-338BA4834A52";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2CvPos1CS";
	rename -uid "DDC4C851-4A4E-6604-2193-949E579C3663";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS1";
	rename -uid "E3A1B8B0-4E5A-1FEC-3AEE-C2AF56AD810F";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS1";
	rename -uid "FE73B67A-4749-1C7A-F28A-8CB7C7C39544";
createNode multDoubleLinear -n "LeftEyeLidOutUp2CtrlZML";
	rename -uid "39AF5F2D-4628-E553-61F6-7DAE4816FA63";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2CvPos2PS";
	rename -uid "EB3160F0-4054-A38B-E8F7-718E5F2524F9";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2CvPos2CS";
	rename -uid "DD43BEED-4A44-BF6F-6991-13B83B16A771";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS1";
	rename -uid "829678B1-4C08-A4CC-3E38-E6827CD5EE11";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS1";
	rename -uid "059936C9-479C-AF9F-9485-C9A785254168";
createNode multDoubleLinear -n "LeftEyeLidOutUp3CtrlZML";
	rename -uid "1B66BC57-420F-77B2-BD03-B29486AE772E";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS1";
	rename -uid "9F578F10-45FA-8643-C3C1-E2863FDA5714";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS1";
	rename -uid "7DE1035E-4C52-49C7-7902-F9A6B6F576D9";
createNode multDoubleLinear -n "LeftEyeLidOutDown1CtrlZML";
	rename -uid "DCAB64E0-482A-25F2-ADE4-FC8F708C69EB";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2CvPos1PS";
	rename -uid "508421D1-4B75-09E0-E0C3-4EBCBB19C1CD";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2CvPos1CS";
	rename -uid "A41991C6-4DFD-93DA-0502-59A931F74C6A";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS1";
	rename -uid "FD69801B-4ADF-4098-D420-87A65FD4C96F";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS1";
	rename -uid "49C86772-45DF-664D-E4E3-06ABC8ABED46";
createNode multDoubleLinear -n "LeftEyeLidOutDown2CtrlZML";
	rename -uid "18B9240E-43F3-6E10-D83A-67B3381DC69B";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2CvPos2PS";
	rename -uid "6BCB281B-4070-4CAA-9587-0F958ED3C5C5";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2CvPos2CS";
	rename -uid "7EB265E6-40E6-8820-B2A4-549F3DAC6406";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS1";
	rename -uid "87CFD205-4022-F011-8817-9A84F65E390B";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS1";
	rename -uid "A808F267-4FC7-35EE-9BFC-D9BEAD897909";
createNode multDoubleLinear -n "LeftEyeLidOutDown3CtrlZML";
	rename -uid "F16D0F90-42FF-25D6-164C-4087DB2E3F63";
	setAttr ".i2" 0.1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC";
	rename -uid "D5AC5B91-4D22-8A76-FF77-E7A5E82BFF27";
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC1";
	rename -uid "B1F6FFA9-4CFD-920A-2E41-0D97C3F1EC88";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC2";
	rename -uid "7A83FEE3-4F9D-58F3-8EE1-F98FBE1E29E3";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC3";
	rename -uid "7FBBBD8C-4768-CEA3-76CE-0BB63155B9D4";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC4";
	rename -uid "817D457D-484D-4E09-5FDF-7D8AE8631AF1";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC5";
	rename -uid "463A96EB-4EA3-76DB-7924-39B42FB1C2F9";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC6";
	rename -uid "74868292-4BD4-7199-F627-728AE6305F4B";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC";
	rename -uid "4383D7B9-486A-02E2-4161-2BABC13B832C";
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC1";
	rename -uid "839BF58B-42A5-3C97-BDD2-61938D4B4D0D";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC2";
	rename -uid "1B6001DF-419C-16EC-8FA9-CD92152CA9AF";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC3";
	rename -uid "7A991E9D-4124-02DC-F5DA-B086E1A843AF";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC4";
	rename -uid "B3ED33D9-4E3D-C64F-DA37-34B54B51C9CF";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC5";
	rename -uid "55D20EA8-4BE5-6540-B88F-FCA0AEDA1924";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC6";
	rename -uid "6F0E9571-47E8-AE08-ADF3-C796B5CDB6BD";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC";
	rename -uid "EF21B037-4579-1312-7586-8499F4F417B7";
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC1";
	rename -uid "B0D6FA3A-4A2E-D38B-F80F-F084BEB281B5";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC2";
	rename -uid "D7BD885E-421C-0670-F732-198918B7C5EB";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC3";
	rename -uid "7AC5FA32-48F1-1779-7967-7DB482FF9053";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC4";
	rename -uid "DC85872F-4E57-0073-C99A-BAAC74AD3517";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC5";
	rename -uid "FB730704-4E12-541A-225D-99BDFC900325";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC6";
	rename -uid "F6C2213D-4E5B-3F60-6DAB-0F94C5D448DD";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC7";
	rename -uid "28CE876E-4B01-BF39-78A0-03BB5E7FC3AC";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC8";
	rename -uid "2835FCB1-4BB9-6F34-F4CC-DEA65A62A6CB";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC9";
	rename -uid "3897AC0F-4D75-9CD7-7BA1-FD95A6A3B6C9";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC10";
	rename -uid "C272200E-4C4D-E4B8-0085-2CB80830B4C3";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC11";
	rename -uid "6D59E951-4D6E-6A63-0D6E-6496C451B3A9";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "3651A37A-49DE-08BA-B9AB-62B5C051E069";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "LeftEyeBallffd";
	rename -uid "341AC43D-4B3E-1C69-78C7-759D8C8D445D";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr ".lo" yes;
createNode objectSet -n "LeftEyeBallffdSet";
	rename -uid "95FA82C5-4780-D2DD-1976-8586299E4FA8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId4";
	rename -uid "CF36E807-413B-2244-D5EC-2DB766853FD1";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts4";
	rename -uid "6ACB83D5-45C8-4629-9563-8D98B9E4E199";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "75D7DFB0-4B12-9E8F-001A-47A49C74ACBE";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode pairBlend -n "LeftEyeLidOutUp1LocOffGrpPB";
	rename -uid "CF24848C-440D-118B-AD39-EFA3F4507105";
	setAttr ".it1" -type "double3" -2 1.5000000000000036 3 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM";
	rename -uid "7ECA0436-4B11-C564-9DEF-9DBC4B18E28F";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM";
	rename -uid "FEA30728-4199-C3B1-5A79-A886BAE61BD8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 0.54835647942961518 16.260246184741497 25.528985512250632 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086522 0.0019534722132144022 0.20693462147916861 0
		 -0.011183456186151377 1.0532215101136295 0.045926110756276457 0 -0.20664143807123239 -0.047227759715844475 1.0327529624704908 0
		 4.9768646151104114 -16.592679297477915 -27.225379163111061 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp1PB";
	rename -uid "4B457AF0-4564-337B-372E-13B20D2459CF";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv2PosDM";
	rename -uid "3D32EFE8-4D33-577D-C736-F7936571F9B2";
createNode multMatrix -n "LeftEyeLidUpCrv2PosMM";
	rename -uid "05254F26-42CB-95DA-C46D-9D8ECA82C8A3";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 5.5511151231257827e-17 -5.5511151231257827e-17 1 0
		 -0.81481482942446304 0.38888879756621209 4.5365341261316416e-08 1;
createNode pairBlend -n "LeftEyeLidOutUp2LocOffGrpPB";
	rename -uid "852F7C8D-4273-78B5-D110-AB90168DE47E";
	setAttr ".it1" -type "double3" -4.4408920985006262e-16 2.5000000000000036 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM";
	rename -uid "B8A75A4C-4EDF-214D-FBE1-8990F1602E42";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM";
	rename -uid "E44BAC57-4C79-A34F-9550-03A5AD7990E2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 2.4102356667335698 17.187682517711139 25.114674612973719 1;
	setAttr ".i[2]" -type "matrix" 1.033771770308652 0.0019534722132150961 0.20693462147916974 0
		 -0.011183456186151281 1.0532215101136295 0.04592611075627602 0 -0.20664143807123234 -0.047227759715844808 1.0327529624704905 0
		 2.8903165613110136 -16.619899584392961 -27.225379163111025 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp2PB";
	rename -uid "455560D8-4773-86E4-9687-C8AB1CEBEA3B";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv3PosDM";
	rename -uid "FFF5720B-4AB5-9679-9260-E0B66F93206F";
createNode multMatrix -n "LeftEyeLidUpCrv3PosMM";
	rename -uid "E5F1BB9F-4CE8-64D8-53A0-F48F7ACC4F58";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9723025562329717e-08 0.99999987671438562 6.1243210058847808e-08 1;
createNode pairBlend -n "LeftEyeLidOutUp3LocOffGrpPB";
	rename -uid "544A86DD-473D-C9F6-FEFA-DA988DCB8C6D";
	setAttr ".it1" -type "double3" 1.9999999999999991 1.4999999999999964 3.0000000000000071 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM";
	rename -uid "A33FD2DB-47CB-9119-5966-768E6C1AEBEC";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM";
	rename -uid "71821158-4501-F29F-901C-F3833905E2FE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 4.2685998653864559 16.220000184508535 24.785343186808156 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086524 0.0019534722132143328 0.2069346214791678 0
		 -0.011183456186151334 1.0532215101136293 0.045926110756276027 0 -0.20664143807123242 -0.047227759715844586 1.032752962470491 0
		 0.65075167464068573 -16.598657814404376 -27.225379163111032 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp3PB";
	rename -uid "36A86F97-4DE8-B67F-3644-B7AE547829C5";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv4PosdM";
	rename -uid "DBB42F55-4376-4186-3F85-118ECD1AD8E3";
createNode multMatrix -n "LeftEyeLidUpCrv4PosMM";
	rename -uid "99001FDE-449C-7B10-B1A0-DBA2E04A06B4";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 -5.5511151231257827e-17 1 0 0.81481480020516628 0.3888887975662112 4.5365341261316416e-08 1;
createNode pairBlend -n "LeftEyeLidOutDown1LocOffGrpPB";
	rename -uid "D5231455-41DC-15DB-B139-4AB435300317";
	setAttr ".it1" -type "double3" -2.0000000000000009 -1.4999999999999964 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM";
	rename -uid "6D81D818-4EB5-92F4-7203-BBA5BB071ED5";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM";
	rename -uid "C7E0FCB9-418B-1335-B780-C1B83F80343F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.1861743517753213 0.041318672721336387 0.9291442483506408 0
		 0.54308399645301142 13.41756818548313 25.656454721917655 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086522 0.0019534722132144161 0.20693462147916863 0
		 -0.011183456186151316 1.0532215101136297 0.045926110756276138 0 -0.20664143807123242 -0.04722775971584442 1.0327529624704912 0
		 4.9404410303819253 -12.33619026425129 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown1PB";
	rename -uid "F1890C91-48B9-DC53-FFEB-8F9079536280";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv2PosDM";
	rename -uid "266BA93A-4422-A176-46BA-4683C340C55A";
createNode multMatrix -n "LeftEyeLidDownCrv2PosMM";
	rename -uid "5122B23B-42FF-1A91-1A04-6ABBDA9793E3";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 5.5511151231257821e-17 0.99999999999999989 0
		 -0.81481481481481532 -0.38888889716560882 6.695968668424257e-09 1;
createNode pairBlend -n "LeftEyeLidOutDown2LocOffGrpPB";
	rename -uid "E156E559-468C-5518-F2B3-9CABE3F06E23";
	setAttr ".it1" -type "double3" 4.4408920985006262e-16 -2.4999999999999982 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM";
	rename -uid "4AE0E832-4F1B-5430-B253-4CB950FAA4E1";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM";
	rename -uid "FE915FA7-4420-FADC-7B64-128A728713CA";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 2.4014481951058979 12.449885852280527 25.327123295752088 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086526 0.0019534722132147214 0.20693462147916727 0
		 -0.011183456186151361 1.0532215101136293 0.045926110756276138 0 -0.20664143807123236 -0.047227759715844475 1.0327529624704908 0
		 2.8903165810340443 -12.342822343681533 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown2PB";
	rename -uid "6C66B59B-4D6E-95C3-919A-B6B3B6230913";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv3PosDM";
	rename -uid "F62FB04D-40FB-54C1-57B0-B0AF192D6DB0";
createNode multMatrix -n "LeftEyeLidDownCrv3PosMM";
	rename -uid "BFCD21F5-4D1D-A202-5F12-A0AC2C901204";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 -6.1629758220391547e-33 0 1 0 -8.3266726748800786e-17 -1.0000000111735723 9.0395575469415235e-09 1;
createNode pairBlend -n "pairBlend1";
	rename -uid "7B317DFB-4893-9293-8287-4CBEDA2C6587";
	setAttr ".it1" -type "double3" 2 -1.4999999999999911 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM";
	rename -uid "749E0FE2-46FA-0702-452C-8FBD34091CA9";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM";
	rename -uid "6B2277DE-47F4-C3FA-9C03-EB820C41C042";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920995 -0.010061500058239737 -0.1859105813606193 0
		 0.0017574943255344805 0.94755933308612206 -0.042489736555673868 0 0.1861743517753213 0.041318672721336387 0.92914424835064069 0
		 4.2633273824098517 13.377322185250172 24.912812396475175 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086524 0.0019534722132144022 0.20693462147916802 0
		 -0.011183456186151325 1.0532215101136297 0.04592611075627652 0 -0.20664143807123239 -0.04722775971584442 1.032752962470491 0
		 0.44292436756764508 -12.384452547242375 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown3PB";
	rename -uid "80F8F85B-477A-5990-CCF3-E6BF0049D590";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv4PosDM";
	rename -uid "472EAED2-492B-D473-6197-AFA72ECF1833";
createNode multMatrix -n "LeftEyeLidDownCrv4PosMM";
	rename -uid "31C49035-4CDE-2488-7D5B-00B4026C0774";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999978 0 0.8148148148148151 -0.38888889716560793 6.6959664479782077e-09 1;
createNode reverse -n "RightEyeLidRootModeRvs";
	rename -uid "40789355-4FDC-EC5E-9FD6-C18C94C2607A";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl0PosPS";
	rename -uid "C86D2652-407B-1844-F201-5A9717D15B21";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl0PosCS";
	rename -uid "BD729FA5-411D-025A-6B14-2D8281BD9E03";
createNode decomposeMatrix -n "RightEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "82849D8D-4C65-C366-6A10-00AA52B5D499";
createNode multMatrix -n "RightEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "ECE79A40-4573-A891-E71D-39A77C2BC969";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp1ZAL";
	rename -uid "39DA2BC4-4898-E50A-6566-3FBC6FD7E4DE";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp1ZML";
	rename -uid "55F9D248-4A2E-B920-A75F-C6A180C28A9F";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl1PosPS";
	rename -uid "3F9EDDF1-4AF9-EB4D-49F1-749F2CAC0836";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl1PosCS";
	rename -uid "5DA33A3B-477E-4F16-E762-0CAA1AA43329";
createNode decomposeMatrix -n "RightEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "10791BA2-4312-C9D2-5D5B-609AC24141B9";
createNode multMatrix -n "RightEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "9C4C80EE-4E28-1B12-06A6-32800D535595";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -1.5870433543837399 0.48797602631153841 2.5934855848005234 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp2ZAL";
	rename -uid "86C11970-41D0-8200-90AB-B1AF4E3F22EB";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp2ZML";
	rename -uid "2C38D3E4-4913-4DC1-0014-228DF496FDBD";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl2PosPS";
	rename -uid "795B7BD8-4172-7BB7-A87F-8FAAA913216C";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl2PosCS";
	rename -uid "88F2B8A2-4100-02FC-E40A-B19CD2AF599B";
createNode decomposeMatrix -n "RightEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "5ED69A88-49B8-BC4B-AD04-EEA5AF85AEFD";
createNode multMatrix -n "RightEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "F7320C92-4F03-FF3B-326A-BE9F8844EF59";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999967 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -1.9031893953450296 1.3252189480875742 2.4528664790155923 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp3ZAL";
	rename -uid "239B291A-4699-BFDA-7F58-8F9110AADF07";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp3ZML";
	rename -uid "8E970D65-4753-DBB9-A19F-40A599525E51";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl3PosPS";
	rename -uid "634D6196-4556-905F-3323-6781076155E3";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl3PosCS";
	rename -uid "2EC6714D-4D8C-A285-3BF6-39B230227826";
createNode decomposeMatrix -n "RightEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "CB638F4A-4BAF-9178-5437-9394624ECB0F";
createNode multMatrix -n "RightEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "E4FE2854-4674-A894-9045-EDBF03136491";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -2.9999999722071293 1.7755272613334676 2.4140850887411993 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp4ZAL";
	rename -uid "6A0C3048-42F2-264A-5820-459F7B3A8BA2";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp4ZML";
	rename -uid "B2D6EC48-4A77-1EA6-5507-85B6507E3206";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl4PosPS";
	rename -uid "6A2D5E6F-4C19-E068-1FD1-6F8AF81770E7";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl4PosCS";
	rename -uid "C08E931C-4A42-DEB5-D22C-419FC5302F43";
createNode decomposeMatrix -n "RightEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "47BD1480-4173-DCDE-00E4-F1909078E923";
createNode multMatrix -n "RightEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "87CEE384-4CDD-6F20-BAAF-258518478180";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.2739829304973034 1.2921419141418244 2.3853931082748776 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp5ZAL";
	rename -uid "7D9EE907-4625-C05B-6B68-E891EC13AD22";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp5ZML";
	rename -uid "44F44DDE-43D4-4135-C22C-89BDF0E93BD3";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl5PosPS";
	rename -uid "4E291ADC-48C3-550A-C721-A18664082ED0";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl5PosCS";
	rename -uid "AED9C94F-4831-6E80-55AE-62A644C3FB55";
createNode decomposeMatrix -n "RightEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "F1DCA61A-4144-9786-60FB-808686878138";
createNode multMatrix -n "RightEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "E4469387-42E0-A4F9-7E5F-A7915C9AEA50";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -4.7634543053784713 0.44871324697028847 2.3804159618510421 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp6ZAL";
	rename -uid "7B6F721D-48F3-4E87-A196-78A9FEBCA60E";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp6ZML";
	rename -uid "914BC210-4C2A-A191-A5A0-B4997F43390F";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl6PosPS";
	rename -uid "54418DF6-4D93-9DF8-8CE6-C1A90513538F";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl6PosCS";
	rename -uid "D4037922-4514-1C5C-AE4E-A9931879B2AF";
createNode decomposeMatrix -n "RightEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "15BA0A2D-4110-1452-175A-74B34E1DF55A";
createNode multMatrix -n "RightEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "E88C96E5-45B3-7A7B-0508-92894525ACCB";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp7ZAL";
	rename -uid "9EE3FEBE-4740-B7E5-AAFC-73A03E844A62";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp7ZML";
	rename -uid "964F7705-4971-A788-4A17-E88782E3B900";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl0PosPS";
	rename -uid "93E58B79-445F-209A-5A11-C58C093465C4";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl0PosCS";
	rename -uid "6F2AE3EE-4B84-1FAD-A3F6-9C89FA7C752E";
createNode decomposeMatrix -n "RightEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "52414A43-4340-ABAB-B4C2-FE838049999D";
createNode multMatrix -n "RightEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "417115FC-41CE-EE38-5EEF-CCA26FD5C92A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidSide1ZAL";
	rename -uid "9E3538A2-4C87-1E7C-7FF6-63B94EE6E028";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown1ZML";
	rename -uid "ACDA4584-423D-8840-4607-F8B17A1AE4A0";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl1PosPS";
	rename -uid "762A7810-405E-CAAD-A6BB-3C8E0E141962";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl1PosCS";
	rename -uid "CF1EA3E3-49D1-06D0-8AFC-84B8F372BCB2";
createNode decomposeMatrix -n "RightEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "235169ED-4A52-0DE3-6AD7-DA9D39AD5453";
createNode multMatrix -n "RightEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "1B2F2F3B-4749-A30C-BD48-E6860229AA1A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575642e-13 0.99999999999999956 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999956 0
		 -1.5910120463163866 -0.46835993238709095 2.5992124607448015 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown2ZAL";
	rename -uid "D4960AA2-48FC-968B-4ADE-01A960C90083";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown2ZML";
	rename -uid "B0CEFB52-4329-AC12-7D2D-DFAD49E056CE";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl2PosPS";
	rename -uid "D672E568-42A9-3F98-0BC8-29929458761A";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl2PosCS";
	rename -uid "672D32DD-46D9-178B-05A1-738D25F1695C";
createNode decomposeMatrix -n "RightEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "3BC79F99-4C52-CA2A-BBCF-4F90EEBF7521";
createNode multMatrix -n "RightEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "681BF9DD-4560-96CB-9F7F-C1AC88408C19";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999956 -3.5682568011452521e-13 -4.0002043607102428e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -1.9054410028294466 -1.2774549718514276 2.4787015409255191 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown3ZAL";
	rename -uid "55E55A1A-41F9-B926-BA39-BF9A12B6B00E";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown3ZML";
	rename -uid "6C9B9896-4585-EABF-BDE0-D58993D70F35";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl3PosPS";
	rename -uid "BCE11006-4E87-8C1C-DB91-A882FDE1C27F";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl3PosCS";
	rename -uid "C5014B8B-481D-592E-D73C-019360E6CDA2";
createNode decomposeMatrix -n "RightEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "B86B75F9-4A55-4ADA-24B7-528A190CB193";
createNode multMatrix -n "RightEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "B78715E8-4082-BA86-612B-EA9E4BA869BC";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -2.9999999722046384 -1.7096859142164216 2.4603377139873359 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown4ZAL";
	rename -uid "7CFD43DF-4477-A71F-7B7E-7FA46561FDB2";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown4ZML";
	rename -uid "DF622C34-4BFF-D527-CF39-CFB58584E36B";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl4PosPS";
	rename -uid "89091F3B-4112-4890-DD9D-4B9312CEC5E6";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl4PosCS";
	rename -uid "E511EAE0-4C38-2A89-0F1D-D4AFCB480E3F";
createNode decomposeMatrix -n "RightEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "453D3F4E-468A-BEBD-2C47-F088E193249A";
createNode multMatrix -n "RightEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "46EC04B9-47F5-1525-2BB0-29AEFF08D5BB";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -4.3472019357823726 -1.2145480234132673 2.385835384017704 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown5ZAL";
	rename -uid "F23A418F-4D5F-B129-BF71-83BFDAA0741F";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown5ZML";
	rename -uid "40B5B590-471F-4F2F-80DD-56AE014872FC";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl5PosPS";
	rename -uid "0B504AEB-4EE4-86AC-1344-73BD982D7698";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl5PosCS";
	rename -uid "BA831CC3-4576-C369-E61C-5F92329409F6";
createNode decomposeMatrix -n "RightEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "0F474C46-4398-7065-509B-528DFBA53453";
createNode multMatrix -n "RightEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "11C0156A-434D-93CB-188A-4E89CC39BDD8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.7899323524702435 -0.41762382242735163 2.3666027814699473 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown6ZAL";
	rename -uid "4981B0CE-435D-4B30-482C-1F824535AECD";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown6ZML";
	rename -uid "397D67B6-424E-615F-4250-449DC1F19C1A";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl6PosPS";
	rename -uid "85033C7F-43A8-A3F7-FD07-768D0A2B271D";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl6PosCS";
	rename -uid "D6E5C015-4EB5-B10C-D50A-B9B993311C95";
createNode decomposeMatrix -n "RightEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "156E9516-4AC0-0634-AAF0-F28472DB6535";
createNode multMatrix -n "RightEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "AC524DC7-4D2A-7219-8C2E-9FABE82AA3E1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown7ZAL";
	rename -uid "9007189A-4772-9672-41BD-CB8ACA9521A3";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown7ZML";
	rename -uid "AE7F924D-4D24-E406-EF45-27BE6316EB7A";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS1";
	rename -uid "E9BFD202-4325-32E4-91E0-F6AEC39F03CC";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS1";
	rename -uid "5B2A7C04-4D81-5704-56DF-BDA43FAB2D36";
createNode multDoubleLinear -n "RightEyeLidOutUp1ZRvs";
	rename -uid "71F93A98-4B57-FB8B-F47D-26B5E30401A4";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2CvPos1PS";
	rename -uid "D099A2CC-471B-9EA2-5BDF-CBAC396F6D70";
createNode closestPointOnSurface -n "RightEyeLidOutUp2CvPos1CS";
	rename -uid "2A3DC5FE-46D3-7B82-2610-7F93118B35E5";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS1";
	rename -uid "F5D54AB6-4D4E-9F1D-D976-57BC2E09ED9E";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS1";
	rename -uid "1998E6D4-43BB-4B3E-177B-6FB3037784F1";
createNode multDoubleLinear -n "RightEyeLidOutUp2ZRvs";
	rename -uid "48416FBD-4275-74F9-7643-18A210F61838";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2CvPos2PS";
	rename -uid "B8F85843-4F9F-ECF2-DA76-31A198C43893";
createNode closestPointOnSurface -n "RightEyeLidOutUp2CvPos2CS";
	rename -uid "E6239E9F-4307-73FD-E2BE-9199503D6302";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS1";
	rename -uid "FDDD7240-48E2-E07D-224B-1297DD1B3734";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS1";
	rename -uid "E881412C-454B-588D-6B99-9DA90023F918";
createNode multDoubleLinear -n "RightEyeLidOutUp3ZRvs";
	rename -uid "54F0B071-4D26-819E-8DA1-A2BA5148F9DF";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS1";
	rename -uid "FC3DB837-4A4B-5D6A-A223-77A34B0F6ACF";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS1";
	rename -uid "662E0F09-46C5-73D1-9AF1-4E94A107722A";
createNode multDoubleLinear -n "RightEyeLidOutDown1ZRvs";
	rename -uid "6B3E6631-49F1-1F30-E7A4-3697DAF459AE";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2CvPos1PS";
	rename -uid "65B47E80-4B5D-1AFB-1D7B-3A85A292F0F1";
createNode closestPointOnSurface -n "RightEyeLidOutDown2CvPos1CS";
	rename -uid "E068D1FD-4BDE-0C65-BE3B-E89021D9EB55";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS1";
	rename -uid "A9C38FF3-4F00-386D-13B5-C6AD89467E68";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS1";
	rename -uid "99480AB8-452B-36C1-A4DC-A88D9DEF5BE7";
createNode multDoubleLinear -n "RightEyeLidOutDown2ZRvs";
	rename -uid "7CAC7B61-4862-EB53-6CD7-EABFC8787146";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2CvPos2PS";
	rename -uid "8FDBF87C-4BBB-3FF2-4266-798FF9883C19";
createNode closestPointOnSurface -n "RightEyeLidOutDown2CvPos2CS";
	rename -uid "73E7C512-466D-7CAA-2054-68A968FFAB8D";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS1";
	rename -uid "5AEC9422-4A7C-BB59-68E7-878E10169D0F";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS1";
	rename -uid "EA920AC2-48BC-A2BA-0F46-B1B4E45CAC17";
createNode multDoubleLinear -n "RightEyeLidOutDown3ZRvs";
	rename -uid "8A5BD1A3-4701-5312-D59C-DB84E53217E5";
	setAttr ".i2" 0.1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC";
	rename -uid "EF638DEA-47AA-17BE-175A-82BBBE317518";
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC1";
	rename -uid "32861BD2-4FB3-CE48-BF5C-A7A3419872CF";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC2";
	rename -uid "8D7E90C7-454D-A986-4DBD-B38F42B51D48";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC3";
	rename -uid "260BD1E0-4CD2-4970-8BE9-F3A9D2DE1288";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC4";
	rename -uid "BF8BD4B4-4E0F-E2F6-A07A-F49742DCCC82";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC5";
	rename -uid "C0271390-4767-F3B2-7B3B-52BBB0CF86A1";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC6";
	rename -uid "86ADD233-4BAF-1472-12E8-20AE39B633DA";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC";
	rename -uid "F6EBCD4F-4088-85D7-0624-15A9603C3AB5";
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC1";
	rename -uid "C88F1338-4673-35E1-BAD6-35B70C683E9A";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC2";
	rename -uid "BD21EC6B-4883-0552-E432-7BAE058C4EBB";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC3";
	rename -uid "816008AC-4376-1F40-F611-86BE71855C38";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC4";
	rename -uid "C0CD1E59-49DF-1E92-8775-6CBE4D198A40";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC5";
	rename -uid "105B17A2-48C2-41C3-361D-A79463C74456";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC6";
	rename -uid "52E1E292-49D5-6222-AC6A-72B1A12F7299";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC";
	rename -uid "63B9C968-4317-6E4D-2F63-E6910311DEF2";
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC1";
	rename -uid "2A616296-4306-014E-C536-158F0229B60D";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC2";
	rename -uid "E8C68BC7-49FF-70FA-FB90-0EAC3CB39DA2";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC3";
	rename -uid "F89E9264-4260-EB2C-EF84-46BC2E2C30FD";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC4";
	rename -uid "010D9245-4BD7-05CD-96A5-4699F2162436";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC5";
	rename -uid "25A6250F-4714-A3EE-4DC1-E1A9A7E35951";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC6";
	rename -uid "E7183DBF-40D3-E310-CD44-5B98FC970B00";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC7";
	rename -uid "8FEE17B9-488B-2FFA-1396-CF97CB7A0E9A";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC8";
	rename -uid "DF168905-46A5-A80A-3319-E5A19DDE1DF6";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC9";
	rename -uid "D5E224D1-484B-A066-BC65-07A187EF585B";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC10";
	rename -uid "06047BCF-4DCC-0295-0A93-ABBB3A46CBEC";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC11";
	rename -uid "11EE210D-4815-F496-834F-FA972E2754C4";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "7C9C9A97-4DE0-8B61-62FF-CABFF7755114";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "RightEyeBallffd";
	rename -uid "B22791F3-41FE-6749-9A46-30B5E5112F5C";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr ".lo" yes;
createNode objectSet -n "RightEyeBallffdSet";
	rename -uid "F9575618-4103-00A1-6F23-2C97C7E2A12F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId5";
	rename -uid "F75AA3AD-4E42-FE3A-7C9D-1685162E07C2";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts5";
	rename -uid "2A772270-4FC7-65DE-AAC9-E28E4317F1C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "7674D39B-4336-2B4B-4C8C-F2895620F4C6";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode pairBlend -n "RightEyeLidOutUp1LocOffGrpPB";
	rename -uid "56311318-4173-F6BB-E056-DC99A6E66C0F";
	setAttr ".it1" -type "double3" -2 1.4999999999999947 3 ;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM";
	rename -uid "1EAE2C16-4A1B-968C-4947-D497424FCC3F";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM";
	rename -uid "0DB65645-4814-2891-F04E-D89ACF374614";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -0.54835644670922168 16.260246184741483 25.528985512250692 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132005522 -0.20693462147905142 -8.6736173798840355e-19
		 -0.011183456186132722 1.0532215101136297 0.045926110756279885 2.1684043449710089e-19
		 -0.20664143807111607 -0.047227759715843587 1.0327529624705145 6.9388939039072284e-18
		 4.9768646489325583 -16.592679297413998 -27.225379156340736 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp1PB";
	rename -uid "0A9720B9-4F7E-2A76-F050-56B4EC075DC9";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv2PosDM";
	rename -uid "9CC606B9-432B-32D5-DB87-4987393CBD4F";
createNode multMatrix -n "RightEyeLidUpCrv2PosMM";
	rename -uid "6467A7EB-4075-2297-8D5A-93B70789F89F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 5.5511151231257827e-17 -5.5511151231257827e-17 1 0
		 -0.81481482942446304 0.38888879756621209 4.5365341261316416e-08 1;
createNode pairBlend -n "pairBlend2";
	rename -uid "7493C11E-4045-F1CF-3EC9-EAB5F633AFD9";
	setAttr ".it1" -type "double3" 0 2.4999999999999947 3.0000000000000036 ;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM";
	rename -uid "E8EA7E40-4AFE-35AA-9273-24BD6A06E319";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM";
	rename -uid "C60C0CF3-417F-C15C-1FD5-E68FEB419126";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -2.4102356340132065 17.18768251771116 25.114674612973989 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132004828 -0.2069346214790509 0
		 -0.011183456186132642 1.0532215101136297 0.045926110756279448 0 -0.20664143807111601 -0.047227759715843365 1.0327529624705143 0
		 2.8903165951331626 -16.619899584329058 -27.225379156340701 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp2PB";
	rename -uid "6CED8FBD-43C2-D1AD-5BE8-23985C704DF0";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv3PosDM";
	rename -uid "36CE7C76-45B8-8381-6B46-74A9CCED003E";
createNode multMatrix -n "RightEyeLidUpCrv3PosMM";
	rename -uid "B9E192F3-44DE-20AA-0A34-29B793D94E73";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9723025562329717e-08 0.99999987671438562 6.1243210058847808e-08 1;
createNode pairBlend -n "RightEyeLidOutUp3LocOffGrpPB";
	rename -uid "A7AD8D7B-4867-55AF-A25A-F1B3B7DFFA46";
	setAttr ".it1" -type "double3" 1.9999999999999982 1.5000000000000018 3.0000000000000178 ;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM";
	rename -uid "A666462E-4503-D01F-66F2-52976284AAE7";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM";
	rename -uid "90D22B74-453A-6828-BD94-088284DFA3CA";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -4.2685998326661458 16.220000184508592 24.785343186808632 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086757 -0.0019534722132008853 -0.20693462147905226 0
		 -0.011183456186132663 1.05322151011363 0.045926110756279837 0 -0.20664143807111601 -0.047227759715843698 1.0327529624705143 0
		 0.65075170846283259 -16.598657814340463 -27.225379156340708 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp3PB";
	rename -uid "83A5D4A7-44C3-898C-35F7-6B98F5E19A18";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv4PosDM";
	rename -uid "B3B7CC1E-40DC-7113-B2CD-2A8A24B60E92";
createNode multMatrix -n "RightEyeLidUpCrv4PosMM";
	rename -uid "7E545220-457D-E081-8B18-F6A69AE4951F";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 -5.5511151231257827e-17 1 0 0.81481480020516628 0.3888887975662112 4.5365341261316416e-08 1;
createNode pairBlend -n "RightEyeLidOutDown1LocOffGrpPB";
	rename -uid "C4016664-4202-2237-26F0-7FBA76FDB1F7";
	setAttr ".it1" -type "double3" -2 -1.5000000000000053 2.9999999999999964 ;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM";
	rename -uid "7113C798-47DE-827F-F5B5-57849268B065";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM";
	rename -uid "5FA0D7BC-4E8D-5987-9C7C-0783B07E9FD7";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521591 0.041318672721339121 0.92914424835066145 0
		 -0.54308396373265477 13.417568185483118 25.656454721917711 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086762 -0.0019534722132005522 -0.20693462147905142 0
		 -0.011183456186132625 1.0532215101136297 0.045926110756279372 0 -0.20664143807111607 -0.047227759715843587 1.0327529624705145 0
		 4.9404410642040704 -12.336190264187373 -27.225379208544361 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown1PB";
	rename -uid "C74C0813-4C77-8413-07D1-08B2DA64D49B";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv2PosDM";
	rename -uid "C8A0B549-452B-8FBB-A54D-068F32C1D86B";
createNode multMatrix -n "RightEyeLidDownCrv2PosMM";
	rename -uid "220FA212-4806-65AC-3FA0-C7A7902BA8DB";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 5.5511151231257821e-17 0.99999999999999989 0
		 -0.81481481481481532 -0.38888889716560882 6.695968668424257e-09 1;
createNode pairBlend -n "RightEyeLidOutDown2LocOffGrpPB";
	rename -uid "7D1E7F37-4D3A-B853-72BE-53A2ABDBA0BA";
	setAttr ".it1" -type "double3" -1.3322676295501878e-15 -2.4999999999999982 3.0000000000000142 ;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM";
	rename -uid "C7E6F00D-405A-C836-D2C4-658900B2A545";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM";
	rename -uid "03BFA023-4ABB-D7F1-22CE-EFA3FE79FCCA";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -2.4014481623855954 12.44988585228055 25.327123295752354 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086755 -0.0019534722132013849 -0.20693462147905289 0
		 -0.011183456186132736 1.05322151011363 0.045926110756279767 0 -0.20664143807111601 -0.047227759715843642 1.0327529624705145 0
		 2.8903166148561898 -12.342822343617623 -27.225379208544371 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown2PB";
	rename -uid "8167F7EB-4BE0-CADC-BF9F-18AAFCB18B64";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv3PosDM";
	rename -uid "1604740E-49FD-2328-700E-83AA7265BD11";
createNode multMatrix -n "RightEyeLidDownCrv3PosMM";
	rename -uid "2F09AB07-4089-D304-5B9D-2E96E78CD29E";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 -6.1629758220391547e-33 0 1 0 -8.3266726748800786e-17 -1.0000000111735723 9.0395575469415235e-09 1;
createNode pairBlend -n "RightEyeLidOutDown3LocOffGrpPB";
	rename -uid "45ECF354-4C3E-E0FD-9C80-469C6A87ECFE";
	setAttr ".it1" -type "double3" 1.9999999999999991 -1.4999999999999947 3.0000000000000142 ;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM";
	rename -uid "1C687A97-415D-0F04-E172-5F8B95DC5613";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM";
	rename -uid "21F66E6E-43E7-865E-584F-1AA9A1DBABA3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923093 -0.010061500058222683 -0.18591058136051444 0
		 -0.001757494325522221 0.94755933308612184 -0.042489736555673209 0 -0.18617435177521591 0.041318672721339121 0.92914424835066134 0
		 -4.2633273496895798 13.377322185250227 24.912812396475651 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132007742 -0.20693462147905092 0
		 -0.011183456186132756 1.0532215101136302 0.045926110756280142 0 -0.20664143807111607 -0.047227759715843698 1.0327529624705147 0
		 0.44292440138979011 -12.384452547178462 -27.225379208544371 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown3PB";
	rename -uid "C60DB1E9-4712-A67D-CE72-A6972D385626";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv4PosDM";
	rename -uid "14F1188E-480B-F9BF-1040-28A9D2546A80";
createNode multMatrix -n "RightEyeLidDownCrv4PosMM";
	rename -uid "0638CBE7-46E5-1623-A35B-80854BAD2BA5";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999978 0 0.8148148148148151 -0.38888889716560793 6.6959664479782077e-09 1;
createNode blendShape -n "EyeLidPosMirrorBS";
	rename -uid "2BEC7FEE-44B6-913E-9ACD-A8A3B77C8A09";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".w[0]"  1;
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".aal" -type "attributeAlias" {"LeftEyeLidCtrlPosCrv","weight[0]"} ;
createNode tweak -n "tweak1";
	rename -uid "04BAAAA3-494C-37E0-6732-2F91B2F9D793";
	setAttr -s 12 ".pl[0].cp[0:11]" -type "double3" -2.2082783532271493 
		-14.820045471191406 -25.113191604613839 -2.271614844811928 -14.666393661499018 -25.083902359008402 
		-2.1627300572524248 -14.841145324707032 -24.903356552123817 -2.4166931939254068 -15.123806762695313 
		-24.664869308471712 -2.6652444672713598 -14.833849716186524 -24.470087051391825 -2.6508159947524441 
		-14.708286666870112 -24.321054458618537 -2.7740087819228556 -14.858072280883789 -24.278085708618583 
		-2.7238643479476345 -14.939403152465825 -24.320398330688853 -2.736850149644404 -14.741164398193359 
		-24.554609298706197 -2.4046261143813341 -14.517789077758788 -24.833391189575057 -2.1410475564131861 
		-14.794337463378906 -25.023866653442056 -2.2584575963149178 -14.951093292236333 -25.111383438109936;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrv0PC";
	rename -uid "730A2710-4273-73D5-9676-4CA8826EBEED";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrv1PC";
	rename -uid "984FAD7A-4A38-E7AA-3C5D-6D98CC0B824F";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrv2PC";
	rename -uid "9BD0F4A1-4433-6A70-8F65-14BFA17C6441";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrv0PC";
	rename -uid "357029C4-4164-9650-A419-9097D96FBC05";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrv1PC";
	rename -uid "21E0CB36-4081-677E-DF77-B2A5474954B4";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrv2PC";
	rename -uid "663AEEC8-47FE-7058-807E-00879B34EACA";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrv0PC";
	rename -uid "B25F6CC1-4EF8-FBB5-C0A3-C089EE36C578";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrv1PC";
	rename -uid "96435003-4D37-32EF-595B-E2AAC5AC30EE";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrv2PC";
	rename -uid "66CE1E3E-4068-DC64-6B3E-4C81763ABB8F";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrv0PC";
	rename -uid "E80B9F91-4E2A-FB70-9FC3-6CB8B496713A";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrv1PC";
	rename -uid "E275FD96-4DC9-1970-F886-918DF4C113D4";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrv2PC";
	rename -uid "D4090E7B-46A9-24B3-6212-A0B384A1282D";
	setAttr ".pr" 1;
	setAttr ".top" yes;
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
	setAttr -s 114 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidOutCtrlGrp.v";
connectAttr "LeftEyeLidOutUp1LocPS.p" "LeftEyeLidOutUp1CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutUp1CtrlPos.r";
connectAttr "LeftEyeLidOutUp1CtrlRvsMultMD.o" "LeftEyeLidOutUp1CtrlRvs.t";
connectAttr "makeNurbCircle8.oc" "LeftEyeLidOutUp1CtrlShape.cr";
connectAttr "LeftEyeLidOutUp2LocPS.p" "LeftEyeLidOutUp2CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutUp2CtrlPos.r";
connectAttr "LeftEyeLidOutUp2CtrlRvsMultMD.o" "LeftEyeLidOutUp2CtrlRvs.t";
connectAttr "LeftEyeLidOutUp3LocPS.p" "LeftEyeLidOutUp3CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutUp3CtrlPos.r";
connectAttr "LeftEyeLidOutUp3CtrlRvsMultMD.o" "LeftEyeLidOutUp3CtrlRvs.t";
connectAttr "LeftEyeLidOutDown1LocPS.p" "LeftEyeLidOutDown1CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutDown1CtrlPos.r";
connectAttr "LeftEyeLidOutDown1CtrlRvsMultMD.o" "LeftEyeLidOutDown1CtrlRvs.t";
connectAttr "LeftEyeLidOutDown2LocPS.p" "LeftEyeLidOutDown2CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutDown2CtrlPos.r";
connectAttr "LeftEyeLidOutDown2CtrlRvsMultMD.o" "LeftEyeLidOutDown2CtrlRvs.t";
connectAttr "LeftEyeLidOutDown3LocPS.p" "LeftEyeLidOutDown3CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutDown3CtrlPos.r";
connectAttr "LeftEyeLidOutDown3CtrlRvsMultMD.o" "LeftEyeLidOutDown3CtrlRvs.t";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidMainCtrlGrp.v";
connectAttr "LeftEyeLidInLocPS.p" "LeftEyeLidInCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidInCtrlPos.r";
connectAttr "LefteyeLidInCtrlRvsMultMD.o" "LeftEyeLidInMainCtrlRvs.t";
connectAttr "makeNurbCircle5.oc" "LeftEyeLidInMainCtrlShape.cr";
connectAttr "LeftEyeLidUpLocPS.p" "LeftEyeLidUpCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUpCtrlPos.r";
connectAttr "LeftEyeLidUpCtrlRvsMultMD.o" "LeftEyeLidUpMainCtrlRvs.t";
connectAttr "makeNurbCircle4.oc" "LeftEyeLidUpMainCtrlShape.cr";
connectAttr "LeftEyeLidOutLocPS.p" "LeftEyeLidOutCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutCtrlPos.r";
connectAttr "LefteyeLidOutCtrlRvsMultMD.o" "LeftEyeLidOutMainCtrlRvs.t";
connectAttr "LeftEyeLidDownLocPS.p" "LeftEyeLidDownCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDownCtrlPos.r";
connectAttr "LefteyeLidDownCtrlRvsMultMD.o" "LeftEyeLidDownMainCtrlRvs.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidCCtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.t" "LeftEyeLidCCtrlGrp.t";
connectAttr "makeNurbCircle6.oc" "LeftEyeLidCCtrlShape.cr";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidSegmentCtrlGrp.v";
connectAttr "LeftEyeLidUp2CtrlPosGrpDM.ot" "LeftEyeLidUp2CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUp2CtrlPosGrp.r";
connectAttr "LeftEyeLidUp2CtrlRvsMultMD.o" "LeftEyeLidUp2CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp3CtrlPosGrpDM.ot" "LeftEyeLidUp3CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUp3CtrlPosGrp.r";
connectAttr "LeftEyeLidUp3CtrlRvsMultMD.o" "LeftEyeLidUp3CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp4CtrlPosGrpDM.ot" "LeftEyeLidUp4CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUp4CtrlPosGrp.r";
connectAttr "LeftEyeLidUp4CtrlRvsMultMD.o" "LeftEyeLidUp4CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp5CtrlPosGrpDM.ot" "LeftEyeLidUp5CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUp5CtrlPosGrp.r";
connectAttr "LeftEyeLidUp5CtrlRvsMultMD.o" "LeftEyeLidUp5CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp6CtrlPosGrpDM.ot" "LeftEyeLidUp6CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUp6CtrlPosGrp.r";
connectAttr "LeftEyeLidUp6CtrlRvsMultMD.o" "LeftEyeLidUp6CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown2CtrlPosGrpDM.ot" "LeftEyeLidDown2CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDown2CtrlPosGrp.r";
connectAttr "LeftEyeLidDown2CtrlRvsMultMD.o" "LeftEyeLidDown2CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown3CtrlPosGrpDM.ot" "LeftEyeLidDown3CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDown3CtrlPosGrp.r";
connectAttr "LeftEyeLidDown3CtrlRvsMultMD.o" "LeftEyeLidDown3CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown4CtrlPosGrpDM.ot" "LeftEyeLidDown4CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDown4CtrlPosGrp.r";
connectAttr "LeftEyeLidDown4CtrlRvsMultMD.o" "LeftEyeLidDown4CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown5CtrlPosGrpDM.ot" "LeftEyeLidDown5CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDown5CtrlPosGrp.r";
connectAttr "LeftEyeLidDown5CtrlRvsMultMD.o" "LeftEyeLidDown5CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown6CtrlPosGrpDM.ot" "LeftEyeLidDown6CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDown6CtrlPosGrp.r";
connectAttr "LeftEyeLidDown6CtrlRvsMultMD.o" "LeftEyeLidDown6CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp1CtrlPosGrpDM.ot" "LeftEyeLidSide1CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidSide1CtrlPosGrp.r";
connectAttr "LeftEyeLidSide1RvsMultMD.o" "LeftEyeLidSide1RvsGrp.t";
connectAttr "LeftEyeLidDown7CtrlPosGrpDM.ot" "LeftEyeLidSide2CtrlPosGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidSide2CtrlPosGrp.r";
connectAttr "LeftEyeLidSide2RvsMultMD.o" "LeftEyeLidSide2CtrlRvsGrp.t";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidSegmentCtrlGrp.v";
connectAttr "RightEyeLidUp2CtrlPosGrpDM.ot" "RightEyeLidUp2CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUp2CtrlGrpGrp.r";
connectAttr "RightEyeLidUp2CtrlRvsMultMD.o" "RightEyeLidUp2CtrlRvsGrp.t";
connectAttr "RightEyeLidUp3CtrlPosGrpDM.ot" "RightEyeLidUp3CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUp3CtrlGrpGrp.r";
connectAttr "RightEyeLidUp3CtrlRvsMultMD.o" "RightEyeLidUp3CtrlRvsGrp.t";
connectAttr "RightEyeLidUp4CtrlPosGrpDM.ot" "RightEyeLidUp4CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUp4CtrlGrpGrp.r";
connectAttr "RightEyeLidUp4CtrlRvsMultMD.o" "RightEyeLidUp4CtrlRvsGrp.t";
connectAttr "RightEyeLidUp5CtrlPosGrpDM.ot" "RightEyeLidUp5CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUp5CtrlGrpGrp.r";
connectAttr "RightEyeLidUp5CtrlRvsMultMD.o" "RightEyeLidUp5CtrlRvsGrp.t";
connectAttr "RightEyeLidUp6CtrlPosGrpDM.ot" "RightEyeLidUp6CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUp6CtrlGrpGrp.r";
connectAttr "RightEyeLidUp6CtrlRvsMultMD.o" "RightEyeLidUp6CtrlRvsGrp.t";
connectAttr "RightEyeLidDown2CtrlPosGrpDM.ot" "RightEyeLidDown2CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDown2CtrlGrpGrp.r";
connectAttr "RightEyeLidDown2CtrlRvsMultMD.o" "RightEyeLidDown2CtrlRvsGrp.t";
connectAttr "RightEyeLidDown3CtrlPosGrpDM.ot" "RightEyeLidDown3CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDown3CtrlGrpGrp.r";
connectAttr "RightEyeLidDown3CtrlRvsMultMD.o" "RightEyeLidDown3CtrlRvsGrp.t";
connectAttr "RightEyeLidDown4CtrlPosGrpDM.ot" "RightEyeLidDown4CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDown4CtrlGrpGrp.r";
connectAttr "RightEyeLidDown4CtrlRvsMultMD.o" "RightEyeLidDown4CtrlRvsGrp.t";
connectAttr "RightEyeLidDown5CtrlPosGrpDM.ot" "RightEyeLidDown5CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDown5CtrlGrpGrp.r";
connectAttr "RightEyeLidDown5CtrlRvsMultMD.o" "RightEyeLidDown5CtrlRvsGrp.t";
connectAttr "RightEyeLidDown6CtrlPosGrpDM.ot" "RightEyeLidDown6CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDown6CtrlGrpGrp.r";
connectAttr "RightEyeLidDown6CtrlRvsMultMD.o" "RightEyeLidDown6CtrlRvsGrp.t";
connectAttr "RightEyeLidUp1CtrlPosGrpDM.ot" "RightEyeLidSide1CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidSide1CtrlGrpGrp.r";
connectAttr "RightEyeLidUp1CtrlRvsMultMD.o" "RightEyeLidSide1CtrlRvsGrp.t";
connectAttr "RightEyeLidDown7CtrlPosGrpDM.ot" "RightEyeLidSide2CtrlPosGrp.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidSide2CtrlGrpGrp.r";
connectAttr "RightEyeLidSide2CtrlRvsMultMD.o" "RightEyeLidSide2CtrlRvsGrp.t";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidOutCtrlGrp.v";
connectAttr "RightEyeLidOutUp1LocPS.p" "RightEyeLidOutUp1CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutUp1CtrlGrp.r";
connectAttr "RightEyeLidOutUp1CtrlRvsMultMD.o" "RightEyeLidOutUp1CtrlRvs.t";
connectAttr "makeNurbCircle13.oc" "RightEyeLidOutUp1CtrlShape.cr";
connectAttr "RightEyeLidOutUp2LocPS.p" "RightEyeLidOutUp2CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutUp2CtrlGrp.r";
connectAttr "RightEyeLidOutUp2CtrlRvsMultMD.o" "RightEyeLidOutUp2CtrlRvs.t";
connectAttr "RightEyeLidOutUp3LocPS.p" "RightEyeLidOutUp3CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutUp3CtrlGrp.r";
connectAttr "RightEyeLidOutUp3CtrlRvsMultMD.o" "RightEyeLidOutUp3CtrlRvs.t";
connectAttr "RightEyeLidOutDown1LocPS.p" "RightEyeLidOutDown1CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutDown1CtrlGrp.r";
connectAttr "RightEyeLidOutDown1CtrlRvsMultMD.o" "RightEyeLidOutDown1CtrlRvs.t";
connectAttr "RightEyeLidOutDown2LocPS.p" "RightEyeLidOutDown2CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutDown2CtrlGrp.r";
connectAttr "RightEyeLidOutDown2CtrlRvsMultMD.o" "RightEyeLidOutDown2CtrlRvs.t";
connectAttr "RightEyeLidOutDown3LocPS.p" "RightEyeLidOutDown3CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutDown3CtrlGrp.r";
connectAttr "RightEyeLidOutDown3CtrlRvsMultMD.o" "RightEyeLidOutDown3CtrlRvs.t";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidMainCtrlGrp.v";
connectAttr "RightEyeLidInLocPS.p" "RightEyeLidInCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidInMainCtrlGrp.r";
connectAttr "RighteyeLidInCtrlRvsMultMD.o" "RightEyeLidInMainCtrlRvs.t";
connectAttr "makeNurbCircle10.oc" "RightEyeLidInMainCtrlShape.cr";
connectAttr "RightEyeLidUpLocPS.p" "RightEyeLidUpCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUpMainCtrlGrp.r";
connectAttr "RightEyeLidUpCtrlRvsMultMD.o" "RightEyeLidUpMainCtrlRvs.t";
connectAttr "makeNurbCircle9.oc" "RightEyeLidUpMainCtrlShape.cr";
connectAttr "RightEyeLidOutLocPS.p" "RightEyeLidOutCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutMainCtrlGrp.r";
connectAttr "RighteyeLidOutCtrlRvsMultMD.o" "RightEyeLidOutMainCtrlRvs.t";
connectAttr "RightEyeLidDownLocPS.p" "RightEyeLidDownCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDownMainCtrlGrp.r";
connectAttr "RighteyeLidDownCtrlRvsMultMD.o" "RightEyeLidDownMainCtrlRvs.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidCCtrlGrp.r";
connectAttr "RightEyeLidRootPoser.t" "RightEyeLidCCtrlGrp.t";
connectAttr "LeftEyeLidCCtrlOffGrp.t" "RightEyeLidCCtrlOffGrp.t";
connectAttr "LeftEyeLidCCtrlOffGrp.r" "RightEyeLidCCtrlOffGrp.r";
connectAttr "makeNurbCircle11.oc" "RightEyeLidCCtrlShape.cr";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidCrvGrp.v";
connectAttr "LeftEyeLidInLocShape.wp" "LeftEyeLidUpCrvShape.cp[0]";
connectAttr "LeftEyeLidInLocShape.wp" "LeftEyeLidUpCrvShape.cp[1]";
connectAttr "LeftEyeLidUpCvPos2Shape.wp" "LeftEyeLidUpCrvShape.cp[2]";
connectAttr "LeftEyeLidUpLocShape.wp" "LeftEyeLidUpCrvShape.cp[3]";
connectAttr "LeftEyeLidUpCvPos1Shape.wp" "LeftEyeLidUpCrvShape.cp[4]";
connectAttr "LeftEyeLidOutLocShape.wp" "LeftEyeLidUpCrvShape.cp[5]";
connectAttr "LeftEyeLidOutLocShape.wp" "LeftEyeLidUpCrvShape.cp[6]";
connectAttr "LefteyeLidInEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[0]";
connectAttr "LefteyeLidInEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[1]";
connectAttr "LeftEyeLidDownCvPos2Shape.wp" "LeftEyeLidDownCrvShape.cp[2]";
connectAttr "LeftEyeLidDownLocShape.wp" "LeftEyeLidDownCrvShape.cp[3]";
connectAttr "LeftEyeLidDownCvPos1Shape.wp" "LeftEyeLidDownCrvShape.cp[4]";
connectAttr "LefteyeLidOutEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[5]";
connectAttr "LefteyeLidOutEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[6]";
connectAttr "LeftEyeLidUp1PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[0]";
connectAttr "LeftEyeLidUp2PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[1]";
connectAttr "LeftEyeLidUp3PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[2]";
connectAttr "LeftEyeLidUp4PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[3]";
connectAttr "LeftEyeLidUp5PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[4]";
connectAttr "LeftEyeLidUp6PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[5]";
connectAttr "LeftEyeLidUp7PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[6]";
connectAttr "LeftEyeLidDown1PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[0]";
connectAttr "LeftEyeLidDown2PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[1]";
connectAttr "LeftEyeLidDown3PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[2]";
connectAttr "LeftEyeLidDown4PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[3]";
connectAttr "LeftEyeLidDown5PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[4]";
connectAttr "LeftEyeLidDown6PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[5]";
connectAttr "LeftEyeLidDown7PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[6]";
connectAttr "LeftEyeLidOutUp1LocShape.wp" "LeftEyeLidOutUpCrvShape.cp[0]";
connectAttr "LeftEyeLidOutUp1LocShape.wp" "LeftEyeLidOutUpCrvShape.cp[1]";
connectAttr "LeftEyeLidOutUp2CvPos1Shape.wp" "LeftEyeLidOutUpCrvShape.cp[2]";
connectAttr "LeftEyeLidOutUp2LocShape.wp" "LeftEyeLidOutUpCrvShape.cp[3]";
connectAttr "LeftEyeLidOutUp2CvPos2Shape.wp" "LeftEyeLidOutUpCrvShape.cp[4]";
connectAttr "LeftEyeLidOutUp3LocShape.wp" "LeftEyeLidOutUpCrvShape.cp[5]";
connectAttr "LeftEyeLidOutUp3LocShape.wp" "LeftEyeLidOutUpCrvShape.cp[6]";
connectAttr "LeftEyeLidOutDown1LocShape.wp" "LeftEyeLidOutDownCrvShape.cp[0]";
connectAttr "LeftEyeLidOutDown1LocShape.wp" "LeftEyeLidOutDownCrvShape.cp[1]";
connectAttr "LeftEyeLidOutDown2CvPos1Shape.wp" "LeftEyeLidOutDownCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidOutDown2LocShape.wp" "LeftEyeLidOutDownCrvShape.cp[3]";
connectAttr "LeftEyeLidOutDown2CvPos2Shape.wp" "LeftEyeLidOutDownCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidOutDown3LocShape.wp" "LeftEyeLidOutDownCrvShape.cp[5]";
connectAttr "LeftEyeLidOutDown3LocShape.wp" "LeftEyeLidOutDownCrvShape.cp[6]";
connectAttr "LeftLeftEyeLidOutUp1LocSurfPosLocShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[0]"
		;
connectAttr "LeftEyeLidOutUp2CvPos1SurfPosLocShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[1]"
		;
connectAttr "LeftLeftEyeLidOutUp2LocSurfPosLocShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidOutUp2CvPos2SurfPosLocShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[3]"
		;
connectAttr "LeftLeftEyeLidOutUp3LocSurfPosLocShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[4]"
		;
connectAttr "LeftLeftEyeLidOutDown1LocSurfPosLocShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[0]"
		;
connectAttr "LeftEyeLidOutDown2CvPos1SurfPosLocShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[1]"
		;
connectAttr "LeftLeftEyeLidOutDown2LocSurfPosLocShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidOutDown2CvPos2SurfPosLocShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[3]"
		;
connectAttr "LeftLeftEyeLidOutDown3LocSurfPosLocShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidUpCtrl0PosPS.p" "LeftEyeLidUpCtrl0PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl0PosSurfPosDM.or" "LeftEyeLidUpCtrl0PosSurfPos.r";
connectAttr "LeftEyeLidUp1ZAL.o" "LeftEyeLidUp1Pos.tz";
connectAttr "LeftEyeLidUpCtrl1PosPS.p" "LeftEyeLidUpCtrl1PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl1PosSurfPosDM.or" "LeftEyeLidUpCtrl1PosSurfPos.r";
connectAttr "LeftEyeLidUp2ZAL.o" "LeftEyeLidUp2Pos.tz";
connectAttr "LeftEyeLidUpCtrl2PosPS.p" "LeftEyeLidUpCtrl2PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl2PosSurfPosDM.or" "LeftEyeLidUpCtrl2PosSurfPos.r";
connectAttr "LeftEyeLidUp3ZAL.o" "LeftEyeLidUp3Pos.tz";
connectAttr "LeftEyeLidUpCtrl3PosPS.p" "LeftEyeLidUpCtrl3PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl3PosSurfPosDM.or" "LeftEyeLidUpCtrl3PosSurfPos.r";
connectAttr "LeftEyeLidUp4ZAL.o" "LeftEyeLidUp4Pos.tz";
connectAttr "LeftEyeLidUpCtrl4PosPS.p" "LeftEyeLidUpCtrl4PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl4PosSurfPosDM.or" "LeftEyeLidUpCtrl4PosSurfPos.r";
connectAttr "LeftEyeLidUp5ZAL.o" "LeftEyeLidUp5Pos.tz";
connectAttr "LeftEyeLidUpCtrl5PosPS.p" "LeftEyeLidUpCtrl5PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl5PosSurfPosDM.or" "LeftEyeLidUpCtrl5PosSurfPos.r";
connectAttr "LeftEyeLidUp6ZAL.o" "LeftEyeLidUp6Pos.tz";
connectAttr "LeftEyeLidUpCtrl6PosPS.p" "LeftEyeLidUpCtrl6PosSurfPos.t";
connectAttr "LeftEyeLidUpCtrl6PosSurfPosDM.or" "LeftEyeLidUpCtrl6PosSurfPos.r";
connectAttr "LeftEyeLidUp7ZAL.o" "LeftEyeLidUp7Pos.tz";
connectAttr "LeftEyeLidDownCtrl0PosPS.p" "LeftEyeLidDownCtrl0PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl0PosSurfPosDM.or" "LeftEyeLidDownCtrl0PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown1ZAL.o" "LeftEyeLidDown1Pos.tz";
connectAttr "LeftEyeLidDownCtrl1PosPS.p" "LeftEyeLidDownCtrl1PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl1PosSurfPosDM.or" "LeftEyeLidDownCtrl1PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown2ZAL.o" "LeftEyeLidDown2Pos.tz";
connectAttr "LeftEyeLidDownCtrl2PosPS.p" "LeftEyeLidDownCtrl2PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl2PosSurfPosDM.or" "LeftEyeLidDownCtrl2PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown3ZAL.o" "LeftEyeLidDown3Pos.tz";
connectAttr "LeftEyeLidDownCtrl3PosPS.p" "LeftEyeLidDownCtrl3PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl3PosSurfPosDM.or" "LeftEyeLidDownCtrl3PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown4ZAL.o" "LeftEyeLidDown4Pos.tz";
connectAttr "LeftEyeLidDownCtrl4PosPS.p" "LeftEyeLidDownCtrl4PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl4PosSurfPosDM.or" "LeftEyeLidDownCtrl4PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown5ZAL.o" "LeftEyeLidDown5Pos.tz";
connectAttr "LeftEyeLidDownCtrl5PosPS.p" "LeftEyeLidDownCtrl5PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl5PosSurfPosDM.or" "LeftEyeLidDownCtrl5PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown6ZAL.o" "LeftEyeLidDown6Pos.tz";
connectAttr "LeftEyeLidDownCtrl6PosPS.p" "LeftEyeLidDownCtrl6PosSurfPos.t";
connectAttr "LeftEyeLidDownCtrl6PosSurfPosDM.or" "LeftEyeLidDownCtrl6PosSurfPos.r"
		;
connectAttr "LeftEyeLidDown7ZAL.o" "LeftEyeLidDown7Pos.tz";
connectAttr "LeftEyeLidOutUp1LocPS1.p" "LeftEyeLidOutUp1LocSurfPos.t";
connectAttr "LeftEyeLidOutUp1CtrlZML.o" "LeftLeftEyeLidOutUp1LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutUp2CvPos1PS.p" "LeftEyeLidOutUp2CvPos1SurfPos.t";
connectAttr "LeftEyeLidOutUp2LocPS1.p" "LeftEyeLidOutUp2LocSurfPos.t";
connectAttr "LeftEyeLidOutUp2CtrlZML.o" "LeftLeftEyeLidOutUp2LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutUp2CvPos2PS.p" "LeftEyeLidOutUp2CvPos2SurfPos.t";
connectAttr "LeftEyeLidOutUp3LocPS1.p" "LeftEyeLidOutUp3LocSurfPos.t";
connectAttr "LeftEyeLidOutUp3CtrlZML.o" "LeftLeftEyeLidOutUp3LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutDown1LocPS1.p" "LeftEyeLidOutDown1LocSurfPos.t";
connectAttr "LeftEyeLidOutDown1CtrlZML.o" "LeftLeftEyeLidOutDown1LocSurfPosLoc.tz"
		;
connectAttr "LeftEyeLidOutDown2CvPos1PS.p" "LeftEyeLidOutDown2CvPos1SurfPos.t";
connectAttr "LeftEyeLidOutDown2LocPS1.p" "LeftEyeLidOutDown2LocSurfPos.t";
connectAttr "LeftEyeLidOutDown2CtrlZML.o" "LeftLeftEyeLidOutDown2LocSurfPosLoc.tz"
		;
connectAttr "LeftEyeLidOutDown2CvPos2PS.p" "LeftEyeLidOutDown2CvPos2SurfPos.t";
connectAttr "LeftEyeLidOutDown3LocPS1.p" "LeftEyeLidOutDown3LocSurfPos.t";
connectAttr "LeftEyeLidOutDown3CtrlZML.o" "LeftLeftEyeLidOutDown3LocSurfPosLoc.tz"
		;
connectAttr "LeftEyeLidUpCrvPC.p" "LeftEyeLidUpCrv0Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv0Pos.r";
connectAttr "LeftEyeLidSide1Ctrl.t" "LeftEyeLidUpCtrl0Pos.t";
connectAttr "LeftEyeLidUpCrvPC1.p" "LeftEyeLidUpCrv1Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv1Pos.r";
connectAttr "LeftEyeLidUp2Ctrl.t" "LeftEyeLidUpCtrl1Pos.t";
connectAttr "LeftEyeLidUpCrvPC2.p" "LeftEyeLidUpCrv2Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv2Pos.r";
connectAttr "LeftEyeLidUp3Ctrl.t" "LeftEyeLidUpCtrl2Pos.t";
connectAttr "LeftEyeLidUpCrvPC3.p" "LeftEyeLidUpCrv3Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv3Pos.r";
connectAttr "LeftEyeLidUp4Ctrl.t" "LeftEyeLidUpCtrl3Pos.t";
connectAttr "LeftEyeLidUpCrvPC4.p" "LeftEyeLidUpCrv4Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv4Pos.r";
connectAttr "LeftEyeLidUp5Ctrl.t" "LeftEyeLidUpCtrl4Pos.t";
connectAttr "LeftEyeLidUpCrvPC5.p" "LeftEyeLidUpCrv5Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv5Pos.r";
connectAttr "LeftEyeLidUp6Ctrl.t" "LeftEyeLidUpCtrl5Pos.t";
connectAttr "LeftEyeLidUpCrvPC6.p" "LeftEyeLidUpCrv6Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidUpCrv6Pos.r";
connectAttr "LeftEyeLidSide2Ctrl.t" "LeftEyeLidUpCtrl6Pos.t";
connectAttr "LeftEyeLidDownCrvPC.p" "LeftEyeLidDownCrv0Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv0Pos.r";
connectAttr "LeftEyeLidSide1Ctrl.t" "LeftEyeLidDownCtrl0Pos.t";
connectAttr "LeftEyeLidDownCrvPC1.p" "LeftEyeLidDownCrv1Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv1Pos.r";
connectAttr "LeftEyeLidDown2Ctrl.t" "LeftEyeLidDownCtrl1Pos.t";
connectAttr "LeftEyeLidDownCrvPC2.p" "LeftEyeLidDownCrv2Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv2Pos.r";
connectAttr "LeftEyeLidDown3Ctrl.t" "LeftEyeLidDownCtrl2Pos.t";
connectAttr "LeftEyeLidDownCrvPC3.p" "LeftEyeLidDownCrv3Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv3Pos.r";
connectAttr "LeftEyeLidDown4Ctrl.t" "LeftEyeLidDownCtrl3Pos.t";
connectAttr "LeftEyeLidDownCrvPC4.p" "LeftEyeLidDownCrv4Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv4Pos.r";
connectAttr "LeftEyeLidDown5Ctrl.t" "LeftEyeLidDownCtrl4Pos.t";
connectAttr "LeftEyeLidDownCrvPC5.p" "LeftEyeLidDownCrv5Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv5Pos.r";
connectAttr "LeftEyeLidDown6Ctrl.t" "LeftEyeLidDownCtrl5Pos.t";
connectAttr "LeftEyeLidDownCrvPC6.p" "LeftEyeLidDownCrv6Pos.t";
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidDownCrv6Pos.r";
connectAttr "LeftEyeLidSide2Ctrl.t" "LeftEyeLidDownCtrl6Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC.p" "LeftEyeLidCtrl0Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC1.p" "LeftEyeLidCtrl1Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC2.p" "LeftEyeLidCtrl2Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC3.p" "LeftEyeLidCtrl3Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC4.p" "LeftEyeLidCtrl4Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC5.p" "LeftEyeLidCtrl5Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC6.p" "LeftEyeLidCtrl6Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC7.p" "LeftEyeLidCtrl7Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC8.p" "LeftEyeLidCtrl8Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC9.p" "LeftEyeLidCtrl9Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC10.p" "LeftEyeLidCtrl10Pos.t";
connectAttr "LeftEyeLidCtrlPosCrvPC11.p" "LeftEyeLidCtrl11Pos.t";
connectAttr "LeftEyeLidRootPoser.sy" "LeftEyeLidRootPoser.sx" -l on;
connectAttr "LeftEyeLidRootPoser.sy" "LeftEyeLidRootPoser.sz" -l on;
connectAttr "makeNurbCircle7.oc" "LeftEyeLidRootPoserShape.cr";
connectAttr "LeftEyeBallffd.og[0]" "LeftEyeBallSurfShape.cr";
connectAttr "ffd1GroupId4.id" "LeftEyeBallSurfShape.iog.og[0].gid";
connectAttr "LeftEyeBallffdSet.mwc" "LeftEyeBallSurfShape.iog.og[0].gco";
connectAttr "makeNurbSphere1.os" "LeftEyeBallSurfShapeOrig.cr";
connectAttr "LeftEyeLidRootPoser.FFD" "LeftEyeBallFFDGrp.v";
connectAttr "LeftEyeLidUp3AimGrp_aimConstraint1.crx" "LeftEyeLidUp3AimGrp.rx";
connectAttr "LeftEyeLidUp3AimGrp_aimConstraint1.cry" "LeftEyeLidUp3AimGrp.ry";
connectAttr "LeftEyeLidUp3AimGrp_aimConstraint1.crz" "LeftEyeLidUp3AimGrp.rz";
connectAttr "LeftEyeLidUp3AimGrp.pim" "LeftEyeLidUp3AimGrp_aimConstraint1.cpim";
connectAttr "LeftEyeLidUp3AimGrp.t" "LeftEyeLidUp3AimGrp_aimConstraint1.ct";
connectAttr "LeftEyeLidUp3AimGrp.rp" "LeftEyeLidUp3AimGrp_aimConstraint1.crp";
connectAttr "LeftEyeLidUp3AimGrp.rpt" "LeftEyeLidUp3AimGrp_aimConstraint1.crt";
connectAttr "LeftEyeLidUp3AimGrp.ro" "LeftEyeLidUp3AimGrp_aimConstraint1.cro";
connectAttr "LeftEyeLidUpCrv2Pos.t" "LeftEyeLidUp3AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidUpCrv2Pos.rp" "LeftEyeLidUp3AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidUpCrv2Pos.rpt" "LeftEyeLidUp3AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidUpCrv2Pos.pm" "LeftEyeLidUp3AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidUp3AimGrp_aimConstraint1.w0" "LeftEyeLidUp3AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeBallFix.wm" "LeftEyeLidUp3AimGrp_aimConstraint1.wum";
connectAttr "LeftEyeLidUp4AimGrp_aimConstraint1.crx" "LeftEyeLidUp4AimGrp.rx";
connectAttr "LeftEyeLidUp4AimGrp_aimConstraint1.cry" "LeftEyeLidUp4AimGrp.ry";
connectAttr "LeftEyeLidUp4AimGrp_aimConstraint1.crz" "LeftEyeLidUp4AimGrp.rz";
connectAttr "LeftEyeLidUp4AimGrp.pim" "LeftEyeLidUp4AimGrp_aimConstraint1.cpim";
connectAttr "LeftEyeLidUp4AimGrp.t" "LeftEyeLidUp4AimGrp_aimConstraint1.ct";
connectAttr "LeftEyeLidUp4AimGrp.rp" "LeftEyeLidUp4AimGrp_aimConstraint1.crp";
connectAttr "LeftEyeLidUp4AimGrp.rpt" "LeftEyeLidUp4AimGrp_aimConstraint1.crt";
connectAttr "LeftEyeLidUp4AimGrp.ro" "LeftEyeLidUp4AimGrp_aimConstraint1.cro";
connectAttr "LeftEyeLidUpCrv3Pos.t" "LeftEyeLidUp4AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidUpCrv3Pos.rp" "LeftEyeLidUp4AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidUpCrv3Pos.rpt" "LeftEyeLidUp4AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidUpCrv3Pos.pm" "LeftEyeLidUp4AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidUp4AimGrp_aimConstraint1.w0" "LeftEyeLidUp4AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeBallFix.wm" "LeftEyeLidUp4AimGrp_aimConstraint1.wum";
connectAttr "LeftEyeLidUp5AimGrp_aimConstraint1.crx" "LeftEyeLidUp5AimGrp.rx";
connectAttr "LeftEyeLidUp5AimGrp_aimConstraint1.cry" "LeftEyeLidUp5AimGrp.ry";
connectAttr "LeftEyeLidUp5AimGrp_aimConstraint1.crz" "LeftEyeLidUp5AimGrp.rz";
connectAttr "LeftEyeLidUp5AimGrp.pim" "LeftEyeLidUp5AimGrp_aimConstraint1.cpim";
connectAttr "LeftEyeLidUp5AimGrp.t" "LeftEyeLidUp5AimGrp_aimConstraint1.ct";
connectAttr "LeftEyeLidUp5AimGrp.rp" "LeftEyeLidUp5AimGrp_aimConstraint1.crp";
connectAttr "LeftEyeLidUp5AimGrp.rpt" "LeftEyeLidUp5AimGrp_aimConstraint1.crt";
connectAttr "LeftEyeLidUp5AimGrp.ro" "LeftEyeLidUp5AimGrp_aimConstraint1.cro";
connectAttr "LeftEyeLidUpCrv4Pos.t" "LeftEyeLidUp5AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidUpCrv4Pos.rp" "LeftEyeLidUp5AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidUpCrv4Pos.rpt" "LeftEyeLidUp5AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidUpCrv4Pos.pm" "LeftEyeLidUp5AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidUp5AimGrp_aimConstraint1.w0" "LeftEyeLidUp5AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeBallFix.wm" "LeftEyeLidUp5AimGrp_aimConstraint1.wum";
connectAttr "LeftEyeLidDown3AimGrp_aimConstraint1.crx" "LeftEyeLidDown3AimGrp.rx"
		;
connectAttr "LeftEyeLidDown3AimGrp_aimConstraint1.cry" "LeftEyeLidDown3AimGrp.ry"
		;
connectAttr "LeftEyeLidDown3AimGrp_aimConstraint1.crz" "LeftEyeLidDown3AimGrp.rz"
		;
connectAttr "LeftEyeLidDown3AimGrp.pim" "LeftEyeLidDown3AimGrp_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidDown3AimGrp.t" "LeftEyeLidDown3AimGrp_aimConstraint1.ct";
connectAttr "LeftEyeLidDown3AimGrp.rp" "LeftEyeLidDown3AimGrp_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidDown3AimGrp.rpt" "LeftEyeLidDown3AimGrp_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidDown3AimGrp.ro" "LeftEyeLidDown3AimGrp_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidDownCrv2Pos.t" "LeftEyeLidDown3AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidDownCrv2Pos.rp" "LeftEyeLidDown3AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidDownCrv2Pos.rpt" "LeftEyeLidDown3AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidDownCrv2Pos.pm" "LeftEyeLidDown3AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidDown3AimGrp_aimConstraint1.w0" "LeftEyeLidDown3AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeBallFix.wm" "LeftEyeLidDown3AimGrp_aimConstraint1.wum";
connectAttr "LeftEyeLidDown4AimGrp_aimConstraint1.crx" "LeftEyeLidDown4AimGrp.rx"
		;
connectAttr "LeftEyeLidDown4AimGrp_aimConstraint1.cry" "LeftEyeLidDown4AimGrp.ry"
		;
connectAttr "LeftEyeLidDown4AimGrp_aimConstraint1.crz" "LeftEyeLidDown4AimGrp.rz"
		;
connectAttr "LeftEyeLidDown4AimGrp.pim" "LeftEyeLidDown4AimGrp_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidDown4AimGrp.t" "LeftEyeLidDown4AimGrp_aimConstraint1.ct";
connectAttr "LeftEyeLidDown4AimGrp.rp" "LeftEyeLidDown4AimGrp_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidDown4AimGrp.rpt" "LeftEyeLidDown4AimGrp_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidDown4AimGrp.ro" "LeftEyeLidDown4AimGrp_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidDownCrv3Pos.t" "LeftEyeLidDown4AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidDownCrv3Pos.rp" "LeftEyeLidDown4AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidDownCrv3Pos.rpt" "LeftEyeLidDown4AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidDownCrv3Pos.pm" "LeftEyeLidDown4AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidDown4AimGrp_aimConstraint1.w0" "LeftEyeLidDown4AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeBallFix.wm" "LeftEyeLidDown4AimGrp_aimConstraint1.wum";
connectAttr "LeftEyeLidDown5AimGrp_aimConstraint1.crx" "LeftEyeLidDown5AimGrp.rx"
		;
connectAttr "LeftEyeLidDown5AimGrp_aimConstraint1.cry" "LeftEyeLidDown5AimGrp.ry"
		;
connectAttr "LeftEyeLidDown5AimGrp_aimConstraint1.crz" "LeftEyeLidDown5AimGrp.rz"
		;
connectAttr "LeftEyeLidDown5AimGrp.pim" "LeftEyeLidDown5AimGrp_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidDown5AimGrp.t" "LeftEyeLidDown5AimGrp_aimConstraint1.ct";
connectAttr "LeftEyeLidDown5AimGrp.rp" "LeftEyeLidDown5AimGrp_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidDown5AimGrp.rpt" "LeftEyeLidDown5AimGrp_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidDown5AimGrp.ro" "LeftEyeLidDown5AimGrp_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidDownCrv4Pos.t" "LeftEyeLidDown5AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidDownCrv4Pos.rp" "LeftEyeLidDown5AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidDownCrv4Pos.rpt" "LeftEyeLidDown5AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidDownCrv4Pos.pm" "LeftEyeLidDown5AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidDown5AimGrp_aimConstraint1.w0" "LeftEyeLidDown5AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeBallFix.wm" "LeftEyeLidDown5AimGrp_aimConstraint1.wum";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidLocGrp.v";
connectAttr "LeftEyeLidCCtrl.t" "LeftEyeLidLocGrp.t";
connectAttr "LeftEyeLidCCtrl.sy" "LeftEyeLidLocGrp.sy";
connectAttr "LeftEyeLidCCtrl.sx" "LeftEyeLidLocGrp.sx";
connectAttr "LeftEyeLidInMainCtrl.t" "LeftEyeLidInLoc.t";
connectAttr "LeftEyeLidInMainCtrl.r" "LeftEyeLidInLoc.r";
connectAttr "LeftEyeLidUpMainCtrl.t" "LeftEyeLidUpLoc.t";
connectAttr "LeftEyeLidUpMainCtrl.r" "LeftEyeLidUpLoc.r";
connectAttr "LeftEyeLidOutMainCtrl.t" "LeftEyeLidOutLoc.t";
connectAttr "LeftEyeLidOutMainCtrl.r" "LeftEyeLidOutLoc.r";
connectAttr "LeftEyeLidDownMainCtrl.t" "LeftEyeLidDownLoc.t";
connectAttr "LeftEyeLidDownMainCtrl.r" "LeftEyeLidDownLoc.r";
connectAttr "LeftEyeLidOutUp1LocOffGrpPB.ot" "LeftEyeLidOutUp1LocOffGrp.t";
connectAttr "LeftEyeLidOutUp1PB.ot" "LeftEyeLidOutUp1LocGrp.t";
connectAttr "LeftEyeLidOutUp1Ctrl.t" "LeftEyeLidOutUp1Loc.t";
connectAttr "LeftEyeLidOutUp1Ctrl.r" "LeftEyeLidOutUp1Loc.r";
connectAttr "LeftEyeLidOutUp2LocOffGrpPB.ot" "LeftEyeLidOutUp2LocOffGrp.t";
connectAttr "LeftEyeLidOutUp2PB.ot" "LeftEyeLidOutUp2LocGrp.t";
connectAttr "LeftEyeLidOutUp2Ctrl.t" "LeftEyeLidOutUp2Loc.t";
connectAttr "LeftEyeLidOutUp2Ctrl.r" "LeftEyeLidOutUp2Loc.r";
connectAttr "LeftEyeLidOutUp3LocOffGrpPB.ot" "LeftEyeLidOutUp3LocOffGrp.t";
connectAttr "LeftEyeLidOutUp3PB.ot" "LeftEyeLidOutUp3LocGrp.t";
connectAttr "LeftEyeLidOutUp3Ctrl.t" "LeftEyeLidOutUp3Loc.t";
connectAttr "LeftEyeLidOutUp3Ctrl.r" "LeftEyeLidOutUp3Loc.r";
connectAttr "LeftEyeLidOutDown1LocOffGrpPB.ot" "LeftEyeLidOutDown1LocOffGrp.t";
connectAttr "LeftEyeLidOutDown1PB.ot" "LeftEyeLidOutDown1LocGrp.t";
connectAttr "LeftEyeLidOutDown1Ctrl.t" "LeftEyeLidOutDown1Loc.t";
connectAttr "LeftEyeLidOutDown1Ctrl.r" "LeftEyeLidOutDown1Loc.r";
connectAttr "LeftEyeLidOutDown2LocOffGrpPB.ot" "LeftEyeLidOutDown2LocOffGrp.t";
connectAttr "LeftEyeLidOutDown2PB.ot" "LeftEyeLidOutDown2LocGrp.t";
connectAttr "LeftEyeLidOutDown2Ctrl.t" "LeftEyeLidOutDown2Loc.t";
connectAttr "LeftEyeLidOutDown2Ctrl.r" "LeftEyeLidOutDown2Loc.r";
connectAttr "pairBlend1.ot" "LeftEyeLidOutDown3LocOffGrp.t";
connectAttr "LeftEyeLidOutDown3PB.ot" "LeftEyeLidOutDown3LocGrp.t";
connectAttr "LeftEyeLidOutDown3Ctrl.t" "LeftEyeLidOutDown3Loc.t";
connectAttr "LeftEyeLidOutDown3Ctrl.r" "LeftEyeLidOutDown3Loc.r";
connectAttr "LeftEyeLidCtrlPosCrvShapeOrig.ws" "LeftEyeLidCtrlPosCrvShape.cr";
connectAttr "RightEyeLidRootModeRvs.ox" "RightEyeLidCrvGrp.v";
connectAttr "RightEyeLidInLocShape.wp" "RightEyeLidUpCrvShape.cp[0]";
connectAttr "RightEyeLidInLocShape.wp" "RightEyeLidUpCrvShape.cp[1]";
connectAttr "RightEyeLidUpCvPos2Shape.wp" "RightEyeLidUpCrvShape.cp[2]";
connectAttr "RightEyeLidUpLocShape.wp" "RightEyeLidUpCrvShape.cp[3]";
connectAttr "RightEyeLidUpCvPos1Shape.wp" "RightEyeLidUpCrvShape.cp[4]";
connectAttr "RightEyeLidOutLocShape.wp" "RightEyeLidUpCrvShape.cp[5]";
connectAttr "RightEyeLidOutLocShape.wp" "RightEyeLidUpCrvShape.cp[6]";
connectAttr "RighteyeLidInEPPosShape.wp" "RightEyeLidDownCrvShape.cp[0]";
connectAttr "RighteyeLidInEPPosShape.wp" "RightEyeLidDownCrvShape.cp[1]";
connectAttr "RightEyeLidDownCvPos2Shape.wp" "RightEyeLidDownCrvShape.cp[2]";
connectAttr "RightEyeLidDownLocShape.wp" "RightEyeLidDownCrvShape.cp[3]";
connectAttr "RightEyeLidDownCvPos1Shape.wp" "RightEyeLidDownCrvShape.cp[4]";
connectAttr "RighteyeLidOutEPPosShape.wp" "RightEyeLidDownCrvShape.cp[5]";
connectAttr "RighteyeLidOutEPPosShape.wp" "RightEyeLidDownCrvShape.cp[6]";
connectAttr "RightEyeLidUp1PosShape.wp" "RightEyeLidUpJntCrvShape.cp[0]";
connectAttr "RightEyeLidUp2PosShape.wp" "RightEyeLidUpJntCrvShape.cp[1]";
connectAttr "RightEyeLidUp3PosShape.wp" "RightEyeLidUpJntCrvShape.cp[2]";
connectAttr "RightEyeLidUp4PosShape.wp" "RightEyeLidUpJntCrvShape.cp[3]";
connectAttr "RightEyeLidUp5PosShape.wp" "RightEyeLidUpJntCrvShape.cp[4]";
connectAttr "RightEyeLidUp6PosShape.wp" "RightEyeLidUpJntCrvShape.cp[5]";
connectAttr "RightEyeLidUp7PosShape.wp" "RightEyeLidUpJntCrvShape.cp[6]";
connectAttr "RightEyeLidDown1PosShape.wp" "RightEyeLidDownJntCrvShape.cp[0]";
connectAttr "RightEyeLidDown2PosShape.wp" "RightEyeLidDownJntCrvShape.cp[1]";
connectAttr "RightEyeLidDown3PosShape.wp" "RightEyeLidDownJntCrvShape.cp[2]";
connectAttr "RightEyeLidDown4PosShape.wp" "RightEyeLidDownJntCrvShape.cp[3]";
connectAttr "RightEyeLidDown5PosShape.wp" "RightEyeLidDownJntCrvShape.cp[4]";
connectAttr "RightEyeLidDown6PosShape.wp" "RightEyeLidDownJntCrvShape.cp[5]";
connectAttr "RightEyeLidDown7PosShape.wp" "RightEyeLidDownJntCrvShape.cp[6]";
connectAttr "RightEyeLidOutUp1LocShape.wp" "RightEyeLidOutUpCrvShape.cp[0]";
connectAttr "RightEyeLidOutUp1LocShape.wp" "RightEyeLidOutUpCrvShape.cp[1]";
connectAttr "RightEyeLidOutUp2CvPos1Shape.wp" "RightEyeLidOutUpCrvShape.cp[2]";
connectAttr "RightEyeLidOutUp2LocShape.wp" "RightEyeLidOutUpCrvShape.cp[3]";
connectAttr "RightEyeLidOutUp2CvPos2Shape.wp" "RightEyeLidOutUpCrvShape.cp[4]";
connectAttr "RightEyeLidOutUp3LocShape.wp" "RightEyeLidOutUpCrvShape.cp[5]";
connectAttr "RightEyeLidOutUp3LocShape.wp" "RightEyeLidOutUpCrvShape.cp[6]";
connectAttr "RightEyeLidOutDown1LocShape.wp" "RightEyeLidOutDownCrvShape.cp[0]";
connectAttr "RightEyeLidOutDown1LocShape.wp" "RightEyeLidOutDownCrvShape.cp[1]";
connectAttr "RightEyeLidOutDown2CvPos1Shape.wp" "RightEyeLidOutDownCrvShape.cp[2]"
		;
connectAttr "RightEyeLidOutDown2LocShape.wp" "RightEyeLidOutDownCrvShape.cp[3]";
connectAttr "RightEyeLidOutDown2CvPos2Shape.wp" "RightEyeLidOutDownCrvShape.cp[4]"
		;
connectAttr "RightEyeLidOutDown3LocShape.wp" "RightEyeLidOutDownCrvShape.cp[5]";
connectAttr "RightEyeLidOutDown3LocShape.wp" "RightEyeLidOutDownCrvShape.cp[6]";
connectAttr "RightEyeLidOutUp1LocSurfPosLocShape.wp" "RightEyeLidOutUpJntCrvShape.cp[0]"
		;
connectAttr "RightEyeLidOutUp2CvPos1SurfPosLocShape.wp" "RightEyeLidOutUpJntCrvShape.cp[1]"
		;
connectAttr "RightEyeLidOutUp2LocSurfPosLocShape.wp" "RightEyeLidOutUpJntCrvShape.cp[2]"
		;
connectAttr "RightEyeLidOutUp2CvPos2SurfPosLocShape.wp" "RightEyeLidOutUpJntCrvShape.cp[3]"
		;
connectAttr "RightEyeLidOutUp3LocSurfPosLocShape.wp" "RightEyeLidOutUpJntCrvShape.cp[4]"
		;
connectAttr "RightEyeLidOutDown1LocSurfPosLocShape.wp" "RightEyeLidOutDownJntCrvShape.cp[0]"
		;
connectAttr "RightEyeLidOutDown2CvPos1SurfPosLocShape.wp" "RightEyeLidOutDownJntCrvShape.cp[1]"
		;
connectAttr "RightEyeLidOutDown2LocSurfPosLocShape.wp" "RightEyeLidOutDownJntCrvShape.cp[2]"
		;
connectAttr "RightEyeLidOutDown2CvPos2SurfPosLocShape.wp" "RightEyeLidOutDownJntCrvShape.cp[3]"
		;
connectAttr "RightEyeLidOutDown3LocSurfPosLocShape.wp" "RightEyeLidOutDownJntCrvShape.cp[4]"
		;
connectAttr "RightEyeLidUpCtrl0PosPS.p" "RightEyeLidUpCtrl0PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl0PosSurfPosDM.or" "RightEyeLidUpCtrl0PosSurfPos.r"
		;
connectAttr "RightEyeLidUp1ZAL.o" "RightEyeLidUp1Pos.tz";
connectAttr "RightEyeLidUpCtrl1PosPS.p" "RightEyeLidUpCtrl1PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl1PosSurfPosDM.or" "RightEyeLidUpCtrl1PosSurfPos.r"
		;
connectAttr "RightEyeLidUp2ZAL.o" "RightEyeLidUp2Pos.tz";
connectAttr "RightEyeLidUpCtrl2PosPS.p" "RightEyeLidUpCtrl2PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl2PosSurfPosDM.or" "RightEyeLidUpCtrl2PosSurfPos.r"
		;
connectAttr "RightEyeLidUp3ZAL.o" "RightEyeLidUp3Pos.tz";
connectAttr "RightEyeLidUpCtrl3PosPS.p" "RightEyeLidUpCtrl3PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl3PosSurfPosDM.or" "RightEyeLidUpCtrl3PosSurfPos.r"
		;
connectAttr "RightEyeLidUp4ZAL.o" "RightEyeLidUp4Pos.tz";
connectAttr "RightEyeLidUpCtrl4PosPS.p" "RightEyeLidUpCtrl4PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl4PosSurfPosDM.or" "RightEyeLidUpCtrl4PosSurfPos.r"
		;
connectAttr "RightEyeLidUp5ZAL.o" "RightEyeLidUp5Pos.tz";
connectAttr "RightEyeLidUpCtrl5PosPS.p" "RightEyeLidUpCtrl5PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl5PosSurfPosDM.or" "RightEyeLidUpCtrl5PosSurfPos.r"
		;
connectAttr "RightEyeLidUp6ZAL.o" "RightEyeLidUp6Pos.tz";
connectAttr "RightEyeLidUpCtrl6PosPS.p" "RightEyeLidUpCtrl6PosSurfPos.t";
connectAttr "RightEyeLidUpCtrl6PosSurfPosDM.or" "RightEyeLidUpCtrl6PosSurfPos.r"
		;
connectAttr "RightEyeLidUp7ZAL.o" "RightEyeLidUp7Pos.tz";
connectAttr "RightEyeLidDownCtrl0PosPS.p" "RightEyeLidDownCtrl0PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl0PosSurfPosDM.or" "RightEyeLidDownCtrl0PosSurfPos.r"
		;
connectAttr "RightEyeLidSide1ZAL.o" "RightEyeLidDown1Pos.tz";
connectAttr "RightEyeLidDownCtrl1PosPS.p" "RightEyeLidDownCtrl1PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl1PosSurfPosDM.or" "RightEyeLidDownCtrl1PosSurfPos.r"
		;
connectAttr "RightEyeLidDown2ZAL.o" "RightEyeLidDown2Pos.tz";
connectAttr "RightEyeLidDownCtrl2PosPS.p" "RightEyeLidDownCtrl2PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl2PosSurfPosDM.or" "RightEyeLidDownCtrl2PosSurfPos.r"
		;
connectAttr "RightEyeLidDown3ZAL.o" "RightEyeLidDown3Pos.tz";
connectAttr "RightEyeLidDownCtrl3PosPS.p" "RightEyeLidDownCtrl3PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl3PosSurfPosDM.or" "RightEyeLidDownCtrl3PosSurfPos.r"
		;
connectAttr "RightEyeLidDown4ZAL.o" "RightEyeLidDown4Pos.tz";
connectAttr "RightEyeLidDownCtrl4PosPS.p" "RightEyeLidDownCtrl4PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl4PosSurfPosDM.or" "RightEyeLidDownCtrl4PosSurfPos.r"
		;
connectAttr "RightEyeLidDown5ZAL.o" "RightEyeLidDown5Pos.tz";
connectAttr "RightEyeLidDownCtrl5PosPS.p" "RightEyeLidDownCtrl5PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl5PosSurfPosDM.or" "RightEyeLidDownCtrl5PosSurfPos.r"
		;
connectAttr "RightEyeLidDown6ZAL.o" "RightEyeLidDown6Pos.tz";
connectAttr "RightEyeLidDownCtrl6PosPS.p" "RightEyeLidDownCtrl6PosSurfPos.t";
connectAttr "RightEyeLidDownCtrl6PosSurfPosDM.or" "RightEyeLidDownCtrl6PosSurfPos.r"
		;
connectAttr "RightEyeLidDown7ZAL.o" "RightEyeLidDown7Pos.tz";
connectAttr "RightEyeLidOutUp1LocPS1.p" "RightEyeLidOutUp1LocSurfPos.t";
connectAttr "RightEyeLidOutUp1ZRvs.o" "RightEyeLidOutUp1LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutUp2CvPos1PS.p" "RightEyeLidOutUp2CvPos1SurfPos.t";
connectAttr "RightEyeLidOutUp2LocPS1.p" "RightEyeLidOutUp2LocSurfPos.t";
connectAttr "RightEyeLidOutUp2ZRvs.o" "RightEyeLidOutUp2LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutUp2CvPos2PS.p" "RightEyeLidOutUp2CvPos2SurfPos.t";
connectAttr "RightEyeLidOutUp3LocPS1.p" "RightEyeLidOutUp3LocSurfPos.t";
connectAttr "RightEyeLidOutUp3ZRvs.o" "RightEyeLidOutUp3LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutDown1LocPS1.p" "RightEyeLidOutDown1LocSurfPos.t";
connectAttr "RightEyeLidOutDown1ZRvs.o" "RightEyeLidOutDown1LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutDown2CvPos1PS.p" "RightEyeLidOutDown2CvPos1SurfPos.t"
		;
connectAttr "RightEyeLidOutDown2LocPS1.p" "RightEyeLidOutDown2LocSurfPos.t";
connectAttr "RightEyeLidOutDown2ZRvs.o" "RightEyeLidOutDown2LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutDown2CvPos2PS.p" "RightEyeLidOutDown2CvPos2SurfPos.t"
		;
connectAttr "RightEyeLidOutDown3LocPS1.p" "RightEyeLidOutDown3LocSurfPos.t";
connectAttr "RightEyeLidOutDown3ZRvs.o" "RightEyeLidOutDown3LocSurfPosLoc.tz";
connectAttr "RightEyeLidUpCrvPC.p" "RightEyeLidUpCrv0Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv0Pos.r";
connectAttr "RightEyeLidSide1Ctrl.t" "RightEyeLidUpCtrl0Pos.t";
connectAttr "RightEyeLidUpCrvPC1.p" "RightEyeLidUpCrv1Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv1Pos.r";
connectAttr "RightEyeLidUp2Ctrl.t" "RightEyeLidUpCtrl1Pos.t";
connectAttr "RightEyeLidUpCrvPC2.p" "RightEyeLidUpCrv2Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv2Pos.r";
connectAttr "RightEyeLidUp3Ctrl.t" "RightEyeLidUpCtrl2Pos.t";
connectAttr "RightEyeLidUpCrvPC3.p" "RightEyeLidUpCrv3Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv3Pos.r";
connectAttr "RightEyeLidUp4Ctrl.t" "RightEyeLidUpCtrl3Pos.t";
connectAttr "RightEyeLidUpCrvPC4.p" "RightEyeLidUpCrv4Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv4Pos.r";
connectAttr "RightEyeLidUp5Ctrl.t" "RightEyeLidUpCtrl4Pos.t";
connectAttr "RightEyeLidUpCrvPC5.p" "RightEyeLidUpCrv5Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv5Pos.r";
connectAttr "RightEyeLidUp6Ctrl.t" "RightEyeLidUpCtrl5Pos.t";
connectAttr "RightEyeLidUpCrvPC6.p" "RightEyeLidUpCrv6Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidUpCrv6Pos.r";
connectAttr "RightEyeLidSide2Ctrl.t" "RightEyeLidUpCtrl6Pos.t";
connectAttr "RightEyeLidDownCrvPC.p" "RightEyeLidDownCrv0Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv0Pos.r";
connectAttr "RightEyeLidSide1Ctrl.t" "RightEyeLidDownCtrl0Pos.t";
connectAttr "RightEyeLidDownCrvPC1.p" "RightEyeLidDownCrv1Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv1Pos.r";
connectAttr "RightEyeLidDown2Ctrl.t" "RightEyeLidDownCtrl1Pos.t";
connectAttr "RightEyeLidDownCrvPC2.p" "RightEyeLidDownCrv2Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv2Pos.r";
connectAttr "RightEyeLidDown3Ctrl.t" "RightEyeLidDownCtrl2Pos.t";
connectAttr "RightEyeLidDownCrvPC3.p" "RightEyeLidDownCrv3Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv3Pos.r";
connectAttr "RightEyeLidDown4Ctrl.t" "RightEyeLidDownCtrl3Pos.t";
connectAttr "RightEyeLidDownCrvPC4.p" "RightEyeLidDownCrv4Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv4Pos.r";
connectAttr "RightEyeLidDown5Ctrl.t" "RightEyeLidDownCtrl4Pos.t";
connectAttr "RightEyeLidDownCrvPC5.p" "RightEyeLidDownCrv5Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv5Pos.r";
connectAttr "RightEyeLidDown6Ctrl.t" "RightEyeLidDownCtrl5Pos.t";
connectAttr "RightEyeLidDownCrvPC6.p" "RightEyeLidDownCrv6Pos.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidDownCrv6Pos.r";
connectAttr "RightEyeLidSide2Ctrl.t" "RightEyeLidDownCtrl6Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC.p" "RightEyeLidCtrl0Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC1.p" "RightEyeLidCtrl1Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC2.p" "RightEyeLidCtrl2Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC3.p" "RightEyeLidCtrl3Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC4.p" "RightEyeLidCtrl4Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC5.p" "RightEyeLidCtrl5Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC6.p" "RightEyeLidCtrl6Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC7.p" "RightEyeLidCtrl7Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC8.p" "RightEyeLidCtrl8Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC9.p" "RightEyeLidCtrl9Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC10.p" "RightEyeLidCtrl10Pos.t";
connectAttr "RightEyeLidCtrlPosCrvPC11.p" "RightEyeLidCtrl11Pos.t";
connectAttr "RightEyeLidRootPoser.sy" "RightEyeLidRootPoser.sx" -l on;
connectAttr "RightEyeLidRootPoser.sy" "RightEyeLidRootPoser.sz" -l on;
connectAttr "LeftEyeLidRootPoser.sy" "RightEyeLidRootPoser.sy";
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidRootPoser.mode";
connectAttr "LeftEyeLidRootPoser.FFD" "RightEyeLidRootPoser.FFD";
connectAttr "LeftEyeLidRootPoser.r" "RightEyeLidRootPoser.r";
connectAttr "LeftEyeLidRootPoser.t" "RightEyeLidRootPoser.t";
connectAttr "makeNurbCircle12.oc" "RightEyeLidRootPoserShape.cr";
connectAttr "RightEyeBallffd.og[0]" "RightEyeBallSurfShape.cr";
connectAttr "ffd1GroupId5.id" "RightEyeBallSurfShape.iog.og[0].gid";
connectAttr "RightEyeBallffdSet.mwc" "RightEyeBallSurfShape.iog.og[0].gco";
connectAttr "makeNurbSphere2.os" "RightEyeBallSurfShapeOrig.cr";
connectAttr "RightEyeLidRootPoser.FFD" "RightEyeBallFFDGrp.v";
connectAttr "RightEyeLidUp3AimGrp_aimConstraint1.crx" "RightEyeLidUp3AimGrp.rx";
connectAttr "RightEyeLidUp3AimGrp_aimConstraint1.cry" "RightEyeLidUp3AimGrp.ry";
connectAttr "RightEyeLidUp3AimGrp_aimConstraint1.crz" "RightEyeLidUp3AimGrp.rz";
connectAttr "RightEyeLidUp3AimGrp.pim" "RightEyeLidUp3AimGrp_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidUp3AimGrp.t" "RightEyeLidUp3AimGrp_aimConstraint1.ct";
connectAttr "RightEyeLidUp3AimGrp.rp" "RightEyeLidUp3AimGrp_aimConstraint1.crp";
connectAttr "RightEyeLidUp3AimGrp.rpt" "RightEyeLidUp3AimGrp_aimConstraint1.crt"
		;
connectAttr "RightEyeLidUp3AimGrp.ro" "RightEyeLidUp3AimGrp_aimConstraint1.cro";
connectAttr "RightEyeLidUpCrv2Pos.t" "RightEyeLidUp3AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidUpCrv2Pos.rp" "RightEyeLidUp3AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidUpCrv2Pos.rpt" "RightEyeLidUp3AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidUpCrv2Pos.pm" "RightEyeLidUp3AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidUp3AimGrp_aimConstraint1.w0" "RightEyeLidUp3AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeBallFix.wm" "RightEyeLidUp3AimGrp_aimConstraint1.wum";
connectAttr "RightEyeLidUp4AimGrp_aimConstraint1.crx" "RightEyeLidUp4AimGrp.rx";
connectAttr "RightEyeLidUp4AimGrp_aimConstraint1.cry" "RightEyeLidUp4AimGrp.ry";
connectAttr "RightEyeLidUp4AimGrp_aimConstraint1.crz" "RightEyeLidUp4AimGrp.rz";
connectAttr "RightEyeLidUp4AimGrp.pim" "RightEyeLidUp4AimGrp_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidUp4AimGrp.t" "RightEyeLidUp4AimGrp_aimConstraint1.ct";
connectAttr "RightEyeLidUp4AimGrp.rp" "RightEyeLidUp4AimGrp_aimConstraint1.crp";
connectAttr "RightEyeLidUp4AimGrp.rpt" "RightEyeLidUp4AimGrp_aimConstraint1.crt"
		;
connectAttr "RightEyeLidUp4AimGrp.ro" "RightEyeLidUp4AimGrp_aimConstraint1.cro";
connectAttr "RightEyeLidUpCrv3Pos.t" "RightEyeLidUp4AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidUpCrv3Pos.rp" "RightEyeLidUp4AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidUpCrv3Pos.rpt" "RightEyeLidUp4AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidUpCrv3Pos.pm" "RightEyeLidUp4AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidUp4AimGrp_aimConstraint1.w0" "RightEyeLidUp4AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeBallFix.wm" "RightEyeLidUp4AimGrp_aimConstraint1.wum";
connectAttr "RightEyeLidUp5AimGrp_aimConstraint1.crx" "RightEyeLidUp5AimGrp.rx";
connectAttr "RightEyeLidUp5AimGrp_aimConstraint1.cry" "RightEyeLidUp5AimGrp.ry";
connectAttr "RightEyeLidUp5AimGrp_aimConstraint1.crz" "RightEyeLidUp5AimGrp.rz";
connectAttr "RightEyeLidUp5AimGrp.pim" "RightEyeLidUp5AimGrp_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidUp5AimGrp.t" "RightEyeLidUp5AimGrp_aimConstraint1.ct";
connectAttr "RightEyeLidUp5AimGrp.rp" "RightEyeLidUp5AimGrp_aimConstraint1.crp";
connectAttr "RightEyeLidUp5AimGrp.rpt" "RightEyeLidUp5AimGrp_aimConstraint1.crt"
		;
connectAttr "RightEyeLidUp5AimGrp.ro" "RightEyeLidUp5AimGrp_aimConstraint1.cro";
connectAttr "RightEyeLidUpCrv4Pos.t" "RightEyeLidUp5AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidUpCrv4Pos.rp" "RightEyeLidUp5AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidUpCrv4Pos.rpt" "RightEyeLidUp5AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidUpCrv4Pos.pm" "RightEyeLidUp5AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidUp5AimGrp_aimConstraint1.w0" "RightEyeLidUp5AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeBallFix.wm" "RightEyeLidUp5AimGrp_aimConstraint1.wum";
connectAttr "RightEyeLidDown3AimGrp_aimConstraint1.crx" "RightEyeLidDown3AimGrp.rx"
		;
connectAttr "RightEyeLidDown3AimGrp_aimConstraint1.cry" "RightEyeLidDown3AimGrp.ry"
		;
connectAttr "RightEyeLidDown3AimGrp_aimConstraint1.crz" "RightEyeLidDown3AimGrp.rz"
		;
connectAttr "RightEyeLidDown3AimGrp.pim" "RightEyeLidDown3AimGrp_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidDown3AimGrp.t" "RightEyeLidDown3AimGrp_aimConstraint1.ct"
		;
connectAttr "RightEyeLidDown3AimGrp.rp" "RightEyeLidDown3AimGrp_aimConstraint1.crp"
		;
connectAttr "RightEyeLidDown3AimGrp.rpt" "RightEyeLidDown3AimGrp_aimConstraint1.crt"
		;
connectAttr "RightEyeLidDown3AimGrp.ro" "RightEyeLidDown3AimGrp_aimConstraint1.cro"
		;
connectAttr "RightEyeLidDownCrv2Pos.t" "RightEyeLidDown3AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidDownCrv2Pos.rp" "RightEyeLidDown3AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidDownCrv2Pos.rpt" "RightEyeLidDown3AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidDownCrv2Pos.pm" "RightEyeLidDown3AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidDown3AimGrp_aimConstraint1.w0" "RightEyeLidDown3AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeBallFix.wm" "RightEyeLidDown3AimGrp_aimConstraint1.wum";
connectAttr "RightEyeLidDown4AimGrp_aimConstraint1.crx" "RightEyeLidDown4AimGrp.rx"
		;
connectAttr "RightEyeLidDown4AimGrp_aimConstraint1.cry" "RightEyeLidDown4AimGrp.ry"
		;
connectAttr "RightEyeLidDown4AimGrp_aimConstraint1.crz" "RightEyeLidDown4AimGrp.rz"
		;
connectAttr "RightEyeLidDown4AimGrp.pim" "RightEyeLidDown4AimGrp_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidDown4AimGrp.t" "RightEyeLidDown4AimGrp_aimConstraint1.ct"
		;
connectAttr "RightEyeLidDown4AimGrp.rp" "RightEyeLidDown4AimGrp_aimConstraint1.crp"
		;
connectAttr "RightEyeLidDown4AimGrp.rpt" "RightEyeLidDown4AimGrp_aimConstraint1.crt"
		;
connectAttr "RightEyeLidDown4AimGrp.ro" "RightEyeLidDown4AimGrp_aimConstraint1.cro"
		;
connectAttr "RightEyeLidDownCrv3Pos.t" "RightEyeLidDown4AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidDownCrv3Pos.rp" "RightEyeLidDown4AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidDownCrv3Pos.rpt" "RightEyeLidDown4AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidDownCrv3Pos.pm" "RightEyeLidDown4AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidDown4AimGrp_aimConstraint1.w0" "RightEyeLidDown4AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeBallFix.wm" "RightEyeLidDown4AimGrp_aimConstraint1.wum";
connectAttr "RightEyeLidDown5AimGrp_aimConstraint1.crx" "RightEyeLidDown5AimGrp.rx"
		;
connectAttr "RightEyeLidDown5AimGrp_aimConstraint1.cry" "RightEyeLidDown5AimGrp.ry"
		;
connectAttr "RightEyeLidDown5AimGrp_aimConstraint1.crz" "RightEyeLidDown5AimGrp.rz"
		;
connectAttr "RightEyeLidDown5AimGrp.pim" "RightEyeLidDown5AimGrp_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidDown5AimGrp.t" "RightEyeLidDown5AimGrp_aimConstraint1.ct"
		;
connectAttr "RightEyeLidDown5AimGrp.rp" "RightEyeLidDown5AimGrp_aimConstraint1.crp"
		;
connectAttr "RightEyeLidDown5AimGrp.rpt" "RightEyeLidDown5AimGrp_aimConstraint1.crt"
		;
connectAttr "RightEyeLidDown5AimGrp.ro" "RightEyeLidDown5AimGrp_aimConstraint1.cro"
		;
connectAttr "RightEyeLidDownCrv4Pos.t" "RightEyeLidDown5AimGrp_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidDownCrv4Pos.rp" "RightEyeLidDown5AimGrp_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidDownCrv4Pos.rpt" "RightEyeLidDown5AimGrp_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidDownCrv4Pos.pm" "RightEyeLidDown5AimGrp_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidDown5AimGrp_aimConstraint1.w0" "RightEyeLidDown5AimGrp_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeBallFix.wm" "RightEyeLidDown5AimGrp_aimConstraint1.wum";
connectAttr "RightEyeLidRootModeRvs.ox" "RightEyeLidLocGrp.v";
connectAttr "RightEyeLidCCtrl.sx" "RightEyeLidLocGrp.sx";
connectAttr "RightEyeLidCCtrl.sy" "RightEyeLidLocGrp.sy";
connectAttr "RightEyeLidCCtrl.t" "RightEyeLidLocGrp.t";
connectAttr "LeftEyeLidInPos.t" "RightEyeLidInPos.t";
connectAttr "RightEyeLidInMainCtrl.t" "RightEyeLidInLoc.t";
connectAttr "RightEyeLidInMainCtrl.r" "RightEyeLidInLoc.r";
connectAttr "LeftEyeLidUpPos.t" "RightEyeLidUpPos.t";
connectAttr "RightEyeLidUpMainCtrl.t" "RightEyeLidUpLoc.t";
connectAttr "RightEyeLidUpMainCtrl.r" "RightEyeLidUpLoc.r";
connectAttr "LeftEyeLidUpCvPos2.t" "RightEyeLidUpCvPos2.t";
connectAttr "LeftEyeLidUpCvPos1.t" "RightEyeLidUpCvPos1.t";
connectAttr "LeftEyeLidOutPos.t" "RightEyeLidOutPos.t";
connectAttr "RightEyeLidOutMainCtrl.t" "RightEyeLidOutLoc.t";
connectAttr "RightEyeLidOutMainCtrl.r" "RightEyeLidOutLoc.r";
connectAttr "LeftEyeLidDownPos.t" "RightEyeLidDownPos.t";
connectAttr "RightEyeLidDownMainCtrl.t" "RightEyeLidDownLoc.t";
connectAttr "RightEyeLidDownMainCtrl.r" "RightEyeLidDownLoc.r";
connectAttr "LeftEyeLidDownCvPos2.t" "RightEyeLidDownCvPos2.t";
connectAttr "LeftEyeLidDownCvPos1.t" "RightEyeLidDownCvPos1.t";
connectAttr "RightEyeLidOutUp1LocOffGrpPB.ot" "RightEyeLidOutUp1LocOffGrp.t";
connectAttr "RightEyeLidOutUp1PB.ot" "RightEyeLidOutUp1LocGrp.t";
connectAttr "LeftEyeLidOutUp1Pos.t" "RightEyeLidOutUp1Pos.t";
connectAttr "RightEyeLidOutUp1Ctrl.t" "RightEyeLidOutUp1Loc.t";
connectAttr "RightEyeLidOutUp1Ctrl.r" "RightEyeLidOutUp1Loc.r";
connectAttr "pairBlend2.ot" "RightEyeLidOutUp2LocOffGrp.t";
connectAttr "RightEyeLidOutUp2PB.ot" "RightEyeLidOutUp2LocGrp.t";
connectAttr "LeftEyeLidOutUp2Pos.t" "RightEyeLidOutUp2Pos.t";
connectAttr "RightEyeLidOutUp2Ctrl.t" "RightEyeLidOutUp2Loc.t";
connectAttr "RightEyeLidOutUp2Ctrl.r" "RightEyeLidOutUp2Loc.r";
connectAttr "LeftEyeLidOutUp2CvPos1.t" "RightEyeLidOutUp2CvPos1.t";
connectAttr "LeftEyeLidOutUp2CvPos2.t" "RightEyeLidOutUp2CvPos2.t";
connectAttr "RightEyeLidOutUp3LocOffGrpPB.ot" "RightEyeLidOutUp3LocOffGrp.t";
connectAttr "RightEyeLidOutUp3PB.ot" "RightEyeLidOutUp3LocGrp.t";
connectAttr "LeftEyeLidOutUp3Pos.t" "RightEyeLidOutUp3Pos.t";
connectAttr "RightEyeLidOutUp3Ctrl.t" "RightEyeLidOutUp3Loc.t";
connectAttr "RightEyeLidOutUp3Ctrl.r" "RightEyeLidOutUp3Loc.r";
connectAttr "RightEyeLidOutDown1LocOffGrpPB.ot" "RightEyeLidOutDown1LocOffGrp.t"
		;
connectAttr "RightEyeLidOutDown1PB.ot" "RightEyeLidOutDown1LocGrp.t";
connectAttr "LeftEyeLidOutDown1Pos.t" "RightEyeLidOutDown1Pos.t";
connectAttr "RightEyeLidOutDown1Ctrl.t" "RightEyeLidOutDown1Loc.t";
connectAttr "RightEyeLidOutDown1Ctrl.r" "RightEyeLidOutDown1Loc.r";
connectAttr "RightEyeLidOutDown2LocOffGrpPB.ot" "RightEyeLidOutDown2LocOffGrp.t"
		;
connectAttr "RightEyeLidOutDown2PB.ot" "RightEyeLidOutDown2LocGrp.t";
connectAttr "LeftEyeLidOutDown2Pos.t" "RightEyeLidOutDown2Pos.t";
connectAttr "RightEyeLidOutDown2Ctrl.t" "RightEyeLidOutDown2Loc.t";
connectAttr "RightEyeLidOutDown2Ctrl.r" "RightEyeLidOutDown2Loc.r";
connectAttr "LeftEyeLidOutDown2CvPos1.t" "RightEyeLidOutDown2CvPos1.t";
connectAttr "LeftEyeLidOutDown2CvPos2.t" "RightEyeLidOutDown2CvPos2.t";
connectAttr "RightEyeLidOutDown3LocOffGrpPB.ot" "RightEyeLidOutDown3LocOffGrp.t"
		;
connectAttr "RightEyeLidOutDown3PB.ot" "RightEyeLidOutDown3LocGrp.t";
connectAttr "LeftEyeLidOutDown3Pos.t" "RightEyeLidOutDown3Pos.t";
connectAttr "RightEyeLidOutDown3Ctrl.t" "RightEyeLidOutDown3Loc.t";
connectAttr "RightEyeLidOutDown3Ctrl.r" "RightEyeLidOutDown3Loc.r";
connectAttr "EyeLidPosMirrorBS.og[0]" "RightEyeLidCtrlPosCrvShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "RightEyeLidCtrlPosCrvShape.twl";
connectAttr "LeftEyeLidRootModeRvs.ox" "EyeLidJntGrp.tmp";
connectAttr "LeftEyeLidOutUpJntCrv0PC.p" "LeftEyeLidOutUp0Jnt.t";
connectAttr "LeftEyeLidOutUp1Ctrl.r" "LeftEyeLidOutUp0Jnt.r";
connectAttr "LeftEyeLidOutUpJntCrv1PC.p" "LeftEyeLidOutUp1Jnt.t";
connectAttr "LeftEyeLidOutUp2Ctrl.r" "LeftEyeLidOutUp1Jnt.r";
connectAttr "LeftEyeLidOutUpJntCrv2PC.p" "LeftEyeLidOutUp2Jnt.t";
connectAttr "LeftEyeLidOutUp3Ctrl.r" "LeftEyeLidOutUp2Jnt.r";
connectAttr "LeftEyeLidOutDownJntCrv0PC.p" "LeftEyeLidOutDown0Jnt.t";
connectAttr "LeftEyeLidOutDown1Ctrl.r" "LeftEyeLidOutDown0Jnt.r";
connectAttr "LeftEyeLidOutDownJntCrv1PC.p" "LeftEyeLidOutDown1Jnt.t";
connectAttr "LeftEyeLidOutDown2Ctrl.r" "LeftEyeLidOutDown1Jnt.r";
connectAttr "LeftEyeLidOutDownJntCrv2PC.p" "LeftEyeLidOutDown2Jnt.t";
connectAttr "LeftEyeLidOutDown3Ctrl.r" "LeftEyeLidOutDown2Jnt.r";
connectAttr "RightEyeLidOutUpJntCrv0PC.p" "RightEyeLidOutUp0Jnt.t";
connectAttr "RightEyeLidOutUp1Ctrl.r" "RightEyeLidOutUp0Jnt.r";
connectAttr "RightEyeLidOutUpJntCrv1PC.p" "RightEyeLidOutUp1Jnt.t";
connectAttr "RightEyeLidOutUp2Ctrl.r" "RightEyeLidOutUp1Jnt.r";
connectAttr "RightEyeLidOutUpJntCrv2PC.p" "RightEyeLidOutUp2Jnt.t";
connectAttr "RightEyeLidOutUp3Ctrl.r" "RightEyeLidOutUp2Jnt.r";
connectAttr "RightEyeLidOutDownJntCrv0PC.p" "RightEyeLidOutDown0Jnt.t";
connectAttr "RightEyeLidOutDown1Ctrl.r" "RightEyeLidOutDown0Jnt.r";
connectAttr "RightEyeLidOutDownJntCrv1PC.p" "RightEyeLidOutDown1Jnt.t";
connectAttr "RightEyeLidOutDown2Ctrl.r" "RightEyeLidOutDown1Jnt.r";
connectAttr "RightEyeLidOutDownJntCrv2PC.p" "RightEyeLidOutDown2Jnt.t";
connectAttr "RightEyeLidOutDown3Ctrl.r" "RightEyeLidOutDown2Jnt.r";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp1LocPS.is";
connectAttr "LeftEyeLidOutUp1LocCS.u" "LeftEyeLidOutUp1LocPS.u";
connectAttr "LeftEyeLidOutUp1LocCS.v" "LeftEyeLidOutUp1LocPS.v";
connectAttr "LeftEyeLidOutUp1LocShape.wp" "LeftEyeLidOutUp1LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp1LocCS.is";
connectAttr "LeftEyeLidOutUp1Ctrl.t" "LeftEyeLidOutUp1CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocPS.is";
connectAttr "LeftEyeLidOutUp2LocCS.u" "LeftEyeLidOutUp2LocPS.u";
connectAttr "LeftEyeLidOutUp2LocCS.v" "LeftEyeLidOutUp2LocPS.v";
connectAttr "LeftEyeLidOutUp2LocShape.wp" "LeftEyeLidOutUp2LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocCS.is";
connectAttr "LeftEyeLidOutUp2Ctrl.t" "LeftEyeLidOutUp2CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocPS.is";
connectAttr "LeftEyeLidOutUp3LocCS.u" "LeftEyeLidOutUp3LocPS.u";
connectAttr "LeftEyeLidOutUp3LocCS.v" "LeftEyeLidOutUp3LocPS.v";
connectAttr "LeftEyeLidOutUp3LocShape.wp" "LeftEyeLidOutUp3LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocCS.is";
connectAttr "LeftEyeLidOutUp3Ctrl.t" "LeftEyeLidOutUp3CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocPS.is";
connectAttr "LeftEyeLidOutDown1LocCS.u" "LeftEyeLidOutDown1LocPS.u";
connectAttr "LeftEyeLidOutDown1LocCS.v" "LeftEyeLidOutDown1LocPS.v";
connectAttr "LeftEyeLidOutDown1LocShape.wp" "LeftEyeLidOutDown1LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocCS.is";
connectAttr "LeftEyeLidOutDown1Ctrl.t" "LeftEyeLidOutDown1CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocPS.is";
connectAttr "LeftEyeLidOutDown2LocCS.u" "LeftEyeLidOutDown2LocPS.u";
connectAttr "LeftEyeLidOutDown2LocCS.v" "LeftEyeLidOutDown2LocPS.v";
connectAttr "LeftEyeLidOutDown2LocShape.wp" "LeftEyeLidOutDown2LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocCS.is";
connectAttr "LeftEyeLidOutDown2Ctrl.t" "LeftEyeLidOutDown2CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocPS.is";
connectAttr "LeftEyeLidOutDown3LocCS.u" "LeftEyeLidOutDown3LocPS.u";
connectAttr "LeftEyeLidOutDown3LocCS.v" "LeftEyeLidOutDown3LocPS.v";
connectAttr "LeftEyeLidOutDown3LocShape.wp" "LeftEyeLidOutDown3LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocCS.is";
connectAttr "LeftEyeLidOutDown3Ctrl.t" "LeftEyeLidOutDown3CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidInLocPS.is";
connectAttr "LeftEyeLidInLocCS.u" "LeftEyeLidInLocPS.u";
connectAttr "LeftEyeLidInLocCS.v" "LeftEyeLidInLocPS.v";
connectAttr "LeftEyeLidInLocShape.wp" "LeftEyeLidInLocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidInLocCS.is";
connectAttr "LeftEyeLidInMainCtrl.t" "LefteyeLidInCtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpLocPS.is";
connectAttr "LeftEyeLidUpLocCS.u" "LeftEyeLidUpLocPS.u";
connectAttr "LeftEyeLidUpLocCS.v" "LeftEyeLidUpLocPS.v";
connectAttr "LeftEyeLidUpLocShape.wp" "LeftEyeLidUpLocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpLocCS.is";
connectAttr "LeftEyeLidUpMainCtrl.t" "LeftEyeLidUpCtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutLocPS.is";
connectAttr "LeftEyeLidOutLocCS.u" "LeftEyeLidOutLocPS.u";
connectAttr "LeftEyeLidOutLocCS.v" "LeftEyeLidOutLocPS.v";
connectAttr "LeftEyeLidOutLocShape.wp" "LeftEyeLidOutLocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutLocCS.is";
connectAttr "LeftEyeLidOutMainCtrl.t" "LefteyeLidOutCtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownLocPS.is";
connectAttr "LeftEyeLidDownLocCS.u" "LeftEyeLidDownLocPS.u";
connectAttr "LeftEyeLidDownLocCS.v" "LeftEyeLidDownLocPS.v";
connectAttr "LeftEyeLidDownLocShape.wp" "LeftEyeLidDownLocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownLocCS.is";
connectAttr "LeftEyeLidDownMainCtrl.t" "LefteyeLidDownCtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUp2CtrlPosGrpMM.o" "LeftEyeLidUp2CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl1Pos.wm" "LeftEyeLidUp2CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidUp2CtrlPosGrp.pim" "LeftEyeLidUp2CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidUp2Ctrl.t" "LeftEyeLidUp2CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUp3CtrlPosGrpMM.o" "LeftEyeLidUp3CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl2Pos.wm" "LeftEyeLidUp3CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidUp3CtrlPosGrp.pim" "LeftEyeLidUp3CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidUp3Ctrl.t" "LeftEyeLidUp3CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUp4CtrlPosGrpMM.o" "LeftEyeLidUp4CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl3Pos.wm" "LeftEyeLidUp4CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidUp4CtrlPosGrp.pim" "LeftEyeLidUp4CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidUp4Ctrl.t" "LeftEyeLidUp4CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUp5CtrlPosGrpMM.o" "LeftEyeLidUp5CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl4Pos.wm" "LeftEyeLidUp5CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidUp5CtrlPosGrp.pim" "LeftEyeLidUp5CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidUp5Ctrl.t" "LeftEyeLidUp5CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUp6CtrlPosGrpMM.o" "LeftEyeLidUp6CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl5Pos.wm" "LeftEyeLidUp6CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidUp6CtrlPosGrp.pim" "LeftEyeLidUp6CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidUp6Ctrl.t" "LeftEyeLidUp6CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidDown2CtrlPosGrpMM.o" "LeftEyeLidDown2CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl11Pos.wm" "LeftEyeLidDown2CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidDown2CtrlPosGrp.pim" "LeftEyeLidDown2CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidDown2Ctrl.t" "LeftEyeLidDown2CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidDown3CtrlPosGrpMM.o" "LeftEyeLidDown3CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl10Pos.wm" "LeftEyeLidDown3CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidDown3CtrlPosGrp.pim" "LeftEyeLidDown3CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidDown3Ctrl.t" "LeftEyeLidDown3CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidDown4CtrlPosGrpMM.o" "LeftEyeLidDown4CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl9Pos.wm" "LeftEyeLidDown4CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidDown4CtrlPosGrp.pim" "LeftEyeLidDown4CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidDown4Ctrl.t" "LeftEyeLidDown4CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidDown5CtrlPosGrpMM.o" "LeftEyeLidDown5CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl8Pos.wm" "LeftEyeLidDown5CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidDown5CtrlPosGrp.pim" "LeftEyeLidDown5CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidDown5Ctrl.t" "LeftEyeLidDown5CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidDown6CtrlPosGrpMM.o" "LeftEyeLidDown6CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl7Pos.wm" "LeftEyeLidDown6CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidDown6CtrlPosGrp.pim" "LeftEyeLidDown6CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidDown6Ctrl.t" "LeftEyeLidDown6CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUp1CtrlPosGrpMM.o" "LeftEyeLidUp1CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl0Pos.wm" "LeftEyeLidUp1CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidSide1CtrlPosGrp.pim" "LeftEyeLidUp1CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidSide1Ctrl.t" "LeftEyeLidSide1RvsMultMD.i1";
connectAttr "LeftEyeLidDown7CtrlPosGrpMM.o" "LeftEyeLidDown7CtrlPosGrpDM.imat";
connectAttr "LeftEyeLidCtrl6Pos.wm" "LeftEyeLidDown7CtrlPosGrpMM.i[3]";
connectAttr "LeftEyeLidSide2CtrlPosGrp.pim" "LeftEyeLidDown7CtrlPosGrpMM.i[4]";
connectAttr "LeftEyeLidSide2Ctrl.t" "LeftEyeLidSide2RvsMultMD.i1";
connectAttr "RightEyeLidUp2CtrlPosGrpMM.o" "RightEyeLidUp2CtrlPosGrpDM.imat";
connectAttr "RightEyeLidCtrl1Pos.wm" "RightEyeLidUp2CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidUp2CtrlPosGrp.pim" "RightEyeLidUp2CtrlPosGrpMM.i[4]";
connectAttr "RightEyeLidUp2Ctrl.t" "RightEyeLidUp2CtrlRvsMultMD.i1";
connectAttr "RightEyeLidUp3CtrlPosGrpMM.o" "RightEyeLidUp3CtrlPosGrpDM.imat";
connectAttr "RightEyeLidCtrl2Pos.wm" "RightEyeLidUp3CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidUp3CtrlPosGrp.pim" "RightEyeLidUp3CtrlPosGrpMM.i[4]";
connectAttr "RightEyeLidUp3Ctrl.t" "RightEyeLidUp3CtrlRvsMultMD.i1";
connectAttr "RightEyeLidUp4CtrlPosGrpMM.o" "RightEyeLidUp4CtrlPosGrpDM.imat";
connectAttr "RightEyeLidCtrl3Pos.wm" "RightEyeLidUp4CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidUp4CtrlPosGrp.pim" "RightEyeLidUp4CtrlPosGrpMM.i[4]";
connectAttr "RightEyeLidUp4Ctrl.t" "RightEyeLidUp4CtrlRvsMultMD.i1";
connectAttr "RightEyeLidUp5CtrlPosGrpMM.o" "RightEyeLidUp5CtrlPosGrpDM.imat";
connectAttr "RightEyeLidCtrl4Pos.wm" "RightEyeLidUp5CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidUp5CtrlPosGrp.pim" "RightEyeLidUp5CtrlPosGrpMM.i[4]";
connectAttr "RightEyeLidUp5Ctrl.t" "RightEyeLidUp5CtrlRvsMultMD.i1";
connectAttr "RightEyeLidUp6CtrlPosGrpMM.o" "RightEyeLidUp6CtrlPosGrpDM.imat";
connectAttr "RightEyeLidCtrl5Pos.wm" "RightEyeLidUp6CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidUp6CtrlPosGrp.pim" "RightEyeLidUp6CtrlPosGrpMM.i[4]";
connectAttr "RightEyeLidUp6Ctrl.t" "RightEyeLidUp6CtrlRvsMultMD.i1";
connectAttr "RightEyeLidDown2CtrlPosGrpMM.o" "RightEyeLidDown2CtrlPosGrpDM.imat"
		;
connectAttr "RightEyeLidCtrl11Pos.wm" "RightEyeLidDown2CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidDown2CtrlPosGrp.pim" "RightEyeLidDown2CtrlPosGrpMM.i[4]"
		;
connectAttr "RightEyeLidDown2Ctrl.t" "RightEyeLidDown2CtrlRvsMultMD.i1";
connectAttr "RightEyeLidDown3CtrlPosGrpMM.o" "RightEyeLidDown3CtrlPosGrpDM.imat"
		;
connectAttr "RightEyeLidCtrl10Pos.wm" "RightEyeLidDown3CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidDown3CtrlPosGrp.pim" "RightEyeLidDown3CtrlPosGrpMM.i[4]"
		;
connectAttr "RightEyeLidDown3Ctrl.t" "RightEyeLidDown3CtrlRvsMultMD.i1";
connectAttr "RightEyeLidDown4CtrlPosGrpMM.o" "RightEyeLidDown4CtrlPosGrpDM.imat"
		;
connectAttr "RightEyeLidCtrl9Pos.wm" "RightEyeLidDown4CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidDown4CtrlPosGrp.pim" "RightEyeLidDown4CtrlPosGrpMM.i[4]"
		;
connectAttr "RightEyeLidDown4Ctrl.t" "RightEyeLidDown4CtrlRvsMultMD.i1";
connectAttr "RightEyeLidDown5CtrlPosGrpMM.o" "RightEyeLidDown5CtrlPosGrpDM.imat"
		;
connectAttr "RightEyeLidCtrl8Pos.wm" "RightEyeLidDown5CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidDown5CtrlPosGrp.pim" "RightEyeLidDown5CtrlPosGrpMM.i[4]"
		;
connectAttr "RightEyeLidDown5Ctrl.t" "RightEyeLidDown5CtrlRvsMultMD.i1";
connectAttr "RightEyeLidDown6CtrlPosGrpMM.o" "RightEyeLidDown6CtrlPosGrpDM.imat"
		;
connectAttr "RightEyeLidCtrl7Pos.wm" "RightEyeLidDown6CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidDown6CtrlPosGrp.pim" "RightEyeLidDown6CtrlPosGrpMM.i[4]"
		;
connectAttr "RightEyeLidDown6Ctrl.t" "RightEyeLidDown6CtrlRvsMultMD.i1";
connectAttr "RightEyeLidUp1CtrlPosGrpMM.o" "RightEyeLidUp1CtrlPosGrpDM.imat";
connectAttr "RightEyeLidCtrl0Pos.wm" "RightEyeLidUp1CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidSide1CtrlPosGrp.pim" "RightEyeLidUp1CtrlPosGrpMM.i[4]";
connectAttr "RightEyeLidSide1Ctrl.t" "RightEyeLidUp1CtrlRvsMultMD.i1";
connectAttr "RightEyeLidDown7CtrlPosGrpMM.o" "RightEyeLidDown7CtrlPosGrpDM.imat"
		;
connectAttr "RightEyeLidCtrl6Pos.wm" "RightEyeLidDown7CtrlPosGrpMM.i[3]";
connectAttr "RightEyeLidSide2CtrlPosGrp.pim" "RightEyeLidDown7CtrlPosGrpMM.i[4]"
		;
connectAttr "RightEyeLidSide2Ctrl.t" "RightEyeLidSide2CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp1LocPS.is";
connectAttr "RightEyeLidOutUp1LocCS.u" "RightEyeLidOutUp1LocPS.u";
connectAttr "RightEyeLidOutUp1LocCS.v" "RightEyeLidOutUp1LocPS.v";
connectAttr "RightEyeLidOutUp1LocShape.wp" "RightEyeLidOutUp1LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp1LocCS.is";
connectAttr "RightEyeLidOutUp1Ctrl.t" "RightEyeLidOutUp1CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocPS.is";
connectAttr "RightEyeLidOutUp2LocCS.u" "RightEyeLidOutUp2LocPS.u";
connectAttr "RightEyeLidOutUp2LocCS.v" "RightEyeLidOutUp2LocPS.v";
connectAttr "RightEyeLidOutUp2LocShape.wp" "RightEyeLidOutUp2LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocCS.is";
connectAttr "RightEyeLidOutUp2Ctrl.t" "RightEyeLidOutUp2CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocPS.is";
connectAttr "RightEyeLidOutUp3LocCS.u" "RightEyeLidOutUp3LocPS.u";
connectAttr "RightEyeLidOutUp3LocCS.v" "RightEyeLidOutUp3LocPS.v";
connectAttr "RightEyeLidOutUp3LocShape.wp" "RightEyeLidOutUp3LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocCS.is";
connectAttr "RightEyeLidOutUp3Ctrl.t" "RightEyeLidOutUp3CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocPS.is";
connectAttr "RightEyeLidOutDown1LocCS.u" "RightEyeLidOutDown1LocPS.u";
connectAttr "RightEyeLidOutDown1LocCS.v" "RightEyeLidOutDown1LocPS.v";
connectAttr "RightEyeLidOutDown1LocShape.wp" "RightEyeLidOutDown1LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocCS.is";
connectAttr "RightEyeLidOutDown1Ctrl.t" "RightEyeLidOutDown1CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocPS.is";
connectAttr "RightEyeLidOutDown2LocCS.u" "RightEyeLidOutDown2LocPS.u";
connectAttr "RightEyeLidOutDown2LocCS.v" "RightEyeLidOutDown2LocPS.v";
connectAttr "RightEyeLidOutDown2LocShape.wp" "RightEyeLidOutDown2LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocCS.is";
connectAttr "RightEyeLidOutDown2Ctrl.t" "RightEyeLidOutDown2CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocPS.is";
connectAttr "RightEyeLidOutDown3LocCS.u" "RightEyeLidOutDown3LocPS.u";
connectAttr "RightEyeLidOutDown3LocCS.v" "RightEyeLidOutDown3LocPS.v";
connectAttr "RightEyeLidOutDown3LocShape.wp" "RightEyeLidOutDown3LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocCS.is";
connectAttr "RightEyeLidOutDown3Ctrl.t" "RightEyeLidOutDown3CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidInLocPS.is";
connectAttr "RightEyeLidInLocCS.u" "RightEyeLidInLocPS.u";
connectAttr "RightEyeLidInLocCS.v" "RightEyeLidInLocPS.v";
connectAttr "RightEyeLidInLocShape.wp" "RightEyeLidInLocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidInLocCS.is";
connectAttr "RightEyeLidInMainCtrl.t" "RighteyeLidInCtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpLocPS.is";
connectAttr "RightEyeLidUpLocCS.u" "RightEyeLidUpLocPS.u";
connectAttr "RightEyeLidUpLocCS.v" "RightEyeLidUpLocPS.v";
connectAttr "RightEyeLidUpLocShape.wp" "RightEyeLidUpLocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpLocCS.is";
connectAttr "RightEyeLidUpMainCtrl.t" "RightEyeLidUpCtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutLocPS.is";
connectAttr "RightEyeLidOutLocCS.u" "RightEyeLidOutLocPS.u";
connectAttr "RightEyeLidOutLocCS.v" "RightEyeLidOutLocPS.v";
connectAttr "RightEyeLidOutLocShape.wp" "RightEyeLidOutLocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutLocCS.is";
connectAttr "RightEyeLidOutMainCtrl.t" "RighteyeLidOutCtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownLocPS.is";
connectAttr "RightEyeLidDownLocCS.u" "RightEyeLidDownLocPS.u";
connectAttr "RightEyeLidDownLocCS.v" "RightEyeLidDownLocPS.v";
connectAttr "RightEyeLidDownLocShape.wp" "RightEyeLidDownLocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownLocCS.is";
connectAttr "RightEyeLidDownMainCtrl.t" "RighteyeLidDownCtrlRvsMultMD.i1";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidRootModeRvs.ix";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl0PosPS.is";
connectAttr "LeftEyeLidUpCtrl0PosCS.u" "LeftEyeLidUpCtrl0PosPS.u";
connectAttr "LeftEyeLidUpCtrl0PosCS.v" "LeftEyeLidUpCtrl0PosPS.v";
connectAttr "LeftEyeLidUpCtrl0PosShape.wp" "LeftEyeLidUpCtrl0PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl0PosCS.is";
connectAttr "LeftEyeLidUpCtrl0PosSurfPosMM.o" "LeftEyeLidUpCtrl0PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl0PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl0PosSurfPos.pim" "LeftEyeLidUpCtrl0PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp1ZML.o" "LeftEyeLidUp1ZAL.i1";
connectAttr "LeftEyeLidSide1Ctrl.Z" "LeftEyeLidUp1ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp1ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl1PosPS.is";
connectAttr "LeftEyeLidUpCtrl1PosCS.u" "LeftEyeLidUpCtrl1PosPS.u";
connectAttr "LeftEyeLidUpCtrl1PosCS.v" "LeftEyeLidUpCtrl1PosPS.v";
connectAttr "LeftEyeLidUpCtrl1PosShape.wp" "LeftEyeLidUpCtrl1PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl1PosCS.is";
connectAttr "LeftEyeLidUpCtrl1PosSurfPosMM.o" "LeftEyeLidUpCtrl1PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl1PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl1PosSurfPos.pim" "LeftEyeLidUpCtrl1PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp2ZML.o" "LeftEyeLidUp2ZAL.i1";
connectAttr "LeftEyeLidUp2Ctrl.Z" "LeftEyeLidUp2ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp2ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl2PosPS.is";
connectAttr "LeftEyeLidUpCtrl2PosCS.u" "LeftEyeLidUpCtrl2PosPS.u";
connectAttr "LeftEyeLidUpCtrl2PosCS.v" "LeftEyeLidUpCtrl2PosPS.v";
connectAttr "LeftEyeLidUpCtrl2PosShape.wp" "LeftEyeLidUpCtrl2PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl2PosCS.is";
connectAttr "LeftEyeLidUpCtrl2PosSurfPosMM.o" "LeftEyeLidUpCtrl2PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl2PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl2PosSurfPos.pim" "LeftEyeLidUpCtrl2PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp3ZML.o" "LeftEyeLidUp3ZAL.i1";
connectAttr "LeftEyeLidUp3Ctrl.Z" "LeftEyeLidUp3ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp3ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl3PosPS.is";
connectAttr "LeftEyeLidUpCtrl3PosCS.u" "LeftEyeLidUpCtrl3PosPS.u";
connectAttr "LeftEyeLidUpCtrl3PosCS.v" "LeftEyeLidUpCtrl3PosPS.v";
connectAttr "LeftEyeLidUpCtrl3PosShape.wp" "LeftEyeLidUpCtrl3PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl3PosCS.is";
connectAttr "LeftEyeLidUpCtrl3PosSurfPosMM.o" "LeftEyeLidUpCtrl3PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl3PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl3PosSurfPos.pim" "LeftEyeLidUpCtrl3PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp4ZML.o" "LeftEyeLidUp4ZAL.i1";
connectAttr "LeftEyeLidUp4Ctrl.Z" "LeftEyeLidUp4ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp4ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl4PosPS.is";
connectAttr "LeftEyeLidUpCtrl4PosCS.u" "LeftEyeLidUpCtrl4PosPS.u";
connectAttr "LeftEyeLidUpCtrl4PosCS.v" "LeftEyeLidUpCtrl4PosPS.v";
connectAttr "LeftEyeLidUpCtrl4PosShape.wp" "LeftEyeLidUpCtrl4PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl4PosCS.is";
connectAttr "LeftEyeLidUpCtrl4PosSurfPosMM.o" "LeftEyeLidUpCtrl4PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl4PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl4PosSurfPos.pim" "LeftEyeLidUpCtrl4PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp5ZML.o" "LeftEyeLidUp5ZAL.i1";
connectAttr "LeftEyeLidUp5Ctrl.Z" "LeftEyeLidUp5ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp5ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl5PosPS.is";
connectAttr "LeftEyeLidUpCtrl5PosCS.u" "LeftEyeLidUpCtrl5PosPS.u";
connectAttr "LeftEyeLidUpCtrl5PosCS.v" "LeftEyeLidUpCtrl5PosPS.v";
connectAttr "LeftEyeLidUpCtrl5PosShape.wp" "LeftEyeLidUpCtrl5PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl5PosCS.is";
connectAttr "LeftEyeLidUpCtrl5PosSurfPosMM.o" "LeftEyeLidUpCtrl5PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl5PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl5PosSurfPos.pim" "LeftEyeLidUpCtrl5PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp6ZML.o" "LeftEyeLidUp6ZAL.i1";
connectAttr "LeftEyeLidUp6Ctrl.Z" "LeftEyeLidUp6ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp6ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl6PosPS.is";
connectAttr "LeftEyeLidUpCtrl6PosCS.u" "LeftEyeLidUpCtrl6PosPS.u";
connectAttr "LeftEyeLidUpCtrl6PosCS.v" "LeftEyeLidUpCtrl6PosPS.v";
connectAttr "LeftEyeLidUpCtrl6PosShape.wp" "LeftEyeLidUpCtrl6PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidUpCtrl6PosCS.is";
connectAttr "LeftEyeLidUpCtrl6PosSurfPosMM.o" "LeftEyeLidUpCtrl6PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidUpCtrl6PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidUpCtrl6PosSurfPos.pim" "LeftEyeLidUpCtrl6PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidUp7ZML.o" "LeftEyeLidUp7ZAL.i1";
connectAttr "LeftEyeLidSide2Ctrl.Z" "LeftEyeLidUp7ZAL.i2";
connectAttr "LeftEyeLidUpMainCtrl.Z" "LeftEyeLidUp7ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl0PosPS.is";
connectAttr "LeftEyeLidDownCtrl0PosCS.u" "LeftEyeLidDownCtrl0PosPS.u";
connectAttr "LeftEyeLidDownCtrl0PosCS.v" "LeftEyeLidDownCtrl0PosPS.v";
connectAttr "LeftEyeLidDownCtrl0PosShape.wp" "LeftEyeLidDownCtrl0PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl0PosCS.is";
connectAttr "LeftEyeLidDownCtrl0PosSurfPosMM.o" "LeftEyeLidDownCtrl0PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl0PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl0PosSurfPos.pim" "LeftEyeLidDownCtrl0PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown1ZML.o" "LeftEyeLidDown1ZAL.i1";
connectAttr "LeftEyeLidSide1Ctrl.Z" "LeftEyeLidDown1ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown1ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl1PosPS.is";
connectAttr "LeftEyeLidDownCtrl1PosCS.u" "LeftEyeLidDownCtrl1PosPS.u";
connectAttr "LeftEyeLidDownCtrl1PosCS.v" "LeftEyeLidDownCtrl1PosPS.v";
connectAttr "LeftEyeLidDownCtrl1PosShape.wp" "LeftEyeLidDownCtrl1PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl1PosCS.is";
connectAttr "LeftEyeLidDownCtrl1PosSurfPosMM.o" "LeftEyeLidDownCtrl1PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl1PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl1PosSurfPos.pim" "LeftEyeLidDownCtrl1PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown2ZML.o" "LeftEyeLidDown2ZAL.i1";
connectAttr "LeftEyeLidDown2Ctrl.Z" "LeftEyeLidDown2ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown2ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl2PosPS.is";
connectAttr "LeftEyeLidDownCtrl2PosCS.u" "LeftEyeLidDownCtrl2PosPS.u";
connectAttr "LeftEyeLidDownCtrl2PosCS.v" "LeftEyeLidDownCtrl2PosPS.v";
connectAttr "LeftEyeLidDownCtrl2PosShape.wp" "LeftEyeLidDownCtrl2PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl2PosCS.is";
connectAttr "LeftEyeLidDownCtrl2PosSurfPosMM.o" "LeftEyeLidDownCtrl2PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl2PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl2PosSurfPos.pim" "LeftEyeLidDownCtrl2PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown3ZML.o" "LeftEyeLidDown3ZAL.i1";
connectAttr "LeftEyeLidDown3Ctrl.Z" "LeftEyeLidDown3ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown3ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl3PosPS.is";
connectAttr "LeftEyeLidDownCtrl3PosCS.u" "LeftEyeLidDownCtrl3PosPS.u";
connectAttr "LeftEyeLidDownCtrl3PosCS.v" "LeftEyeLidDownCtrl3PosPS.v";
connectAttr "LeftEyeLidDownCtrl3PosShape.wp" "LeftEyeLidDownCtrl3PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl3PosCS.is";
connectAttr "LeftEyeLidDownCtrl3PosSurfPosMM.o" "LeftEyeLidDownCtrl3PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl3PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl3PosSurfPos.pim" "LeftEyeLidDownCtrl3PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown4ZML.o" "LeftEyeLidDown4ZAL.i1";
connectAttr "LeftEyeLidDown4Ctrl.Z" "LeftEyeLidDown4ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown4ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl4PosPS.is";
connectAttr "LeftEyeLidDownCtrl4PosCS.u" "LeftEyeLidDownCtrl4PosPS.u";
connectAttr "LeftEyeLidDownCtrl4PosCS.v" "LeftEyeLidDownCtrl4PosPS.v";
connectAttr "LeftEyeLidDownCtrl4PosShape.wp" "LeftEyeLidDownCtrl4PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl4PosCS.is";
connectAttr "LeftEyeLidDownCtrl4PosSurfPosMM.o" "LeftEyeLidDownCtrl4PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl4PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl4PosSurfPos.pim" "LeftEyeLidDownCtrl4PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown5ZML.o" "LeftEyeLidDown5ZAL.i1";
connectAttr "LeftEyeLidDown5Ctrl.Z" "LeftEyeLidDown5ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown5ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl5PosPS.is";
connectAttr "LeftEyeLidDownCtrl5PosCS.u" "LeftEyeLidDownCtrl5PosPS.u";
connectAttr "LeftEyeLidDownCtrl5PosCS.v" "LeftEyeLidDownCtrl5PosPS.v";
connectAttr "LeftEyeLidDownCtrl5PosShape.wp" "LeftEyeLidDownCtrl5PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl5PosCS.is";
connectAttr "LeftEyeLidDownCtrl5PosSurfPosMM.o" "LeftEyeLidDownCtrl5PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl5PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl5PosSurfPos.pim" "LeftEyeLidDownCtrl5PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown6ZML.o" "LeftEyeLidDown6ZAL.i1";
connectAttr "LeftEyeLidDown6Ctrl.Z" "LeftEyeLidDown6ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown6ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl6PosPS.is";
connectAttr "LeftEyeLidDownCtrl6PosCS.u" "LeftEyeLidDownCtrl6PosPS.u";
connectAttr "LeftEyeLidDownCtrl6PosCS.v" "LeftEyeLidDownCtrl6PosPS.v";
connectAttr "LeftEyeLidDownCtrl6PosShape.wp" "LeftEyeLidDownCtrl6PosCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidDownCtrl6PosCS.is";
connectAttr "LeftEyeLidDownCtrl6PosSurfPosMM.o" "LeftEyeLidDownCtrl6PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidDownCtrl6PosSurfPosMM.i[3]";
connectAttr "LeftEyeLidDownCtrl6PosSurfPos.pim" "LeftEyeLidDownCtrl6PosSurfPosMM.i[4]"
		;
connectAttr "LeftEyeLidDown7ZML.o" "LeftEyeLidDown7ZAL.i1";
connectAttr "LeftEyeLidSide2Ctrl.Z" "LeftEyeLidDown7ZAL.i2";
connectAttr "LeftEyeLidDownMainCtrl.Z" "LeftEyeLidDown7ZML.i2";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp1LocPS1.is";
connectAttr "LeftEyeLidOutUp1LocCS1.u" "LeftEyeLidOutUp1LocPS1.u";
connectAttr "LeftEyeLidOutUp1LocCS1.v" "LeftEyeLidOutUp1LocPS1.v";
connectAttr "LeftEyeLidOutUp1LocShape.wp" "LeftEyeLidOutUp1LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp1LocCS1.is";
connectAttr "LeftEyeLidOutUp1Ctrl.Z" "LeftEyeLidOutUp1CtrlZML.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos1PS.is";
connectAttr "LeftEyeLidOutUp2CvPos1CS.u" "LeftEyeLidOutUp2CvPos1PS.u";
connectAttr "LeftEyeLidOutUp2CvPos1CS.v" "LeftEyeLidOutUp2CvPos1PS.v";
connectAttr "LeftEyeLidOutUp2CvPos1Shape.wp" "LeftEyeLidOutUp2CvPos1CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos1CS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocPS1.is";
connectAttr "LeftEyeLidOutUp2LocCS1.u" "LeftEyeLidOutUp2LocPS1.u";
connectAttr "LeftEyeLidOutUp2LocCS1.v" "LeftEyeLidOutUp2LocPS1.v";
connectAttr "LeftEyeLidOutUp2LocShape.wp" "LeftEyeLidOutUp2LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocCS1.is";
connectAttr "LeftEyeLidOutUp2Ctrl.Z" "LeftEyeLidOutUp2CtrlZML.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos2PS.is";
connectAttr "LeftEyeLidOutUp2CvPos2CS.u" "LeftEyeLidOutUp2CvPos2PS.u";
connectAttr "LeftEyeLidOutUp2CvPos2CS.v" "LeftEyeLidOutUp2CvPos2PS.v";
connectAttr "LeftEyeLidOutUp2CvPos2Shape.wp" "LeftEyeLidOutUp2CvPos2CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos2CS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocPS1.is";
connectAttr "LeftEyeLidOutUp3LocCS1.u" "LeftEyeLidOutUp3LocPS1.u";
connectAttr "LeftEyeLidOutUp3LocCS1.v" "LeftEyeLidOutUp3LocPS1.v";
connectAttr "LeftEyeLidOutUp3LocShape.wp" "LeftEyeLidOutUp3LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocCS1.is";
connectAttr "LeftEyeLidOutUp3Ctrl.Z" "LeftEyeLidOutUp3CtrlZML.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocPS1.is";
connectAttr "LeftEyeLidOutDown1LocCS1.u" "LeftEyeLidOutDown1LocPS1.u";
connectAttr "LeftEyeLidOutDown1LocCS1.v" "LeftEyeLidOutDown1LocPS1.v";
connectAttr "LeftEyeLidOutDown1LocShape.wp" "LeftEyeLidOutDown1LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocCS1.is";
connectAttr "LeftEyeLidOutDown1Ctrl.Z" "LeftEyeLidOutDown1CtrlZML.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos1PS.is";
connectAttr "LeftEyeLidOutDown2CvPos1CS.u" "LeftEyeLidOutDown2CvPos1PS.u";
connectAttr "LeftEyeLidOutDown2CvPos1CS.v" "LeftEyeLidOutDown2CvPos1PS.v";
connectAttr "LeftEyeLidOutDown2CvPos1Shape.wp" "LeftEyeLidOutDown2CvPos1CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos1CS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocPS1.is";
connectAttr "LeftEyeLidOutDown2LocCS1.u" "LeftEyeLidOutDown2LocPS1.u";
connectAttr "LeftEyeLidOutDown2LocCS1.v" "LeftEyeLidOutDown2LocPS1.v";
connectAttr "LeftEyeLidOutDown2LocShape.wp" "LeftEyeLidOutDown2LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocCS1.is";
connectAttr "LeftEyeLidOutDown2Ctrl.Z" "LeftEyeLidOutDown2CtrlZML.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos2PS.is";
connectAttr "LeftEyeLidOutDown2CvPos2CS.u" "LeftEyeLidOutDown2CvPos2PS.u";
connectAttr "LeftEyeLidOutDown2CvPos2CS.v" "LeftEyeLidOutDown2CvPos2PS.v";
connectAttr "LeftEyeLidOutDown2CvPos2Shape.wp" "LeftEyeLidOutDown2CvPos2CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos2CS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocPS1.is";
connectAttr "LeftEyeLidOutDown3LocCS1.u" "LeftEyeLidOutDown3LocPS1.u";
connectAttr "LeftEyeLidOutDown3LocCS1.v" "LeftEyeLidOutDown3LocPS1.v";
connectAttr "LeftEyeLidOutDown3LocShape.wp" "LeftEyeLidOutDown3LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocCS1.is";
connectAttr "LeftEyeLidOutDown3Ctrl.Z" "LeftEyeLidOutDown3CtrlZML.i1";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC.ic";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC1.ic";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC2.ic";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC3.ic";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC4.ic";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC5.ic";
connectAttr "LeftEyeLidUpCrvShape.ws" "LeftEyeLidUpCrvPC6.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC1.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC2.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC3.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC4.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC5.ic";
connectAttr "LeftEyeLidDownCrvShape.ws" "LeftEyeLidDownCrvPC6.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC1.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC2.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC3.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC4.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC5.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC6.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC7.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC8.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC9.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC10.ic";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "LeftEyeLidCtrlPosCrvPC11.ic";
connectAttr "ffd1GroupParts4.og" "LeftEyeBallffd.ip[0].ig";
connectAttr "ffd1GroupId4.id" "LeftEyeBallffd.ip[0].gi";
connectAttr "LeftEyeBallffd1LatticeShape.wm" "LeftEyeBallffd.dlm";
connectAttr "LeftEyeBallffd1LatticeShape.lo" "LeftEyeBallffd.dlp";
connectAttr "LeftEyeBallffd1BaseShape.wm" "LeftEyeBallffd.blm";
connectAttr "ffd1GroupId4.msg" "LeftEyeBallffdSet.gn" -na;
connectAttr "LeftEyeBallSurfShape.iog.og[0]" "LeftEyeBallffdSet.dsm" -na;
connectAttr "LeftEyeBallffd.msg" "LeftEyeBallffdSet.ub[0]";
connectAttr "LeftEyeBallSurfShapeOrig.ws" "ffd1GroupParts4.ig";
connectAttr "ffd1GroupId4.id" "ffd1GroupParts4.gi";
connectAttr "LeftEyeLidOutUp1Ctrl.blend" "LeftEyeLidOutUp1LocOffGrpPB.w";
connectAttr "LeftEyeLidOutUp1LocOffGrpDM.ot" "LeftEyeLidOutUp1LocOffGrpPB.it2";
connectAttr "LeftEyeLidOutUp1LocOffGrpMM.o" "LeftEyeLidOutUp1LocOffGrpDM.imat";
connectAttr "LeftEyeLidUpCvPos2.wm" "LeftEyeLidOutUp1LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutUp1LocOffGrp.pim" "LeftEyeLidOutUp1LocOffGrpMM.i[4]";
connectAttr "LeftEyeLidUpCrv2PosDM.ot" "LeftEyeLidOutUp1PB.it2";
connectAttr "LeftEyeLidUpCrv2PosMM.o" "LeftEyeLidUpCrv2PosDM.imat";
connectAttr "LeftEyeLidUpCrv2Pos.wm" "LeftEyeLidUpCrv2PosMM.i[1]";
connectAttr "LeftEyeLidOutUp1LocGrp.pim" "LeftEyeLidUpCrv2PosMM.i[2]";
connectAttr "LeftEyeLidOutUp2Ctrl.blend" "LeftEyeLidOutUp2LocOffGrpPB.w";
connectAttr "LeftEyeLidOutUp2LocOffGrpDM.ot" "LeftEyeLidOutUp2LocOffGrpPB.it2";
connectAttr "LeftEyeLidOutUp2LocOffGrpMM.o" "LeftEyeLidOutUp2LocOffGrpDM.imat";
connectAttr "LeftEyeLidUpLoc.wm" "LeftEyeLidOutUp2LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutUp2LocOffGrp.pim" "LeftEyeLidOutUp2LocOffGrpMM.i[4]";
connectAttr "LeftEyeLidUpCrv3PosDM.ot" "LeftEyeLidOutUp2PB.it2";
connectAttr "LeftEyeLidUpCrv3PosMM.o" "LeftEyeLidUpCrv3PosDM.imat";
connectAttr "LeftEyeLidUpCrv3Pos.wm" "LeftEyeLidUpCrv3PosMM.i[1]";
connectAttr "LeftEyeLidOutUp2LocGrp.pim" "LeftEyeLidUpCrv3PosMM.i[2]";
connectAttr "LeftEyeLidOutUp3Ctrl.blend" "LeftEyeLidOutUp3LocOffGrpPB.w";
connectAttr "LeftEyeLidOutUp3LocOffGrpDM.ot" "LeftEyeLidOutUp3LocOffGrpPB.it2";
connectAttr "LeftEyeLidOutUp3LocOffGrpMM.o" "LeftEyeLidOutUp3LocOffGrpDM.imat";
connectAttr "LeftEyeLidUpCvPos1.wm" "LeftEyeLidOutUp3LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutUp3LocOffGrp.pim" "LeftEyeLidOutUp3LocOffGrpMM.i[4]";
connectAttr "LeftEyeLidUpCrv4PosdM.ot" "LeftEyeLidOutUp3PB.it2";
connectAttr "LeftEyeLidUpCrv4PosMM.o" "LeftEyeLidUpCrv4PosdM.imat";
connectAttr "LeftEyeLidUpCrv4Pos.wm" "LeftEyeLidUpCrv4PosMM.i[1]";
connectAttr "LeftEyeLidOutUp3LocGrp.pim" "LeftEyeLidUpCrv4PosMM.i[2]";
connectAttr "LeftEyeLidOutDown1LocOffGrpDM.ot" "LeftEyeLidOutDown1LocOffGrpPB.it2"
		;
connectAttr "LeftEyeLidOutDown1Ctrl.blend" "LeftEyeLidOutDown1LocOffGrpPB.w";
connectAttr "LeftEyeLidOutDown1LocOffGrpMM.o" "LeftEyeLidOutDown1LocOffGrpDM.imat"
		;
connectAttr "LeftEyeLidDownCvPos2.wm" "LeftEyeLidOutDown1LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutDown1LocOffGrp.pim" "LeftEyeLidOutDown1LocOffGrpMM.i[4]"
		;
connectAttr "LeftEyeLidDownCrv2PosDM.ot" "LeftEyeLidOutDown1PB.it2";
connectAttr "LeftEyeLidDownCrv2PosMM.o" "LeftEyeLidDownCrv2PosDM.imat";
connectAttr "LeftEyeLidDownCrv2Pos.wm" "LeftEyeLidDownCrv2PosMM.i[1]";
connectAttr "LeftEyeLidOutDown1LocGrp.pim" "LeftEyeLidDownCrv2PosMM.i[2]";
connectAttr "LeftEyeLidOutDown2LocOffGrpDM.ot" "LeftEyeLidOutDown2LocOffGrpPB.it2"
		;
connectAttr "LeftEyeLidOutDown2Ctrl.blend" "LeftEyeLidOutDown2LocOffGrpPB.w";
connectAttr "LeftEyeLidOutDown2LocOffGrpMM.o" "LeftEyeLidOutDown2LocOffGrpDM.imat"
		;
connectAttr "LeftEyeLidDownLoc.wm" "LeftEyeLidOutDown2LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutDown2LocOffGrp.pim" "LeftEyeLidOutDown2LocOffGrpMM.i[4]"
		;
connectAttr "LeftEyeLidDownCrv3PosDM.ot" "LeftEyeLidOutDown2PB.it2";
connectAttr "LeftEyeLidDownCrv3PosMM.o" "LeftEyeLidDownCrv3PosDM.imat";
connectAttr "LeftEyeLidDownCrv3Pos.wm" "LeftEyeLidDownCrv3PosMM.i[1]";
connectAttr "LeftEyeLidOutDown2LocGrp.pim" "LeftEyeLidDownCrv3PosMM.i[2]";
connectAttr "LeftEyeLidOutDown3LocOffGrpDM.ot" "pairBlend1.it2";
connectAttr "LeftEyeLidOutDown3Ctrl.blend" "pairBlend1.w";
connectAttr "LeftEyeLidOutDown3LocOffGrpMM.o" "LeftEyeLidOutDown3LocOffGrpDM.imat"
		;
connectAttr "LeftEyeLidDownCvPos1.wm" "LeftEyeLidOutDown3LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutDown3LocOffGrp.pim" "LeftEyeLidOutDown3LocOffGrpMM.i[4]"
		;
connectAttr "LeftEyeLidDownCrv4PosDM.ot" "LeftEyeLidOutDown3PB.it2";
connectAttr "LeftEyeLidDownCrv4PosMM.o" "LeftEyeLidDownCrv4PosDM.imat";
connectAttr "LeftEyeLidDownCrv4Pos.wm" "LeftEyeLidDownCrv4PosMM.i[1]";
connectAttr "LeftEyeLidOutDown3LocGrp.pim" "LeftEyeLidDownCrv4PosMM.i[2]";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidRootModeRvs.ix";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl0PosPS.is";
connectAttr "RightEyeLidUpCtrl0PosCS.u" "RightEyeLidUpCtrl0PosPS.u";
connectAttr "RightEyeLidUpCtrl0PosCS.v" "RightEyeLidUpCtrl0PosPS.v";
connectAttr "RightEyeLidUpCtrl0PosShape.wp" "RightEyeLidUpCtrl0PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl0PosCS.is";
connectAttr "RightEyeLidUpCtrl0PosSurfPosMM.o" "RightEyeLidUpCtrl0PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl0PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl0PosSurfPos.pim" "RightEyeLidUpCtrl0PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp1ZML.o" "RightEyeLidUp1ZAL.i1";
connectAttr "RightEyeLidSide1Ctrl.Z" "RightEyeLidUp1ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp1ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl1PosPS.is";
connectAttr "RightEyeLidUpCtrl1PosCS.u" "RightEyeLidUpCtrl1PosPS.u";
connectAttr "RightEyeLidUpCtrl1PosCS.v" "RightEyeLidUpCtrl1PosPS.v";
connectAttr "RightEyeLidUpCtrl1PosShape.wp" "RightEyeLidUpCtrl1PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl1PosCS.is";
connectAttr "RightEyeLidUpCtrl1PosSurfPosMM.o" "RightEyeLidUpCtrl1PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl1PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl1PosSurfPos.pim" "RightEyeLidUpCtrl1PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp2ZML.o" "RightEyeLidUp2ZAL.i1";
connectAttr "RightEyeLidUp2Ctrl.Z" "RightEyeLidUp2ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp2ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl2PosPS.is";
connectAttr "RightEyeLidUpCtrl2PosCS.u" "RightEyeLidUpCtrl2PosPS.u";
connectAttr "RightEyeLidUpCtrl2PosCS.v" "RightEyeLidUpCtrl2PosPS.v";
connectAttr "RightEyeLidUpCtrl2PosShape.wp" "RightEyeLidUpCtrl2PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl2PosCS.is";
connectAttr "RightEyeLidUpCtrl2PosSurfPosMM.o" "RightEyeLidUpCtrl2PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl2PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl2PosSurfPos.pim" "RightEyeLidUpCtrl2PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp3ZML.o" "RightEyeLidUp3ZAL.i1";
connectAttr "RightEyeLidUp3Ctrl.Z" "RightEyeLidUp3ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp3ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl3PosPS.is";
connectAttr "RightEyeLidUpCtrl3PosCS.u" "RightEyeLidUpCtrl3PosPS.u";
connectAttr "RightEyeLidUpCtrl3PosCS.v" "RightEyeLidUpCtrl3PosPS.v";
connectAttr "RightEyeLidUpCtrl3PosShape.wp" "RightEyeLidUpCtrl3PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl3PosCS.is";
connectAttr "RightEyeLidUpCtrl3PosSurfPosMM.o" "RightEyeLidUpCtrl3PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl3PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl3PosSurfPos.pim" "RightEyeLidUpCtrl3PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp4ZML.o" "RightEyeLidUp4ZAL.i1";
connectAttr "RightEyeLidUp4Ctrl.Z" "RightEyeLidUp4ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp4ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl4PosPS.is";
connectAttr "RightEyeLidUpCtrl4PosCS.u" "RightEyeLidUpCtrl4PosPS.u";
connectAttr "RightEyeLidUpCtrl4PosCS.v" "RightEyeLidUpCtrl4PosPS.v";
connectAttr "RightEyeLidUpCtrl4PosShape.wp" "RightEyeLidUpCtrl4PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl4PosCS.is";
connectAttr "RightEyeLidUpCtrl4PosSurfPosMM.o" "RightEyeLidUpCtrl4PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl4PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl4PosSurfPos.pim" "RightEyeLidUpCtrl4PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp5ZML.o" "RightEyeLidUp5ZAL.i1";
connectAttr "RightEyeLidUp5Ctrl.Z" "RightEyeLidUp5ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp5ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl5PosPS.is";
connectAttr "RightEyeLidUpCtrl5PosCS.u" "RightEyeLidUpCtrl5PosPS.u";
connectAttr "RightEyeLidUpCtrl5PosCS.v" "RightEyeLidUpCtrl5PosPS.v";
connectAttr "RightEyeLidUpCtrl5PosShape.wp" "RightEyeLidUpCtrl5PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl5PosCS.is";
connectAttr "RightEyeLidUpCtrl5PosSurfPosMM.o" "RightEyeLidUpCtrl5PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl5PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl5PosSurfPos.pim" "RightEyeLidUpCtrl5PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp6ZML.o" "RightEyeLidUp6ZAL.i1";
connectAttr "RightEyeLidUp6Ctrl.Z" "RightEyeLidUp6ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp6ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl6PosPS.is";
connectAttr "RightEyeLidUpCtrl6PosCS.u" "RightEyeLidUpCtrl6PosPS.u";
connectAttr "RightEyeLidUpCtrl6PosCS.v" "RightEyeLidUpCtrl6PosPS.v";
connectAttr "RightEyeLidUpCtrl6PosShape.wp" "RightEyeLidUpCtrl6PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidUpCtrl6PosCS.is";
connectAttr "RightEyeLidUpCtrl6PosSurfPosMM.o" "RightEyeLidUpCtrl6PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidUpCtrl6PosSurfPosMM.i[3]";
connectAttr "RightEyeLidUpCtrl6PosSurfPos.pim" "RightEyeLidUpCtrl6PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidUp7ZML.o" "RightEyeLidUp7ZAL.i1";
connectAttr "RightEyeLidSide2Ctrl.Z" "RightEyeLidUp7ZAL.i2";
connectAttr "RightEyeLidUpMainCtrl.Z" "RightEyeLidUp7ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl0PosPS.is";
connectAttr "RightEyeLidDownCtrl0PosCS.u" "RightEyeLidDownCtrl0PosPS.u";
connectAttr "RightEyeLidDownCtrl0PosCS.v" "RightEyeLidDownCtrl0PosPS.v";
connectAttr "RightEyeLidDownCtrl0PosShape.wp" "RightEyeLidDownCtrl0PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl0PosCS.is";
connectAttr "RightEyeLidDownCtrl0PosSurfPosMM.o" "RightEyeLidDownCtrl0PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl0PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl0PosSurfPos.pim" "RightEyeLidDownCtrl0PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown1ZML.o" "RightEyeLidSide1ZAL.i1";
connectAttr "RightEyeLidSide1Ctrl.Z" "RightEyeLidSide1ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown1ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl1PosPS.is";
connectAttr "RightEyeLidDownCtrl1PosCS.u" "RightEyeLidDownCtrl1PosPS.u";
connectAttr "RightEyeLidDownCtrl1PosCS.v" "RightEyeLidDownCtrl1PosPS.v";
connectAttr "RightEyeLidDownCtrl1PosShape.wp" "RightEyeLidDownCtrl1PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl1PosCS.is";
connectAttr "RightEyeLidDownCtrl1PosSurfPosMM.o" "RightEyeLidDownCtrl1PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl1PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl1PosSurfPos.pim" "RightEyeLidDownCtrl1PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown2ZML.o" "RightEyeLidDown2ZAL.i1";
connectAttr "RightEyeLidDown2Ctrl.Z" "RightEyeLidDown2ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown2ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl2PosPS.is";
connectAttr "RightEyeLidDownCtrl2PosCS.u" "RightEyeLidDownCtrl2PosPS.u";
connectAttr "RightEyeLidDownCtrl2PosCS.v" "RightEyeLidDownCtrl2PosPS.v";
connectAttr "RightEyeLidDownCtrl2PosShape.wp" "RightEyeLidDownCtrl2PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl2PosCS.is";
connectAttr "RightEyeLidDownCtrl2PosSurfPosMM.o" "RightEyeLidDownCtrl2PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl2PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl2PosSurfPos.pim" "RightEyeLidDownCtrl2PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown3ZML.o" "RightEyeLidDown3ZAL.i1";
connectAttr "RightEyeLidDown3Ctrl.Z" "RightEyeLidDown3ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown3ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl3PosPS.is";
connectAttr "RightEyeLidDownCtrl3PosCS.u" "RightEyeLidDownCtrl3PosPS.u";
connectAttr "RightEyeLidDownCtrl3PosCS.v" "RightEyeLidDownCtrl3PosPS.v";
connectAttr "RightEyeLidDownCtrl3PosShape.wp" "RightEyeLidDownCtrl3PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl3PosCS.is";
connectAttr "RightEyeLidDownCtrl3PosSurfPosMM.o" "RightEyeLidDownCtrl3PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl3PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl3PosSurfPos.pim" "RightEyeLidDownCtrl3PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown4ZML.o" "RightEyeLidDown4ZAL.i1";
connectAttr "RightEyeLidDown4Ctrl.Z" "RightEyeLidDown4ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown4ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl4PosPS.is";
connectAttr "RightEyeLidDownCtrl4PosCS.u" "RightEyeLidDownCtrl4PosPS.u";
connectAttr "RightEyeLidDownCtrl4PosCS.v" "RightEyeLidDownCtrl4PosPS.v";
connectAttr "RightEyeLidDownCtrl4PosShape.wp" "RightEyeLidDownCtrl4PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl4PosCS.is";
connectAttr "RightEyeLidDownCtrl4PosSurfPosMM.o" "RightEyeLidDownCtrl4PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl4PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl4PosSurfPos.pim" "RightEyeLidDownCtrl4PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown5ZML.o" "RightEyeLidDown5ZAL.i1";
connectAttr "RightEyeLidDown5Ctrl.Z" "RightEyeLidDown5ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown5ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl5PosPS.is";
connectAttr "RightEyeLidDownCtrl5PosCS.u" "RightEyeLidDownCtrl5PosPS.u";
connectAttr "RightEyeLidDownCtrl5PosCS.v" "RightEyeLidDownCtrl5PosPS.v";
connectAttr "RightEyeLidDownCtrl5PosShape.wp" "RightEyeLidDownCtrl5PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl5PosCS.is";
connectAttr "RightEyeLidDownCtrl5PosSurfPosMM.o" "RightEyeLidDownCtrl5PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl5PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl5PosSurfPos.pim" "RightEyeLidDownCtrl5PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown6ZML.o" "RightEyeLidDown6ZAL.i1";
connectAttr "RightEyeLidDown6Ctrl.Z" "RightEyeLidDown6ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown6ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl6PosPS.is";
connectAttr "RightEyeLidDownCtrl6PosCS.u" "RightEyeLidDownCtrl6PosPS.u";
connectAttr "RightEyeLidDownCtrl6PosCS.v" "RightEyeLidDownCtrl6PosPS.v";
connectAttr "RightEyeLidDownCtrl6PosShape.wp" "RightEyeLidDownCtrl6PosCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidDownCtrl6PosCS.is";
connectAttr "RightEyeLidDownCtrl6PosSurfPosMM.o" "RightEyeLidDownCtrl6PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidDownCtrl6PosSurfPosMM.i[3]";
connectAttr "RightEyeLidDownCtrl6PosSurfPos.pim" "RightEyeLidDownCtrl6PosSurfPosMM.i[4]"
		;
connectAttr "RightEyeLidDown7ZML.o" "RightEyeLidDown7ZAL.i1";
connectAttr "RightEyeLidSide2Ctrl.Z" "RightEyeLidDown7ZAL.i2";
connectAttr "RightEyeLidDownMainCtrl.Z" "RightEyeLidDown7ZML.i2";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp1LocPS1.is";
connectAttr "RightEyeLidOutUp1LocCS1.u" "RightEyeLidOutUp1LocPS1.u";
connectAttr "RightEyeLidOutUp1LocCS1.v" "RightEyeLidOutUp1LocPS1.v";
connectAttr "RightEyeLidOutUp1LocShape.wp" "RightEyeLidOutUp1LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp1LocCS1.is";
connectAttr "RightEyeLidOutUp1Ctrl.Z" "RightEyeLidOutUp1ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos1PS.is";
connectAttr "RightEyeLidOutUp2CvPos1CS.u" "RightEyeLidOutUp2CvPos1PS.u";
connectAttr "RightEyeLidOutUp2CvPos1CS.v" "RightEyeLidOutUp2CvPos1PS.v";
connectAttr "RightEyeLidOutUp2CvPos1Shape.wp" "RightEyeLidOutUp2CvPos1CS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos1CS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocPS1.is";
connectAttr "RightEyeLidOutUp2LocCS1.u" "RightEyeLidOutUp2LocPS1.u";
connectAttr "RightEyeLidOutUp2LocCS1.v" "RightEyeLidOutUp2LocPS1.v";
connectAttr "RightEyeLidOutUp2LocShape.wp" "RightEyeLidOutUp2LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocCS1.is";
connectAttr "RightEyeLidOutUp2Ctrl.Z" "RightEyeLidOutUp2ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos2PS.is";
connectAttr "RightEyeLidOutUp2CvPos2CS.u" "RightEyeLidOutUp2CvPos2PS.u";
connectAttr "RightEyeLidOutUp2CvPos2CS.v" "RightEyeLidOutUp2CvPos2PS.v";
connectAttr "RightEyeLidOutUp2CvPos2Shape.wp" "RightEyeLidOutUp2CvPos2CS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos2CS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocPS1.is";
connectAttr "RightEyeLidOutUp3LocCS1.u" "RightEyeLidOutUp3LocPS1.u";
connectAttr "RightEyeLidOutUp3LocCS1.v" "RightEyeLidOutUp3LocPS1.v";
connectAttr "RightEyeLidOutUp3LocShape.wp" "RightEyeLidOutUp3LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocCS1.is";
connectAttr "RightEyeLidOutUp3Ctrl.Z" "RightEyeLidOutUp3ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocPS1.is";
connectAttr "RightEyeLidOutDown1LocCS1.u" "RightEyeLidOutDown1LocPS1.u";
connectAttr "RightEyeLidOutDown1LocCS1.v" "RightEyeLidOutDown1LocPS1.v";
connectAttr "RightEyeLidOutDown1LocShape.wp" "RightEyeLidOutDown1LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocCS1.is";
connectAttr "RightEyeLidOutDown1Ctrl.Z" "RightEyeLidOutDown1ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos1PS.is";
connectAttr "RightEyeLidOutDown2CvPos1CS.u" "RightEyeLidOutDown2CvPos1PS.u";
connectAttr "RightEyeLidOutDown2CvPos1CS.v" "RightEyeLidOutDown2CvPos1PS.v";
connectAttr "RightEyeLidOutDown2CvPos1Shape.wp" "RightEyeLidOutDown2CvPos1CS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos1CS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocPS1.is";
connectAttr "RightEyeLidOutDown2LocCS1.u" "RightEyeLidOutDown2LocPS1.u";
connectAttr "RightEyeLidOutDown2LocCS1.v" "RightEyeLidOutDown2LocPS1.v";
connectAttr "RightEyeLidOutDown2LocShape.wp" "RightEyeLidOutDown2LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocCS1.is";
connectAttr "RightEyeLidOutDown2Ctrl.Z" "RightEyeLidOutDown2ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos2PS.is";
connectAttr "RightEyeLidOutDown2CvPos2CS.u" "RightEyeLidOutDown2CvPos2PS.u";
connectAttr "RightEyeLidOutDown2CvPos2CS.v" "RightEyeLidOutDown2CvPos2PS.v";
connectAttr "RightEyeLidOutDown2CvPos2Shape.wp" "RightEyeLidOutDown2CvPos2CS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos2CS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocPS1.is";
connectAttr "RightEyeLidOutDown3LocCS1.u" "RightEyeLidOutDown3LocPS1.u";
connectAttr "RightEyeLidOutDown3LocCS1.v" "RightEyeLidOutDown3LocPS1.v";
connectAttr "RightEyeLidOutDown3LocShape.wp" "RightEyeLidOutDown3LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocCS1.is";
connectAttr "RightEyeLidOutDown3Ctrl.Z" "RightEyeLidOutDown3ZRvs.i1";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC.ic";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC1.ic";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC2.ic";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC3.ic";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC4.ic";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC5.ic";
connectAttr "RightEyeLidUpCrvShape.ws" "RightEyeLidUpCrvPC6.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC1.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC2.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC3.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC4.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC5.ic";
connectAttr "RightEyeLidDownCrvShape.ws" "RightEyeLidDownCrvPC6.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC1.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC2.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC3.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC4.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC5.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC6.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC7.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC8.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC9.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC10.ic";
connectAttr "RightEyeLidCtrlPosCrvShape.ws" "RightEyeLidCtrlPosCrvPC11.ic";
connectAttr "ffd1GroupParts5.og" "RightEyeBallffd.ip[0].ig";
connectAttr "ffd1GroupId5.id" "RightEyeBallffd.ip[0].gi";
connectAttr "RightEyeBallffd1LatticeShape.wm" "RightEyeBallffd.dlm";
connectAttr "RightEyeBallffd1LatticeShape.lo" "RightEyeBallffd.dlp";
connectAttr "RightEyeBallffd1BaseShape.wm" "RightEyeBallffd.blm";
connectAttr "ffd1GroupId5.msg" "RightEyeBallffdSet.gn" -na;
connectAttr "RightEyeBallSurfShape.iog.og[0]" "RightEyeBallffdSet.dsm" -na;
connectAttr "RightEyeBallffd.msg" "RightEyeBallffdSet.ub[0]";
connectAttr "RightEyeBallSurfShapeOrig.ws" "ffd1GroupParts5.ig";
connectAttr "ffd1GroupId5.id" "ffd1GroupParts5.gi";
connectAttr "RightEyeLidOutUp1LocOffGrpDM.ot" "RightEyeLidOutUp1LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutUp1Ctrl.blend" "RightEyeLidOutUp1LocOffGrpPB.w";
connectAttr "RightEyeLidOutUp1LocOffGrpMM.o" "RightEyeLidOutUp1LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidUpCvPos2.wm" "RightEyeLidOutUp1LocOffGrpMM.i[3]";
connectAttr "RightEyeLidOutUp1LocOffGrp.pim" "RightEyeLidOutUp1LocOffGrpMM.i[4]"
		;
connectAttr "RightEyeLidUpCrv2PosDM.ot" "RightEyeLidOutUp1PB.it2";
connectAttr "RightEyeLidUpCrv2PosMM.o" "RightEyeLidUpCrv2PosDM.imat";
connectAttr "RightEyeLidUpCrv2Pos.wm" "RightEyeLidUpCrv2PosMM.i[1]";
connectAttr "RightEyeLidOutUp1LocGrp.pim" "RightEyeLidUpCrv2PosMM.i[2]";
connectAttr "RightEyeLidOutUp2LocOffGrpDM.ot" "pairBlend2.it2";
connectAttr "RightEyeLidOutUp2Ctrl.blend" "pairBlend2.w";
connectAttr "RightEyeLidOutUp2LocOffGrpMM.o" "RightEyeLidOutUp2LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidUpLoc.wm" "RightEyeLidOutUp2LocOffGrpMM.i[3]";
connectAttr "RightEyeLidOutUp2LocOffGrp.pim" "RightEyeLidOutUp2LocOffGrpMM.i[4]"
		;
connectAttr "RightEyeLidUpCrv3PosDM.ot" "RightEyeLidOutUp2PB.it2";
connectAttr "RightEyeLidUpCrv3PosMM.o" "RightEyeLidUpCrv3PosDM.imat";
connectAttr "RightEyeLidUpCrv3Pos.wm" "RightEyeLidUpCrv3PosMM.i[1]";
connectAttr "RightEyeLidOutUp2LocGrp.pim" "RightEyeLidUpCrv3PosMM.i[2]";
connectAttr "RightEyeLidOutUp3LocOffGrpDM.ot" "RightEyeLidOutUp3LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutUp3Ctrl.blend" "RightEyeLidOutUp3LocOffGrpPB.w";
connectAttr "RightEyeLidOutUp3LocOffGrpMM.o" "RightEyeLidOutUp3LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidUpCvPos1.wm" "RightEyeLidOutUp3LocOffGrpMM.i[3]";
connectAttr "RightEyeLidOutUp3LocOffGrp.pim" "RightEyeLidOutUp3LocOffGrpMM.i[4]"
		;
connectAttr "RightEyeLidUpCrv4PosDM.ot" "RightEyeLidOutUp3PB.it2";
connectAttr "RightEyeLidUpCrv4PosMM.o" "RightEyeLidUpCrv4PosDM.imat";
connectAttr "RightEyeLidUpCrv4Pos.wm" "RightEyeLidUpCrv4PosMM.i[1]";
connectAttr "RightEyeLidOutUp3LocGrp.pim" "RightEyeLidUpCrv4PosMM.i[2]";
connectAttr "RightEyeLidOutDown1LocOffGrpDM.ot" "RightEyeLidOutDown1LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutDown1Ctrl.blend" "RightEyeLidOutDown1LocOffGrpPB.w";
connectAttr "RightEyeLidOutDown1LocOffGrpMM.o" "RightEyeLidOutDown1LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidDownCvPos2.wm" "RightEyeLidOutDown1LocOffGrpMM.i[3]";
connectAttr "RightEyeLidOutDown1LocOffGrp.pim" "RightEyeLidOutDown1LocOffGrpMM.i[4]"
		;
connectAttr "RightEyeLidDownCrv2PosDM.ot" "RightEyeLidOutDown1PB.it2";
connectAttr "RightEyeLidDownCrv2PosMM.o" "RightEyeLidDownCrv2PosDM.imat";
connectAttr "RightEyeLidDownCrv2Pos.wm" "RightEyeLidDownCrv2PosMM.i[1]";
connectAttr "RightEyeLidOutDown1LocGrp.pim" "RightEyeLidDownCrv2PosMM.i[2]";
connectAttr "RightEyeLidOutDown2LocOffGrpDM.ot" "RightEyeLidOutDown2LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutDown2Ctrl.blend" "RightEyeLidOutDown2LocOffGrpPB.w";
connectAttr "RightEyeLidOutDown2LocOffGrpMM.o" "RightEyeLidOutDown2LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidDownLoc.wm" "RightEyeLidOutDown2LocOffGrpMM.i[3]";
connectAttr "RightEyeLidOutDown2LocOffGrp.pim" "RightEyeLidOutDown2LocOffGrpMM.i[4]"
		;
connectAttr "RightEyeLidDownCrv3PosDM.ot" "RightEyeLidOutDown2PB.it2";
connectAttr "RightEyeLidDownCrv3PosMM.o" "RightEyeLidDownCrv3PosDM.imat";
connectAttr "RightEyeLidDownCrv3Pos.wm" "RightEyeLidDownCrv3PosMM.i[1]";
connectAttr "RightEyeLidOutDown2LocGrp.pim" "RightEyeLidDownCrv3PosMM.i[2]";
connectAttr "RightEyeLidOutDown3LocOffGrpDM.ot" "RightEyeLidOutDown3LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutDown3Ctrl.blend" "RightEyeLidOutDown3LocOffGrpPB.w";
connectAttr "RightEyeLidOutDown3LocOffGrpMM.o" "RightEyeLidOutDown3LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidDownCvPos1.wm" "RightEyeLidOutDown3LocOffGrpMM.i[3]";
connectAttr "RightEyeLidOutDown3LocOffGrp.pim" "RightEyeLidOutDown3LocOffGrpMM.i[4]"
		;
connectAttr "RightEyeLidDownCrv4PosDM.ot" "RightEyeLidOutDown3PB.it2";
connectAttr "RightEyeLidDownCrv4PosMM.o" "RightEyeLidDownCrv4PosDM.imat";
connectAttr "RightEyeLidDownCrv4Pos.wm" "RightEyeLidDownCrv4PosMM.i[1]";
connectAttr "RightEyeLidOutDown3LocGrp.pim" "RightEyeLidDownCrv4PosMM.i[2]";
connectAttr "tweak1.og[0]" "EyeLidPosMirrorBS.ip[0].ig";
connectAttr "RightEyeLidCtrlPosCrvShapeOrig.l" "EyeLidPosMirrorBS.orggeom[0]";
connectAttr "LeftEyeLidCtrlPosCrvShape.ws" "EyeLidPosMirrorBS.it[0].itg[0].iti[6000].igt"
		;
connectAttr "RightEyeLidCtrlPosCrvShapeOrig.ws" "tweak1.ip[0].ig";
connectAttr "LeftEyeLidOutUpJntCrvShape.ws" "LeftEyeLidOutUpJntCrv0PC.ic";
connectAttr "LeftEyeLidOutUpJntCrvShape.ws" "LeftEyeLidOutUpJntCrv1PC.ic";
connectAttr "LeftEyeLidOutUpJntCrvShape.ws" "LeftEyeLidOutUpJntCrv2PC.ic";
connectAttr "LeftEyeLidOutDownJntCrvShape.ws" "LeftEyeLidOutDownJntCrv0PC.ic";
connectAttr "LeftEyeLidOutDownJntCrvShape.ws" "LeftEyeLidOutDownJntCrv1PC.ic";
connectAttr "LeftEyeLidOutDownJntCrvShape.ws" "LeftEyeLidOutDownJntCrv2PC.ic";
connectAttr "RightEyeLidOutUpJntCrvShape.ws" "RightEyeLidOutUpJntCrv0PC.ic";
connectAttr "RightEyeLidOutUpJntCrvShape.ws" "RightEyeLidOutUpJntCrv1PC.ic";
connectAttr "RightEyeLidOutUpJntCrvShape.ws" "RightEyeLidOutUpJntCrv2PC.ic";
connectAttr "RightEyeLidOutDownJntCrvShape.ws" "RightEyeLidOutDownJntCrv0PC.ic";
connectAttr "RightEyeLidOutDownJntCrvShape.ws" "RightEyeLidOutDownJntCrv1PC.ic";
connectAttr "RightEyeLidOutDownJntCrvShape.ws" "RightEyeLidOutDownJntCrv2PC.ic";
connectAttr "LeftEyeLidUpCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LefteyeLidDownCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LefteyeLidOutCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LefteyeLidInCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutUp1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidOutUp2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidOutUp3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidOutDown1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LeftEyeLidOutDown2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LeftEyeLidOutDown3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LeftEyeLidSide1RvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp4CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp5CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp6CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidDown3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidDown4CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidDown5CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidDown6CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidSide2RvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidRootModeRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUpCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RighteyeLidDownCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RighteyeLidOutCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RighteyeLidInCtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutUp1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RightEyeLidOutUp2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RightEyeLidOutUp3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RightEyeLidOutDown1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RightEyeLidOutDown2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RightEyeLidOutDown3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RightEyeLidUp1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidUp2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidUp3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidUp4CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidUp5CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidUp6CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidDown2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidDown3CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidDown4CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidDown5CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidDown6CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidSide2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidRootModeRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp2ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp3ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp6ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp4ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp7ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp5ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp1ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp2ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp6ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp3ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp4ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp5ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp7ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidUp1ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown4ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown6ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown1ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown4ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown6ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown1ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown3ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown3ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown5ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown5ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown7ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown7ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown2ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDown2ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp1ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp6ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp5ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp2ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp2ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp1ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp5ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp6ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp3ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp3ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp7ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp7ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp4ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidUp4ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown4ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown5ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown3ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown7ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown6ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown5ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown6ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown7ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown4ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown3ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown1ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidSide1ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown2ZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDown2ZAL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutDown1ZRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutDown2ZRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutUp2ZRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutUp1ZRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutUp3ZRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutDown3ZRvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutDown3CtrlZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutDown1CtrlZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutDown2CtrlZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutUp1CtrlZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutUp2CtrlZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutUp3CtrlZML.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RightEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
// End of eyeLidCtrl06.ma
