//Maya ASCII 2022 scene
//Name: eyeLidCtrl.ma
//Last modified: Fri, Feb 25, 2022 10:07:36 AM
//Codeset: 949
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "7AF94D01-4A5C-F2DC-2C0F-C4A239A073B4";
createNode transform -s -n "persp";
	rename -uid "C1B70C88-4F2C-4B18-A575-F985F21CBDA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.3312055613119878 3.7032198089388348 18.963513702248253 ;
	setAttr ".r" -type "double3" -9.9383527295971898 26.199999999999157 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6D2B2E1B-4AF8-1DAF-E4C6-6A9C44E1F1EF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.456935618026101;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "420A1208-48CE-D787-39BB-589B45BE678C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D9F5C839-4CB9-F955-A24F-2FA7108B1713";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "120C246E-435B-835A-27D3-A08623CF9265";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7B61CB03-4E0F-FD06-F241-5AA903B840ED";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0D94F61E-4946-31BB-1373-238B3A151037";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "29F30E4F-49DF-8BB9-B3B8-CEA2F631F88C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "EyeLidGrp";
	rename -uid "10C0FE86-4921-0E2B-03AE-D4A51719DE67";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode transform -n "EyeLidCtrlGrp" -p "EyeLidGrp";
	rename -uid "D6BE58E3-4749-BA9D-6DCF-888D5B7E35AA";
	setAttr ".r" -type "double3" -90 3.1805546814635168e-15 -90.000000000003254 ;
createNode transform -n "LeftEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "6C607F16-420C-653D-0684-35BD3295BC23";
createNode transform -n "LeftEyeLidOutCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "48FC6BC0-4A2C-267C-BA6A-7A909E308CAC";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidOutUpCtrlGrp" -p "LeftEyeLidOutCtrlGrp";
	rename -uid "3F144051-428F-00AA-5E18-B191D0F86C3A";
createNode transform -n "LeftEyeLidOutUp1CtrlPos" -p "LeftEyeLidOutUpCtrlGrp";
	rename -uid "D521CF55-4CBE-9839-C2F5-FEB1AB4BF314";
createNode transform -n "LeftEyeLidOutUp1CtrlGrp" -p "LeftEyeLidOutUp1CtrlPos";
	rename -uid "B442811B-400A-C282-48A1-5BB6143EB0FF";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp1CtrlRvs" -p "LeftEyeLidOutUp1CtrlGrp";
	rename -uid "45DD530B-43E5-7C25-0D1B-02AC8A280869";
createNode transform -n "LeftEyeLidOutUp1Ctrl" -p "LeftEyeLidOutUp1CtrlRvs";
	rename -uid "6D4D3AA0-4974-6744-B9B6-5CA5783A2B45";
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
	rename -uid "FFF6085E-44B9-180C-9AB6-51AAFD9A01AA";
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
	rename -uid "B5C63CD8-44BB-2601-D608-B48225536753";
createNode transform -n "LeftEyeLidOutUp2CtrlGrp" -p "LeftEyeLidOutUp2CtrlPos";
	rename -uid "268DE943-499E-E89B-9F10-F0A4B97A5ABB";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp2CtrlRvs" -p "LeftEyeLidOutUp2CtrlGrp";
	rename -uid "37F994A8-4DFD-DC3E-DF5C-8A80440AA2A0";
createNode transform -n "LeftEyeLidOutUp2Ctrl" -p "LeftEyeLidOutUp2CtrlRvs";
	rename -uid "9DFE3E2E-4B18-3557-4BEA-47BD5C3160D2";
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
	rename -uid "570F3227-43C4-EAD8-6BE1-EF9505CDB8AB";
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
	rename -uid "103D7F9E-4A77-1EE9-B82C-79863C128C8F";
createNode transform -n "LeftEyeLidOutUp3CtrlGrp" -p "LeftEyeLidOutUp3CtrlPos";
	rename -uid "5ACBE8C9-4F2E-8921-AE1E-438FCE4BCF8C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp3CtrlRvs" -p "LeftEyeLidOutUp3CtrlGrp";
	rename -uid "DD41C2D2-4FCF-84A0-C827-5E99D81EC03F";
createNode transform -n "LeftEyeLidOutUp3Ctrl" -p "LeftEyeLidOutUp3CtrlRvs";
	rename -uid "5E11D4E9-468A-6482-CF9D-0EB591E4F03B";
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
	rename -uid "746BB2F5-4026-67CA-CE09-88A5FDB93D6A";
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
	rename -uid "05438C3A-4406-3CF3-8800-658088C7F335";
createNode transform -n "LeftEyeLidOutDown1CtrlPos" -p "LeftEyeLidOutDownCtrlGrp";
	rename -uid "712ABF3B-4F14-4F6A-0C3C-E7B233506348";
createNode transform -n "LeftEyeLidOutDown1CtrlGrp" -p "LeftEyeLidOutDown1CtrlPos";
	rename -uid "76C4780F-40BB-28B5-40EA-0880ED015C51";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown1CtrlRvs" -p "LeftEyeLidOutDown1CtrlGrp";
	rename -uid "95A27E29-40DC-8A50-A085-14814DF86F1B";
createNode transform -n "LeftEyeLidOutDown1Ctrl" -p "LeftEyeLidOutDown1CtrlRvs";
	rename -uid "A8FD4DE4-452E-FDC2-A160-CC8A72357F2D";
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
	rename -uid "F1A56439-4E11-0D7E-7894-7C9050DE40A0";
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
	rename -uid "DE0A49FB-41ED-0DDA-DB15-7B84E67EAA21";
createNode transform -n "LeftEyeLidOutDown2CtrlGrp" -p "LeftEyeLidOutDown2CtrlPos";
	rename -uid "B00C6FAA-4F0F-0176-5E98-4780E00C7C1D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown2CtrlRvs" -p "LeftEyeLidOutDown2CtrlGrp";
	rename -uid "FB0C4662-45AC-EA85-945C-458A9CC31144";
createNode transform -n "LeftEyeLidOutDown2Ctrl" -p "LeftEyeLidOutDown2CtrlRvs";
	rename -uid "18844CAF-43C2-DF71-16A9-DBB43E6499D6";
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
	rename -uid "C62B453C-4168-5335-8211-F6A14471E9F5";
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
	rename -uid "1C5C61AB-403C-1B98-CEC5-F88471A883C4";
createNode transform -n "LeftEyeLidOutDown3CtrlGrp" -p "LeftEyeLidOutDown3CtrlPos";
	rename -uid "231CB9A0-4DA9-CE13-7261-0EBC07371C0B";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown3CtrlRvs" -p "LeftEyeLidOutDown3CtrlGrp";
	rename -uid "03DCD3D0-49C3-6876-7066-C3978B2F379B";
createNode transform -n "LeftEyeLidOutDown3Ctrl" -p "LeftEyeLidOutDown3CtrlRvs";
	rename -uid "AFDA9CB7-4E49-18DB-47F9-22AE0CE54D11";
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
	rename -uid "AE4FD491-4E7F-3E2F-C192-729F5A85AC46";
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
	rename -uid "DF8940B8-4DA2-D144-4A91-C697B6EE31E1";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidInCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "EEF03FD0-4CC7-D1F5-B4C4-FF99475BAF35";
createNode transform -n "LeftEyeLidInMainCtrlGrp" -p "LeftEyeLidInCtrlPos";
	rename -uid "4BF1DDD7-4001-437B-5E03-D7B2792793D2";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidInMainCtrlRvs" -p "LeftEyeLidInMainCtrlGrp";
	rename -uid "B52D410A-4FC3-9571-60BE-B1A51B6F7F76";
createNode transform -n "LeftEyeLidInMainCtrl" -p "LeftEyeLidInMainCtrlRvs";
	rename -uid "E00DE2C3-4036-178C-5385-16BF99E887D7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrlShape" -p "LeftEyeLidInMainCtrl";
	rename -uid "5A2F2DF1-4310-E7DC-BA68-A6B5C2C73D4D";
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
	rename -uid "42F3F853-4053-3B5F-A4E1-229636E46C1F";
createNode transform -n "LeftEyeLidUpMainCtrlGrp" -p "LeftEyeLidUpCtrlPos";
	rename -uid "5D56A421-44A1-2ED6-F493-80BF3E456E83";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftEyeLidUpMainCtrlRvs" -p "LeftEyeLidUpMainCtrlGrp";
	rename -uid "114E2308-4E55-2F98-CF78-B08B7C136A64";
createNode transform -n "LeftEyeLidUpMainCtrl" -p "LeftEyeLidUpMainCtrlRvs";
	rename -uid "CC9D8D41-4D4B-73BD-7D04-0B9B375D366F";
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
	rename -uid "0DAAE2F2-403F-460C-FCA5-049E3277D0AE";
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
	rename -uid "C713A200-408B-14B3-ECEB-50A10CD56579";
createNode transform -n "LeftEyeLidOutMainCtrlGrp" -p "LeftEyeLidOutCtrlPos";
	rename -uid "D4A290FF-4CCE-3E1A-B962-15B1C690D69E";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutMainCtrlRvs" -p "LeftEyeLidOutMainCtrlGrp";
	rename -uid "5BEA06A3-4057-37B0-2CA7-B7AF23E7DC3C";
createNode transform -n "LeftEyeLidOutMainCtrl" -p "LeftEyeLidOutMainCtrlRvs";
	rename -uid "0D8103B9-4956-F2D6-EE58-20A4F9C1CBD1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "LeftEyeLidOutMainCtrl";
	rename -uid "3EFCF793-4045-1BDB-D7C7-3C8F2C89B728";
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
	rename -uid "5AE8EFC8-437C-CA57-544A-BD9CF88800B7";
createNode transform -n "LeftEyeLidDownMainCtrlGrp" -p "LeftEyeLidDownCtrlPos";
	rename -uid "73DA7893-47FD-5F0C-9D70-E0A1C587188E";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDownMainCtrlRvs" -p "LeftEyeLidDownMainCtrlGrp";
	rename -uid "0037667E-4D47-92DA-BF78-D9A053C42E8E";
createNode transform -n "LeftEyeLidDownMainCtrl" -p "LeftEyeLidDownMainCtrlRvs";
	rename -uid "F8EF0DA5-44A4-65F7-F50A-BF813AB9E87A";
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
	rename -uid "9EBC1245-4C67-9FEF-811D-6AA244235BD9";
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
	rename -uid "F17D2D96-46C0-02D1-9E27-A79783D01DF5";
createNode transform -n "LeftEyeLidCCtrlOffGrp" -p "LeftEyeLidCCtrlGrp";
	rename -uid "F2B7DECB-4350-0812-5312-1D8D42E04CF6";
	setAttr ".t" -type "double3" 0 0 3 ;
createNode transform -n "LeftEyeLidCCtrl" -p "LeftEyeLidCCtrlOffGrp";
	rename -uid "A9FE0268-4880-F7CA-560F-1B92563E3455";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftEyeLidCCtrlShape" -p "LeftEyeLidCCtrl";
	rename -uid "D3AB5121-44AC-E79E-EA46-D2BE1CE22A80";
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
	rename -uid "F00F3FE1-49F7-8C42-FF84-D5BC8F662570";
	setAttr ".t" -type "double3" -3.0000000277940013 1.2079227474570066e-13 -2.9999999999999964 ;
createNode transform -n "LeftEyeLidUpCtrlGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "5C299D6E-459D-7E31-CCCF-B8BE9673ADDF";
createNode transform -n "LeftEyeLidUp2CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "38B4655D-481B-1EEA-816A-479D115F3A6B";
createNode transform -n "LeftEyeLidUp2CtrlGrpGrp" -p "LeftEyeLidUp2CtrlPosGrp";
	rename -uid "1B05B52F-4865-BE1B-085D-C181B8503BB5";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp2CtrlRvsGrp" -p "LeftEyeLidUp2CtrlGrpGrp";
	rename -uid "9FFA91CC-421A-4634-72A4-B6B5C01B9210";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp2Ctrl" -p "LeftEyeLidUp2CtrlRvsGrp";
	rename -uid "9B42B1FE-4496-921F-77AC-ECAF0DA7CDA9";
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
	rename -uid "D754DA99-4BD8-1E57-AF97-0C8726749D85";
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
	rename -uid "E859AE3A-4748-75D4-9C3D-08A4EBD7605F";
createNode transform -n "LeftEyeLidUp3CtrlGrpGrp" -p "LeftEyeLidUp3CtrlPosGrp";
	rename -uid "6094A07D-4E01-6A0A-BB95-789BF3765174";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp3CtrlRvsGrp" -p "LeftEyeLidUp3CtrlGrpGrp";
	rename -uid "F7FF1EC7-4AC3-05C0-9732-8D9E58F85BC0";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp3Ctrl" -p "LeftEyeLidUp3CtrlRvsGrp";
	rename -uid "A2CC8E10-40C8-8A86-7CE7-D582826F3D1D";
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
	rename -uid "1A99DEF6-4F20-481A-637D-9BB2286EEC3B";
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
	rename -uid "AD16B6CC-4861-57C5-6C2F-E8A784667529";
createNode transform -n "LeftEyeLidUp4CtrlGrpGrp" -p "LeftEyeLidUp4CtrlPosGrp";
	rename -uid "813C013B-4304-E196-02BF-30991ABB0C9A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp4CtrlRvsGrp" -p "LeftEyeLidUp4CtrlGrpGrp";
	rename -uid "3EDA94E9-41CC-BE9D-52C9-9683424D3AC9";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp4Ctrl" -p "LeftEyeLidUp4CtrlRvsGrp";
	rename -uid "05924825-44D2-9386-5FA0-60A23ADCF416";
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
	rename -uid "695582B6-4CC6-1A21-A9D8-E6A73B96B21E";
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
	rename -uid "E80553E9-4513-B74B-F679-0BAE768782AF";
createNode transform -n "LeftEyeLidUp5CtrlGrpGrp" -p "LeftEyeLidUp5CtrlPosGrp";
	rename -uid "4F9ED644-4E8A-CE34-8AB4-20815D9979D2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp5CtrlRvsGrp" -p "LeftEyeLidUp5CtrlGrpGrp";
	rename -uid "2837E13E-4934-FBB7-76B4-6185DBE97D7B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp5Ctrl" -p "LeftEyeLidUp5CtrlRvsGrp";
	rename -uid "8C8B53E6-4EBA-A93F-CC68-37872A2A6657";
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
	rename -uid "192D6FB4-4B8F-7AAF-A3A6-C886711F0CA4";
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
	rename -uid "CEAD5E43-42F6-E321-7F80-E89C729A4D12";
createNode transform -n "LeftEyeLidUp6CtrlGrpGrp" -p "LeftEyeLidUp6CtrlPosGrp";
	rename -uid "8D22758D-40BA-96FF-49C7-2F88D59D0F79";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp6CtrlRvsGrp" -p "LeftEyeLidUp6CtrlGrpGrp";
	rename -uid "D81DA670-4A53-7917-5EB5-2DBDF04977CD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp6Ctrl" -p "LeftEyeLidUp6CtrlRvsGrp";
	rename -uid "8CF60709-4478-D338-14BD-518908AF2BEA";
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
	rename -uid "022390C4-4B70-9A01-4ACE-C9AC57261FAF";
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
	rename -uid "32867CCD-4B9B-B7C0-8994-B4A1C16D5971";
createNode transform -n "LeftEyeLidDown2CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "BCD352B5-4630-7118-E94A-1B9E8D31475B";
createNode transform -n "LeftEyeLidDown2CtrlGrpGrp" -p "LeftEyeLidDown2CtrlPosGrp";
	rename -uid "640349F7-4CE7-BBE3-3701-12AF555B4FDD";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown2CtrlRvsGrp" -p "LeftEyeLidDown2CtrlGrpGrp";
	rename -uid "6D06FE83-4060-134A-76F4-A8A428A54C1B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown2Ctrl" -p "LeftEyeLidDown2CtrlRvsGrp";
	rename -uid "73DE6516-414C-16E9-C6CE-DCA58DC2D722";
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
	rename -uid "E2918863-4D62-3894-E42D-EB85819E1354";
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
	rename -uid "FFD47FF1-4837-AE43-3242-FABFA86AEC62";
createNode transform -n "LeftEyeLidDown3CtrlGrpGrp" -p "LeftEyeLidDown3CtrlPosGrp";
	rename -uid "FBA87050-4909-2A3D-08A7-2780A3C77605";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown3CtrlRvsGrp" -p "LeftEyeLidDown3CtrlGrpGrp";
	rename -uid "79E11305-4E2F-0E3B-6C47-3CBF7713CA66";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown3Ctrl" -p "LeftEyeLidDown3CtrlRvsGrp";
	rename -uid "F7392835-4A40-C3B6-9380-EFB35407911F";
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
	rename -uid "F0CAA77E-4CE9-167D-3C16-2FB532E1A66E";
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
	rename -uid "CF9D8A8D-46AB-3DD5-CB26-74A40FB1E500";
createNode transform -n "LeftEyeLidDown4CtrlGrpGrp" -p "LeftEyeLidDown4CtrlPosGrp";
	rename -uid "E1BCF196-458D-C9FF-8337-819FA02F424A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown4CtrlRvsGrp" -p "LeftEyeLidDown4CtrlGrpGrp";
	rename -uid "85DCE4E3-4C17-B585-094A-669097E0B5C8";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown4Ctrl" -p "LeftEyeLidDown4CtrlRvsGrp";
	rename -uid "AF0736BE-458A-91D1-DC43-BB98F8D0212B";
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
	rename -uid "05C17836-40E7-A56B-2873-C2A574200672";
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
	rename -uid "ACA8430A-47CC-B4A4-8A63-1A94C0FD2E21";
createNode transform -n "LeftEyeLidDown5CtrlGrpGrp" -p "LeftEyeLidDown5CtrlPosGrp";
	rename -uid "4F7E73BD-4BF7-5F42-803A-C8B2BC1B123D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown5CtrlRvsGrp" -p "LeftEyeLidDown5CtrlGrpGrp";
	rename -uid "59C9F4F6-46C2-3177-BA76-BA8EC173199E";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown5Ctrl" -p "LeftEyeLidDown5CtrlRvsGrp";
	rename -uid "D573EE0C-4526-1FF8-890C-55B2C146FAB1";
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
	rename -uid "4A280ADD-4E1A-E968-CDD9-32AC2883439B";
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
	rename -uid "7A457165-4D24-3610-03BC-E1B0332A75C9";
createNode transform -n "LeftEyeLidDown6CtrlGrpGrp" -p "LeftEyeLidDown6CtrlPosGrp";
	rename -uid "FA57A92E-4B05-D3A1-C971-FABB86F10BB8";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown6CtrlRvsGrp" -p "LeftEyeLidDown6CtrlGrpGrp";
	rename -uid "A183C4E6-4117-0E9F-3142-F6B87569B65D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown6Ctrl" -p "LeftEyeLidDown6CtrlRvsGrp";
	rename -uid "690995C4-4A7C-0C32-294F-3081F11C2059";
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
	rename -uid "75487AA4-4F55-94AA-339E-109B71C7F45B";
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
	rename -uid "2967F4E1-4ACD-061C-1A9D-4DBF314B06C8";
createNode transform -n "LeftEyeLidSide1CtrlGrpGrp" -p "LeftEyeLidSide1CtrlPosGrp";
	rename -uid "70FCE249-450C-16DE-537B-9AB4E67C1499";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide1RvsGrp" -p "LeftEyeLidSide1CtrlGrpGrp";
	rename -uid "82D1C6CE-41A0-94B6-7636-C7B1E0300FF3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide1Ctrl" -p "LeftEyeLidSide1RvsGrp";
	rename -uid "53974CB8-43BE-D7D7-F3A0-FBB9CD4E2007";
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
	rename -uid "4E9DBBDC-4D7C-A8D9-4C19-FE837DDD5082";
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
	rename -uid "1621B051-4479-DB93-0C01-C1A738E742E9";
createNode transform -n "LeftEyeLidSide2CtrlGrpGrp" -p "LeftEyeLidSide2CtrlPosGrp";
	rename -uid "F4C2F068-4D64-1407-BDB3-D38EBF4C22A6";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide2CtrlRvsGrp" -p "LeftEyeLidSide2CtrlGrpGrp";
	rename -uid "AA2D3775-4945-9C3A-6E7C-9A8B1369B9CF";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide2Ctrl" -p "LeftEyeLidSide2CtrlRvsGrp";
	rename -uid "FB9EE78F-4CBD-2038-CF8C-549F5F743531";
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
	rename -uid "7B0B8E7F-439D-9BD6-91CE-738B2B362A9D";
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
	rename -uid "95FD8DA4-41FB-7E85-4C95-B3B173BDF807";
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1 ;
createNode transform -n "RightEyeLidSegmentCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "54CBDF52-40E5-B04D-7FF3-CA998B998407";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidUpCtrlGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "FCA3B368-4198-B3DC-6090-10843B7AF8D1";
createNode transform -n "RightEyeLidUp2CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "F6613998-4B48-C35A-FABB-1B9DBAAD11EE";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2CtrlGrpGrp" -p "RightEyeLidUp2CtrlPosGrp";
	rename -uid "7528FD88-42ED-E103-9EC9-FAB2EEAE9FE5";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999911 ;
createNode transform -n "RightEyeLidUp2CtrlRvsGrp" -p "RightEyeLidUp2CtrlGrpGrp";
	rename -uid "5F242F61-470C-913F-1DA8-509AF47D24E1";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000024 ;
createNode transform -n "RightEyeLidUp2Ctrl" -p "RightEyeLidUp2CtrlRvsGrp";
	rename -uid "46AAD5B1-4225-AFBD-313C-01A2D139B174";
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
	rename -uid "15703C28-4EDE-6DDA-1556-14A36A1D3DE2";
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
	rename -uid "7A09B8B5-4B2B-3933-74C1-0195F602939B";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp3CtrlGrpGrp" -p "RightEyeLidUp3CtrlPosGrp";
	rename -uid "0C069F93-45EB-3287-17A6-A0BEA0137E98";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp3CtrlRvsGrp" -p "RightEyeLidUp3CtrlGrpGrp";
	rename -uid "F1D302C4-4610-C574-E2A3-6BBDB8EF0363";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 1.0000000000000011 ;
createNode transform -n "RightEyeLidUp3Ctrl" -p "RightEyeLidUp3CtrlRvsGrp";
	rename -uid "F950F35C-41E8-3941-431F-E794FAB167AE";
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
	rename -uid "2CE56E36-4AF3-B707-6491-D5A0B948D5E2";
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
	rename -uid "0584A728-47AE-FB06-2B23-A3BF195CEC58";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp4CtrlGrpGrp" -p "RightEyeLidUp4CtrlPosGrp";
	rename -uid "74E0A59D-4FA7-CA1E-F22B-B7B515C78077";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp4CtrlRvsGrp" -p "RightEyeLidUp4CtrlGrpGrp";
	rename -uid "262B09F8-43E8-AF2D-278C-60A694524D08";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000016 ;
createNode transform -n "RightEyeLidUp4Ctrl" -p "RightEyeLidUp4CtrlRvsGrp";
	rename -uid "E40FB1A5-4398-D4CA-550B-6CA804B71D72";
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
	rename -uid "1DB69187-435A-8AA6-8B8C-4E988D519683";
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
	rename -uid "6A22F077-46D8-23BF-B528-6BB1D00D3F36";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp5CtrlGrpGrp" -p "RightEyeLidUp5CtrlPosGrp";
	rename -uid "FD886A4E-455C-E7E5-87DC-019D0DAD933A";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidUp5CtrlRvsGrp" -p "RightEyeLidUp5CtrlGrpGrp";
	rename -uid "0823BA5A-44D9-B762-190D-B090CDEB46B3";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
createNode transform -n "RightEyeLidUp5Ctrl" -p "RightEyeLidUp5CtrlRvsGrp";
	rename -uid "6E674488-4142-FC79-A34D-009C1114114A";
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
	rename -uid "D27FE5D3-4B80-B97E-5A00-69BC22C67945";
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
	rename -uid "C0F23AA3-448E-85CC-3155-87BD1D94913F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp6CtrlGrpGrp" -p "RightEyeLidUp6CtrlPosGrp";
	rename -uid "EBA0BA1A-4475-A48C-8C6E-15BB6C0B3B3B";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "RightEyeLidUp6CtrlRvsGrp" -p "RightEyeLidUp6CtrlGrpGrp";
	rename -uid "90A817F7-43CC-8753-1624-80A24D3B7ABB";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidUp6Ctrl" -p "RightEyeLidUp6CtrlRvsGrp";
	rename -uid "2742CEB0-4C3E-0BC0-7F6A-ECB3A4440687";
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
	rename -uid "F9797B53-4DB7-1F96-6E9C-E4A212748E8A";
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
	rename -uid "B235DB10-4F58-507B-17D9-96813BAA6216";
createNode transform -n "RightEyeLidDown2CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "2CAC6BFC-4A85-6DA7-BFCD-CD8AC367F70C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown2CtrlGrpGrp" -p "RightEyeLidDown2CtrlPosGrp";
	rename -uid "F8869208-464B-6BFF-9D07-BEB37177C769";
	setAttr ".s" -type "double3" 0.99999999999999889 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown2CtrlRvsGrp" -p "RightEyeLidDown2CtrlGrpGrp";
	rename -uid "A5F7EE10-45EC-C602-8E88-0C8D666883A7";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000002 0.99999999999999911 ;
createNode transform -n "RightEyeLidDown2Ctrl" -p "RightEyeLidDown2CtrlRvsGrp";
	rename -uid "8A6A7980-48C3-5EDE-0A3A-618D8E52A59F";
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
	rename -uid "1D365B81-48F7-33FE-9E58-C6BD357A51EF";
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
	rename -uid "2DA68739-46B2-D5EE-F9AD-8EABD7306C09";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown3CtrlGrpGrp" -p "RightEyeLidDown3CtrlPosGrp";
	rename -uid "3524C035-47A4-CCA7-2D14-4282B1D0DAEA";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidDown3CtrlRvsGrp" -p "RightEyeLidDown3CtrlGrpGrp";
	rename -uid "0611A19C-4B9C-89AE-238B-498702C62612";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown3Ctrl" -p "RightEyeLidDown3CtrlRvsGrp";
	rename -uid "6AD7C6F7-47C3-D679-2BB3-DBB1628F4C5A";
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
	rename -uid "1337B90D-46D9-6089-5E4A-C398F5FCE39E";
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
	rename -uid "731508E4-4C09-FF42-E530-0B994B5A8921";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown4CtrlGrpGrp" -p "RightEyeLidDown4CtrlPosGrp";
	rename -uid "9BC97C41-4E8D-7F99-9CE5-0D9860A747F8";
	setAttr ".s" -type "double3" 1.0000000000000009 1 0.99999999999999933 ;
createNode transform -n "RightEyeLidDown4CtrlRvsGrp" -p "RightEyeLidDown4CtrlGrpGrp";
	rename -uid "98DA2E36-4201-43F2-FCE7-EFA32ED0DE97";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidDown4Ctrl" -p "RightEyeLidDown4CtrlRvsGrp";
	rename -uid "6CC675B0-4056-9EED-21B6-879993BB3179";
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
	rename -uid "3E6117F6-48AE-D6E9-6D1D-939B7A0DD7BF";
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
	rename -uid "4D502BA6-4CA7-5C0F-9BFE-97858B62E608";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown5CtrlGrpGrp" -p "RightEyeLidDown5CtrlPosGrp";
	rename -uid "AED960A3-40EA-4A37-6AB5-BB99EEC84B43";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown5CtrlRvsGrp" -p "RightEyeLidDown5CtrlGrpGrp";
	rename -uid "5865C909-4F05-53C1-A558-97BAF7DE3823";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown5Ctrl" -p "RightEyeLidDown5CtrlRvsGrp";
	rename -uid "7F9C0795-4502-0A44-E07D-398F3B111E73";
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
	rename -uid "64B206FF-4DBA-ADEF-3D90-1BAF0E741B6C";
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
	rename -uid "9E401F08-496F-4235-5809-39AA35730227";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown6CtrlGrpGrp" -p "RightEyeLidDown6CtrlPosGrp";
	rename -uid "AAF623E0-4768-BD8A-47E5-109DEFF8DF26";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1 ;
createNode transform -n "RightEyeLidDown6CtrlRvsGrp" -p "RightEyeLidDown6CtrlGrpGrp";
	rename -uid "F3064967-4CB1-D462-DC27-67A0599D71E3";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown6Ctrl" -p "RightEyeLidDown6CtrlRvsGrp";
	rename -uid "45138664-44F1-62AD-39FB-A7ADFB6A8AC5";
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
	rename -uid "6D82DF77-4A0E-F287-DCE6-36BF88DA53BE";
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
	rename -uid "09087A01-452D-F546-78AA-8C8538EE6C3B";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide1CtrlGrpGrp" -p "RightEyeLidSide1CtrlPosGrp";
	rename -uid "7AD1AAA2-4E52-F0F7-20C9-DDBA8DBDA602";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide1CtrlRvsGrp" -p "RightEyeLidSide1CtrlGrpGrp";
	rename -uid "41429B24-4F19-D91E-9B76-8C8F6B045F4F";
	setAttr ".s" -type "double3" 1.0000000000000011 1 0.99999999999999967 ;
createNode transform -n "RightEyeLidSide1Ctrl" -p "RightEyeLidSide1CtrlRvsGrp";
	rename -uid "B0793A8C-4088-7431-280D-BF9A7EBDB2C9";
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
	rename -uid "E7EB7370-4E7F-5B6D-A682-B78AF8AE1311";
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
	rename -uid "77B4E326-4CEF-937A-2767-44979509D9AF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide2CtrlGrpGrp" -p "RightEyeLidSide2CtrlPosGrp";
	rename -uid "825EFA16-444B-6250-16C2-CD9FD43A367A";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide2CtrlRvsGrp" -p "RightEyeLidSide2CtrlGrpGrp";
	rename -uid "CE625A91-4C53-F342-18EC-2B903E5C076C";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "RightEyeLidSide2Ctrl" -p "RightEyeLidSide2CtrlRvsGrp";
	rename -uid "D656B124-4F75-BB21-0624-98A267BB780E";
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
	rename -uid "801E9D00-4AC4-8825-4FD1-E19ABA96C530";
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
	rename -uid "BDF70D70-4E52-ED5A-67E4-B58CF20B3BB6";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUpCtrlGrp" -p "RightEyeLidOutCtrlGrp";
	rename -uid "7BC2C588-408E-E44B-B0CA-B3B1A9A7DC09";
createNode transform -n "RightEyeLidOutUp1CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "7ADAA149-4592-D11B-33E8-D8960DC0B5B2";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1CtrlGrp" -p "RightEyeLidOutUp1CtrlPos";
	rename -uid "7858A5DD-45AA-F7D5-0B3F-7E976F43B1F1";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUp1CtrlRvs" -p "RightEyeLidOutUp1CtrlGrp";
	rename -uid "ACA15FDF-4C29-D53B-229D-FE98C3D5F18C";
createNode transform -n "RightEyeLidOutUp1Ctrl" -p "RightEyeLidOutUp1CtrlRvs";
	rename -uid "7D1ACAB6-467F-5807-A468-5EBA47D0F747";
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
	rename -uid "CF309DCF-4434-9F4D-D5AE-ED916DC60842";
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
	rename -uid "78FD5E31-45B8-780A-DF7F-C09F8BFF57EF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp2CtrlGrp" -p "RightEyeLidOutUp2CtrlPos";
	rename -uid "689F061B-4DEA-DDCD-4ABE-D3937260541B";
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp2CtrlRvs" -p "RightEyeLidOutUp2CtrlGrp";
	rename -uid "9AB33DF2-4854-69E3-AB89-63A753178EAC";
createNode transform -n "RightEyeLidOutUp2Ctrl" -p "RightEyeLidOutUp2CtrlRvs";
	rename -uid "31D03F8F-4C36-3DC6-7A68-E0B42F46D862";
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
	rename -uid "77FE11AA-42B6-1F8E-7483-F6AA6C2525BE";
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
	rename -uid "4894F9C0-4D84-2EB8-E2A2-54BB0CF5EA58";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp3CtrlGrp" -p "RightEyeLidOutUp3CtrlPos";
	rename -uid "C27858A0-4E7C-519C-B453-4BAF3BCE8910";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp3CtrlRvs" -p "RightEyeLidOutUp3CtrlGrp";
	rename -uid "1270165A-45E6-473E-295D-88973CBFF746";
createNode transform -n "RightEyeLidOutUp3Ctrl" -p "RightEyeLidOutUp3CtrlRvs";
	rename -uid "0B87A75B-44F3-531C-6919-39855B5CE7B3";
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
	rename -uid "567B6068-451C-475F-E39B-668D56051F35";
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
	rename -uid "6B31CC0B-452B-32E6-F0FB-BF9D5DB9758A";
createNode transform -n "RightEyeLidOutDown1CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "A73D0C0E-40BC-358E-1F69-6181509C5E50";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown1CtrlGrp" -p "RightEyeLidOutDown1CtrlPos";
	rename -uid "1B729C43-42A2-C6EA-7C9A-8496ABBEAE51";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown1CtrlRvs" -p "RightEyeLidOutDown1CtrlGrp";
	rename -uid "ACDF3EA2-48E4-8525-3858-92BB55CFCDA9";
createNode transform -n "RightEyeLidOutDown1Ctrl" -p "RightEyeLidOutDown1CtrlRvs";
	rename -uid "E11F174D-4350-4671-04C4-E1AB423F604A";
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
	rename -uid "0EB5BA56-48BB-C258-D97F-5E83464FD7C0";
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
	rename -uid "3D34C43C-463E-4427-630B-0797915437A6";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CtrlGrp" -p "RightEyeLidOutDown2CtrlPos";
	rename -uid "15FCE7C5-49B3-2837-1D11-DCB435EE4836";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown2CtrlRvs" -p "RightEyeLidOutDown2CtrlGrp";
	rename -uid "1A79BE8E-4528-3C86-752A-73B9984D17C9";
createNode transform -n "RightEyeLidOutDown2Ctrl" -p "RightEyeLidOutDown2CtrlRvs";
	rename -uid "F8DC21D7-4006-134C-9A29-1CB58BC827ED";
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
	rename -uid "17651F72-4EB3-42A6-97F7-79942E285D32";
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
	rename -uid "F5539A37-4166-7B2E-A451-BD81EC57710F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown3CtrlGrp" -p "RightEyeLidOutDown3CtrlPos";
	rename -uid "E2F03423-4659-5CB8-3A5D-80A4B8C5314F";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999967 ;
createNode transform -n "RightEyeLidOutDown3CtrlRvs" -p "RightEyeLidOutDown3CtrlGrp";
	rename -uid "0ADFC222-493D-B0A8-1B26-DAAD753B90B7";
createNode transform -n "RightEyeLidOutDown3Ctrl" -p "RightEyeLidOutDown3CtrlRvs";
	rename -uid "FBB7EB89-49C6-C06F-2A05-ED9E0F9A12EC";
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
	rename -uid "E1BF8771-46B0-02F7-11D1-A68E92270D14";
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
	rename -uid "3CBF6F98-4C63-CF65-81E7-B69E1EA90883";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidInCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "1DF61D48-40DF-3B6F-1AA2-5A901DADA77E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidInMainCtrlGrp" -p "RightEyeLidInCtrlPos";
	rename -uid "A04F8CC7-430D-8585-9FA6-15B6D66D12A6";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidInMainCtrlRvs" -p "RightEyeLidInMainCtrlGrp";
	rename -uid "4F5F935C-4DE9-4F5A-868F-E3BC1DA3F77F";
createNode transform -n "RightEyeLidInMainCtrl" -p "RightEyeLidInMainCtrlRvs";
	rename -uid "47D7B66A-411F-A352-65CA-B9B39E8345C9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidInMainCtrlShape" -p "RightEyeLidInMainCtrl";
	rename -uid "E007BC5F-4892-683C-99BB-0DA8E2953641";
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
	rename -uid "3B6659CC-467F-9D36-327B-F28C380276FF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidUpMainCtrlGrp" -p "RightEyeLidUpCtrlPos";
	rename -uid "6108C7AA-413F-7A6D-8E27-FE862FCA76D7";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "RightEyeLidUpMainCtrlRvs" -p "RightEyeLidUpMainCtrlGrp";
	rename -uid "24BC8F38-42D0-D78E-45F1-7B96156F04D0";
createNode transform -n "RightEyeLidUpMainCtrl" -p "RightEyeLidUpMainCtrlRvs";
	rename -uid "83562D53-4B7C-6D55-0363-BB978B03ECB8";
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
	rename -uid "99A22BAA-48B4-9176-1CBE-5999218CB7FF";
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
	rename -uid "71B55AA2-4020-E701-B300-0DB5890D7B6B";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutMainCtrlGrp" -p "RightEyeLidOutCtrlPos";
	rename -uid "868343C2-46A0-01D6-526C-D289A977862D";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "RightEyeLidOutMainCtrlRvs" -p "RightEyeLidOutMainCtrlGrp";
	rename -uid "55E8CC1F-497C-9E62-774E-60BD8A966F88";
createNode transform -n "RightEyeLidOutMainCtrl" -p "RightEyeLidOutMainCtrlRvs";
	rename -uid "323A52F0-4A12-5199-527B-EF881D075BA5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "RightEyeLidOutMainCtrl";
	rename -uid "48A3391B-4935-8E8F-A5F6-EEB079919574";
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
	rename -uid "79B5C4EA-4C67-6CE4-DB39-8D9905F52212";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidDownMainCtrlGrp" -p "RightEyeLidDownCtrlPos";
	rename -uid "A9B2A846-4C99-497E-BB12-769E8CD0DB23";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightEyeLidDownMainCtrlRvs" -p "RightEyeLidDownMainCtrlGrp";
	rename -uid "BE19DB31-4F70-FC8F-6AAC-B3866B5005C2";
createNode transform -n "RightEyeLidDownMainCtrl" -p "RightEyeLidDownMainCtrlRvs";
	rename -uid "2B121ACC-4F11-197C-03D8-9DB79DFE9C46";
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
	rename -uid "2328ED1F-4048-D93A-D33C-59999A270EB2";
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
	rename -uid "8291AB85-490D-3C91-2D29-A7B7557AFC7D";
createNode transform -n "RightEyeLidCCtrlOffGrp" -p "RightEyeLidCCtrlGrp";
	rename -uid "2DA910B9-4D0C-8FA3-75F3-05B48F97A60C";
createNode transform -n "RightEyeLidCCtrl" -p "RightEyeLidCCtrlOffGrp";
	rename -uid "81BED0A0-4E9C-DF3B-A63A-47B9378D6A02";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightEyeLidCCtrlShape" -p "RightEyeLidCCtrl";
	rename -uid "B4A38900-49B9-467F-1D7C-409F2BF4CAA4";
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
	rename -uid "79639485-473C-CF1D-6699-9EBBC96CC68B";
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "LeftEyeLidSysGrp" -p "EyeLidSysGrp";
	rename -uid "7FA23438-4452-DD7E-CC09-35ABD42B7C55";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidCrvGrp" -p "LeftEyeLidSysGrp";
	rename -uid "6F4794EA-4C4C-C643-7B02-E7B68F4D8E59";
	setAttr ".ovdt" 2;
createNode transform -n "LeftEyeLidUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "48CE80A2-4599-CC10-6CFF-809F70DF8BF8";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidUpCrvShape" -p "LeftEyeLidUpCrv";
	rename -uid "8C6123C9-43B8-85B1-E0DD-91928809827B";
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
	rename -uid "AF35A092-4AC3-34DD-A0EB-198E89FF642F";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidDownCrvShape" -p "LeftEyeLidDownCrv";
	rename -uid "2C4FFA4E-455A-0995-D556-C592CD63DC3C";
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
	rename -uid "31DD1C77-4594-CA60-97C5-B3874B392368";
createNode nurbsCurve -n "LeftEyeLidUpJntCrvShape" -p "LeftEyeLidUpJntCrv";
	rename -uid "944331B1-4EDE-7784-C3E2-6B800B08621B";
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
	rename -uid "7BDAF714-4646-658B-D76D-6F89C93FFB4F";
createNode nurbsCurve -n "LeftEyeLidDownJntCrvShape" -p "LeftEyeLidDownJntCrv";
	rename -uid "0D4B3152-4B0C-0D74-7DF9-36B0DFFBB6C9";
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
	rename -uid "1AE65E68-4964-B646-C429-61B1968C6EC6";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidOutUpCrvShape" -p "LeftEyeLidOutUpCrv";
	rename -uid "EC1FBE77-4D3A-7620-FC60-A1BC9C3B5B2A";
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
	rename -uid "14AF1094-47AA-C400-DBAB-79A4E2819F6C";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidOutDownCrvShape" -p "LeftEyeLidOutDownCrv";
	rename -uid "2741CBCD-4A37-AB4E-8034-15B2CADE93DA";
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
	rename -uid "1101523A-4268-1730-521D-BAA098F448E6";
createNode nurbsCurve -n "LeftEyeLidOutUpJntCrvShape" -p "LeftEyeLidOutUpJntCrv";
	rename -uid "7CD72C31-4D24-8EFC-D054-7FA4F2F6E183";
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
	rename -uid "A26B784D-40FE-6CCE-FB99-D996A449D693";
createNode nurbsCurve -n "LeftEyeLidOutDownJntCrvShape" -p "LeftEyeLidOutDownJntCrv";
	rename -uid "5C37284B-4642-3E5D-C32B-7886028FF261";
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
	rename -uid "C1AC0664-44F5-77B7-78F9-1E855D44D038";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "0EBAD261-4420-DBCC-EB6E-7EB225365782";
createNode transform -n "LeftEyeLidUp1Pos" -p "LeftEyeLidUpCtrl0PosSurfPos";
	rename -uid "A27F1093-49FC-0DF2-3789-759867273F0A";
	setAttr ".t" -type "double3" 8.9364072216180461e-18 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp1PosShape" -p "LeftEyeLidUp1Pos";
	rename -uid "E268F4C5-498A-6A18-C18F-3C967402234B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "071FB4E9-47E1-64C0-D4E4-86A58582E656";
createNode transform -n "LeftEyeLidUp2Pos" -p "LeftEyeLidUpCtrl1PosSurfPos";
	rename -uid "C1A476B2-47DC-AFD2-C55F-318F97560111";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
createNode locator -n "LeftEyeLidUp2PosShape" -p "LeftEyeLidUp2Pos";
	rename -uid "1286E03C-4432-EBC0-972B-4B9CCB7F7D1D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "0E614C48-4D9C-DB11-F8BF-DFA4376B4209";
createNode transform -n "LeftEyeLidUp3Pos" -p "LeftEyeLidUpCtrl2PosSurfPos";
	rename -uid "5A717BAC-46FB-6F67-F56B-84949E90E1F6";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 0 ;
createNode locator -n "LeftEyeLidUp3PosShape" -p "LeftEyeLidUp3Pos";
	rename -uid "AD35B574-49B8-5CB5-2ED6-02841DAD8300";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "41020ADB-4230-6E73-31D3-D99629BA37A5";
createNode transform -n "LeftEyeLidUp4Pos" -p "LeftEyeLidUpCtrl3PosSurfPos";
	rename -uid "E7653110-4A5C-927F-122B-D698DACCD3DE";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5180192092809648e-15 0 ;
createNode locator -n "LeftEyeLidUp4PosShape" -p "LeftEyeLidUp4Pos";
	rename -uid "857B73D5-41C3-2C99-6E90-A78DD4BA66C7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "363A55D2-48F9-DF8A-A048-37BFC1B756FE";
createNode transform -n "LeftEyeLidUp5Pos" -p "LeftEyeLidUpCtrl4PosSurfPos";
	rename -uid "CF36D479-402C-6782-677D-0989C26346CA";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -6.6613381477509392e-16 0 ;
createNode locator -n "LeftEyeLidUp5PosShape" -p "LeftEyeLidUp5Pos";
	rename -uid "43BD1E7A-4A74-4378-859C-4690F25F088E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "1A4A8E0B-4336-D0E7-002F-E19BAE7563FB";
createNode transform -n "LeftEyeLidUp6Pos" -p "LeftEyeLidUpCtrl5PosSurfPos";
	rename -uid "B23BCA4F-4CF1-FC52-FFCA-E097ED87771F";
	setAttr ".t" -type "double3" 1.4432899320127035e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp6PosShape" -p "LeftEyeLidUp6Pos";
	rename -uid "2C1456CB-410E-24D4-5D83-19B4FBA5CEC2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "636B65AD-48A9-2B8C-4F15-97917705CA24";
createNode transform -n "LeftEyeLidUp7Pos" -p "LeftEyeLidUpCtrl6PosSurfPos";
	rename -uid "395C8678-4EFA-2CF5-403D-BDA515E346ED";
	setAttr ".t" -type "double3" 4.468203612828507e-18 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidUp7PosShape" -p "LeftEyeLidUp7Pos";
	rename -uid "FA424C51-4915-282F-E0E3-128BBAE50CC7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3F8B2975-4D73-DA45-F423-1C883DB1367E";
createNode transform -n "LeftEyeLidDown1Pos" -p "LeftEyeLidDownCtrl0PosSurfPos";
	rename -uid "589F17DD-4A5A-3CC4-3DDA-4190BA1ECCD8";
	setAttr ".t" -type "double3" -5.0764197278579096e-15 -2.2204460492503131e-15 0 ;
createNode locator -n "LeftEyeLidDown1PosShape" -p "LeftEyeLidDown1Pos";
	rename -uid "0699EFE3-493B-88C4-414F-3B9B337FD437";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7580A8C8-4D5A-E758-0159-EC8842774EA5";
createNode transform -n "LeftEyeLidDown2Pos" -p "LeftEyeLidDownCtrl1PosSurfPos";
	rename -uid "C976AC8E-4DEB-FB7D-753B-178C235A4139";
	setAttr ".t" -type "double3" -2.1094237467877974e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown2PosShape" -p "LeftEyeLidDown2Pos";
	rename -uid "A30443E3-4A60-537D-EF24-7284C5889F02";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "29185CCD-42EA-C06D-EE92-739F53132155";
createNode transform -n "LeftEyeLidDown3Pos" -p "LeftEyeLidDownCtrl2PosSurfPos";
	rename -uid "41F3DE76-4C1C-6F27-6811-5EADA59CC1A0";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidDown3PosShape" -p "LeftEyeLidDown3Pos";
	rename -uid "B3C077AE-4D58-4D8E-E23A-4CBD0FD028EB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "9CE92FE9-49DF-F160-313F-7D855CD09AF8";
createNode transform -n "LeftEyeLidDown4Pos" -p "LeftEyeLidDownCtrl3PosSurfPos";
	rename -uid "CB80BDDB-4F40-6BF0-03EC-85A4627AFD59";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.4675760606763788e-15 0 ;
createNode locator -n "LeftEyeLidDown4PosShape" -p "LeftEyeLidDown4Pos";
	rename -uid "D6FECCBF-4A66-4689-C36E-4EB53A1DDC84";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "40009CF7-41B8-8F94-8A5B-96B73351EEDD";
createNode transform -n "LeftEyeLidDown5Pos" -p "LeftEyeLidDownCtrl4PosSurfPos";
	rename -uid "D0A6A450-47FC-9939-898E-24829FFFE234";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 -3.3306690738754696e-15 0 ;
createNode locator -n "LeftEyeLidDown5PosShape" -p "LeftEyeLidDown5Pos";
	rename -uid "BB0636EB-4430-811F-65B1-76863B719838";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "9823AA88-4B1C-F727-C592-0FAA1326E447";
createNode transform -n "LeftEyeLidDown6Pos" -p "LeftEyeLidDownCtrl5PosSurfPos";
	rename -uid "BF7E2E32-44A4-0290-8079-2589AAFEAB91";
	setAttr ".t" -type "double3" -6.6613381477509392e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown6PosShape" -p "LeftEyeLidDown6Pos";
	rename -uid "9C171023-4627-FFA0-0140-29B090B04218";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "A72810E4-4957-C9E3-7509-C9BA8937F519";
createNode transform -n "LeftEyeLidDown7Pos" -p "LeftEyeLidDownCtrl6PosSurfPos";
	rename -uid "EF4969D4-48DE-25CF-2BAC-908CA48002E5";
	setAttr ".t" -type "double3" -3.3597046987097301e-15 4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown7PosShape" -p "LeftEyeLidDown7Pos";
	rename -uid "6D0ECAB7-46E0-273E-DB82-EE9812704FFF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "CE387797-493E-62D4-7628-799CD0808B29";
createNode transform -n "LeftLeftEyeLidOutUp1LocSurfPosLoc" -p "LeftEyeLidOutUp1LocSurfPos";
	rename -uid "DE71C5E5-4523-9DD1-0C53-0C8DCCBCC222";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "LeftLeftEyeLidOutUp1LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp1LocSurfPosLoc";
	rename -uid "031DE45E-4D44-CDD8-BF57-A1BA8BCE3528";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "0DFAD753-44FE-1A58-4DA5-AC8FBBB5AF8E";
createNode transform -n "LeftEyeLidOutUp2CvPos1SurfPosLoc" -p "LeftEyeLidOutUp2CvPos1SurfPos";
	rename -uid "066CA4D4-43FB-F3C0-6EC6-08BB9B18DC58";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1SurfPosLocShape" -p "LeftEyeLidOutUp2CvPos1SurfPosLoc";
	rename -uid "AC16115E-4FBB-A5A0-3F79-6D9784981EA3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "12D2FC3B-42F1-4FDE-584B-759A5934545E";
createNode transform -n "LeftLeftEyeLidOutUp2LocSurfPosLoc" -p "LeftEyeLidOutUp2LocSurfPos";
	rename -uid "48F1AAC1-459F-4BAD-2C04-0685C8234597";
createNode locator -n "LeftLeftEyeLidOutUp2LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp2LocSurfPosLoc";
	rename -uid "DE07006D-409D-27D5-B3E2-FEA963E57721";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "DFB02984-4A7A-9549-8EF9-7AA9DEC1BB49";
createNode transform -n "LeftEyeLidOutUp2CvPos2SurfPosLoc" -p "LeftEyeLidOutUp2CvPos2SurfPos";
	rename -uid "73E555BE-43DD-D1B7-112F-6DA6E35ED470";
createNode locator -n "LeftEyeLidOutUp2CvPos2SurfPosLocShape" -p "LeftEyeLidOutUp2CvPos2SurfPosLoc";
	rename -uid "B47A0158-4C04-DF1B-B43A-26BB70E12377";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "E3306CCF-419A-CA8D-CF49-B7AB6E7728C3";
createNode transform -n "LeftLeftEyeLidOutUp3LocSurfPosLoc" -p "LeftEyeLidOutUp3LocSurfPos";
	rename -uid "D39F5C89-4FC3-58FC-0369-54A14EA64E68";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftLeftEyeLidOutUp3LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp3LocSurfPosLoc";
	rename -uid "2DAC116F-4948-1C80-82CA-0690F4339AFD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown1LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "FDF28CC5-4AA0-8D74-6E52-61B4E3B73AE0";
createNode transform -n "LeftLeftEyeLidOutDown1LocSurfPosLoc" -p "LeftEyeLidOutDown1LocSurfPos";
	rename -uid "EB4613D7-45DE-5FF0-CD71-2789A296268A";
createNode locator -n "LeftLeftEyeLidOutDown1LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown1LocSurfPosLoc";
	rename -uid "A0019BF7-4AC8-E22E-0679-F5B92607E54C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "D5F6FD6F-4E5A-FE35-4961-06B964A266F8";
createNode transform -n "LeftEyeLidOutDown2CvPos1SurfPosLoc" -p "LeftEyeLidOutDown2CvPos1SurfPos";
	rename -uid "D48E92AE-4BA8-536D-F6A1-B9BA16E0D92C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1SurfPosLocShape" -p "LeftEyeLidOutDown2CvPos1SurfPosLoc";
	rename -uid "9156FEBD-4CFA-1ED0-1F99-4B9EBCBBDE10";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "040FDBA3-4B18-9E94-7424-78857D8586D9";
createNode transform -n "LeftLeftEyeLidOutDown2LocSurfPosLoc" -p "LeftEyeLidOutDown2LocSurfPos";
	rename -uid "02621497-479C-4E62-91B6-BE87B931D976";
createNode locator -n "LeftLeftEyeLidOutDown2LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown2LocSurfPosLoc";
	rename -uid "013D5C4B-464F-CB7C-208E-D98440B97ED9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "403E44CF-4D5C-C0D5-BE36-54B1F3EB8D56";
createNode transform -n "LeftEyeLidOutDown2CvPos2SurfPosLoc" -p "LeftEyeLidOutDown2CvPos2SurfPos";
	rename -uid "0989BBFF-43DF-0C26-69B1-AEA4BC1C024A";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2SurfPosLocShape" -p "LeftEyeLidOutDown2CvPos2SurfPosLoc";
	rename -uid "8CB810AF-4D9F-B439-3D18-228612195A92";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3B1A24BE-4937-AE8F-007C-D0A6920B2645";
createNode transform -n "LeftLeftEyeLidOutDown3LocSurfPosLoc" -p "LeftEyeLidOutDown3LocSurfPos";
	rename -uid "846D43FA-41C9-72FB-78CD-0780F033AF8F";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftLeftEyeLidOutDown3LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown3LocSurfPosLoc";
	rename -uid "3A8D544B-499E-A70D-075E-72883BA4A9E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "0136F2C1-48BF-B767-8B27-E79550BD1A6D";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCrv0Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "BE3658E7-4D8E-29BC-3C25-51AF51394B9C";
createNode locator -n "LeftEyeLidUpCrv0PosShape" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "CAA3C990-4100-2D89-1623-06A40A23BD11";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl0Pos" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "3EAB9674-467B-0477-9120-10B3AAA8C6FC";
createNode locator -n "LeftEyeLidUpCtrl0PosShape" -p "LeftEyeLidUpCtrl0Pos";
	rename -uid "78C43251-471F-0F44-C631-9280FC402247";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv1Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "58FD71F6-4D02-2120-9172-C8965C4917C6";
createNode locator -n "LeftEyeLidUpCrv1PosShape" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "0E7E06F3-4467-1174-EB73-CF8A8FFB57D8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1Pos" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "327973E5-4138-38CF-CF45-A19BA5BEC761";
createNode locator -n "LeftEyeLidUpCtrl1PosShape" -p "LeftEyeLidUpCtrl1Pos";
	rename -uid "F986E8D3-433B-70B0-7F6D-0491CC290EE8";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv2Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "F6D50407-4C94-8B5C-6B07-268492BBE87D";
createNode locator -n "LeftEyeLidUpCrv2PosShape" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "45D0C08F-4D7D-0CF4-5CBC-1FB15C1130B7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2Pos" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "B3F14A34-4DDD-881B-7C0F-E596EEA1E28A";
createNode locator -n "LeftEyeLidUpCtrl2PosShape" -p "LeftEyeLidUpCtrl2Pos";
	rename -uid "27C040BA-480A-3C36-7071-BBB193EAE018";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv3Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "EBD130F0-441F-309E-B969-48BA04F93CB5";
createNode locator -n "LeftEyeLidUpCrv3PosShape" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "ECC63875-4F0C-8353-E1C5-84A14470270E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3Pos" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "53FF4074-4230-41FA-C23C-27B32766001C";
createNode locator -n "LeftEyeLidUpCtrl3PosShape" -p "LeftEyeLidUpCtrl3Pos";
	rename -uid "26E94831-4018-D452-CB3A-598FD86098EE";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv4Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "546EF0E1-4C4E-D48F-5D8F-8FA5FC2A5E41";
createNode locator -n "LeftEyeLidUpCrv4PosShape" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "5C6BD16C-4C59-2E2E-6799-F2899585AA4C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4Pos" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "26E984CE-49AD-D366-F52E-DB8066A188B9";
createNode locator -n "LeftEyeLidUpCtrl4PosShape" -p "LeftEyeLidUpCtrl4Pos";
	rename -uid "3A88B80D-4C24-95ED-A2DD-BD8D205F5502";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv5Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "FCE24344-477B-3F0E-3127-868BE8BD1DB2";
createNode locator -n "LeftEyeLidUpCrv5PosShape" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "C14A2317-44C5-7110-4216-D7BAC813FA29";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5Pos" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "949B8AAB-4617-1386-34D8-8F87C56D17EE";
createNode locator -n "LeftEyeLidUpCtrl5PosShape" -p "LeftEyeLidUpCtrl5Pos";
	rename -uid "31FD7834-47D1-3A70-71A2-64AB74072D49";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv6Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "557D99FC-495F-7F86-EED4-F6A1CB2C825E";
createNode locator -n "LeftEyeLidUpCrv6PosShape" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "44B98F22-489D-5C6D-E118-8FAA1C4432BD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6Pos" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "46152357-4CA0-DE31-A9B3-77BA2E121DD8";
createNode locator -n "LeftEyeLidUpCtrl6PosShape" -p "LeftEyeLidUpCtrl6Pos";
	rename -uid "895BDA64-4D8F-666A-4FCE-2B99D81752C1";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv0Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "00743F39-45C5-D183-C6D2-2298AB6B0D0E";
createNode locator -n "LeftEyeLidDownCrv0PosShape" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "B1E69A71-44C0-E33B-B0F9-0CAFC6722684";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0Pos" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "18AE8D63-46FD-AA86-75A1-A8B008341B54";
createNode locator -n "LeftEyeLidDownCtrl0PosShape" -p "LeftEyeLidDownCtrl0Pos";
	rename -uid "35D116B3-4AA4-A692-E9EB-DF8247526A90";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv1Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "98283CAB-4DB0-9B72-93F8-99ABF9454952";
createNode locator -n "LeftEyeLidDownCrv1PosShape" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "C71C9D12-443E-C912-1AF0-D1A897868870";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1Pos" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "D15B03A2-4633-C277-4A24-7C8B22B9FEB9";
createNode locator -n "LeftEyeLidDownCtrl1PosShape" -p "LeftEyeLidDownCtrl1Pos";
	rename -uid "98664119-4707-E29E-074F-E7A0F7F716EC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv2Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "01A21D27-45EA-0E8E-3DD3-BDA8B6DE433D";
createNode locator -n "LeftEyeLidDownCrv2PosShape" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "32E145DF-4F6B-1DE9-9B4B-AE927B352B1A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2Pos" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "DD1C9823-4848-2E2C-663C-08BB9431DE48";
createNode locator -n "LeftEyeLidDownCtrl2PosShape" -p "LeftEyeLidDownCtrl2Pos";
	rename -uid "63187DF4-4CBC-F491-78F1-2B81C2213A99";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv3Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "709D2127-495B-C0D0-39D7-C1A2A5DD2BFC";
createNode locator -n "LeftEyeLidDownCrv3PosShape" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "1767DBAF-4D32-9743-52DF-86867411B296";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3Pos" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "B12AF92D-48DF-2791-68CE-E5995183A58E";
createNode locator -n "LeftEyeLidDownCtrl3PosShape" -p "LeftEyeLidDownCtrl3Pos";
	rename -uid "559285BD-4041-6D8D-F1D3-ABA225A9EC44";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv4Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "91FF6DE3-4FB2-AE47-D8F7-B8A04BFA586F";
createNode locator -n "LeftEyeLidDownCrv4PosShape" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "6519B661-4C75-C3CB-C495-819A604AE518";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4Pos" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "EE818FDD-4942-66AA-CE6E-F89E66451B5B";
createNode locator -n "LeftEyeLidDownCtrl4PosShape" -p "LeftEyeLidDownCtrl4Pos";
	rename -uid "2A93BFAF-463C-21F3-A263-24AC013C05B5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv5Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "80878EEE-4237-C4C8-E024-988382E3D4CE";
createNode locator -n "LeftEyeLidDownCrv5PosShape" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "2380F50D-44F9-E2B8-296B-FFB09FB8278F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5Pos" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "42BD7507-40F6-4852-AD4B-A1B4801C73B3";
createNode locator -n "LeftEyeLidDownCtrl5PosShape" -p "LeftEyeLidDownCtrl5Pos";
	rename -uid "C60FABB7-45EB-E582-67CD-8BBC1443EC64";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv6Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "588075A1-4077-1BC3-D511-0FAAE93B4257";
createNode locator -n "LeftEyeLidDownCrv6PosShape" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "FE4DA697-4691-7AA7-FA86-53B6A4B94EF5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6Pos" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "503E055C-4E2A-1027-395A-BEA54402130A";
createNode locator -n "LeftEyeLidDownCtrl6PosShape" -p "LeftEyeLidDownCtrl6Pos";
	rename -uid "2DDFD9DF-4B57-0431-212A-A3B8582B8BE6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "00614522-4706-6D56-EDAA-798965881AE8";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidCtrl0Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "00D0A82A-41AB-CE10-D623-85B30D49E21E";
createNode locator -n "LeftEyeLidCtrl0PosShape" -p "LeftEyeLidCtrl0Pos";
	rename -uid "A1B207F1-4156-1010-34C6-21AFD587BA5F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl1Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "F329351D-4BC5-C9B6-34B0-8C8BD247CEDE";
createNode locator -n "LeftEyeLidCtrl1PosShape" -p "LeftEyeLidCtrl1Pos";
	rename -uid "0E5E5E54-4CBC-CB99-691A-549209F42F85";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl2Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "CDABD7C5-4CF5-03C7-51EC-F982936A9320";
createNode locator -n "LeftEyeLidCtrl2PosShape" -p "LeftEyeLidCtrl2Pos";
	rename -uid "4B164B70-4894-CA6F-A0D9-84A249B8FA7A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl3Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "956629CE-4583-1B4E-31E5-AC8A1BC1A7D1";
createNode locator -n "LeftEyeLidCtrl3PosShape" -p "LeftEyeLidCtrl3Pos";
	rename -uid "E1FB5DF0-4E04-3348-63BC-BAA71F2A1B63";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl4Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "00C4B942-410A-080B-DA8A-6ABD23CCCD83";
createNode locator -n "LeftEyeLidCtrl4PosShape" -p "LeftEyeLidCtrl4Pos";
	rename -uid "52FB1258-4417-ACDE-87CC-9BBE17414CF7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl5Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "42522EC7-4A02-8CA4-C8BE-C9ACBC51D303";
createNode locator -n "LeftEyeLidCtrl5PosShape" -p "LeftEyeLidCtrl5Pos";
	rename -uid "668EBAF3-43B8-1A53-9A55-CD8716C0E43A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl6Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "D162624D-456A-FECE-D235-3E940F27FB5A";
createNode locator -n "LeftEyeLidCtrl6PosShape" -p "LeftEyeLidCtrl6Pos";
	rename -uid "D3F573A4-4B9A-81E3-4CCB-59A9F001017D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl7Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "4FC5B24A-43A5-912E-4E03-0C8725287D50";
createNode locator -n "LeftEyeLidCtrl7PosShape" -p "LeftEyeLidCtrl7Pos";
	rename -uid "6E7A9103-4B27-AC74-9FFC-8CA4130AA75B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl8Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "D8C903BD-481C-F1E2-F12A-0887BA8DBC94";
createNode locator -n "LeftEyeLidCtrl8PosShape" -p "LeftEyeLidCtrl8Pos";
	rename -uid "23A66681-42E5-DB87-3178-9ABE75DD800D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl9Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "C44734FF-4B9E-EB80-6D3B-3283B2BC4FB0";
createNode locator -n "LeftEyeLidCtrl9PosShape" -p "LeftEyeLidCtrl9Pos";
	rename -uid "01EAE399-467B-F88D-40D6-0CA578E70D9B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl10Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "89D575F7-4385-4928-B3A8-B484B345D3BC";
createNode locator -n "LeftEyeLidCtrl10PosShape" -p "LeftEyeLidCtrl10Pos";
	rename -uid "735CD9C4-4DCA-06A1-A71F-B382D9944B01";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl11Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "B6D38ACB-400D-5CCD-C02F-5BB284F0A30D";
createNode locator -n "LeftEyeLidCtrl11PosShape" -p "LeftEyeLidCtrl11Pos";
	rename -uid "70754C75-46F2-57DC-18D4-B18A8C936BDD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidRootPoserGrp" -p "LeftEyeLidSysGrp";
	rename -uid "5FD61C17-4C4D-41D3-39F5-F2A10899E0BA";
	setAttr ".t" -type "double3" 2.7794001988259347e-08 -1.2079226507921701e-13 -3.5527136788005009e-15 ;
createNode transform -n "LeftEyeLidRootPoser" -p "LeftEyeLidRootPoserGrp";
	rename -uid "E82C396E-4319-D4F4-54E7-B58F14AD59A2";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode" 1;
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "LeftEyeLidRootPoserShape" -p "LeftEyeLidRootPoser";
	rename -uid "1C67F0AF-414A-BD77-0107-C5BEF5A08F3F";
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
	rename -uid "C0489413-4598-750B-4AA6-C09C251A22BC";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "LeftEyeBallSurfShape" -p "LeftEyeBallSurf";
	rename -uid "7433EDF1-4B6A-203A-98D7-F58F9B37D11D";
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
	rename -uid "F4457D0D-459B-7F98-CEF8-6A9F3FC26212";
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
	rename -uid "79E30065-4A68-6453-2F25-6D8BCFDF2EC1";
createNode transform -n "LeftEyeBallffd1Lattice" -p "LeftEyeBallFFDGrp";
	rename -uid "DF86881D-4E14-02C9-A351-1E9CA182576F";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "LeftEyeBallffd1LatticeShape" -p "LeftEyeBallffd1Lattice";
	rename -uid "C9B3F052-463C-5EED-1AC1-3E90F0D7A7DE";
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
	rename -uid "2F24BD3B-48D7-C834-FF87-26A69D2EEEC9";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "LeftEyeBallffd1BaseShape" -p "LeftEyeBallffd1Base";
	rename -uid "55C741EA-49FA-DEDF-167C-CAA6D55D2405";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidAimGrp" -p "LeftEyeLidRootPoser";
	rename -uid "FBCE0484-4BCF-88B4-C0BD-A58687BD109A";
	setAttr ".v" no;
createNode transform -n "LeftEyeBallFix" -p "LeftEyeLidAimGrp";
	rename -uid "45EA0F2B-46D2-8FBA-3738-978BDC4ED467";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 -1.8388068845354155e-15 1 ;
createNode locator -n "LeftEyeBallFixShape" -p "LeftEyeBallFix";
	rename -uid "BDC722E2-4116-865B-3497-FDB51A67B00E";
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidUp3AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "3D99FD09-4BBC-2C1E-9F67-D09A4B384888";
createNode transform -n "LeftEyeLidUp3Aim" -p "LeftEyeLidUp3AimGrp";
	rename -uid "C11EB0B6-4CE6-E622-34E4-ECBA6576B1C7";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp3AimShape" -p "LeftEyeLidUp3Aim";
	rename -uid "55767CCF-44DF-D6B7-6C15-A0B49AB8EBC2";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp3AimGrp_aimConstraint1" -p "LeftEyeLidUp3AimGrp";
	rename -uid "E62FC673-4FC6-CBA6-ED77-6988D176B107";
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
	rename -uid "B698B6EC-4DFA-C340-D986-11A4D7A458CD";
createNode transform -n "LeftEyeLidUp4Aim" -p "LeftEyeLidUp4AimGrp";
	rename -uid "6CC80DA2-470E-4662-F003-2AA805E9D852";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp4AimShape" -p "LeftEyeLidUp4Aim";
	rename -uid "25483448-4E68-D12A-11E6-4F96ACE89F73";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp4AimGrp_aimConstraint1" -p "LeftEyeLidUp4AimGrp";
	rename -uid "F1810AE3-4DDB-2447-812B-2C95B81AABE5";
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
	rename -uid "1FB0BED5-465C-C55E-94CA-198E085E7211";
createNode transform -n "LeftEyeLidUp5Aim" -p "LeftEyeLidUp5AimGrp";
	rename -uid "C493A051-4F66-1D6E-E1BA-BCB661E79C30";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp5AimShape" -p "LeftEyeLidUp5Aim";
	rename -uid "E3149767-4F75-087B-1534-9F8837EBFB08";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp5AimGrp_aimConstraint1" -p "LeftEyeLidUp5AimGrp";
	rename -uid "F8BF1505-4120-CE34-7F69-AB881CBDACAE";
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
	rename -uid "CF4128BB-4A99-EE8E-8DD2-D583B5C01404";
createNode transform -n "LeftEyeLidDown3Aim" -p "LeftEyeLidDown3AimGrp";
	rename -uid "A5BC0168-4943-F25B-E3B8-8E8E37C414A5";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown3AimShape" -p "LeftEyeLidDown3Aim";
	rename -uid "D740D007-4E66-CA76-4EBF-CB9E071A2D0B";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown3AimGrp_aimConstraint1" -p "LeftEyeLidDown3AimGrp";
	rename -uid "693D916D-4830-9068-5289-769CC88A4C7B";
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
	rename -uid "54D6D656-482A-F160-8159-D4B7FDC927C4";
createNode transform -n "LeftEyeLidDown4Aim" -p "LeftEyeLidDown4AimGrp";
	rename -uid "1BA2817B-49E2-11B6-5006-7A84AC171576";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown4AimShape" -p "LeftEyeLidDown4Aim";
	rename -uid "2973E73E-4DD1-E04D-A20A-B6A248A46DA6";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown4AimGrp_aimConstraint1" -p "LeftEyeLidDown4AimGrp";
	rename -uid "2BC0CF96-45E8-4CC9-65B4-DBB15C6D2EA0";
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
	rename -uid "01A83020-4E9D-8F50-B97A-0DB05732839C";
createNode transform -n "LeftEyeLidDown5Aim" -p "LeftEyeLidDown5AimGrp";
	rename -uid "329F3908-4DE1-4B5B-64F8-09844DD0236F";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown5AimShape" -p "LeftEyeLidDown5Aim";
	rename -uid "30E42B32-49F9-198A-0772-5F8BC81B519E";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown5AimGrp_aimConstraint1" -p "LeftEyeLidDown5AimGrp";
	rename -uid "0E3B9E53-47F0-D3DD-DB93-249872B7A1B8";
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
	rename -uid "4EC382D3-424F-75E7-6CB3-1A92464BB3D5";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 1 0 ;
createNode locator -n "LeftEyeBallFixedUpShape" -p "LeftEyeBallFixedUp";
	rename -uid "CE07E713-44F1-B815-445D-048727BF973C";
	setAttr -k off ".v";
createNode transform -n "LeftEyeBallFixedDown" -p "LeftEyeLidAimGrp";
	rename -uid "A53741A8-480D-0E0E-C5C1-768011C96E34";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 -1 0 ;
createNode locator -n "LeftEyeBallFixedDownShape" -p "LeftEyeBallFixedDown";
	rename -uid "EA734AB2-44E6-C1A2-C2C6-83A150D8B17D";
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidLocGrpOffGrp" -p "LeftEyeLidRootPoser";
	rename -uid "9497EFD7-431A-FEFA-1BA3-DB992A640A17";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode transform -n "LeftEyeLidLocGrp" -p "LeftEyeLidLocGrpOffGrp";
	rename -uid "8835DE5F-4B6F-006F-E8F9-B1B6A872350B";
createNode transform -n "LeftEyeLidInPos" -p "LeftEyeLidLocGrp";
	rename -uid "E5BFDCEA-4347-DC93-51C2-8D895C178248";
	setAttr ".t" -type "double3" -1.5770937991373672 5.5996873804531333e-15 3.0000000000000027 ;
createNode locator -n "LeftEyeLidInPosShape" -p "LeftEyeLidInPos";
	rename -uid "02CDA529-4F6B-23A0-A1DA-79B465FFFE0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidInLocOffGrp" -p "LeftEyeLidInPos";
	rename -uid "F0063545-4E07-1AB5-3263-72BD993482E0";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidInLoc" -p "LeftEyeLidInLocOffGrp";
	rename -uid "5D3E269F-4FF0-41D8-AF65-0F84DD6045B2";
createNode locator -n "LeftEyeLidInLocShape" -p "LeftEyeLidInLoc";
	rename -uid "C5B617AC-4971-8F1B-90F5-42ACAD54779C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "LefteyeLidInEPPosShape" -p "LeftEyeLidInLoc";
	rename -uid "5116CC16-464C-E92C-7826-F9B8ECC9D0A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpPos" -p "LeftEyeLidLocGrp";
	rename -uid "16CA5CAE-47AE-AB32-AA09-569951884F54";
	setAttr ".t" -type "double3" 1.9723026369843502e-08 2.1988641372964919 2.999999938756778 ;
createNode locator -n "LeftEyeLidUpPosShape" -p "LeftEyeLidUpPos";
	rename -uid "7CDF6181-4222-3356-CB02-BA97AF292EB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidUpLocOffGrp" -p "LeftEyeLidUpPos";
	rename -uid "9BD1218F-4392-3FD5-1828-9C8B01C4DE2F";
createNode transform -n "LeftEyeLidUpLoc" -p "LeftEyeLidUpLocOffGrp";
	rename -uid "14DB52CC-4FC4-F60B-15CE-7E9A83B38CC2";
createNode locator -n "LeftEyeLidUpLocShape" -p "LeftEyeLidUpLoc";
	rename -uid "023E8CE8-47C7-D7C7-4A87-3A902E73D3D9";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos2" -p "LeftEyeLidUpLoc";
	rename -uid "B35EAC58-4843-FAB0-4576-4FAD68100DC6";
	setAttr ".t" -type "double3" -2.0865480537993935 -0.027220286915054563 2.2439515523497988e-14 ;
createNode locator -n "LeftEyeLidUpCvPos2Shape" -p "LeftEyeLidUpCvPos2";
	rename -uid "5A12298A-40B2-BC69-BCB2-D780D8478F3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos1" -p "LeftEyeLidUpLoc";
	rename -uid "1F51CA7F-4D91-C7AA-9388-30B962AFB03A";
	setAttr ".t" -type "double3" 2.239564886670331 -0.021241769988588476 1.1171619185290638e-15 ;
createNode locator -n "LeftEyeLidUpCvPos1Shape" -p "LeftEyeLidUpCvPos1";
	rename -uid "53826005-4629-F704-E8BA-288734D64846";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutPos" -p "LeftEyeLidLocGrp";
	rename -uid "8BAB1D5C-41C3-1E5C-D2E3-C59F226C612C";
	setAttr ".t" -type "double3" 2.3180398719788649 -1.2576745200831851e-16 2.9999999999999893 ;
createNode locator -n "LeftEyeLidOutPosShape" -p "LeftEyeLidOutPos";
	rename -uid "E37EB549-406D-6716-66E1-25A9E9C03DB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutLocOffGrp" -p "LeftEyeLidOutPos";
	rename -uid "EB40A264-4196-B349-CDC2-3E94C42B8216";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidOutLoc" -p "LeftEyeLidOutLocOffGrp";
	rename -uid "980FFE70-43CF-D15E-4971-2CBEC37FE64B";
createNode locator -n "LeftEyeLidOutLocShape" -p "LeftEyeLidOutLoc";
	rename -uid "E41C9B19-4377-2285-364C-11A45209BB24";
	setAttr -k off ".v";
createNode locator -n "LefteyeLidOutEPPosShape" -p "LeftEyeLidOutLoc";
	rename -uid "FDA82983-424A-67EA-54D7-12A3C5F1F186";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownPos" -p "LeftEyeLidLocGrp";
	rename -uid "764F4A18-47F9-50FA-B5D2-BBB9A3979ACB";
	setAttr ".t" -type "double3" 6.071532164937965e-16 -2.0782131034149387 2.9999999909604407 ;
createNode locator -n "LeftEyeLidDownPosShape" -p "LeftEyeLidDownPos";
	rename -uid "A9D7A92E-48F7-B04B-8BF0-15B8D57B2012";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidDownLocOffGrp" -p "LeftEyeLidDownPos";
	rename -uid "B3D56A78-4774-E283-01F0-EA93A8044173";
createNode transform -n "LeftEyeLidDownLoc" -p "LeftEyeLidDownLocOffGrp";
	rename -uid "F9A3BEB8-4535-5C49-AC7D-A299558A942C";
createNode locator -n "LeftEyeLidDownLocShape" -p "LeftEyeLidDownLoc";
	rename -uid "9347AC06-4FCC-44F7-C63A-63A8A56097AD";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos2" -p "LeftEyeLidDownLoc";
	rename -uid "EEFA8660-4073-EC50-CC9F-AFB626A4F963";
	setAttr ".t" -type "double3" -2.0501244493478801 -0.0066320794302513683 -1.017588791007995e-14 ;
createNode locator -n "LeftEyeLidDownCvPos2Shape" -p "LeftEyeLidDownCvPos2";
	rename -uid "B1D8A2BB-42B8-DD17-50FA-00856D99F7F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos1" -p "LeftEyeLidDownLoc";
	rename -uid "15BC720D-4563-B4F3-413F-DCBC46A460EF";
	setAttr ".t" -type "double3" 2.4473922134663999 0.041630203560837707 -7.5911499308745078e-15 ;
createNode locator -n "LeftEyeLidDownCvPos1Shape" -p "LeftEyeLidDownCvPos1";
	rename -uid "5F2DB2F0-4393-EF6A-67EF-A6B889DBF4EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "C0A8C3FA-4E68-333A-19F6-B183F45A61A7";
createNode transform -n "LeftEyeLidOutUp1LocGrp" -p "LeftEyeLidOutUp1LocOffGrp";
	rename -uid "C2248B0B-4D2F-3FDB-DF35-C8B8A4AEDDBD";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidOutUp1Pos" -p "LeftEyeLidOutUp1LocGrp";
	rename -uid "253802F2-4109-873C-6DF3-0E98621B2B88";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp1PosShape" -p "LeftEyeLidOutUp1Pos";
	rename -uid "BF1ECFE4-43DB-2FD0-9F71-BD90246525E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp1Loc" -p "LeftEyeLidOutUp1Pos";
	rename -uid "958DDCFE-491F-747D-DDCD-A2A81EC99143";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "LeftEyeLidOutUp1LocShape" -p "LeftEyeLidOutUp1Loc";
	rename -uid "E0506549-4869-AC34-C7D1-4FA3F8FF81E8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "00FB7B8B-45D8-5D08-4948-FD92D8A709CF";
createNode transform -n "LeftEyeLidOutUp2LocGrp" -p "LeftEyeLidOutUp2LocOffGrp";
	rename -uid "9D198110-46D9-3CF3-F1B2-5DA23B4E8F12";
createNode transform -n "LeftEyeLidOutUp2Pos" -p "LeftEyeLidOutUp2LocGrp";
	rename -uid "878B103E-4AEC-165D-E38E-09B0804929A1";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -7.4446255129772491e-24 0 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp2PosShape" -p "LeftEyeLidOutUp2Pos";
	rename -uid "3BA3C57D-4821-932C-952E-D3AFE6B252B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2Loc" -p "LeftEyeLidOutUp2Pos";
	rename -uid "9A2320E4-4245-861E-8977-508E8214821F";
createNode locator -n "LeftEyeLidOutUp2LocShape" -p "LeftEyeLidOutUp2Loc";
	rename -uid "C2FBC40C-442D-9626-CBFF-8693B5BAC3CA";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1" -p "LeftEyeLidOutUp2Loc";
	rename -uid "4439A05E-4591-EDAD-3D8D-1B863ACD4702";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1Shape" -p "LeftEyeLidOutUp2CvPos1";
	rename -uid "FDBA798A-49F6-C603-1CEF-A78C3EC9D631";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2" -p "LeftEyeLidOutUp2Loc";
	rename -uid "20E7BA6A-4F81-9AAE-46C6-68AAF8714BBF";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos2Shape" -p "LeftEyeLidOutUp2CvPos2";
	rename -uid "E499AE3F-431F-668E-45D7-3AB377D6F759";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "3CC004FF-4FFA-79AB-9A9E-E6B84C48B11E";
createNode transform -n "LeftEyeLidOutUp3LocGrp" -p "LeftEyeLidOutUp3LocOffGrp";
	rename -uid "7408AACF-41CE-7A05-04A0-14A99A028346";
createNode transform -n "LeftEyeLidOutUp3Pos" -p "LeftEyeLidOutUp3LocGrp";
	rename -uid "4738B418-45EF-AA6A-1058-7A84D455CD6B";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp3PosShape" -p "LeftEyeLidOutUp3Pos";
	rename -uid "7D642AA7-4DDD-C08E-E1CC-609AC1BE8708";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp3Loc" -p "LeftEyeLidOutUp3Pos";
	rename -uid "7481181F-4A6C-0BB7-A5F0-1C91AE38365C";
	setAttr ".v" no;
createNode locator -n "LeftEyeLidOutUp3LocShape" -p "LeftEyeLidOutUp3Loc";
	rename -uid "1FB3A963-46FA-66E2-1CE2-8493D239C6E3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "D9C9F823-44BC-43F2-8677-E7952BFDDD00";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown1LocGrp" -p "LeftEyeLidOutDown1LocOffGrp";
	rename -uid "CE0BDB6A-4578-1160-836A-DBB2CCABA94F";
createNode transform -n "LeftEyeLidOutDown1Pos" -p "LeftEyeLidOutDown1LocGrp";
	rename -uid "0B62871F-4D8D-283A-3BD4-72A060B3B663";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown1PosShape" -p "LeftEyeLidOutDown1Pos";
	rename -uid "56840691-4723-E95E-1796-9A808C257550";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1Loc" -p "LeftEyeLidOutDown1Pos";
	rename -uid "FD5FAF03-49D9-D752-F3E8-D7BEE89DAA5E";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftEyeLidOutDown1LocShape" -p "LeftEyeLidOutDown1Loc";
	rename -uid "21FE5F9F-4A66-3AF1-1A62-3FA4A9F6A4D3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "A6DB04EB-4CD4-87FD-CE1A-6A94ABE5F1B0";
createNode transform -n "LeftEyeLidOutDown2LocGrp" -p "LeftEyeLidOutDown2LocOffGrp";
	rename -uid "58CC4D2B-45FA-D9E5-9664-849E19411BF7";
createNode transform -n "LeftEyeLidOutDown2Pos" -p "LeftEyeLidOutDown2LocGrp";
	rename -uid "B3D5A8F9-41FA-FACE-7CDD-4BA446D9948C";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown2PosShape" -p "LeftEyeLidOutDown2Pos";
	rename -uid "63A83822-4F15-DA59-AC1B-3E96E1AB82A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2Loc" -p "LeftEyeLidOutDown2Pos";
	rename -uid "309032FA-42A7-E7BE-C9F5-F392003A2073";
createNode locator -n "LeftEyeLidOutDown2LocShape" -p "LeftEyeLidOutDown2Loc";
	rename -uid "A984D2F1-45CD-ACA7-5AD5-8AB36FAAA002";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1" -p "LeftEyeLidOutDown2Loc";
	rename -uid "2F485343-4F73-951F-4924-E9BB3C22FB69";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1Shape" -p "LeftEyeLidOutDown2CvPos1";
	rename -uid "E284E191-488F-F312-AC18-EBA98AEF132D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2" -p "LeftEyeLidOutDown2Loc";
	rename -uid "6B43AF9E-43D4-E457-6A8B-F6BD9D8882AE";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2Shape" -p "LeftEyeLidOutDown2CvPos2";
	rename -uid "D18BFC78-4857-5668-5831-91AEF56CAEC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "C055EF3F-4E01-D89E-E19D-A6A635C0EB17";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftEyeLidOutDown3LocGrp" -p "LeftEyeLidOutDown3LocOffGrp";
	rename -uid "F9540E66-424E-6E0F-6E71-289B41AB62BB";
createNode transform -n "LeftEyeLidOutDown3Pos" -p "LeftEyeLidOutDown3LocGrp";
	rename -uid "A41A4072-4256-A8B5-B9AF-FABAC522A982";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown3PosShape" -p "LeftEyeLidOutDown3Pos";
	rename -uid "2D880240-4044-0676-AEB3-9293FA107801";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown3Loc" -p "LeftEyeLidOutDown3Pos";
	rename -uid "E20AB92A-4414-C642-10B2-4888DA0F57FD";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "LeftEyeLidOutDown3LocShape" -p "LeftEyeLidOutDown3Loc";
	rename -uid "02B2FBD8-4E1A-6B01-81F4-6B8423F7E048";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosCrv" -p "LeftEyeLidRootPoser";
	rename -uid "6CB015C2-4F1A-40AF-9507-488C1D976D58";
	setAttr ".t" -type "double3" 0 1.2079226507921701e-13 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShape" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "63C275B7-43DF-9449-6CC7-1DBE2E67FB0E";
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
	rename -uid "C812946C-40D9-415C-EB4E-1F89F2399960";
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
	rename -uid "07695017-425B-DF77-074F-1B92B8F18092";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidCrvGrp" -p "RightEyeLidSysGrp";
	rename -uid "E5702B2C-4E90-B8CC-0C8B-15AFCC2BA911";
	setAttr ".ovdt" 2;
createNode transform -n "RightEyeLidUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "2E3F6716-4792-E9D5-40D2-129B25D491E5";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidUpCrvShape" -p "RightEyeLidUpCrv";
	rename -uid "E31341F7-4C7C-C50A-D9B2-CB857574AA4B";
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
	rename -uid "D8092CC3-496F-06D5-2FC7-DF9ADFCEB2B4";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidDownCrvShape" -p "RightEyeLidDownCrv";
	rename -uid "E96B7FE4-4C6A-DD03-3344-BAACD497F4B0";
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
	rename -uid "6A2DF559-4057-077E-5534-3ABBE19AFB3D";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidUpJntCrvShape" -p "RightEyeLidUpJntCrv";
	rename -uid "28400585-46E8-1925-251B-4A955791C865";
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
	rename -uid "997DFF6E-4FDC-11B5-F68F-6BB40CE424FA";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidDownJntCrvShape" -p "RightEyeLidDownJntCrv";
	rename -uid "1E0A8AFC-4EAA-FC07-4105-76A3350AFE4E";
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
	rename -uid "726DACCC-47F4-1DC8-3104-AAAEDFF2DFD1";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutUpCrvShape" -p "RightEyeLidOutUpCrv";
	rename -uid "02447198-404A-0B1C-4D3B-859CB33E40CC";
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
	rename -uid "3CDBEB52-44B4-3138-665D-B3BC4933AD02";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutDownCrvShape" -p "RightEyeLidOutDownCrv";
	rename -uid "144946A0-4B2D-D909-6152-458AE1DEB331";
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
	rename -uid "F6B7E94A-446D-38EB-7F3F-5190BD404FF0";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutUpJntCrvShape" -p "RightEyeLidOutUpJntCrv";
	rename -uid "4A2B22F2-41C2-F7DE-8B9D-2182F7FF046B";
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
	rename -uid "C94E64B1-44A0-26B2-71CB-9EB8DAA59E89";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutDownJntCrvShape" -p "RightEyeLidOutDownJntCrv";
	rename -uid "BC7D6E0B-49BB-B025-8F12-C0AF9AF80E88";
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
	rename -uid "C42B811F-40E3-2268-66E7-AD9B66C3AFE8";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidUpCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A419AAFE-41AA-8549-E19F-B68A92E0BC81";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp1Pos" -p "RightEyeLidUpCtrl0PosSurfPos";
	rename -uid "66F85998-4BA2-49DF-1F77-08B5489A8684";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidUp1PosShape" -p "RightEyeLidUp1Pos";
	rename -uid "A8AA51A4-462F-8A95-BA85-9A8E74650C1F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "33D9BD6A-488C-E23B-81AE-AEBBB756BB7A";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2Pos" -p "RightEyeLidUpCtrl1PosSurfPos";
	rename -uid "C71F1940-4136-F868-668D-7EB85107153E";
	setAttr ".t" -type "double3" -1.8873791418627661e-15 0 0 ;
createNode locator -n "RightEyeLidUp2PosShape" -p "RightEyeLidUp2Pos";
	rename -uid "2FD1C9D6-405A-AA1C-4080-449D79C29EB6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "2B1DBDF9-41B2-6F0D-CA89-E8834CE856A6";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp3Pos" -p "RightEyeLidUpCtrl2PosSurfPos";
	rename -uid "E9871FA6-4224-5CDE-B432-A38B4538A4CF";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode locator -n "RightEyeLidUp3PosShape" -p "RightEyeLidUp3Pos";
	rename -uid "4C73B1AB-4262-E23E-2285-07978BA71347";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "91949CE4-4E07-5F7D-1575-DBAD21E47C23";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp4Pos" -p "RightEyeLidUpCtrl3PosSurfPos";
	rename -uid "64BF42CB-499A-1EAA-ABDB-47811008D8B3";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 2.5673907444456745e-15 0 ;
createNode locator -n "RightEyeLidUp4PosShape" -p "RightEyeLidUp4Pos";
	rename -uid "3A1A3A50-4994-177A-91DA-1F88BC18B17B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "60C69B0A-4A81-0650-61F5-9BAABCC9A2D3";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp5Pos" -p "RightEyeLidUpCtrl4PosSurfPos";
	rename -uid "2E55C07D-4D7D-F7A7-B17B-BCABA63BA433";
	setAttr ".t" -type "double3" -1.3322676295501878e-15 6.6613381477509392e-16 0 ;
createNode locator -n "RightEyeLidUp5PosShape" -p "RightEyeLidUp5Pos";
	rename -uid "BD67AE3C-4285-CF94-A69A-15ABD3447C37";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "7C221805-4887-7BA9-1D29-84B969D4F462";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp6Pos" -p "RightEyeLidUpCtrl5PosSurfPos";
	rename -uid "321D93A5-4825-8567-59DB-8EAFAB19F8B9";
	setAttr ".t" -type "double3" 3.3306690738754696e-16 1.3322676295501878e-15 0 ;
createNode locator -n "RightEyeLidUp6PosShape" -p "RightEyeLidUp6Pos";
	rename -uid "045E7BC5-48A7-4ACF-8DB7-45BA1F700E08";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A1A6BC37-4885-C2D6-7686-9EA51CEB28DB";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidUp7Pos" -p "RightEyeLidUpCtrl6PosSurfPos";
	rename -uid "2510810B-4EAA-655B-390B-E882A2252332";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidUp7PosShape" -p "RightEyeLidUp7Pos";
	rename -uid "D470893B-4C07-953F-9DEA-5F85C9A8A503";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "CE42E488-4EFC-AF12-F84C-CE982FDA89AF";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown1Pos" -p "RightEyeLidDownCtrl0PosSurfPos";
	rename -uid "E0FD8F14-4FCE-1DA3-A33C-6E8D486BCA22";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidDown1PosShape" -p "RightEyeLidDown1Pos";
	rename -uid "1B50E901-41F0-48A2-E5E7-6086753E89C8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1D4B3CFF-43AB-5E59-60DD-2ABCB6FFC6A2";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 -0.99999999999999956 ;
createNode transform -n "RightEyeLidDown2Pos" -p "RightEyeLidDownCtrl1PosSurfPos";
	rename -uid "F48D2C3B-46CF-BAE9-E333-16B11CA4D091";
	setAttr ".t" -type "double3" -1.4432899320127035e-15 4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown2PosShape" -p "RightEyeLidDown2Pos";
	rename -uid "D9B4C5AB-46D5-6489-B7AA-CF88777EC7D2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "42B607F9-4DA8-D54C-8F82-B4B4E5CB1951";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown3Pos" -p "RightEyeLidDownCtrl2PosSurfPos";
	rename -uid "5A81E3B4-4CA9-76D8-0F12-D5A450445B14";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.5543122344752192e-15 0 ;
createNode locator -n "RightEyeLidDown3PosShape" -p "RightEyeLidDown3Pos";
	rename -uid "B7F69CEE-461D-2C3E-AB3E-09919B8845DE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9C4C0344-4349-A1BB-D47D-26966B1C2023";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown4Pos" -p "RightEyeLidDownCtrl3PosSurfPos";
	rename -uid "8EEFA6BF-4098-C561-B7FF-56801E2AB8C8";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -1.3704315460216776e-15 0 ;
createNode locator -n "RightEyeLidDown4PosShape" -p "RightEyeLidDown4Pos";
	rename -uid "6EC884BE-438E-CC31-F5D3-4AB55C63E893";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "29377E9D-4C15-9EF9-090F-4D860057EDB4";
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown5Pos" -p "RightEyeLidDownCtrl4PosSurfPos";
	rename -uid "0EE2E50D-407F-92AF-37FF-AB84FB2E1D4B";
createNode locator -n "RightEyeLidDown5PosShape" -p "RightEyeLidDown5Pos";
	rename -uid "5E47C75E-4225-1A4B-374D-479D4DF7F204";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9D74F3B9-45D4-7D49-EF2C-3FB6884EFCE9";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown6Pos" -p "RightEyeLidDownCtrl5PosSurfPos";
	rename -uid "3DEA92AC-47E4-7D20-4550-5ABCA0BC6ED6";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown6PosShape" -p "RightEyeLidDown6Pos";
	rename -uid "D0C3A8D4-4817-BF6F-F33E-37A0D360B9F8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "8AADFB60-4CE5-DF19-95E3-E4B88DF8198A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidDown7Pos" -p "RightEyeLidDownCtrl6PosSurfPos";
	rename -uid "B1989D90-4C18-1DF6-A500-50B36FE081E0";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidDown7PosShape" -p "RightEyeLidDown7Pos";
	rename -uid "E5DEACB4-4986-A1F9-2742-F6B26D9202B7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "BF0FF274-4E40-113C-CE31-0CAD2A1DCC5B";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1LocSurfPosLoc" -p "RightEyeLidOutUp1LocSurfPos";
	rename -uid "B5E96A23-41F7-A8C1-59BF-6792ED5D54D7";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutUp1LocSurfPosLocShape" -p "RightEyeLidOutUp1LocSurfPosLoc";
	rename -uid "3E540974-44FD-1113-0AC4-FAAC6CE9EE5F";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2CvPos1SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "7E335B00-4219-AEB7-429C-D5AFBCEDB7A1";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp2CvPos1SurfPosLoc" -p "RightEyeLidOutUp2CvPos1SurfPos";
	rename -uid "F72D7538-4855-2888-7BFE-D695DE435E3F";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode locator -n "RightEyeLidOutUp2CvPos1SurfPosLocShape" -p "RightEyeLidOutUp2CvPos1SurfPosLoc";
	rename -uid "41933D43-448E-F418-AF4E-52B998FB7255";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1AF5D920-40BE-D0C0-1CE3-1DAE2D385363";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUp2LocSurfPosLoc" -p "RightEyeLidOutUp2LocSurfPos";
	rename -uid "D94BC1BC-4CA0-1571-9A48-9190DE9113F9";
createNode locator -n "RightEyeLidOutUp2LocSurfPosLocShape" -p "RightEyeLidOutUp2LocSurfPosLoc";
	rename -uid "858EB0D5-49F4-2D73-7082-DB8B7C49D814";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2CvPos2SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "5979BCB1-4D5E-05F9-6416-67B3D1037E14";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999967 ;
createNode transform -n "RightEyeLidOutUp2CvPos2SurfPosLoc" -p "RightEyeLidOutUp2CvPos2SurfPos";
	rename -uid "3F9E4955-46F6-82DF-A030-48803212D20B";
createNode locator -n "RightEyeLidOutUp2CvPos2SurfPosLocShape" -p "RightEyeLidOutUp2CvPos2SurfPosLoc";
	rename -uid "142942F5-4B91-9201-125C-4BB0F8170726";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp3LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F649A749-4261-7D03-DFA7-9ABD58BE9D8E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 -0.99999999999999967 ;
createNode transform -n "RightEyeLidOutUp3LocSurfPosLoc" -p "RightEyeLidOutUp3LocSurfPos";
	rename -uid "32DE37A9-4903-946C-0B0D-5A820A09D53A";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutUp3LocSurfPosLocShape" -p "RightEyeLidOutUp3LocSurfPosLoc";
	rename -uid "4B99E2E1-41A4-34C5-6EC5-7785C35CE1DD";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown1LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "06C14453-4484-0228-B8F3-E783884F45EA";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocSurfPosLoc" -p "RightEyeLidOutDown1LocSurfPos";
	rename -uid "6FD2ECBB-4321-0ED8-0727-7E913BCC073D";
createNode locator -n "RightEyeLidOutDown1LocSurfPosLocShape" -p "RightEyeLidOutDown1LocSurfPosLoc";
	rename -uid "F9A9F25D-456E-F0ED-4A01-46B6A7B9BC60";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2CvPos1SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9CE57C86-4F1A-74EE-1EB2-18B0B6486B31";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown2CvPos1SurfPosLoc" -p "RightEyeLidOutDown2CvPos1SurfPos";
	rename -uid "BD205114-4E72-BD70-6A92-D49FCF7E4752";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDown2CvPos1SurfPosLocShape" -p "RightEyeLidOutDown2CvPos1SurfPosLoc";
	rename -uid "97AE10A9-4D16-D11F-3C5F-D99A6CA48F58";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F18264CD-459F-4D1C-929F-8C9A1426BC68";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown2LocSurfPosLoc" -p "RightEyeLidOutDown2LocSurfPos";
	rename -uid "8845FB24-4907-B003-FF33-B992F58D2CF6";
createNode locator -n "RightEyeLidOutDown2LocSurfPosLocShape" -p "RightEyeLidOutDown2LocSurfPosLoc";
	rename -uid "81718E1F-45AE-F584-DEED-1ABB7C42D653";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2CvPos2SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1FBF5D4C-477C-7C7A-31ED-37AB95B65D49";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2SurfPosLoc" -p "RightEyeLidOutDown2CvPos2SurfPos";
	rename -uid "DAEDABC0-4D44-A00D-777E-A1AC3440458C";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "RightEyeLidOutDown2CvPos2SurfPosLocShape" -p "RightEyeLidOutDown2CvPos2SurfPosLoc";
	rename -uid "D44FC3E6-4B25-D1B4-D72E-F49CEFB510ED";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown3LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "79DB0307-4912-68D0-46E7-A8A2879D6AD5";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1 ;
createNode transform -n "RightEyeLidOutDown3LocSurfPosLoc" -p "RightEyeLidOutDown3LocSurfPos";
	rename -uid "E61EB403-49C7-3AF9-CB91-4EAD83796BA8";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDown3LocSurfPosLocShape" -p "RightEyeLidOutDown3LocSurfPosLoc";
	rename -uid "A9A302DB-4686-D68F-9F07-269B618424E6";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidCrvPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "B34768C3-4B8B-0DDF-6253-5287F5F59974";
	setAttr ".v" no;
createNode transform -n "RightEyeLidUpCrv0Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "84ADCC83-44B2-7825-9EBA-319B7CCA1ACE";
createNode locator -n "RightEyeLidUpCrv0PosShape" -p "RightEyeLidUpCrv0Pos";
	rename -uid "B1C2D42C-4036-3E21-93D7-72ABE1682D57";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl0Pos" -p "RightEyeLidUpCrv0Pos";
	rename -uid "2DBC372D-4C52-1BC8-CAC2-01B0673EBF51";
createNode locator -n "RightEyeLidUpCtrl0PosShape" -p "RightEyeLidUpCtrl0Pos";
	rename -uid "B82EEC7F-4548-167B-B653-A6812078A32E";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv1Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "57559B70-49EB-4A0C-9E06-B5B557955E8C";
createNode locator -n "RightEyeLidUpCrv1PosShape" -p "RightEyeLidUpCrv1Pos";
	rename -uid "CE68C86A-4775-669A-826D-6EBFEE7B0915";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1Pos" -p "RightEyeLidUpCrv1Pos";
	rename -uid "37EBE384-458E-40A7-E176-46AE94706377";
createNode locator -n "RightEyeLidUpCtrl1PosShape" -p "RightEyeLidUpCtrl1Pos";
	rename -uid "1A88A646-48EF-0EF0-81D0-A5BD517F0875";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv2Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "5CAD19C2-4AD0-BFA3-1997-41A44C64E39C";
createNode locator -n "RightEyeLidUpCrv2PosShape" -p "RightEyeLidUpCrv2Pos";
	rename -uid "4D7E46AD-43BD-915F-B7D1-9F9A4C1749A7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2Pos" -p "RightEyeLidUpCrv2Pos";
	rename -uid "265263AD-4A85-48A3-D5EE-64AC5039877A";
createNode locator -n "RightEyeLidUpCtrl2PosShape" -p "RightEyeLidUpCtrl2Pos";
	rename -uid "1D16E480-414B-026E-D6E0-42AACC6AD67B";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv3Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "11E8E668-435F-71A1-1120-AEBFCC8096C7";
createNode locator -n "RightEyeLidUpCrv3PosShape" -p "RightEyeLidUpCrv3Pos";
	rename -uid "7820C6B1-490D-5982-1C2C-D9B49DF04ED0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3Pos" -p "RightEyeLidUpCrv3Pos";
	rename -uid "0EEAD745-436F-E19F-85B0-53AF54BE2ECC";
createNode locator -n "RightEyeLidUpCtrl3PosShape" -p "RightEyeLidUpCtrl3Pos";
	rename -uid "9C49E88F-4F0A-1D00-75CB-1AA9C5AFB44E";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv4Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "CDE11C6F-4593-B923-9509-BFA0C82D0146";
createNode locator -n "RightEyeLidUpCrv4PosShape" -p "RightEyeLidUpCrv4Pos";
	rename -uid "88B03164-40E3-7992-E52F-559D8A9422BE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4Pos" -p "RightEyeLidUpCrv4Pos";
	rename -uid "0E3880FE-444C-EBF7-BF56-918597E9B001";
createNode locator -n "RightEyeLidUpCtrl4PosShape" -p "RightEyeLidUpCtrl4Pos";
	rename -uid "3BF89D25-47F2-804D-A058-5C98ECFC22B5";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv5Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "ED372220-434E-A13F-8792-79AD19644D5B";
createNode locator -n "RightEyeLidUpCrv5PosShape" -p "RightEyeLidUpCrv5Pos";
	rename -uid "1A9ED916-4E7C-E8C9-AE17-41AF543738B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5Pos" -p "RightEyeLidUpCrv5Pos";
	rename -uid "D81D6FFA-4AF1-8986-2C50-0ABCA390A2B4";
createNode locator -n "RightEyeLidUpCtrl5PosShape" -p "RightEyeLidUpCtrl5Pos";
	rename -uid "E905072A-4419-34C4-A581-9D8CD51379EF";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv6Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "C6F66C73-4D3F-0481-CC4C-93B389FAC4EE";
createNode locator -n "RightEyeLidUpCrv6PosShape" -p "RightEyeLidUpCrv6Pos";
	rename -uid "43F6D85A-4A48-0FF4-424E-27AF10475C9B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6Pos" -p "RightEyeLidUpCrv6Pos";
	rename -uid "FF890EE8-4297-0A66-350A-E88BF6746772";
createNode locator -n "RightEyeLidUpCtrl6PosShape" -p "RightEyeLidUpCtrl6Pos";
	rename -uid "D88EB8BF-43C5-1C9E-54A3-F79DA30A80AF";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv0Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "49615995-4C0D-43DE-11CC-1A8F8EDFFF56";
createNode locator -n "RightEyeLidDownCrv0PosShape" -p "RightEyeLidDownCrv0Pos";
	rename -uid "03A1B57F-4180-D861-E8D3-47BBCEC84136";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0Pos" -p "RightEyeLidDownCrv0Pos";
	rename -uid "9262B973-4871-0CB0-9043-3E859023BA76";
createNode locator -n "RightEyeLidDownCtrl0PosShape" -p "RightEyeLidDownCtrl0Pos";
	rename -uid "E8FF26ED-4924-B95E-4506-05BD5FC250BC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv1Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "6560313D-449A-D708-A4AB-89915D91849C";
createNode locator -n "RightEyeLidDownCrv1PosShape" -p "RightEyeLidDownCrv1Pos";
	rename -uid "31DFE51B-4317-1CA8-CD74-E7ACC3C8949A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1Pos" -p "RightEyeLidDownCrv1Pos";
	rename -uid "EC18517B-4B04-60E9-A134-19AE4262737B";
createNode locator -n "RightEyeLidDownCtrl1PosShape" -p "RightEyeLidDownCtrl1Pos";
	rename -uid "2F03AC12-442B-294D-508F-1A9561D1FB59";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv2Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "7BEDD560-48B9-092B-5A5E-2B841E6521A0";
createNode locator -n "RightEyeLidDownCrv2PosShape" -p "RightEyeLidDownCrv2Pos";
	rename -uid "8C06A3B8-449A-57A4-0D6F-06AF74D5FDB6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2Pos" -p "RightEyeLidDownCrv2Pos";
	rename -uid "29CD9851-4CB2-F3EE-8507-47900988AE6C";
createNode locator -n "RightEyeLidDownCtrl2PosShape" -p "RightEyeLidDownCtrl2Pos";
	rename -uid "99037857-4F8A-0755-4BD4-AC8C67743BD5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv3Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "A27089A9-4078-649B-189F-AAA0F22B3017";
createNode locator -n "RightEyeLidDownCrv3PosShape" -p "RightEyeLidDownCrv3Pos";
	rename -uid "EC557404-478B-CA45-E05B-079A551B7002";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3Pos" -p "RightEyeLidDownCrv3Pos";
	rename -uid "B29BAB09-4222-E345-5503-0EBBF3749F59";
createNode locator -n "RightEyeLidDownCtrl3PosShape" -p "RightEyeLidDownCtrl3Pos";
	rename -uid "C8525321-4EFA-F4C4-1C7C-1F964B221F5E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv4Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "479F75F7-49B3-10D7-B13A-499CA6F5AA8B";
createNode locator -n "RightEyeLidDownCrv4PosShape" -p "RightEyeLidDownCrv4Pos";
	rename -uid "3C9523A6-4F2B-B684-1328-CB951CD01540";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4Pos" -p "RightEyeLidDownCrv4Pos";
	rename -uid "4E2CDE29-40EE-9469-5CEF-CB9A6A0DD6ED";
createNode locator -n "RightEyeLidDownCtrl4PosShape" -p "RightEyeLidDownCtrl4Pos";
	rename -uid "926B44DD-4183-CF6A-6169-54AFFCD0760F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv5Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "0E6A9046-4FDA-C26E-0762-4D99F125E39B";
createNode locator -n "RightEyeLidDownCrv5PosShape" -p "RightEyeLidDownCrv5Pos";
	rename -uid "B71A535B-4091-CE91-8379-0A98AD6BD179";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5Pos" -p "RightEyeLidDownCrv5Pos";
	rename -uid "78586E45-49B8-4A92-F328-73865D1159C9";
createNode locator -n "RightEyeLidDownCtrl5PosShape" -p "RightEyeLidDownCtrl5Pos";
	rename -uid "45768E1D-4067-588D-E1B3-F993876CF9F4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv6Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "BD8768A6-4255-D2D8-E81D-E8A254D99B61";
createNode locator -n "RightEyeLidDownCrv6PosShape" -p "RightEyeLidDownCrv6Pos";
	rename -uid "B0BCBCE5-4916-7E13-BC87-1B8C9B6861DF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6Pos" -p "RightEyeLidDownCrv6Pos";
	rename -uid "2B40181E-4FD1-6A31-CD9F-F8BA76792757";
createNode locator -n "RightEyeLidDownCtrl6PosShape" -p "RightEyeLidDownCtrl6Pos";
	rename -uid "C1A09C24-4318-B00C-2CCA-0F94C735CE11";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "9028CEDD-4D2E-89DD-A3F6-9BAE47F45CB7";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidCtrl0Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "D7604062-492B-FC1F-D955-3081BAD7E766";
createNode locator -n "RightEyeLidCtrl0PosShape" -p "RightEyeLidCtrl0Pos";
	rename -uid "DF6EF2DA-41EA-A33D-5BB5-788FDEE287D6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl1Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "A9A02150-4B1C-7C12-3D4A-4AB0252EE855";
createNode locator -n "RightEyeLidCtrl1PosShape" -p "RightEyeLidCtrl1Pos";
	rename -uid "763EABD8-4A9C-7306-7D22-459A347533CA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl2Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "47ECC159-4092-75B2-FFB4-CDB912184B90";
createNode locator -n "RightEyeLidCtrl2PosShape" -p "RightEyeLidCtrl2Pos";
	rename -uid "55C6CA2C-40C7-1510-6EEA-468D4DE016BD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl3Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "B83BA963-4413-E880-7D41-0FA70CD07DC0";
createNode locator -n "RightEyeLidCtrl3PosShape" -p "RightEyeLidCtrl3Pos";
	rename -uid "FCE51C25-4C98-45C8-6FEA-948E09BC2B0A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl4Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "F8C9A734-46F8-4A9B-9515-9FBEE143268B";
createNode locator -n "RightEyeLidCtrl4PosShape" -p "RightEyeLidCtrl4Pos";
	rename -uid "59B495DA-45AE-95FA-86B8-FFAFA602BF52";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl5Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "C4BC0F8C-4DCB-946F-C9B3-DBB2952FFC2F";
createNode locator -n "RightEyeLidCtrl5PosShape" -p "RightEyeLidCtrl5Pos";
	rename -uid "52BCC96A-4087-3E57-6C76-78841FD6D286";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl6Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "F7E764C0-45D5-1C10-DF8E-9CAB8127A781";
createNode locator -n "RightEyeLidCtrl6PosShape" -p "RightEyeLidCtrl6Pos";
	rename -uid "C1300306-4ED7-F1A0-DC6F-2DAA58B9D5AD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl7Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "429F3AE6-44BA-55B7-A3F1-2494141C4A4A";
createNode locator -n "RightEyeLidCtrl7PosShape" -p "RightEyeLidCtrl7Pos";
	rename -uid "3CA680E5-473B-FC63-F053-C3B653DD88AB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl8Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "C4AE6368-4500-131F-481C-CF976D963609";
createNode locator -n "RightEyeLidCtrl8PosShape" -p "RightEyeLidCtrl8Pos";
	rename -uid "880A19FD-47BF-763A-3CAA-44AB52B1845B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl9Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "2ECF6212-494D-F399-B667-B9B8159C75D6";
createNode locator -n "RightEyeLidCtrl9PosShape" -p "RightEyeLidCtrl9Pos";
	rename -uid "205068DE-43D7-18EE-95CF-649FA293CF78";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl10Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "0146C20C-4078-1F29-AE1B-20A003525F3D";
createNode locator -n "RightEyeLidCtrl10PosShape" -p "RightEyeLidCtrl10Pos";
	rename -uid "34323296-48DE-8479-3310-DABF4AA5FBCE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl11Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "1552A41D-4610-6949-1A1D-AD9862291227";
createNode locator -n "RightEyeLidCtrl11PosShape" -p "RightEyeLidCtrl11Pos";
	rename -uid "43DEB2C9-4F6D-DFD5-A711-00AECF5379A5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidRootPoserGrp" -p "RightEyeLidSysGrp";
	rename -uid "525A5FC0-439C-2098-CDD4-6B91BC433CB8";
	setAttr ".t" -type "double3" -2.7794001988259354e-08 -1.2079226507921703e-13 -3.5527121146412049e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "RightEyeLidRootPoser" -p "RightEyeLidRootPoserGrp";
	rename -uid "37938391-4194-702B-031B-25BA4CF14248";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode";
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "RightEyeLidRootPoserShape" -p "RightEyeLidRootPoser";
	rename -uid "2517341C-4AFF-3A25-9DF9-D9B1403E572B";
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
	rename -uid "23120878-40DC-E8A5-8DF2-F19446A2D96C";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "RightEyeBallSurfShape" -p "RightEyeBallSurf";
	rename -uid "359B00F7-44D7-2AA9-6B6A-39B8C3D6E68F";
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
	rename -uid "6DD26F3E-4686-2B71-B976-D79D05A737B7";
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
	rename -uid "27690181-4307-3C98-C751-FA8C4B45B776";
createNode transform -n "RightEyeBallffd1Lattice" -p "RightEyeBallFFDGrp";
	rename -uid "A7505FC2-40EA-547D-7AE2-B2A3112CA412";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "RightEyeBallffd1LatticeShape" -p "RightEyeBallffd1Lattice";
	rename -uid "226B848C-46C0-6EBD-2E8A-8E95811B587A";
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
	rename -uid "894FA92B-4866-DB44-A082-76AFDC1D4A37";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "RightEyeBallffd1BaseShape" -p "RightEyeBallffd1Base";
	rename -uid "58CF533B-4B96-F36A-10FF-4D817ED68EFA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "RightEyeLidAimGrp" -p "RightEyeLidRootPoser";
	rename -uid "D2F94AA3-4245-4446-644B-EBA7BDFF46DE";
	setAttr ".v" no;
createNode transform -n "RightEyeBallFix" -p "RightEyeLidAimGrp";
	rename -uid "33E7D4C6-44A8-4878-1DE6-B9B2B52CFAA9";
createNode locator -n "RightEyeBallFixShape" -p "RightEyeBallFix";
	rename -uid "64A087D9-4F59-2E0B-E4BE-FFA9FAD7CD80";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidUp3AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "A18B6BBA-40D0-552A-651A-C090D02EFCD2";
createNode transform -n "RightEyeLidUp3Aim" -p "RightEyeLidUp3AimGrp";
	rename -uid "96C1100C-4436-EC16-1D78-B99EC87211DE";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp3AimShape" -p "RightEyeLidUp3Aim";
	rename -uid "33AB7C92-4713-FD7C-9ACB-7FAC12184CBB";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp3AimGrp_aimConstraint1" -p "RightEyeLidUp3AimGrp";
	rename -uid "634C3294-4D68-CEAE-7A59-F886466D6033";
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
	rename -uid "66B323AC-4A21-1731-2628-01BC76582318";
createNode transform -n "RightEyeLidUp4Aim" -p "RightEyeLidUp4AimGrp";
	rename -uid "FCC819C7-4767-A5ED-A037-A5B76D5263D6";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp4AimShape" -p "RightEyeLidUp4Aim";
	rename -uid "72B2B4B9-4E59-4A58-1EEF-92A8555F188D";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp4AimGrp_aimConstraint1" -p "RightEyeLidUp4AimGrp";
	rename -uid "84B67FA2-4D5D-0FD2-27F0-289168EB20AC";
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
	rename -uid "A5DB36C0-4051-27D7-0DEA-87A2A3A1F4D3";
createNode transform -n "RightEyeLidUp5Aim" -p "RightEyeLidUp5AimGrp";
	rename -uid "BC233440-4C87-66CD-E335-C6822EBDAC08";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp5AimShape" -p "RightEyeLidUp5Aim";
	rename -uid "D5F8FDEA-4257-B377-658F-0FB3E75B1098";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp5AimGrp_aimConstraint1" -p "RightEyeLidUp5AimGrp";
	rename -uid "398777EA-44A6-BC16-F211-62944E5D1E19";
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
	rename -uid "E7926313-48B2-4368-7A94-2CB40C94DE24";
createNode transform -n "RightEyeLidDown3Aim" -p "RightEyeLidDown3AimGrp";
	rename -uid "3B3B0246-4AFE-B6A1-FB67-B7B9C16E713E";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown3AimShape" -p "RightEyeLidDown3Aim";
	rename -uid "E54834EB-494D-6F17-5D02-B4B54A6CA4EA";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown3AimGrp_aimConstraint1" -p "RightEyeLidDown3AimGrp";
	rename -uid "68FBDD6D-460D-141D-3A9B-92B5959CD146";
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
	rename -uid "917D8F23-449A-468B-E29A-45992C6716A6";
createNode transform -n "RightEyeLidDown4Aim" -p "RightEyeLidDown4AimGrp";
	rename -uid "19374BC9-4C4D-1047-70BB-83A26F9450DA";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown4AimShape" -p "RightEyeLidDown4Aim";
	rename -uid "BB529F4E-4BB3-4E81-A328-2C9C58C66CBD";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown4AimGrp_aimConstraint1" -p "RightEyeLidDown4AimGrp";
	rename -uid "3CDEC786-401D-91A7-44C8-B5983943E4E1";
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
	rename -uid "C9531B7B-44E6-10F5-D71E-F985080E449E";
createNode transform -n "RightEyeLidDown5Aim" -p "RightEyeLidDown5AimGrp";
	rename -uid "B739D55E-4A50-02AB-8007-85853042735A";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown5AimShape" -p "RightEyeLidDown5Aim";
	rename -uid "DD37E78A-4761-511E-4312-F28674A936C2";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown5AimGrp_aimConstraint1" -p "RightEyeLidDown5AimGrp";
	rename -uid "0BE680BB-4A03-6804-71EF-CB8278B8F88D";
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
	rename -uid "ACD03EDB-489D-F09B-2701-6CBAE35D39D0";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightEyeLidLocGrp" -p "RightEyeLidLocGrpOffGrp";
	rename -uid "15F06CDF-4543-2379-EF04-8186A5273B4B";
createNode transform -n "RightEyeLidInPos" -p "RightEyeLidLocGrp";
	rename -uid "74636970-428F-C3C3-A4D8-3BB215E6AC9B";
createNode locator -n "RightEyeLidInPosShape" -p "RightEyeLidInPos";
	rename -uid "7D08F8EF-48DC-0CFC-85B3-88869C780946";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidInLocOffGrp" -p "RightEyeLidInPos";
	rename -uid "3EDC2C73-4693-7431-97A0-AB8C87B1C72D";
	setAttr ".v" no;
createNode transform -n "RightEyeLidInLoc" -p "RightEyeLidInLocOffGrp";
	rename -uid "D68724AA-42BC-937E-B1B9-0598488461E6";
createNode locator -n "RightEyeLidInLocShape" -p "RightEyeLidInLoc";
	rename -uid "04A323F8-4BA2-29BA-B261-A19ACA8CB34A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "RighteyeLidInEPPosShape" -p "RightEyeLidInLoc";
	rename -uid "E952D5FD-4560-BB89-0FAF-20B72C2C9604";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpPos" -p "RightEyeLidLocGrp";
	rename -uid "FF08003C-4AAC-7D81-C461-AEA8D69066FB";
createNode locator -n "RightEyeLidUpPosShape" -p "RightEyeLidUpPos";
	rename -uid "E1709EDD-416B-8984-86BE-55B6FEF8E14D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidUpLocOffGrp" -p "RightEyeLidUpPos";
	rename -uid "27C6745E-4E10-44E9-035D-44AA487DAD69";
createNode transform -n "RightEyeLidUpLoc" -p "RightEyeLidUpLocOffGrp";
	rename -uid "6B48C128-4357-9CA3-6C8F-9CBA19C8989C";
createNode locator -n "RightEyeLidUpLocShape" -p "RightEyeLidUpLoc";
	rename -uid "794CD6E4-4787-6D7D-1267-2BA23BEE49F1";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos2" -p "RightEyeLidUpLoc";
	rename -uid "402CE48A-46F5-B18A-A720-35B690DF05DC";
createNode locator -n "RightEyeLidUpCvPos2Shape" -p "RightEyeLidUpCvPos2";
	rename -uid "5184E100-4734-42CF-01B6-B4808F87348B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos1" -p "RightEyeLidUpLoc";
	rename -uid "ABEDDD64-416E-0344-3787-79B15937CE72";
createNode locator -n "RightEyeLidUpCvPos1Shape" -p "RightEyeLidUpCvPos1";
	rename -uid "30C59FC2-4F68-2B18-B06C-999D2BE7A30E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutPos" -p "RightEyeLidLocGrp";
	rename -uid "4C21D3C1-40A1-CC84-3525-FD9773EB40BF";
createNode locator -n "RightEyeLidOutPosShape" -p "RightEyeLidOutPos";
	rename -uid "842D9CFB-4767-DD0E-8665-4C9E20F10D6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutLocOffGrp" -p "RightEyeLidOutPos";
	rename -uid "BBD646DD-4293-DDEB-8126-9290F7D07698";
	setAttr ".v" no;
createNode transform -n "RightEyeLidOutLoc" -p "RightEyeLidOutLocOffGrp";
	rename -uid "4BF88CF5-466E-EFBB-F3B2-F0B63D7A58D2";
createNode locator -n "RightEyeLidOutLocShape" -p "RightEyeLidOutLoc";
	rename -uid "E3983C29-4B12-DB4C-0AC4-2E9A73AA9C8E";
	setAttr -k off ".v";
createNode locator -n "RighteyeLidOutEPPosShape" -p "RightEyeLidOutLoc";
	rename -uid "7EE63763-4932-016B-2EE1-BE9C386060E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownPos" -p "RightEyeLidLocGrp";
	rename -uid "403DB618-4021-048A-66ED-4AAB997507DE";
createNode locator -n "RightEyeLidDownPosShape" -p "RightEyeLidDownPos";
	rename -uid "1A07D96F-4DC2-B1F8-E988-8BBC9290D2FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidDownLocOffGrp" -p "RightEyeLidDownPos";
	rename -uid "6F13FDBD-4142-96B4-D2FD-0DAC5B9DB6C0";
createNode transform -n "RightEyeLidDownLoc" -p "RightEyeLidDownLocOffGrp";
	rename -uid "BD35B5B3-41FB-A93A-5A86-AA93BF2ADFD3";
createNode locator -n "RightEyeLidDownLocShape" -p "RightEyeLidDownLoc";
	rename -uid "8FAC6B02-420D-1D18-7F1F-E895EF28F8C6";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos2" -p "RightEyeLidDownLoc";
	rename -uid "D46B693A-4ACF-3AB1-F7EB-C8A99E868774";
createNode locator -n "RightEyeLidDownCvPos2Shape" -p "RightEyeLidDownCvPos2";
	rename -uid "7E9E2C2D-4740-0646-9CF9-B7A0A467390D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos1" -p "RightEyeLidDownLoc";
	rename -uid "735173C3-4075-86D7-A522-5CA491B5F9AE";
createNode locator -n "RightEyeLidDownCvPos1Shape" -p "RightEyeLidDownCvPos1";
	rename -uid "CC2698D8-4C1D-EAD7-84BF-E0B0AD5011E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "55092F31-495B-5C01-4BEB-C2B836184A84";
createNode transform -n "RightEyeLidOutUp1LocGrp" -p "RightEyeLidOutUp1LocOffGrp";
	rename -uid "ADEE98DF-40E0-E4ED-DF0E-1EA81D13441C";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp1Pos" -p "RightEyeLidOutUp1LocGrp";
	rename -uid "CCA450DB-4755-5A33-E876-A48E4485EAA1";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp1PosShape" -p "RightEyeLidOutUp1Pos";
	rename -uid "50EC922B-4F96-A7A4-5EB2-1795FAFEFBFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp1Loc" -p "RightEyeLidOutUp1Pos";
	rename -uid "FB23821B-4962-04D9-D9E9-43BFC0EEAFE3";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "RightEyeLidOutUp1LocShape" -p "RightEyeLidOutUp1Loc";
	rename -uid "8CD1E0D0-443D-1CB3-0E6A-829E1E4A4B8C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "3F723989-4CB0-369C-289B-01A6624084B0";
createNode transform -n "RightEyeLidOutUp2LocGrp" -p "RightEyeLidOutUp2LocOffGrp";
	rename -uid "A06F3F64-4020-80B9-C737-F2B8E178BD48";
createNode transform -n "RightEyeLidOutUp2Pos" -p "RightEyeLidOutUp2LocGrp";
	rename -uid "9AC76E2C-4D16-2BC5-69FD-FCA04E0513F9";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp2PosShape" -p "RightEyeLidOutUp2Pos";
	rename -uid "DD1E11F4-44D1-C7CE-5277-0B8FA92B0DA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2Loc" -p "RightEyeLidOutUp2Pos";
	rename -uid "A743256A-4468-7FD0-86BE-10A6EEDDC2C5";
createNode locator -n "RightEyeLidOutUp2LocShape" -p "RightEyeLidOutUp2Loc";
	rename -uid "5EF35856-44B6-B196-D744-268C7DF5FF88";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos1" -p "RightEyeLidOutUp2Loc";
	rename -uid "95C9E774-4381-AFCF-A657-0D933FF4C991";
createNode locator -n "RightEyeLidOutUp2CvPos1Shape" -p "RightEyeLidOutUp2CvPos1";
	rename -uid "14ED9641-411B-4CD6-B048-118C3BB85669";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos2" -p "RightEyeLidOutUp2Loc";
	rename -uid "E1D97B3F-4616-6C28-3112-D5917FC668EC";
createNode locator -n "RightEyeLidOutUp2CvPos2Shape" -p "RightEyeLidOutUp2CvPos2";
	rename -uid "B610A42E-4B99-748F-A072-78A466B2E9E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "249D1675-4940-6AC0-2FFA-81A93A6CCBCC";
createNode transform -n "RightEyeLidOutUp3LocGrp" -p "RightEyeLidOutUp3LocOffGrp";
	rename -uid "EF9CB2AC-43DA-6D20-D075-9FB46FCCB918";
createNode transform -n "RightEyeLidOutUp3Pos" -p "RightEyeLidOutUp3LocGrp";
	rename -uid "69FBBFF1-43C2-A480-15F6-1BB5EC0C7757";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp3PosShape" -p "RightEyeLidOutUp3Pos";
	rename -uid "85F556D6-4B11-C1A4-ADA1-9D89808186E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp3Loc" -p "RightEyeLidOutUp3Pos";
	rename -uid "D7CDB748-4E6F-19DB-D648-B69B5D38880B";
	setAttr ".v" no;
createNode locator -n "RightEyeLidOutUp3LocShape" -p "RightEyeLidOutUp3Loc";
	rename -uid "78E2935B-4FCE-1C5F-3D33-AD963D5F3FB1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "6CB305BC-4A70-4283-3B3F-4991DABFACCF";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocGrp" -p "RightEyeLidOutDown1LocOffGrp";
	rename -uid "7D77DB6B-403A-B2B4-34E0-65A30DE9B66D";
createNode transform -n "RightEyeLidOutDown1Pos" -p "RightEyeLidOutDown1LocGrp";
	rename -uid "FE64BA19-43F9-F54A-F0DA-8A8E9A84B498";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown1PosShape" -p "RightEyeLidOutDown1Pos";
	rename -uid "B810ABE0-40A9-2A97-8616-28AAA0D2AD20";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1Loc" -p "RightEyeLidOutDown1Pos";
	rename -uid "C1AF2E2B-4E5A-F26E-8A76-5CAF656B0A52";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDown1LocShape" -p "RightEyeLidOutDown1Loc";
	rename -uid "5D30CC7D-4BF1-1291-6FAD-D9B605CBDFFC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "EAB1FE7A-48AD-F393-98B1-88B189BF5E5A";
createNode transform -n "RightEyeLidOutDown2LocGrp" -p "RightEyeLidOutDown2LocOffGrp";
	rename -uid "ECA96A37-4246-832F-EE29-478B2320C0E8";
createNode transform -n "RightEyeLidOutDown2Pos" -p "RightEyeLidOutDown2LocGrp";
	rename -uid "A38961D8-45DD-B8BF-5248-2FB85E2DB981";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown2PosShape" -p "RightEyeLidOutDown2Pos";
	rename -uid "4039DB76-466B-AC90-EBEB-878B431C9B39";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown2Loc" -p "RightEyeLidOutDown2Pos";
	rename -uid "0900665D-4288-5EC4-67D7-F695021A265A";
createNode locator -n "RightEyeLidOutDown2LocShape" -p "RightEyeLidOutDown2Loc";
	rename -uid "94BA90B4-4BAD-EC5E-48B0-6B9DA933C3B6";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos1" -p "RightEyeLidOutDown2Loc";
	rename -uid "145EEFCA-4ADB-9A47-CE34-E880CFE770DF";
createNode locator -n "RightEyeLidOutDown2CvPos1Shape" -p "RightEyeLidOutDown2CvPos1";
	rename -uid "D18F95B6-4CF4-35E9-D999-3E812C48C4A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2" -p "RightEyeLidOutDown2Loc";
	rename -uid "B7E97E92-43C6-9210-EE68-3DA861645CEA";
createNode locator -n "RightEyeLidOutDown2CvPos2Shape" -p "RightEyeLidOutDown2CvPos2";
	rename -uid "19A14084-419A-7BBD-FCEA-65995000A240";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "EAB9CF91-4EEC-D6FC-C21C-20A65570097F";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown3LocGrp" -p "RightEyeLidOutDown3LocOffGrp";
	rename -uid "99A41B1F-4349-3962-03F6-278EBCEA1674";
createNode transform -n "RightEyeLidOutDown3Pos" -p "RightEyeLidOutDown3LocGrp";
	rename -uid "6291A154-439E-F17C-822A-71B160938EF7";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown3PosShape" -p "RightEyeLidOutDown3Pos";
	rename -uid "6CC913B3-4C2B-1762-C32A-62A32C00B12D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown3Loc" -p "RightEyeLidOutDown3Pos";
	rename -uid "5C2BC614-481F-F329-410E-7EA780ECFB77";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "RightEyeLidOutDown3LocShape" -p "RightEyeLidOutDown3Loc";
	rename -uid "3AAB148F-4FC1-E23D-6308-499F870BACBD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosCrv" -p "RightEyeLidRootPoser";
	rename -uid "772A0BEB-48A6-EB00-7296-8A8C489C10D2";
	setAttr ".t" -type "double3" 0 1.2079226507921706e-13 3.5527121146411737e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShape" -p "RightEyeLidCtrlPosCrv";
	rename -uid "82681D09-42EB-889F-0042-5A90C16A54BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".tw" yes;
	setAttr -s 12 ".cp[0:11]" -type "double3" -2.4911435564574163 -14.820797920226001 
		-24.695638656616367 -2.4911435564574163 -14.820797920226001 -24.695638656616367 -2.4911435564574234 
		-14.820797920226001 -24.695638656616367 -2.4911435564574234 -14.820797920226001 -24.695638656616367 
		-2.4911435564574234 -14.820797920226001 -24.695638656616367 -2.4911435564574216 -14.820797920226001 
		-24.695638656616367 -2.4911435564574216 -14.820797920226001 -24.695638656616367 -2.4911435564574216 
		-14.820797920226001 -24.695638656616367 -2.4911435564574234 -14.820797920226001 -24.695638656616367 
		-2.4911435564574234 -14.820797920226001 -24.695638656616367 -2.4911435564574234 -14.820797920226001 
		-24.695638656616367 -2.4911435564574163 -14.820797920226001 -24.695638656616367;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShapeOrig" -p "RightEyeLidCtrlPosCrv";
	rename -uid "C84C6EC4-4F5E-D140-678A-ADBA04C38266";
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
	rename -uid "37F691E3-42F1-0514-5954-1AB66A2272D3";
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode joint -n "LeftEyeLidOutUp0Jnt" -p "EyeLidJntGrp";
	rename -uid "A13E50EC-434A-D777-573D-A7B58B31B01D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutUp1Jnt" -p "EyeLidJntGrp";
	rename -uid "03AA22B3-4D56-D5AD-AC91-DABA65ACD377";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutUp2Jnt" -p "EyeLidJntGrp";
	rename -uid "A222E4D7-4DB1-7F1E-69F4-12A7AE981521";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutDown0Jnt" -p "EyeLidJntGrp";
	rename -uid "83233F23-4FEB-0EA2-BF89-21A676D06CBE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutDown1Jnt" -p "EyeLidJntGrp";
	rename -uid "C42C57A1-40D1-5B15-5EAE-499B95A420EF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftEyeLidOutDown2Jnt" -p "EyeLidJntGrp";
	rename -uid "330D19BD-4B16-F746-88EF-2DB759BD5F45";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutUp0Jnt" -p "EyeLidJntGrp";
	rename -uid "CCD905F1-48F2-9B32-BE28-CFB0C1E561F4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutUp1Jnt" -p "EyeLidJntGrp";
	rename -uid "062AB5C7-40BB-7CB2-F9FA-8486BF5279A2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutUp2Jnt" -p "EyeLidJntGrp";
	rename -uid "D9331BBE-42A4-8DE9-0C66-A98B43FA5A11";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutDown0Jnt" -p "EyeLidJntGrp";
	rename -uid "6EDAA94D-43AB-CF43-BCDB-E2BED8D3E66C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutDown1Jnt" -p "EyeLidJntGrp";
	rename -uid "09F7F00B-42E7-FAF5-5A0B-6494021C761C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightEyeLidOutDown2Jnt" -p "EyeLidJntGrp";
	rename -uid "24F99395-4A2B-AF07-FADA-73A504C49401";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "87E37F71-4DFA-2F69-C405-2D87A202AE4B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "43F6FDEC-4A78-A033-2EF6-369886AEAFD8";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "680D6ED3-4BD5-8DCF-C206-D88F13152AEF";
createNode displayLayerManager -n "layerManager";
	rename -uid "CF0A0B12-4E63-6A83-7696-7492AC288DA6";
createNode displayLayer -n "defaultLayer";
	rename -uid "B94BA74C-4D50-76C0-CEEF-B088B22E27CD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5800EA2E-448A-03E2-6517-80B27B218B67";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A82E9CAC-4623-EED3-F320-60B9F42809CD";
	setAttr ".g" yes;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS";
	rename -uid "31D4459E-4035-C36F-75C3-EFBCF5961C72";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS";
	rename -uid "6259E943-43B3-0B9D-FFC0-A79BDF47A4C6";
createNode multiplyDivide -n "LeftEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "5B12E578-48F1-9497-23F6-469A3DAD68B0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "2C5E0975-4E83-0943-FA7E-6FB9E90C482E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS";
	rename -uid "BAA47E70-4AAA-C3AA-A59A-ACA69F8B5C27";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS";
	rename -uid "FAA45AFA-46A5-B42C-2AA7-6A958183A668";
createNode multiplyDivide -n "LeftEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "78C4D213-42CC-28B9-62F8-0B92BF88B2CA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS";
	rename -uid "A20F2220-4057-319F-BB40-7FA050D77C91";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS";
	rename -uid "CCE458D7-4940-A375-C485-8FBECF9A3E6C";
createNode multiplyDivide -n "LeftEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "3F03D9B0-41AF-2B2D-39EA-AAB2C04461E8";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS";
	rename -uid "2F1BB9AF-487C-1D10-51F3-6FB652E6C406";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS";
	rename -uid "2A4119CD-485B-B615-9B39-5C83CB63F6C0";
createNode multiplyDivide -n "LeftEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "2CA1EBA3-479A-D3EE-2FD4-D2813730B65A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS";
	rename -uid "8A461D45-47FC-8156-A6E0-6B97CD9A4EE0";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS";
	rename -uid "BE657C0A-4E02-F0C4-07FE-1EB52C8B49F2";
createNode multiplyDivide -n "LeftEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "AB08ABDE-408D-40E5-A090-9791A98F9BA0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS";
	rename -uid "2B221F52-4CAE-F37F-71C8-8FACD5462F44";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS";
	rename -uid "C708928A-49BB-5B64-D524-06B962740595";
createNode multiplyDivide -n "LeftEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "E690F036-454A-C90A-246A-87885471A607";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidInLocPS";
	rename -uid "9D605048-45B1-4BFB-0D73-CD8AA23B972B";
createNode closestPointOnSurface -n "LeftEyeLidInLocCS";
	rename -uid "13A76E8B-4956-8CA0-2C43-CBBFB1D7B67D";
createNode multiplyDivide -n "LefteyeLidInCtrlRvsMultMD";
	rename -uid "34EA84C2-4497-BDB4-2358-B4977B0E2835";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "8A47AF9F-4F98-8E5A-9EAD-AD97B8075F78";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpLocPS";
	rename -uid "5C3DEB8E-4F2C-F445-1588-1783CDD8D8AB";
createNode closestPointOnSurface -n "LeftEyeLidUpLocCS";
	rename -uid "C022AC40-4CDF-D083-D561-02828DFB0ACB";
createNode multiplyDivide -n "LeftEyeLidUpCtrlRvsMultMD";
	rename -uid "C4A18F1B-47FB-36C3-0948-6189D9C30C42";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "AA4FFD63-4DFC-13AB-D7F9-8C82D9217F0E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutLocPS";
	rename -uid "9D972293-4E44-3377-CF80-CBBD31976C00";
createNode closestPointOnSurface -n "LeftEyeLidOutLocCS";
	rename -uid "B34EF4EC-4E58-4F91-581D-4BBF405CDAD0";
createNode multiplyDivide -n "LefteyeLidOutCtrlRvsMultMD";
	rename -uid "C4BFABBA-470B-0FF7-CBC9-ADA5B2FE55B3";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownLocPS";
	rename -uid "D1CCA39A-4095-4477-3521-66A540E38B19";
createNode closestPointOnSurface -n "LeftEyeLidDownLocCS";
	rename -uid "B75252FE-427D-F5B0-7ABF-13A8877E886B";
createNode multiplyDivide -n "LefteyeLidDownCtrlRvsMultMD";
	rename -uid "90E78589-4D5B-32F2-7D46-90BDF257D664";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "3BD453D9-4D04-D321-9EE4-2FA0F784CB0C";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode decomposeMatrix -n "LeftEyeLidUp2CtrlPosGrpDM";
	rename -uid "0DAE1D58-43B9-CD68-7BD0-95B371763BA4";
createNode multMatrix -n "LeftEyeLidUp2CtrlPosGrpMM";
	rename -uid "261B279F-40A8-64FD-9CF9-D1AEF0A0E728";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0716148614883423 15.266393661499023 25.083902359008789 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999989 0 0 0 0 1 0 -1.0716148614883423 -15.266393661499023 -25.083902359008789 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp2CtrlRvsMultMD";
	rename -uid "9EF4B748-4DCA-E520-836D-F092506A67B1";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp3CtrlPosGrpDM";
	rename -uid "90AEB572-4941-57A7-7535-DBA548B05B73";
createNode multMatrix -n "LeftEyeLidUp3CtrlPosGrpMM";
	rename -uid "AF844CD3-4B6F-0B7B-B009-B695089FABD7";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.562730073928833 16.041145324707031 24.903356552124023 1;
	setAttr ".i[2]" -type "matrix" 1 0 1.7763568394002505e-15 0 -1.3877787807814457e-17 1 0 0
		 0 0 1 0 -1.562730073928833 -16.041145324707031 -24.903356552124027 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp3CtrlRvsMultMD";
	rename -uid "9BFBB3B5-4F40-964F-0025-719B46907741";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp4CtrlPosGrpDM";
	rename -uid "3F40A1FC-4CFF-3B93-A9FC-63A2A4A87379";
createNode multMatrix -n "LeftEyeLidUp4CtrlPosGrpMM";
	rename -uid "71396DFB-476A-E075-2A4A-75971DA8E5FF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4166932106018066 16.323806762695312 24.66486930847168 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.6769177786658861e-17 0.99999999999999989 -1.7114691128522261e-16 0
		 -1.3877787807814457e-17 0 1 0 -2.4166932106018062 -16.323806762695312 -24.664869308471676 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp4CtrlRvsMultMD";
	rename -uid "7A22A8AA-4A01-5CC0-36DF-70B62F9EC000";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp5CtrlPosGrpDM";
	rename -uid "D8CB3C96-4500-81CB-9D88-05A8969B2176";
createNode multMatrix -n "LeftEyeLidUp5CtrlPosGrpMM";
	rename -uid "8A72D9CF-4970-0A7F-E103-D3A2DDC5A984";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.2652444839477539 16.033849716186523 24.470087051391602 1;
	setAttr ".i[2]" -type "matrix" 1 -9.8607613152626476e-32 -8.8817841970012523e-16 0
		 2.2657185044431773e-17 1.0000000000000002 1.6979533786898039e-16 0 0 1.1102230246251565e-16 1 0
		 -3.2652444839477539 -16.033849716186527 -24.470087051391602 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp5CtrlRvsMultMD";
	rename -uid "AB174799-4274-F0FF-912B-B9A553911713";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp6CtrlPosGrpDM";
	rename -uid "4F0A11F9-4754-DB1C-0D84-0FB37AB99436";
createNode multMatrix -n "LeftEyeLidUp6CtrlPosGrpMM";
	rename -uid "BB2FB956-41F4-C4DF-DCC8-4AA59D5FCC4A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.850816011428833 15.308286666870117 24.321054458618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.8508160114288321 -15.308286666870115 -24.321054458618161 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp6CtrlRvsMultMD";
	rename -uid "1694A613-4809-8BD9-2E84-09ADD15A6963";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown2CtrlPosGrpDM";
	rename -uid "A680E580-472F-D56C-D997-7A903BA77472";
createNode multMatrix -n "LeftEyeLidDown2CtrlPosGrpMM";
	rename -uid "D0570C67-4FE3-3576-38E4-66BEAB33253E";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.058457612991333 14.351093292236328 25.111383438110352 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 0.99999999999999989 0 0
		 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0584576129913328 -14.351093292236326 -25.111383438110352 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown2CtrlRvsMultMD";
	rename -uid "C5798724-49A6-B3A6-391A-87BAB621361E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown3CtrlPosGrpDM";
	rename -uid "4A104982-4E8E-FBEC-94B8-199CDEAB25B4";
createNode multMatrix -n "LeftEyeLidDown3CtrlPosGrpMM";
	rename -uid "A4C7B396-426B-9D6F-8593-0A93EB3D8FA0";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.5410475730895996 13.594337463378906 25.023866653442383 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 -1.5410475730895996 -13.594337463378906 -25.023866653442383 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown3CtrlRvsMultMD";
	rename -uid "CA2E06D5-43CC-9377-822E-0EBD71B0E89B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown4CtrlPosGrpDM";
	rename -uid "FA0CCB5E-4FED-6764-53AF-3889B3F94B3C";
createNode multMatrix -n "LeftEyeLidDown4CtrlPosGrpMM";
	rename -uid "D94E7986-4DAB-36C9-3EFE-DC934F5510D4";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4046261310577393 13.317789077758789 24.833391189575195 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.3928580356146194e-16 -3.9782670549075614e-16 0
		 -2.7755575615628914e-17 0.99999999999999989 0 0 0 0 1 0 -2.4046261310577393 -13.317789077758791 -24.833391189575195 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown4CtrlRvsMultMD";
	rename -uid "7A58356A-49F1-5326-F179-A99BE2646DBA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown5CtrlPosGrpDM";
	rename -uid "3D060ACB-4F0B-791F-765C-7F8C353491F9";
createNode multMatrix -n "LeftEyeLidDown5CtrlPosGrpMM";
	rename -uid "404BAB33-4452-A9E1-4FE2-9E840FC0AF77";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.3368501663208008 13.541164398193359 24.554609298706055 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.5168562475543605e-16 1.3630546302049217e-15 0
		 0 0.99999999999999989 0 0 0 0 1 0 -3.3368501663208012 -13.541164398193361 -24.554609298706058 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown5CtrlRvsMultMD";
	rename -uid "1542D47C-4E4D-CB74-E386-978913321473";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown6CtrlPosGrpDM";
	rename -uid "7E4E0A8C-4770-121B-0099-748035873A30";
createNode multMatrix -n "LeftEyeLidDown6CtrlPosGrpMM";
	rename -uid "BFEA0B73-4BAC-533A-7AED-148387071E1A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9238643646240234 14.33940315246582 24.320398330688477 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.9238643646240243 -14.339403152465822 -24.32039833068848 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown6CtrlRvsMultMD";
	rename -uid "3E254A1B-4D61-CA8A-45ED-1BA63FD5E1CE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp1CtrlPosGrpDM";
	rename -uid "244BABE5-49FA-5F1C-F3B5-76BD5B7E4B9A";
createNode multMatrix -n "LeftEyeLidUp1CtrlPosGrpMM";
	rename -uid "E257C903-4D28-5CA5-3540-3293AD16A0FE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0082783699035645 14.820045471191406 25.113191604614258 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 -1.6453555708108474e-15 -2.7881243541265926e-15 -1.2325951644078309e-32
		 0 1 0 0 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0082783699035642 -14.820045471191404 -25.113191604614254 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide1RvsMultMD";
	rename -uid "96D87B86-4D09-A9FD-B178-18BEE4542935";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown7CtrlPosGrpDM";
	rename -uid "47C2B7A1-4500-D9C1-326D-2FB0FD82A74D";
createNode multMatrix -n "LeftEyeLidDown7CtrlPosGrpMM";
	rename -uid "0700CA72-4B48-41C4-52E6-74A05F2FD179";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9740087985992432 14.858072280883789 24.278085708618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 8.8817841970012523e-16 0 0 1 0 0 0 0 1 0 -3.9740087985992427 -14.858072280883789 -24.278085708618164 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide2RvsMultMD";
	rename -uid "FE614EB8-442F-9F1C-3622-B7ABEC08775B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp2CtrlPosGrpDM";
	rename -uid "BD4FCDCE-4545-89AB-3626-26AEEB2AD776";
createNode multMatrix -n "RightEyeLidUp2CtrlPosGrpMM";
	rename -uid "BD576DBC-439C-F34A-CA0A-7C9A0EAE8A6A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0716148614869307 15.266393661499023 25.083902359008849 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 1.6949101745987762e-15 -7.6784108415841052e-16 0
		 0 1 0 0 0 0 1 0 1.0716148614869307 -15.266393661499022 -25.083902359008849 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp2CtrlRvsMultMD";
	rename -uid "79CC4660-4F55-DE1C-8C04-61A7AD873B18";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp3CtrlPosGrpDM";
	rename -uid "5ABA9349-4BDD-9A36-DD81-07AA3B2120DC";
createNode multMatrix -n "RightEyeLidUp3CtrlPosGrpMM";
	rename -uid "40345F79-4C99-BC9E-B7AB-1981E628CD47";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5627300739274315 16.041145324707031 24.903356552124112 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.0843618183427545e-17 0.99999999999999989 -1.7280174896636211e-16 0
		 0 1.1102230246251565e-16 1 0 1.5627300739274312 -16.041145324707031 -24.903356552124109 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp3CtrlRvsMultMD";
	rename -uid "05B6ED21-48BD-EC29-5B33-64921333163D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp4CtrlPosGrpDM";
	rename -uid "6DDDBDD0-4996-70C4-57C6-5E892463F0DB";
createNode multMatrix -n "RightEyeLidUp4CtrlPosGrpMM";
	rename -uid "53B06181-4EF7-F62C-F361-FA98F1551C2A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4166932106004184 16.323806762695312 24.664869308471815 1;
	setAttr ".i[2]" -type "matrix" 1 -9.0615330587380894e-16 -1.3691752902817888e-15 0
		 0 1 0 0 0 0 1 0 2.4166932106004184 -16.323806762695316 -24.664869308471818 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp4CtrlRvsMultMD";
	rename -uid "28906746-4974-903D-90BE-0A88DEE61E5A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp5CtrlPosGrpDM";
	rename -uid "0DEBB683-45C0-4E6C-6C6A-49BA84C6A836";
createNode multMatrix -n "RightEyeLidUp5CtrlPosGrpMM";
	rename -uid "B69B30A0-410C-E3B0-6FEE-98996CA97B6C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.2652444839463768 16.033849716186523 24.470087051391786 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 2.2657185044422218e-17 0.99999999999999989 -1.6979533786898167e-16 0
		 0 0 1 0 3.2652444839463768 -16.03384971618652 -24.470087051391786 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp5CtrlRvsMultMD";
	rename -uid "9BAE7777-4FCB-CB83-BCC3-2585DF730432";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp6CtrlPosGrpDM";
	rename -uid "C622040D-471E-ADB7-2849-5D941144126F";
createNode multMatrix -n "RightEyeLidUp6CtrlPosGrpMM";
	rename -uid "512450E0-48D3-3863-9982-059F3D46351F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.8508160114274643 15.308286666870117 24.321054458618381 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999978 8.4978061625607498e-16 1.3500897321560226e-15 0
		 -5.344080749352476e-17 1 3.3752243303900565e-16 0 0 1.1102230246251565e-16 1 0 3.8508160114274643 -15.308286666870119 -24.321054458618384 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp6CtrlRvsMultMD";
	rename -uid "A2A2BF9F-44AD-1E1C-4DB0-FDBA3F5CB099";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown2CtrlPosGrpDM";
	rename -uid "FD7D2CD0-4A63-0C06-C311-0BA635A21FDE";
createNode multMatrix -n "RightEyeLidDown2CtrlPosGrpMM";
	rename -uid "F686C008-4713-B6C5-4091-DF9B22A18E74";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0584576129899199 14.351093292236328 25.111383438110412 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.3877787807814457e-17 1 0 0 0 0 1 0 1.0584576129899199 -14.35109329223633 -25.111383438110419 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown2CtrlRvsMultMD";
	rename -uid "8B83F0CE-41A8-5CB5-56B7-93B84304AA3E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown3CtrlPosGrpDM";
	rename -uid "EEE88A81-4860-A9B1-BBC1-0B893A0BF3B0";
createNode multMatrix -n "RightEyeLidDown3CtrlPosGrpMM";
	rename -uid "FC129B1E-4A74-A6EC-D5AC-D29C60B31F11";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5410475730881914 13.594337463378906 25.023866653442468 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 1.5410475730881914 -13.594337463378906 -25.023866653442465 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown3CtrlRvsMultMD";
	rename -uid "1DD84B33-479C-EB8B-B9C1-ADB61BDCB8A0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown4CtrlPosGrpDM";
	rename -uid "A8D92E31-4072-B1E8-74A6-838A510D1E74";
createNode multMatrix -n "RightEyeLidDown4CtrlPosGrpMM";
	rename -uid "6F4772FF-46D1-EFBA-732F-6EAE53ADCC3B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4046261310563417 13.317789077758789 24.83339118957533 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.99999999999999989 6.9388939039072284e-18
		 2.4046261310563422 -13.317789077758789 -24.83339118957533 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown4CtrlRvsMultMD";
	rename -uid "7B1D0C11-4E9E-10ED-0F5B-0893BCF7A197";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown5CtrlPosGrpDM";
	rename -uid "8C6CE1AA-47A7-ADC4-DA0B-5FA6264E74A6";
createNode multMatrix -n "RightEyeLidDown5CtrlPosGrpMM";
	rename -uid "EBDB61A5-4E1F-F7D6-52DB-9489FC5D491F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.3368501663194188 13.541164398193359 24.554609298706243 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3368501663194188 -13.541164398193359 -24.554609298706243 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown5CtrlRvsMultMD";
	rename -uid "877BF5FC-4940-E9F8-B96E-0DAEC607AB68";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown6CtrlPosGrpDM";
	rename -uid "597BA65F-474A-3780-48B5-64910C64D611";
createNode multMatrix -n "RightEyeLidDown6CtrlPosGrpMM";
	rename -uid "A9EC8EA7-4019-7049-E426-478349947F29";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9238643646226548 14.33940315246582 24.320398330688697 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9238643646226548 -14.33940315246582 -24.320398330688697 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown6CtrlRvsMultMD";
	rename -uid "E58851AE-47C7-9F10-A5D6-C7B2F28E54EF";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp1CtrlPosGrpDM";
	rename -uid "1C4549B0-4D0B-F312-A818-698A43661CD6";
createNode multMatrix -n "RightEyeLidUp1CtrlPosGrpMM";
	rename -uid "1AAE810D-4334-3327-E92D-8EB633E29C9E";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0082783699021511 14.820045471191406 25.113191604614315 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 -1.6453555708108478e-15 -2.7881243541265997e-15 0
		 1.3877787807814457e-17 0.99999999999999989 0 0 0 0 1 0 1.0082783699021511 -14.820045471191408 -25.113191604614318 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp1CtrlRvsMultMD";
	rename -uid "1866F3BF-4B74-EC3E-1253-AC90A810AD81";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown7CtrlPosGrpDM";
	rename -uid "D0807A79-4C88-0B06-50B1-D0971360CAD5";
createNode multMatrix -n "RightEyeLidDown7CtrlPosGrpMM";
	rename -uid "BB75EB15-41A2-8F8A-3436-BDA3C70D0246";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9740087985978767 14.858072280883789 24.278085708618388 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9740087985978771 -14.858072280883789 -24.278085708618388 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidSide2CtrlRvsMultMD";
	rename -uid "8BDF838B-4348-435D-5F29-798D524FA117";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS";
	rename -uid "F36DB42B-4245-E0E1-B47F-93A0680696BF";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS";
	rename -uid "7A8F3DC8-44DC-BFF4-29B4-5DA6101D8A76";
createNode multiplyDivide -n "RightEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "6EDDEEFF-40DB-1DD8-E2EC-E1AF02314DD2";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "7FAEF313-4EE5-E519-E305-F6BD21EEA1E9";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS";
	rename -uid "134B661A-400A-99FA-B10D-D18CD487BDCD";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS";
	rename -uid "CBF7F331-4024-BB4E-6207-DF9D4A0D4945";
createNode multiplyDivide -n "RightEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "D06CCEF9-4115-53DF-73CA-66B6213C5FDC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS";
	rename -uid "77677330-4986-AA7D-629C-7DAEFFC87D0F";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS";
	rename -uid "F33E09EB-46CA-0B36-6E1A-2989DFBA8EC4";
createNode multiplyDivide -n "RightEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "50867330-41FC-01D0-058C-919A4E293D95";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS";
	rename -uid "E7780964-441D-19E6-F36F-1AB9E6DB4F05";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS";
	rename -uid "DA78C5C8-4B7B-E54B-B4FA-96A3A768D5E8";
createNode multiplyDivide -n "RightEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "999E6F72-44F3-CA49-B0D0-9C848B5CD976";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS";
	rename -uid "FFDD86F9-4BC0-0014-4160-798DF5284F12";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS";
	rename -uid "FAF26331-401A-B3FF-17D8-ACAE238878CB";
createNode multiplyDivide -n "RightEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "454D518C-45CD-2104-BC47-8480EDF0EADE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS";
	rename -uid "364FEB34-44D9-1539-A4DB-00A37021B098";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS";
	rename -uid "4AB378D8-494B-FD28-17F6-71B45F780ACE";
createNode multiplyDivide -n "RightEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "640C20FF-43B1-FC89-2F93-CFBCEC1139EE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidInLocPS";
	rename -uid "ABF39F37-47CB-BDF4-381B-3E9218A13AA3";
createNode closestPointOnSurface -n "RightEyeLidInLocCS";
	rename -uid "A2689259-492A-71DF-C311-59B85DAA8EC4";
createNode multiplyDivide -n "RighteyeLidInCtrlRvsMultMD";
	rename -uid "8CF80037-465F-D226-EA57-9CA9C743335F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "1FDC96AB-4E30-A524-E4D2-7FA7E7F0261B";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidUpLocPS";
	rename -uid "2B097D1F-4429-3A9F-550E-559268DB0E4A";
createNode closestPointOnSurface -n "RightEyeLidUpLocCS";
	rename -uid "572F68C3-4418-343A-15B1-2E87347CA0B7";
createNode multiplyDivide -n "RightEyeLidUpCtrlRvsMultMD";
	rename -uid "7CD2AACD-4CFB-A422-6F4D-21B57D5D3D1D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "5023A0BA-4589-78E3-D1BB-9FB61F3F6DBE";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutLocPS";
	rename -uid "7E33E1A8-4A7C-4B65-25D3-00B98C1C1DB4";
createNode closestPointOnSurface -n "RightEyeLidOutLocCS";
	rename -uid "7BF31619-4075-4B07-F14E-CA99CBDE82FA";
createNode multiplyDivide -n "RighteyeLidOutCtrlRvsMultMD";
	rename -uid "6CC8B97E-4726-5C71-399A-EFAC8FAD0D6E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidDownLocPS";
	rename -uid "42EDAAF4-462D-D1F0-A62B-BBB6525D2368";
createNode closestPointOnSurface -n "RightEyeLidDownLocCS";
	rename -uid "E08E1735-4559-EAB7-C6C8-7780C30911F8";
createNode multiplyDivide -n "RighteyeLidDownCtrlRvsMultMD";
	rename -uid "B58DF047-4DAA-340A-55CE-6A8D39995B84";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "1F29BC5F-4FD7-2792-D2AD-0AB6C3CDF02B";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "LeftEyeLidRootModeRvs";
	rename -uid "AD7D4E84-4CD8-E4EB-8DD1-B7AB69DD1488";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl0PosPS";
	rename -uid "251073F2-46A4-0C2C-797C-208C121C1DED";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl0PosCS";
	rename -uid "D59AF14C-480E-FAA9-8B97-97BC08F7CC8A";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "DF201D84-479D-B766-F349-C791D0884847";
createNode multMatrix -n "LeftEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "5F70DC68-49B0-971B-0AEC-BFA313B18C6B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp1ZAL";
	rename -uid "A2C89102-4946-31A9-1367-F5AA4B814750";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp1ZML";
	rename -uid "0A8FEC0D-4EFE-D9B0-947C-E0AB9FE62E79";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl1PosPS";
	rename -uid "A681860C-4CAD-79A4-E885-B796899401E0";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl1PosCS";
	rename -uid "C3CB888F-435B-56D2-A06D-34B096F32419";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "3D3D4220-480D-6435-797A-5CA9F02765BE";
createNode multMatrix -n "LeftEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "4C04DB2C-415D-7F7A-CF3C-6BAB7FA3A711";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.587043409970982 0.48797602631460396 2.5934855848001748 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp2ZAL";
	rename -uid "EB3E1507-4388-48CD-B7BF-E989A064C281";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp2ZML";
	rename -uid "B5F73638-4012-210F-AC19-C58DED6BDF46";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl2PosPS";
	rename -uid "09775647-43E3-889A-5B04-1CAA183A6BBF";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl2PosCS";
	rename -uid "C1324D5F-4864-54F0-271A-CAB8CC52634B";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "E8B58972-4A2B-3796-0C5A-5D91588D2BB3";
createNode multMatrix -n "LeftEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "DE570DFC-4114-B03A-F09E-9F8698932AF3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9031894509306093 1.3252189480909276 2.4528664790148569 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp3ZAL";
	rename -uid "3768060F-45C9-5DBE-71BF-4B810D009C1D";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp3ZML";
	rename -uid "041DD43F-4527-221F-F3F0-A0A5440DA289";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl3PosPS";
	rename -uid "890EBDC0-411E-7A89-123D-909CC311EBD6";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl3PosCS";
	rename -uid "38B49870-49A8-1CAC-5F08-90B603D557B2";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "CA3DD969-4F43-C4E2-EAF9-CD8A63DEF46A";
createNode multMatrix -n "LeftEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "BFBD847C-4750-FC44-0D4D-999909568218";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000445700983 1.7755272619269271 2.4140850883153409 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp4ZAL";
	rename -uid "6C7332C4-404C-D592-0DD8-348820A31EE7";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp4ZML";
	rename -uid "09C94649-4E87-E5C8-A085-9BB1FCBB6B0A";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl4PosPS";
	rename -uid "BC3B1D45-4D97-A533-4568-6A86D07DC938";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl4PosCS";
	rename -uid "403FD7E5-4A59-510D-BFB4-78BB2148E683";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "4BBAD17D-40B7-1BAE-6887-88A494166AFB";
createNode multMatrix -n "LeftEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "549EA8EF-4528-ECE9-3119-30A31D5AB484";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.273982986082383 1.2921419141502111 2.3853931082740627 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp5ZAL";
	rename -uid "9ACCCB04-4BD7-C325-750B-06B0EB36CD6B";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp5ZML";
	rename -uid "49375667-4531-5F3F-9888-3DB716B50F69";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl5PosPS";
	rename -uid "F62E221A-4455-EDA6-F0AA-DD993F050B73";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl5PosCS";
	rename -uid "526508D8-4623-0035-525B-DD85A274C31D";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "2F2EAD24-4E98-9286-0E10-F49313FB910E";
createNode multMatrix -n "LeftEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "FC378F53-4171-0F47-9083-D2994434E216";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7634543609654862 0.44871324698002157 2.3804159618505771 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp6ZAL";
	rename -uid "EB01B13E-45DB-80B8-E0C3-0E83D29D35B6";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp6ZML";
	rename -uid "1D31F8B3-4575-D7B5-8CF6-05A44740A503";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl6PosPS";
	rename -uid "3C19BB43-4E48-0C50-0A69-DFA18494FD85";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl6PosCS";
	rename -uid "4DE9E824-47F2-A322-24AE-15A868D3A948";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "490F3BAB-4180-AE5A-858D-32A44B4DE86E";
createNode multMatrix -n "LeftEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "AEB54510-4001-37A2-058E-8E992AD0D100";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp7ZAL";
	rename -uid "009A4338-4ABB-BB42-A363-C3A3793CA46B";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp7ZML";
	rename -uid "3A184008-4C7F-9C90-6BA6-FC83C244A1F3";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl0PosPS";
	rename -uid "0643009E-4AE5-6D68-B4E8-659DED705235";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl0PosCS";
	rename -uid "11FAEB8C-41EB-95E9-0BD6-5083D90F33AD";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "07CCA03F-406E-9C7F-A7AA-3CB9D418D5ED";
createNode multMatrix -n "LeftEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "84453837-4221-F18F-C48E-3BB91CF92D30";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown1ZAL";
	rename -uid "A7B83DC8-4223-78A0-F0C3-52A41299D2C1";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown1ZML";
	rename -uid "392F9924-436F-C80B-EAD2-C28B137D63D8";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl1PosPS";
	rename -uid "3A719AF3-4513-2609-D503-DDB4D50A2BDE";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl1PosCS";
	rename -uid "45773A3C-4BCA-2601-B8E3-ED8EFFDF0AA1";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "1EBA4787-401D-70E1-0D87-32B9FBACB3A1";
createNode multMatrix -n "LeftEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "042A29E1-4F82-3C4B-311C-ADA943ED5FB8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.5910121019054044 -0.46835993238400825 2.5992124607449685 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown2ZAL";
	rename -uid "7FE5F2C5-4A85-5442-1BF1-2CB215CD3299";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown2ZML";
	rename -uid "0206F335-48E4-4195-C065-4AB5B8657167";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl2PosPS";
	rename -uid "2A8A1C8D-4B9E-5852-F3E3-0CAC834DD4F1";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl2PosCS";
	rename -uid "206133FF-4075-8B48-6577-ABB72C2D794A";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "49A414B9-4BC5-5CD8-CB1B-549ACCE877AF";
createNode multMatrix -n "LeftEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "0272AD01-4550-BBCF-726E-D6896AB24930";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9054410584200565 -1.2774549718480275 2.4787015409260404 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown3ZAL";
	rename -uid "1E6AB5B5-4C2E-1D90-BF24-35A25625BD62";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown3ZML";
	rename -uid "E5381DE2-4E94-83C3-9DA0-708D4E0FB3FB";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl3PosPS";
	rename -uid "F0F0D15E-4FC6-91BD-6583-3EB3178390CB";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl3PosCS";
	rename -uid "4FC2105F-4DDE-F0AB-CEB6-F981C7415940";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "3D54A6E4-4032-46D4-490B-D9A20918D08C";
createNode multMatrix -n "LeftEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "7BE68802-41B5-98B7-AB7C-B9B0AF2307DF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000277964594 -1.7096859157890627 2.4603377129103148 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown4ZAL";
	rename -uid "BF6794A0-4617-7308-8401-F9A53C47E518";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown4ZML";
	rename -uid "1F7BA48C-4C19-26B1-6136-55843A8DD81D";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl4PosPS";
	rename -uid "A612ABE9-4D83-F89A-3659-FBB9E30BBFFC";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl4PosCS";
	rename -uid "D328A456-4D20-0BE9-A3FF-C3950769BD5D";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "7CF90525-4CEC-3D31-DE0D-D48752043F66";
createNode multMatrix -n "LeftEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "E1D7DC50-40D2-D3FE-09A8-4E9C332498AA";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.3472019913733959 -1.214548023404677 2.3858353840180135 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown5ZAL";
	rename -uid "CCCEFBE7-4D3D-8FEF-68A7-7CAA1ADF445C";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown5ZML";
	rename -uid "67C62CBC-450A-9323-8AD7-B9A145D8B9A6";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl5PosPS";
	rename -uid "01304F7D-4331-BC50-ECE6-5C8D59717698";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl5PosCS";
	rename -uid "AE687DFA-4DB0-0BFF-E7CC-ACAD457E5041";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "6BB66651-4B2E-FF0F-80C5-C5BA260FE68C";
createNode multMatrix -n "LeftEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "214C0049-4DAE-392D-AA70-2CA95F8083D7";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7899324080594177 -0.41762382241756674 2.3666027814698745 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown6ZAL";
	rename -uid "7CA1E501-4E38-33E5-8825-BFB2B53A4D0F";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown6ZML";
	rename -uid "E5F6415C-40F0-2A31-B471-ADA7EB01639C";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl6PosPS";
	rename -uid "D0415BEA-4D1E-60AC-121E-B3999D2284DD";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl6PosCS";
	rename -uid "A2454204-43C1-53D4-4DED-7C9C73F42982";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "7175612C-4A1B-321B-B28B-0D9361147EB6";
createNode multMatrix -n "LeftEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "EABE9170-49C3-D447-5E5C-EF8D9DFA2CA0";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown7ZAL";
	rename -uid "B04A5DF3-4C27-2597-ECF1-2D8A71E01D64";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown7ZML";
	rename -uid "FD5FCCB7-4B81-BEF1-66CD-8E8BB9379A9C";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS1";
	rename -uid "C0872304-407F-EB6C-DFE2-8982120A9C07";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS1";
	rename -uid "4C8E39BB-47F9-E359-699A-46AD034EEE73";
createNode multDoubleLinear -n "LeftEyeLidOutUp1CtrlZML";
	rename -uid "499C1328-4E90-540E-521C-37AFBA2071DD";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2CvPos1PS";
	rename -uid "4F3A057A-4D65-2D6E-13D8-BCA0E2A167CA";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2CvPos1CS";
	rename -uid "17401A33-41E1-F7B7-4AB2-B6802C5340BE";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS1";
	rename -uid "A48874D1-48A6-4BBA-CF9F-C5A70CA44D08";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS1";
	rename -uid "00E776C4-432F-308E-CE91-928DF389ABAB";
createNode multDoubleLinear -n "LeftEyeLidOutUp2CtrlZML";
	rename -uid "8B375A85-44BF-948D-E0D5-9B9181E9C02F";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2CvPos2PS";
	rename -uid "1FDC1E38-4159-CBFA-7B90-B6BC1628E6FD";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2CvPos2CS";
	rename -uid "0653B4F2-4EA7-1EAB-0078-158F0FECA3C7";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS1";
	rename -uid "6479E6EC-43F6-89A8-1641-D88CAA9102B7";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS1";
	rename -uid "8BDB43E0-44DC-8F8C-BF25-349E6CA3B8B6";
createNode multDoubleLinear -n "LeftEyeLidOutUp3CtrlZML";
	rename -uid "AC21522B-46B6-1E56-B852-73801BD898CB";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS1";
	rename -uid "17B50F61-4220-A215-144F-A495B232E0B1";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS1";
	rename -uid "549C4734-4365-B02A-898D-9A8CCBEADA7B";
createNode multDoubleLinear -n "LeftEyeLidOutDown1CtrlZML";
	rename -uid "CF8D5273-49C6-5F2A-F4B9-9880B3CE06DA";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2CvPos1PS";
	rename -uid "1237E010-465C-C565-D9D8-A59E264A4362";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2CvPos1CS";
	rename -uid "3ED31A08-495F-8C08-0859-F682C669D9B2";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS1";
	rename -uid "2EC88989-43FC-58EA-5417-959F6A8B9AAD";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS1";
	rename -uid "D1005533-415B-0C1F-CFBB-9A80624A7C57";
createNode multDoubleLinear -n "LeftEyeLidOutDown2CtrlZML";
	rename -uid "20C572B3-488C-2CF1-C232-F5A6D205511F";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2CvPos2PS";
	rename -uid "6173CF88-4920-F6BA-7D10-32927C3F676E";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2CvPos2CS";
	rename -uid "3A9DE10A-4D79-B4D6-AFAA-CFB362405477";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS1";
	rename -uid "1F71C55F-4F2E-15D1-00C4-8B8F7B46CF50";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS1";
	rename -uid "7DA65781-465E-7129-3574-A886FDD1D1F9";
createNode multDoubleLinear -n "LeftEyeLidOutDown3CtrlZML";
	rename -uid "98ED04DD-4B3E-024F-CFF2-41A75CBD7BB1";
	setAttr ".i2" 0.1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC";
	rename -uid "D4E90218-49A1-460C-17C8-3F90173A2045";
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC1";
	rename -uid "56CA0EDE-476D-5AB7-23F3-F69DBEDA1FF1";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC2";
	rename -uid "84151596-41D0-9021-3601-5899F9DB9F46";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC3";
	rename -uid "456F2F65-4EE4-A67A-F5D6-3B86354AD659";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC4";
	rename -uid "F3B8AB85-4B32-618E-34CC-10A1EEA791EF";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC5";
	rename -uid "9D867F0D-4713-0057-72C2-CF809F97A15A";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC6";
	rename -uid "F5064296-4CAF-0BE3-6011-86B8E52C373E";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC";
	rename -uid "8D51A8A4-4582-B4E7-06FD-4AA713BB487A";
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC1";
	rename -uid "F1112112-446A-B993-03FE-24A00BAE1B1D";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC2";
	rename -uid "97642762-47C9-439F-BF2A-A5BA2FD6E306";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC3";
	rename -uid "112658C6-412A-2017-308E-668D1F4572A7";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC4";
	rename -uid "32AD1076-43B7-89CC-0DBB-E4819EC71E8B";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC5";
	rename -uid "20438DBD-4F94-4E6F-D2E3-ACAD03A8E2AF";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC6";
	rename -uid "00DEE515-44BC-618D-65FF-3783028601E1";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC";
	rename -uid "4C553EA4-47DE-A769-9A02-1EACDD03ED60";
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC1";
	rename -uid "078C0264-4A9E-AFF8-0280-68A0AD4997BA";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC2";
	rename -uid "C88C6724-42A7-1D11-2049-DEB909EE9207";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC3";
	rename -uid "F87FE1AB-4645-AF6A-0E55-D59F5DCEE0FE";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC4";
	rename -uid "4E73A293-4AC0-5C7B-66B4-3DB87C6ECA9E";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC5";
	rename -uid "D39887B8-4609-E1D4-9E60-839D09C4CE4B";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC6";
	rename -uid "66826593-482B-4544-4CB5-BFB1287AAE32";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC7";
	rename -uid "2E236449-4B05-32E5-26EE-1B9684056AD1";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC8";
	rename -uid "21099785-4858-5315-590C-8896D21BD08A";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC9";
	rename -uid "26B1BBD6-4469-D52D-FF55-C9BB419280AE";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC10";
	rename -uid "8EF8EEF3-4DA0-2E73-7B68-028F102ECA4A";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC11";
	rename -uid "A1422252-4E73-C8B6-920D-37939814F2DC";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "744949B4-453D-1614-4ACE-16AFE6E03157";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "LeftEyeBallffd";
	rename -uid "DE76EF67-4C71-B177-2C38-75A3F2106A6E";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr ".lo" yes;
createNode objectSet -n "LeftEyeBallffdSet";
	rename -uid "9BA42970-4995-839A-EBE7-1C95C92CACA5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId4";
	rename -uid "141942AC-4BC5-AF6B-0F9A-F399738B4597";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts4";
	rename -uid "D71EF342-47F2-14C0-040D-77AB068A4418";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "9FF81294-4077-AAE4-F7D7-7B858427320D";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode pairBlend -n "LeftEyeLidOutUp1LocOffGrpPB";
	rename -uid "16DFAC53-43A8-96A4-A591-E19064C0D171";
	setAttr ".it1" -type "double3" -2 1.5000000000000036 3 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM";
	rename -uid "84FCA50D-43E1-CD27-C957-B6B3157B982E";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM";
	rename -uid "4C2595C8-471D-8D9F-E3B7-76A6EC3A3E7F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 0.54835647942961518 16.260246184741497 25.528985512250632 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086522 0.0019534722132144022 0.20693462147916861 0
		 -0.011183456186151377 1.0532215101136295 0.045926110756276457 0 -0.20664143807123239 -0.047227759715844475 1.0327529624704908 0
		 4.9768646151104114 -16.592679297477915 -27.225379163111061 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp1PB";
	rename -uid "9526F146-4805-0F1A-C3E3-4E890872C9F2";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv2PosDM";
	rename -uid "6D40208F-4141-1577-2C09-779A5160D708";
createNode multMatrix -n "LeftEyeLidUpCrv2PosMM";
	rename -uid "B33B2FBA-4264-A7C2-6EB7-EA8D6B989FE5";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 5.5511151231257827e-17 -5.5511151231257827e-17 1 0
		 -0.81481482942446304 0.38888879756621209 4.5365341261316416e-08 1;
createNode pairBlend -n "LeftEyeLidOutUp2LocOffGrpPB";
	rename -uid "EE79CF7C-43AC-A327-8F67-8F9EE173ABE4";
	setAttr ".it1" -type "double3" -4.4408920985006262e-16 2.5000000000000036 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM";
	rename -uid "85FB0C30-44B2-06FD-2AD5-D4989EEFD072";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM";
	rename -uid "ACBC0723-4A05-1496-4E9F-80B9667200CE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 2.4102356667335698 17.187682517711139 25.114674612973719 1;
	setAttr ".i[2]" -type "matrix" 1.033771770308652 0.0019534722132150961 0.20693462147916974 0
		 -0.011183456186151281 1.0532215101136295 0.04592611075627602 0 -0.20664143807123234 -0.047227759715844808 1.0327529624704905 0
		 2.8903165613110136 -16.619899584392961 -27.225379163111025 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp2PB";
	rename -uid "0CDA2B98-49A2-CAF3-3578-9CB17E59057B";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv3PosDM";
	rename -uid "54BFDDA6-4D58-0CE3-0C0B-619D024D8857";
createNode multMatrix -n "LeftEyeLidUpCrv3PosMM";
	rename -uid "A068FBB2-4230-1FAF-F8D4-F7B904586358";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9723025562329717e-08 0.99999987671438562 6.1243210058847808e-08 1;
createNode pairBlend -n "LeftEyeLidOutUp3LocOffGrpPB";
	rename -uid "F5DA1747-4082-4049-4AD8-45B203A7B1C0";
	setAttr ".it1" -type "double3" 1.9999999999999991 1.4999999999999964 3.0000000000000071 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM";
	rename -uid "0927F0B4-40D5-B706-629E-16A2A12BCBC6";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM";
	rename -uid "C2037A88-4814-1AEA-FCDB-DD979A1AEEB5";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 4.2685998653864559 16.220000184508535 24.785343186808156 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086524 0.0019534722132143328 0.2069346214791678 0
		 -0.011183456186151334 1.0532215101136293 0.045926110756276027 0 -0.20664143807123242 -0.047227759715844586 1.032752962470491 0
		 0.65075167464068573 -16.598657814404376 -27.225379163111032 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp3PB";
	rename -uid "BB586805-487C-FB7A-0C7E-FE8A5876609C";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv4PosdM";
	rename -uid "C57F496E-4FE8-0A9F-7867-549E6C4029E6";
createNode multMatrix -n "LeftEyeLidUpCrv4PosMM";
	rename -uid "7A328867-4833-538A-6013-978AC4B15454";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 -5.5511151231257827e-17 1 0 0.81481480020516628 0.3888887975662112 4.5365341261316416e-08 1;
createNode pairBlend -n "LeftEyeLidOutDown1LocOffGrpPB";
	rename -uid "76D28429-4345-4BC8-9F4F-2F9C256AB1AC";
	setAttr ".it1" -type "double3" -2.0000000000000009 -1.4999999999999964 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM";
	rename -uid "FC1F5E0B-43C7-EAB7-03C3-879F30099392";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM";
	rename -uid "096965AF-4975-84A3-B3E6-98ACB93CF870";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.1861743517753213 0.041318672721336387 0.9291442483506408 0
		 0.54308399645301142 13.41756818548313 25.656454721917655 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086522 0.0019534722132144161 0.20693462147916863 0
		 -0.011183456186151316 1.0532215101136297 0.045926110756276138 0 -0.20664143807123242 -0.04722775971584442 1.0327529624704912 0
		 4.9404410303819253 -12.33619026425129 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown1PB";
	rename -uid "A93D7835-463F-10F2-A6E1-CA97C5026ACC";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv2PosDM";
	rename -uid "25133420-4253-A915-4AD7-22B725BF2C36";
createNode multMatrix -n "LeftEyeLidDownCrv2PosMM";
	rename -uid "D9C1138F-4736-D2D6-A34A-3EB034535478";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 5.5511151231257821e-17 0.99999999999999989 0
		 -0.81481481481481532 -0.38888889716560882 6.695968668424257e-09 1;
createNode pairBlend -n "LeftEyeLidOutDown2LocOffGrpPB";
	rename -uid "9EC71179-4DD3-F671-61B7-268DB0ABC6C9";
	setAttr ".it1" -type "double3" 4.4408920985006262e-16 -2.4999999999999982 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM";
	rename -uid "7781A7F9-4B53-0E10-2B69-EFAFA2E64F61";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM";
	rename -uid "8BB98000-4708-2E91-9CA5-DCB972D93EE9";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 2.4014481951058979 12.449885852280527 25.327123295752088 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086526 0.0019534722132147214 0.20693462147916727 0
		 -0.011183456186151361 1.0532215101136293 0.045926110756276138 0 -0.20664143807123236 -0.047227759715844475 1.0327529624704908 0
		 2.8903165810340443 -12.342822343681533 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown2PB";
	rename -uid "21BA6060-4230-BA1B-BC7F-2BABD5C6BB30";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv3PosDM";
	rename -uid "D747BE0F-4861-DD1D-0A8B-549B97F93CAB";
createNode multMatrix -n "LeftEyeLidDownCrv3PosMM";
	rename -uid "EFC206F1-4702-BA4D-2996-A8B57B3720A3";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 -6.1629758220391547e-33 0 1 0 -8.3266726748800786e-17 -1.0000000111735723 9.0395575469415235e-09 1;
createNode pairBlend -n "pairBlend1";
	rename -uid "C1C3DBBD-46ED-3915-C884-A4B655A85927";
	setAttr ".it1" -type "double3" 2 -1.4999999999999911 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM";
	rename -uid "4D303545-4673-4C9A-C831-91B2CF41A088";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM";
	rename -uid "B943E457-44F5-EEF9-50AE-F18696B1508D";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920995 -0.010061500058239737 -0.1859105813606193 0
		 0.0017574943255344805 0.94755933308612206 -0.042489736555673868 0 0.1861743517753213 0.041318672721336387 0.92914424835064069 0
		 4.2633273824098517 13.377322185250172 24.912812396475175 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086524 0.0019534722132144022 0.20693462147916802 0
		 -0.011183456186151325 1.0532215101136297 0.04592611075627652 0 -0.20664143807123239 -0.04722775971584442 1.032752962470491 0
		 0.44292436756764508 -12.384452547242375 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown3PB";
	rename -uid "7D603C52-467A-3BDC-42C1-CAABEC33EB6F";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv4PosDM";
	rename -uid "D5B956F9-4054-6B46-A742-AB88D2AFF592";
createNode multMatrix -n "LeftEyeLidDownCrv4PosMM";
	rename -uid "AF8B70C6-4978-80E5-0170-5DAB164F2840";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999978 0 0.8148148148148151 -0.38888889716560793 6.6959664479782077e-09 1;
createNode reverse -n "RightEyeLidRootModeRvs";
	rename -uid "8EC0BDA2-4D33-8BFF-6D4A-2C820BC482D7";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl0PosPS";
	rename -uid "FBD9622C-44BB-83BF-2342-EEB24A9DBC66";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl0PosCS";
	rename -uid "394E0255-4885-A736-85F9-95845EB91A03";
createNode decomposeMatrix -n "RightEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "FFFB6716-4E7A-A1A8-F756-B3B7B8561A9C";
createNode multMatrix -n "RightEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "7FD3DC31-4C89-BB24-AA42-A686C7114F1F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp1ZAL";
	rename -uid "BC70D16C-47F6-9E92-3068-12B77FE6569F";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp1ZML";
	rename -uid "318660FC-44E8-A231-2B6D-4BAAE6B39085";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl1PosPS";
	rename -uid "CAD66D73-4836-D225-98F4-F39F80AF7D98";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl1PosCS";
	rename -uid "7E71ECC8-4212-2710-C83C-0EBD062A6726";
createNode decomposeMatrix -n "RightEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "EEBEB247-4C4E-ABEA-95EF-83864096520B";
createNode multMatrix -n "RightEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "F65C97B5-4CE4-9C53-C200-BD9B99AD658E";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -1.5870433543837399 0.48797602631153841 2.5934855848005234 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp2ZAL";
	rename -uid "B0A1E378-40D5-BCE7-C5EB-A4A085A3468B";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp2ZML";
	rename -uid "A23D2A06-4780-6760-2485-DDB271AF4A21";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl2PosPS";
	rename -uid "BADE0104-4641-DF79-8642-A49EC9E8CD10";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl2PosCS";
	rename -uid "FDAA76BD-428D-537C-FBC2-CA85C544B6F1";
createNode decomposeMatrix -n "RightEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "CB5DBC6D-475F-D7EE-75B7-4A8AE349962E";
createNode multMatrix -n "RightEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "0C8AD07A-4D1A-0900-7ECE-A49330D28373";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999967 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -1.9031893953450296 1.3252189480875742 2.4528664790155923 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp3ZAL";
	rename -uid "05DA9F55-4DE9-AC4F-9FBD-F387E02D1F46";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp3ZML";
	rename -uid "F0543FE1-4018-4595-9BF6-2EAADCB7A497";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl3PosPS";
	rename -uid "2DF6179E-47DF-01C2-A03C-5DBD8ADEBC15";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl3PosCS";
	rename -uid "75970EB3-4432-03DD-BF6E-258E53B06093";
createNode decomposeMatrix -n "RightEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "A9F8661D-4366-2DDC-04A5-53A86BAB5E07";
createNode multMatrix -n "RightEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "A46DE57B-4485-C95E-C1F8-7A88BA88C52B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -2.9999999722071293 1.7755272613334676 2.4140850887411993 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp4ZAL";
	rename -uid "A1F8CF96-45C4-55A6-4166-75849587CFD1";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp4ZML";
	rename -uid "CEC6EBF5-4B68-5AEE-CC3C-5FAC5F3AFD9E";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl4PosPS";
	rename -uid "9F6F48EE-4C7E-2584-6EA5-26A38597D4A4";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl4PosCS";
	rename -uid "D07BF036-4A16-25BA-1F95-EBB8C010F65D";
createNode decomposeMatrix -n "RightEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "33817153-4372-291C-4B45-9AB972FC2BF7";
createNode multMatrix -n "RightEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "DB3C57A5-44DE-4E36-6E76-CBB7343C8E64";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.2739829304973034 1.2921419141418244 2.3853931082748776 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp5ZAL";
	rename -uid "4F7D8551-492E-6BB5-6D5F-0694FE032B02";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp5ZML";
	rename -uid "1C0D2E7C-4D29-1AA3-105C-7EB7FD71EEA1";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl5PosPS";
	rename -uid "02E3FD96-4424-0E77-93E8-81AAC7D14FC8";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl5PosCS";
	rename -uid "B470EE48-4AA2-059E-D6DA-9B916C3DC079";
createNode decomposeMatrix -n "RightEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "1D69B504-4FF6-937C-47F6-879AA94C42B0";
createNode multMatrix -n "RightEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "20223F26-4486-0F68-ABDD-97B25A371088";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -4.7634543053784713 0.44871324697028847 2.3804159618510421 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp6ZAL";
	rename -uid "F769D369-450F-0BD2-8089-05B75AD2E6D4";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp6ZML";
	rename -uid "4A97B080-4A7C-DE8A-3CA7-1A8DA3836700";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl6PosPS";
	rename -uid "60AB02A5-4BF2-399B-BE3E-A2A24682EC35";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl6PosCS";
	rename -uid "DB11F485-46C9-A7A1-DE23-88A9BA329CDC";
createNode decomposeMatrix -n "RightEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "8F2A198F-404D-BAA2-7001-86B982789C80";
createNode multMatrix -n "RightEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "20E81DF2-48AC-A2F1-956D-F3AD1E658F13";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp7ZAL";
	rename -uid "9D6CB01C-4FCA-E880-643B-20A2FE636AD2";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp7ZML";
	rename -uid "D15912E8-4D5A-4324-CF6C-61892AFBE7AE";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl0PosPS";
	rename -uid "D5160E1D-4DD2-9FEA-AFCC-6D904736D42D";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl0PosCS";
	rename -uid "BCD2A965-4F5B-6BB3-E1D0-8799791D194F";
createNode decomposeMatrix -n "RightEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "5598B48B-4B98-12DF-9F56-D4B4D78FA6EB";
createNode multMatrix -n "RightEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "C42289AD-4A4A-EE12-E082-538D1CDBF5C4";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidSide1ZAL";
	rename -uid "10C1B34D-4DAF-86AD-0A1D-1DBFA33925D7";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown1ZML";
	rename -uid "BAC73D50-47B2-0967-BAAA-9A8DA0B66366";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl1PosPS";
	rename -uid "D9008BBF-4FBE-34EC-2511-0AB871BC0EC1";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl1PosCS";
	rename -uid "A5B4E997-43BF-8624-3FC8-0CB0FFB87E71";
createNode decomposeMatrix -n "RightEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "D3A97965-414A-0D1F-93AA-D2873A37C14F";
createNode multMatrix -n "RightEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "69DD5D15-45D2-42E1-BE5A-9B831F118A35";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575642e-13 0.99999999999999956 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999956 0
		 -1.5910120463163866 -0.46835993238709095 2.5992124607448015 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown2ZAL";
	rename -uid "7D46ED07-40B2-40DC-1C48-069F898C3E05";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown2ZML";
	rename -uid "DB0A654B-4D05-041E-B57B-1BB701436332";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl2PosPS";
	rename -uid "1E2C2B03-4F30-ACDC-404C-7294D0EA9ADD";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl2PosCS";
	rename -uid "DF577D55-4DF3-D197-402F-4196E6B8009A";
createNode decomposeMatrix -n "RightEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "1D4A74D5-4CCD-468A-D7CB-498E6751E6F3";
createNode multMatrix -n "RightEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "BB2DCC27-4EBC-D1DF-9914-D68F976D420B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999956 -3.5682568011452521e-13 -4.0002043607102428e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -1.9054410028294466 -1.2774549718514276 2.4787015409255191 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown3ZAL";
	rename -uid "B451B661-4D7A-4EAE-1E5D-7ABB41B4FF17";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown3ZML";
	rename -uid "768B8C6D-43E2-0CA2-489D-228648F9C02E";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl3PosPS";
	rename -uid "AE8868C6-4ED3-3440-86FB-338802D552FD";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl3PosCS";
	rename -uid "E95EFB25-4479-85B9-7244-78925B94013A";
createNode decomposeMatrix -n "RightEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "CAF8A8B8-44BA-9A69-65D6-C9B132B99B66";
createNode multMatrix -n "RightEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "5E33B917-451E-0B43-3B48-52B8DC1A7C50";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -2.9999999722046384 -1.7096859142164216 2.4603377139873359 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown4ZAL";
	rename -uid "2F540A17-43BB-9D70-125F-329F75472874";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown4ZML";
	rename -uid "4341CCC9-40F7-3BAE-FB13-D1953BF5CBC0";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl4PosPS";
	rename -uid "52D79ACF-4749-C307-55D3-F490DEF72520";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl4PosCS";
	rename -uid "492CCD00-494A-9158-AF93-67B74280D900";
createNode decomposeMatrix -n "RightEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "6D7EF41B-4C4A-26F3-3B45-5980821F8C2C";
createNode multMatrix -n "RightEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "7C8E1CA8-4A4F-E952-EDA9-3F94829FB2B1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -4.3472019357823726 -1.2145480234132673 2.385835384017704 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown5ZAL";
	rename -uid "3F7D1A08-4193-06FD-8BF1-68912030BF3D";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown5ZML";
	rename -uid "1E58792E-4D4F-8C9E-E840-F6BAA5E6A060";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl5PosPS";
	rename -uid "D760E6B5-4A60-8BF6-A168-65A10BB9A1C9";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl5PosCS";
	rename -uid "1A3FED0E-4B01-15F9-6277-028C43D14CBB";
createNode decomposeMatrix -n "RightEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "60CB7371-4473-E460-4CC7-1BBB82ED1179";
createNode multMatrix -n "RightEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "E019FDDD-4B4D-97E2-0999-078947364554";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.7899323524702435 -0.41762382242735163 2.3666027814699473 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown6ZAL";
	rename -uid "8449A1DE-41EC-BEA5-A15D-F498DC410EBA";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown6ZML";
	rename -uid "CDD7A100-4053-ED96-1448-A6A9C1A4D50B";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl6PosPS";
	rename -uid "59F7AA28-4594-66A8-58C2-DB84F2A48229";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl6PosCS";
	rename -uid "433C18E9-46BF-D21A-3B19-D2A105CE597D";
createNode decomposeMatrix -n "RightEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "6D8CFE11-42D5-FA7F-B85F-5BB527875AEE";
createNode multMatrix -n "RightEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "89D78EE1-47ED-526B-39FC-CFB3A71F678A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown7ZAL";
	rename -uid "B2CF6A3E-41D5-0486-0B35-26B9B871CE7D";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown7ZML";
	rename -uid "39FEA736-4459-3DE2-AAB3-ADA37B1F62B1";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS1";
	rename -uid "34859F23-4854-2CD4-D649-A9AD548CA198";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS1";
	rename -uid "A6087179-47CC-5395-D505-99A11A870DA1";
createNode multDoubleLinear -n "RightEyeLidOutUp1ZRvs";
	rename -uid "E4E576FB-4CE2-4A59-587E-54A445D3882F";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2CvPos1PS";
	rename -uid "5C76ED23-4348-AE08-A020-6282E875E412";
createNode closestPointOnSurface -n "RightEyeLidOutUp2CvPos1CS";
	rename -uid "5698683A-43E8-EF58-0FA9-F7A3E8171AA4";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS1";
	rename -uid "2A91D93B-45AD-DA57-EDC0-C483BBBC3094";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS1";
	rename -uid "18987356-407A-133B-73A6-E389E585E11F";
createNode multDoubleLinear -n "RightEyeLidOutUp2ZRvs";
	rename -uid "02F04214-454C-BD03-2869-9D8AAF39A20B";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2CvPos2PS";
	rename -uid "79733F16-40C9-54F8-A730-2EB0A3AD432B";
createNode closestPointOnSurface -n "RightEyeLidOutUp2CvPos2CS";
	rename -uid "5664143B-4DF4-E484-C1AF-6BAC6E50DE52";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS1";
	rename -uid "5A05C925-4FF4-98F0-4E4C-B9B83DCB525C";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS1";
	rename -uid "FC1C8C7B-415E-5922-3846-FE9C6A6E9F12";
createNode multDoubleLinear -n "RightEyeLidOutUp3ZRvs";
	rename -uid "B0E5D20B-489D-BC0A-8E7E-E4979E1CD645";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS1";
	rename -uid "6BE6BC96-4CC6-9721-9EA6-22BA06039AA5";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS1";
	rename -uid "0C11958F-439B-E92F-6A26-D4B6570CD704";
createNode multDoubleLinear -n "RightEyeLidOutDown1ZRvs";
	rename -uid "4DA18BA2-4B2C-4E05-9F83-ADAD9B67ABF1";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2CvPos1PS";
	rename -uid "23253CF2-462E-0891-6ABF-E593EF894226";
createNode closestPointOnSurface -n "RightEyeLidOutDown2CvPos1CS";
	rename -uid "574A1CD3-4465-F815-9D34-C7B549E133A1";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS1";
	rename -uid "FFCEF60B-448F-01FA-EA5F-A89F1606DCAD";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS1";
	rename -uid "B8D377E3-4027-8B46-F407-2B85BF8F2160";
createNode multDoubleLinear -n "RightEyeLidOutDown2ZRvs";
	rename -uid "467EB040-495B-1875-5EAC-A0977E7E1097";
	setAttr ".i2" 0.1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2CvPos2PS";
	rename -uid "BB586996-43AA-B327-8E54-4D8905D4B1EA";
createNode closestPointOnSurface -n "RightEyeLidOutDown2CvPos2CS";
	rename -uid "4CD63F04-43DA-A5A5-D867-A5A06BADB42E";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS1";
	rename -uid "307E4B4C-4DB6-4716-4310-7A88E45958C6";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS1";
	rename -uid "219938CE-49DE-802B-CF4E-C091D4C57C86";
createNode multDoubleLinear -n "RightEyeLidOutDown3ZRvs";
	rename -uid "56DA2D0C-4F4D-FE66-552A-75B9F346E548";
	setAttr ".i2" 0.1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC";
	rename -uid "33783CC8-496F-42AA-0F5D-C19090C3D6C7";
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC1";
	rename -uid "DF7A9C3F-4996-C0E4-EF3D-D3A7F697F4E8";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC2";
	rename -uid "E3C9ECFA-4736-1BA3-8E75-C0BDE18F221E";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC3";
	rename -uid "78412758-4A21-EBEA-C7D3-639C783F0BB6";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC4";
	rename -uid "CEB83BD1-435C-6DA0-0CE6-189E244307A9";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC5";
	rename -uid "A0887F9C-443E-DC31-1598-EFB4F4D4116B";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC6";
	rename -uid "308CC60E-40D6-77A2-C156-A9A6546AA7F9";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC";
	rename -uid "EF7B5BB7-4CB3-87CA-8D7B-CE974F4A03ED";
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC1";
	rename -uid "1E2BEB82-4234-DD33-2B19-48B52E039976";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC2";
	rename -uid "32B1FA89-4F6E-9394-C3FA-049878E482F2";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC3";
	rename -uid "F4A4D4AC-4515-9B19-6FED-E8AD525370CE";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC4";
	rename -uid "6876FBA8-427C-5FDF-5DD9-24BF3F468038";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC5";
	rename -uid "46DDA14C-4304-39FD-17AB-998B339DDA26";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC6";
	rename -uid "C2B3A8AD-4268-7E09-5B73-7D8B7EAD8AF6";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC";
	rename -uid "F888A0CE-4F92-93DC-7987-578EA9E961A9";
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC1";
	rename -uid "5705E57E-446F-92BD-9306-35954F3AD30D";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC2";
	rename -uid "0308AA97-42C8-C72B-0604-20ACB23D6D98";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC3";
	rename -uid "E9430CD1-4BA3-BAC5-0B29-7998A8747C78";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC4";
	rename -uid "9F710394-4F37-17AA-98A9-5CA4754E7839";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC5";
	rename -uid "D463CF77-4042-D88A-B80F-D29479395E97";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC6";
	rename -uid "A0A8F6BE-4D1E-523C-A4FD-76A9DC915075";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC7";
	rename -uid "764192CF-43FC-7DB9-D125-D9950C208A0D";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC8";
	rename -uid "6A781555-4578-B892-F349-7187A4B52013";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC9";
	rename -uid "7F04B09D-4C40-78A9-D9A5-11820F7F334D";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC10";
	rename -uid "6E611A23-474D-F630-BBC0-87BFFF49B2B2";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC11";
	rename -uid "3F9BE293-4B17-B08A-21C4-0790AB557947";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "168BAABC-48CA-920F-3FAB-C896712E3524";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "RightEyeBallffd";
	rename -uid "C25FC232-41DB-AECB-A778-D99E90C133A1";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr ".lo" yes;
createNode objectSet -n "RightEyeBallffdSet";
	rename -uid "A507D20B-43F7-E94F-E367-3A8B097C790A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId5";
	rename -uid "C0D60846-4FA5-B897-4AE8-4BA62556C895";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts5";
	rename -uid "2ADDB831-4D08-EA39-F212-D992BEB39E7A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "94FD9F72-43C0-C24B-B93F-048100517443";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode pairBlend -n "RightEyeLidOutUp1LocOffGrpPB";
	rename -uid "35189D14-44D1-50E0-FDDC-29AB5D61AEC9";
	setAttr ".it1" -type "double3" -2 1.4999999999999947 3 ;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM";
	rename -uid "B541B7D3-48C6-2697-75A0-E0B0844F0035";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM";
	rename -uid "791B136D-44D3-FE3A-67C3-BF893B8F2220";
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
	rename -uid "7C4D0D2C-4994-42D1-60BD-CEBAF4CB8CC3";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv2PosDM";
	rename -uid "0F516255-4FCF-E13A-E59E-F79ED73ADB02";
createNode multMatrix -n "RightEyeLidUpCrv2PosMM";
	rename -uid "FFA93A1E-4F62-BFE9-61B1-ACBD2861FA8D";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 5.5511151231257827e-17 -5.5511151231257827e-17 1 0
		 -0.81481482942446304 0.38888879756621209 4.5365341261316416e-08 1;
createNode pairBlend -n "pairBlend2";
	rename -uid "765E94B9-42D6-FEB5-C254-5BB2BB7722D8";
	setAttr ".it1" -type "double3" 0 2.4999999999999947 3.0000000000000036 ;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM";
	rename -uid "EDC0CEC3-4424-A9C9-6C76-AAB81E5F33BC";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM";
	rename -uid "4FEDAFE0-4F15-8D17-0A8A-8C8F77F2C477";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -2.4102356340132065 17.18768251771116 25.114674612973989 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132004828 -0.2069346214790509 0
		 -0.011183456186132642 1.0532215101136297 0.045926110756279448 0 -0.20664143807111601 -0.047227759715843365 1.0327529624705143 0
		 2.8903165951331626 -16.619899584329058 -27.225379156340701 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp2PB";
	rename -uid "0F44F2E5-4C1E-5557-27A4-E289ABF08C50";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv3PosDM";
	rename -uid "94856F75-4D77-C959-C0D2-BBB76E20AF8A";
createNode multMatrix -n "RightEyeLidUpCrv3PosMM";
	rename -uid "B9D2F871-4B7D-6F84-3B44-60812951C2BC";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9723025562329717e-08 0.99999987671438562 6.1243210058847808e-08 1;
createNode pairBlend -n "RightEyeLidOutUp3LocOffGrpPB";
	rename -uid "CD129EB7-4722-2752-B1F8-4990C8E2E922";
	setAttr ".it1" -type "double3" 1.9999999999999982 1.5000000000000018 3.0000000000000178 ;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM";
	rename -uid "BA90AB81-4005-0B30-07C2-FFAAE9BBA41D";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM";
	rename -uid "FB51A284-4075-D8EC-58C1-EAB7AA28FEB5";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -4.2685998326661458 16.220000184508592 24.785343186808632 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086757 -0.0019534722132008853 -0.20693462147905226 0
		 -0.011183456186132663 1.05322151011363 0.045926110756279837 0 -0.20664143807111601 -0.047227759715843698 1.0327529624705143 0
		 0.65075170846283259 -16.598657814340463 -27.225379156340708 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp3PB";
	rename -uid "7B2F04E9-4218-51B5-A7A9-F483D8C6D786";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv4PosDM";
	rename -uid "C30F33AB-434F-5177-2CAB-E5903FA63349";
createNode multMatrix -n "RightEyeLidUpCrv4PosMM";
	rename -uid "3A4EBEB5-4001-B8F2-E8FE-ACB3B1729FDC";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 -5.5511151231257827e-17 1 0 0.81481480020516628 0.3888887975662112 4.5365341261316416e-08 1;
createNode pairBlend -n "RightEyeLidOutDown1LocOffGrpPB";
	rename -uid "5CC7E583-4804-A3BF-8356-69821B308970";
	setAttr ".it1" -type "double3" -2 -1.5000000000000053 2.9999999999999964 ;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM";
	rename -uid "03A43957-44B9-AC8B-131A-CBB8414EFF62";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM";
	rename -uid "17DF33F9-4B86-8A4F-0BBB-A597EAEF899F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521591 0.041318672721339121 0.92914424835066145 0
		 -0.54308396373265477 13.417568185483118 25.656454721917711 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086762 -0.0019534722132005522 -0.20693462147905142 0
		 -0.011183456186132625 1.0532215101136297 0.045926110756279372 0 -0.20664143807111607 -0.047227759715843587 1.0327529624705145 0
		 4.9404410642040704 -12.336190264187373 -27.225379208544361 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown1PB";
	rename -uid "902C782D-4132-1BAA-61C6-AF9739F1FDCD";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv2PosDM";
	rename -uid "CA0A69E2-49EB-79A1-8F6A-DCA3A4313692";
createNode multMatrix -n "RightEyeLidDownCrv2PosMM";
	rename -uid "681EA897-4F4B-62AE-EDAE-1694CCB5F9FB";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 5.5511151231257821e-17 0.99999999999999989 0
		 -0.81481481481481532 -0.38888889716560882 6.695968668424257e-09 1;
createNode pairBlend -n "RightEyeLidOutDown2LocOffGrpPB";
	rename -uid "10888678-4D22-75D1-BCB6-A88AC974CAC7";
	setAttr ".it1" -type "double3" -1.3322676295501878e-15 -2.4999999999999982 3.0000000000000142 ;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM";
	rename -uid "4648DE36-49DD-84C2-111A-21AD64BE32F3";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM";
	rename -uid "29408DD3-4959-5C41-9EAE-8A8635F610F9";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -2.4014481623855954 12.44988585228055 25.327123295752354 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086755 -0.0019534722132013849 -0.20693462147905289 0
		 -0.011183456186132736 1.05322151011363 0.045926110756279767 0 -0.20664143807111601 -0.047227759715843642 1.0327529624705145 0
		 2.8903166148561898 -12.342822343617623 -27.225379208544371 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown2PB";
	rename -uid "6E9078ED-4441-98D1-90B7-F9A58E185472";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv3PosDM";
	rename -uid "9220E12A-404F-7014-1C23-3DB966DF0440";
createNode multMatrix -n "RightEyeLidDownCrv3PosMM";
	rename -uid "2874E7FE-4EB0-8CD1-7114-C18F94201951";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 -6.1629758220391547e-33 0 1 0 -8.3266726748800786e-17 -1.0000000111735723 9.0395575469415235e-09 1;
createNode pairBlend -n "RightEyeLidOutDown3LocOffGrpPB";
	rename -uid "3F65F4D8-458C-8C68-932B-52A21A4FBD20";
	setAttr ".it1" -type "double3" 1.9999999999999991 -1.4999999999999947 3.0000000000000142 ;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM";
	rename -uid "C42D74E6-4AD2-B84B-48CE-029117F0CA12";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM";
	rename -uid "F37D8321-4602-6406-2914-49B869D4A314";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923093 -0.010061500058222683 -0.18591058136051444 0
		 -0.001757494325522221 0.94755933308612184 -0.042489736555673209 0 -0.18617435177521591 0.041318672721339121 0.92914424835066134 0
		 -4.2633273496895798 13.377322185250227 24.912812396475651 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132007742 -0.20693462147905092 0
		 -0.011183456186132756 1.0532215101136302 0.045926110756280142 0 -0.20664143807111607 -0.047227759715843698 1.0327529624705147 0
		 0.44292440138979011 -12.384452547178462 -27.225379208544371 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown3PB";
	rename -uid "12D191A6-45B8-D391-C62D-DFBA511CAC3F";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv4PosDM";
	rename -uid "35ED1938-4A9E-550A-28F8-F48292B240FB";
createNode multMatrix -n "RightEyeLidDownCrv4PosMM";
	rename -uid "C5BCC2D9-4C3F-4D31-7C87-A8B474AA1262";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999978 0 0.8148148148148151 -0.38888889716560793 6.6959664479782077e-09 1;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrv0PC";
	rename -uid "7D9715FC-450B-AA2A-6A96-0E9DE0A35F42";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrv1PC";
	rename -uid "7B990CCF-4AE2-20FC-DF79-B0A30649D607";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrv2PC";
	rename -uid "91BA3AF7-40EF-C831-98D9-AF961FDC116C";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrv0PC";
	rename -uid "1EF9981E-47DE-1191-CC7D-308EB798B7F8";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrv1PC";
	rename -uid "6736332F-48EC-E410-022B-B6959D884FD3";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrv2PC";
	rename -uid "3D86A395-4983-6CE1-1FAE-73A442FB270B";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrv0PC";
	rename -uid "407AF22E-4BB4-8AB3-89BF-218E26E4C18C";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrv1PC";
	rename -uid "9748DA10-412A-4630-8F4F-58B02639E97B";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrv2PC";
	rename -uid "C4AC602F-4B7B-458E-4E76-CA98035057E3";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrv0PC";
	rename -uid "580D718C-4C47-C447-BB57-B3992AAC4358";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrv1PC";
	rename -uid "819BF7DB-464B-63FD-E5F1-BB8CFE9CABF9";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrv2PC";
	rename -uid "98D06437-45F3-3573-8F2F-7881F5FB6F1A";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B107385F-4468-471D-563F-9591A0859C47";
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
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1629\n            -height 1074\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1629\\n    -height 1074\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1629\\n    -height 1074\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E0E8B469-4271-FF3C-B799-60BD324DAA83";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
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
connectAttr "LeftEyeLidUp2CtrlRvsMultMD.o" "LeftEyeLidUp2CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp3CtrlPosGrpDM.ot" "LeftEyeLidUp3CtrlPosGrp.t";
connectAttr "LeftEyeLidUp3CtrlRvsMultMD.o" "LeftEyeLidUp3CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp4CtrlPosGrpDM.ot" "LeftEyeLidUp4CtrlPosGrp.t";
connectAttr "LeftEyeLidUp4CtrlRvsMultMD.o" "LeftEyeLidUp4CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp5CtrlPosGrpDM.ot" "LeftEyeLidUp5CtrlPosGrp.t";
connectAttr "LeftEyeLidUp5CtrlRvsMultMD.o" "LeftEyeLidUp5CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp6CtrlPosGrpDM.ot" "LeftEyeLidUp6CtrlPosGrp.t";
connectAttr "LeftEyeLidUp6CtrlRvsMultMD.o" "LeftEyeLidUp6CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown2CtrlPosGrpDM.ot" "LeftEyeLidDown2CtrlPosGrp.t";
connectAttr "LeftEyeLidDown2CtrlRvsMultMD.o" "LeftEyeLidDown2CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown3CtrlPosGrpDM.ot" "LeftEyeLidDown3CtrlPosGrp.t";
connectAttr "LeftEyeLidDown3CtrlRvsMultMD.o" "LeftEyeLidDown3CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown4CtrlPosGrpDM.ot" "LeftEyeLidDown4CtrlPosGrp.t";
connectAttr "LeftEyeLidDown4CtrlRvsMultMD.o" "LeftEyeLidDown4CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown5CtrlPosGrpDM.ot" "LeftEyeLidDown5CtrlPosGrp.t";
connectAttr "LeftEyeLidDown5CtrlRvsMultMD.o" "LeftEyeLidDown5CtrlRvsGrp.t";
connectAttr "LeftEyeLidDown6CtrlPosGrpDM.ot" "LeftEyeLidDown6CtrlPosGrp.t";
connectAttr "LeftEyeLidDown6CtrlRvsMultMD.o" "LeftEyeLidDown6CtrlRvsGrp.t";
connectAttr "LeftEyeLidUp1CtrlPosGrpDM.ot" "LeftEyeLidSide1CtrlPosGrp.t";
connectAttr "LeftEyeLidSide1RvsMultMD.o" "LeftEyeLidSide1RvsGrp.t";
connectAttr "LeftEyeLidDown7CtrlPosGrpDM.ot" "LeftEyeLidSide2CtrlPosGrp.t";
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
connectAttr "RightEyeLidCtrlPosCrvShapeOrig.ws" "RightEyeLidCtrlPosCrvShape.cr";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "LeftEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RightEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
// End of eyeLidCtrl.ma
