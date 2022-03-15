//Maya ASCII 2022 scene
//Name: eyeLidCtrl01.ma
//Last modified: Tue, Mar 15, 2022 02:49:26 PM
//Codeset: 949
requires maya "2022";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19042)";
fileInfo "UUID" "479350BA-4C0D-4F74-EB0E-F08C578D2F3A";
createNode transform -s -n "persp";
	rename -uid "C1B70C88-4F2C-4B18-A575-F985F21CBDA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.840826208356047 15.302586307075083 27.141326513320699 ;
	setAttr ".r" -type "double3" -31.538352729997083 24.600000000013374 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6D2B2E1B-4AF8-1DAF-E4C6-6A9C44E1F1EF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 31.487282995856088;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.0000000277940018 9.4879659684465878e-13 -3.6082248300317588e-15 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "420A1208-48CE-D787-39BB-589B45BE678C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.095773607623901524 1000.1 1.3408305067346233 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D9F5C839-4CB9-F955-A24F-2FA7108B1713";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 21.153639684093775;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "120C246E-435B-835A-27D3-A08623CF9265";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.250550222753871 -0.31891475375204514 1000.1034295251812 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7B61CB03-4E0F-FD06-F241-5AA903B840ED";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 997.10342958642445;
	setAttr ".ow" 24.701774485126862;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 5.0000000475163127 2.0000000000016667 2.9999999387567686 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0D94F61E-4946-31BB-1373-238B3A151037";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1055017846181 0.030657408740188963 3.2992142586450224 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "29F30E4F-49DF-8BB9-B3B8-CEA2F631F88C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 997.10550177500636;
	setAttr ".ow" 15.980008537117344;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 3.0000000096117976 0.030657408740188991 3.2992142586450224 ;
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
	setAttr ".t" -type "double3" 1.4307257320756406e-42 7.9110081719085327e-59 -2.5243548967072378e-29 ;
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
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "LeftEyeLidOutUp1CtrlShape" -p "LeftEyeLidOutUp1Ctrl";
	rename -uid "FFF6085E-44B9-180C-9AB6-51AAFD9A01AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.5472157011697999 0.11149137057019719 
		0.97822192430573351 0.0013124362540576189 0.20886613936914639 1.3028044869688948 
		0.5498405736779145 0.11149137057019719 0.97822192430573307 0.77704836754212847 -0.12359211689717003 
		0.19461029941450803 0.5498405736779145 -0.20587133751074854 -0.5890013254767158 0.0013124362540577299 
		-0.20504438968241762 -0.91358388813988145 -0.5472157011697999 -0.20587133751074854 
		-0.5890013254767158 -0.77442349503401386 -0.12359211689717009 0.1946102994145078 
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
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
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
		0.23639596406820232 0.11149065300393626 0.19461021576451842
		0.0013124766008350379 0.20886542180288536 0.19461021576451842
		-0.23377101086653243 0.11149065300393626 0.19461021576451842
		-0.33114577966548181 -0.12359283446343114 0.19461021576451842
		-0.23377101086653243 -0.20587205507700956 0.19461021576451842
		0.0013124766008349824 -0.20504510724867864 0.19461021576451831
		0.23639596406820232 -0.20587205507700956 0.19461021576451831
		0.33377073286715125 -0.12359283446343114 0.19461021576451842
		0.23639596406820232 0.11149065300393626 0.19461021576451842
		0.0013124766008350379 0.20886542180288536 0.19461021576451842
		-0.23377101086653243 0.11149065300393626 0.19461021576451842
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
	setAttr -k on ".blend" 0.3;
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
		0.23639564986574443 0.11149061414324024 0.19461100436939538
		0.0013121623983770973 0.20886538294218943 0.19461100436939527
		-0.23377132506899059 0.11149061414324024 0.19461100436939538
		-0.33114609386793964 -0.12359287332412708 0.19461100436939527
		-0.23377132506899059 -0.20587209393770561 0.19461100436939527
		0.0013121623983770973 -0.20504514610937458 0.19461100436939516
		0.23639564986574443 -0.20587209393770561 0.19461100436939516
		0.33377041866469342 -0.12359287332412713 0.19461100436939527
		0.23639564986574443 0.11149061414324024 0.19461100436939538
		0.0013121623983770973 0.20886538294218943 0.19461100436939527
		-0.23377132506899059 0.11149061414324024 0.19461100436939538
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
		-0.23639566016528393 -0.11149145370941914 0.40538830045208241
		-0.0013121726979168809 -0.20886622250836806 0.40538830045208241
		0.23377131476945065 -0.11149145370941903 0.40538830045208241
		0.33114608356840025 0.12359203375794829 0.40538830045208241
		0.23377131476945065 0.20587125437152692 0.40538830045208241
		-0.0013121726979171029 0.20504430654319589 0.40538830045208218
		-0.23639566016528393 0.2058712543715267 0.40538830045208241
		-0.33377042896423337 0.12359203375794818 0.40538830045208241
		-0.23639566016528393 -0.11149145370941914 0.40538830045208241
		-0.0013121726979168809 -0.20886622250836806 0.40538830045208241
		0.23377131476945065 -0.11149145370941903 0.40538830045208241
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
		-0.23639595224876078 -0.11149065407882008 0.40538980199154651
		-0.0013124647813934874 -0.20886542287776888 0.40538980199154651
		0.23377102268597375 -0.11149065407881997 0.40538980199154651
		0.33114579148492274 0.12359283338854729 0.40538980199154651
		0.23377102268597363 0.20587205400212583 0.40538980199154651
		-0.0013124647813935776 0.20504510617379468 0.40538980199154628
		-0.23639595224876095 0.2058720540021256 0.40538980199154628
		-0.33377072104771011 0.12359283338854707 0.40538980199154651
		-0.23639595224876078 -0.11149065407882008 0.40538980199154651
		-0.0013124647813934874 -0.20886542287776888 0.40538980199154651
		0.23377102268597375 -0.11149065407881997 0.40538980199154651
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
		-0.23639575983353431 -0.11149120535676149 0.20538908620832697
		-0.0013122723661672005 -0.20886597415571062 0.20538908620832685
		0.23377121510119989 -0.11149120535676149 0.20538908620832697
		0.33114598390014888 0.12359228211060588 0.20538908620832685
		0.23377121510119989 0.20587150272418447 0.20538908620832685
		-0.0013122723661674225 0.20504455489585344 0.20538908620832674
		-0.23639575983353453 0.20587150272418436 0.20538908620832685
		-0.33377052863248341 0.12359228211060577 0.20538908620832685
		-0.23639575983353431 -0.11149120535676149 0.20538908620832697
		-0.0013122723661672005 -0.20886597415571062 0.20538908620832685
		0.23377121510119989 -0.11149120535676149 0.20538908620832697
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
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78360739338855656 0.42315027744126277 
		1.0836117362785771 4.1287484116375241e-16 0.59842486127937089 1.4081942989417404 
		0.36046134744996361 0.42315027744126277 1.0836117362785771 0.50976932627501881 1.4076990010178279e-15 
		0.30000011138735266 0.36046134744996361 -0.42315027744125983 -0.48361151350387199 
		4.9515315191023742e-16 -0.59842486127936856 -0.80819407616703565 -0.78360739338855656 
		-0.42315027744125983 -0.48361151350387199 -1.1081882033059263 1.2950695634930761e-15 
		0.3000001113873525 0 0 0 0 0 0 0 0 0;
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
	addAttr -ci true -sn "BlinkCenter" -ln "BlinkCenter" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
	setAttr -cb on ".BlinkCenter" 33.6;
createNode nurbsCurve -n "LeftEyeLidUpMainCtrlShape" -p "LeftEyeLidUpMainCtrl";
	rename -uid "0DAAE2F2-403F-460C-FCA5-049E3277D0AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.36046134744996494 0.22315027744126142 
		1.0836116248912278 -1.8024971419193283e-15 0.39842486127936988 1.4081941875543915 
		0.36046134744996139 0.22315027744126109 1.0836116248912273 0.50976932627501681 -0.19999999999999984 
		0.30000000000000276 0.36046134744996139 -0.20000423150266738 -0.48361162489122234 
		-1.7202188311728433e-15 -0.20000598424846144 -0.80819418755438566 -0.36046134744996494 
		-0.20000423150266738 -0.48361162489122211 -0.50976932627501981 -0.19999999999999996 
		0.3000000000000026 0 0 0 0 0 0 0 0 0;
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
		-4.2315026670403074e-06 0.42315027744126282 0.30000011138734972
		4.0744625530526267e-16 0.598424861279371 0.30000011138734961
		0.42315027744126155 0.42315027744126282 0.30000011138734961
		0.59842486127937022 1.4076990010178279e-15 0.30000011138734972
		0.42315027744126177 -0.42315027744125988 0.30000011138734967
		5.0403383748591955e-16 -0.59842486127936867 0.30000011138734961
		-4.2315026670403083e-06 -0.42315027744125988 0.30000011138734994
		-5.9842484609884386e-06 1.2950695634930761e-15 0.30000011138734972
		-4.2315026670403074e-06 0.42315027744126282 0.30000011138734972
		4.0744625530526267e-16 0.598424861279371 0.30000011138734961
		0.42315027744126155 0.42315027744126282 0.30000011138734961
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
	addAttr -ci true -sn "BlinkCenter" -ln "BlinkCenter" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
	setAttr -cb on ".BlinkCenter" -33.7;
createNode nurbsCurve -n "LeftEyeLidDownMainCtrlShape" -p "LeftEyeLidDownMainCtrl";
	rename -uid "9EBC1245-4C67-9FEF-811D-6AA244235BD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.4231502774412621 -0.1231502774412616 0.40000000000000446
		-4.3364617452468227e-16 -0.29842486127936996 0.40000000000000491
		0.42315027744126088 -0.12315027744126093 0.40000000000000446
		0.59842486127936989 0.29999999999999988 0.40000000000000402
		0.42315027744126099 0.30000423150266736 0.4000000000000038
		-1.9384280388245931e-16 0.30000598424846153 0.40000000000000335
		-0.42315027744126177 0.30000423150266747 0.4000000000000038
		-0.59842486127936989 0.30000000000000016 0.40000000000000402
		-0.4231502774412621 -0.1231502774412616 0.40000000000000446
		-4.3364617452468227e-16 -0.29842486127936996 0.40000000000000491
		0.42315027744126088 -0.12315027744126093 0.40000000000000446
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
createNode transform -n "LeftEyeLidPinCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "620815D5-4813-E85F-831F-67875356FA47";
createNode transform -n "LeftEyeLidPinUpCtrlGrp" -p "LeftEyeLidPinCtrlGrp";
	rename -uid "A487DBD1-4A92-6407-3851-088FE53B0944";
	setAttr ".t" -type "double3" -1.4307257320756409e-42 -7.9110081719100865e-59 2.5243548967072378e-29 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftEyeLidPinUp0CtrlGrp" -p "LeftEyeLidPinUpCtrlGrp";
	rename -uid "132E9406-453D-3BB4-CD66-1BBB6F4DC7C9";
createNode transform -n "LeftEyeLidPinUp0CtrlRvsGrp" -p "LeftEyeLidPinUp0CtrlGrp";
	rename -uid "84F7FD92-4794-5534-45C0-86A75FC39E14";
createNode transform -n "LeftEyeLidPinUp0Ctrl" -p "LeftEyeLidPinUp0CtrlRvsGrp";
	rename -uid "271C4129-4E06-6BCE-B030-CEBBD6F936D3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinUp0CtrlShape" -p "LeftEyeLidPinUp0Ctrl";
	rename -uid "AE26019C-48BA-3B1E-1938-9DB8C67B0EC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.3600000000000001 0.23999999999999969
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 0.3600000000000001 0.23999999999999969
		;
createNode transform -n "LeftEyeLidPinUp1CtrlGrp" -p "LeftEyeLidPinUpCtrlGrp";
	rename -uid "8D31A3D7-4A17-DC0B-EA6A-70A4B1968BCD";
createNode transform -n "LeftEyeLidPinUp1CtrlRvsGrp" -p "LeftEyeLidPinUp1CtrlGrp";
	rename -uid "327CFE80-4ED6-1770-9A06-7C875DECFFD4";
createNode transform -n "LeftEyeLidPinUp1Ctrl" -p "LeftEyeLidPinUp1CtrlRvsGrp";
	rename -uid "A29506C4-4CA0-AEE9-7313-2583363C0A61";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinUp1CtrlShape" -p "LeftEyeLidPinUp1Ctrl";
	rename -uid "FC51CC7C-41E2-B116-921E-69ACD79767A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.3600000000000001 0.23999999999999969
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 0.3600000000000001 0.23999999999999969
		;
createNode transform -n "LeftEyeLidPinUp2CtrlGrp" -p "LeftEyeLidPinUpCtrlGrp";
	rename -uid "E65AB896-4BCF-34C6-E1E8-03992F8E557D";
createNode transform -n "LeftEyeLidPinUp2CtrlRvsGrp" -p "LeftEyeLidPinUp2CtrlGrp";
	rename -uid "23448FED-417F-7FA5-6F9A-BD9EC36DE3A7";
createNode transform -n "LeftEyeLidPinUp2Ctrl" -p "LeftEyeLidPinUp2CtrlRvsGrp";
	rename -uid "43874E62-478D-3397-12A5-33BD4DF74D35";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinUp2CtrlShape" -p "LeftEyeLidPinUp2Ctrl";
	rename -uid "844450AE-4A48-EE8A-A567-27948D353667";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.3600000000000001 0.23999999999999969
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 0.3600000000000001 0.23999999999999969
		;
createNode transform -n "LeftEyeLidPinDownCtrlGrp" -p "LeftEyeLidPinCtrlGrp";
	rename -uid "3FD7464F-4AB4-1C25-27EB-67B5258F7D04";
	setAttr ".t" -type "double3" -1.4307257320756409e-42 -7.9110081719100865e-59 2.5243548967072378e-29 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftEyeLidPinDown0CtrlGrp" -p "LeftEyeLidPinDownCtrlGrp";
	rename -uid "5092D51A-4E7B-64F5-C471-38A54FF89274";
createNode transform -n "LeftEyeLidPinDown0CtrlRvsGrp" -p "LeftEyeLidPinDown0CtrlGrp";
	rename -uid "FF69EFAC-4676-836F-B6C8-0DB864D4F80B";
createNode transform -n "LeftEyeLidPinDown0Ctrl" -p "LeftEyeLidPinDown0CtrlRvsGrp";
	rename -uid "FB3F465D-48F9-9E58-857A-2B9BCCFAD93A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinDown0CtrlShape" -p "LeftEyeLidPinDown0Ctrl";
	rename -uid "26E1A97A-4BCE-5C6C-AC6D-6589A6BBDCC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 -0.3600000000000001 0.23999999999999988
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 -0.3600000000000001 0.23999999999999988
		;
createNode transform -n "LeftEyeLidPinDown1CtrlGrp" -p "LeftEyeLidPinDownCtrlGrp";
	rename -uid "9993FC5D-46A4-430F-29CF-67AAB70462B7";
createNode transform -n "LeftEyeLidPinDown1CtrlRvsGrp" -p "LeftEyeLidPinDown1CtrlGrp";
	rename -uid "738276FC-442E-0EE4-188B-CABAAA29F8F0";
createNode transform -n "LeftEyeLidPinDown1Ctrl" -p "LeftEyeLidPinDown1CtrlRvsGrp";
	rename -uid "5A8D9551-4D0C-E5BF-83B8-61939828797B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinDown1CtrlShape" -p "LeftEyeLidPinDown1Ctrl";
	rename -uid "E2925CC7-4BFF-09B3-7560-D1B8F6507EAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 -0.3600000000000001 0.23999999999999988
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 -0.3600000000000001 0.23999999999999988
		;
createNode transform -n "LeftEyeLidPinDown2CtrlGrp" -p "LeftEyeLidPinDownCtrlGrp";
	rename -uid "584E1912-4A3B-AEA7-0ED5-B89A56910784";
createNode transform -n "LeftEyeLidPinDown2CtrlRvsGrp" -p "LeftEyeLidPinDown2CtrlGrp";
	rename -uid "F91973BD-4206-5DBF-68AC-0CAC8095BB50";
createNode transform -n "LeftEyeLidPinDown2Ctrl" -p "LeftEyeLidPinDown2CtrlRvsGrp";
	rename -uid "533FB3E6-4CC5-3CB8-4AFE-ABA3EABEC6BA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinDown2CtrlShape" -p "LeftEyeLidPinDown2Ctrl";
	rename -uid "6A1125E0-4F9A-DC0E-6937-BF9DD9FF1785";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 -0.3600000000000001 0.23999999999999988
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 -0.3600000000000001 0.23999999999999988
		;
createNode transform -n "RightEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "95FD8DA4-41FB-7E85-4C95-B3B173BDF807";
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1 ;
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
	setAttr -k on ".blend" 0.3;
	setAttr -k on ".Z";
createNode nurbsCurve -n "RightEyeLidOutUp1CtrlShape" -p "RightEyeLidOutUp1Ctrl";
	rename -uid "CF309DCF-4434-9F4D-D5AE-ED916DC60842";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.54721570118671925 0.11149137057159418 
		0.97822192430221722 0.0013124362371389302 0.20886613937054088 1.3028044869653763 
		0.54984057366099492 0.11149137057159418 0.97822192430221322 0.77704836752520956 -0.12359211689578017 
		0.19461029941098928 0.54984057366099404 -0.20587133750935876 -0.58900132548023554 
		0.001312436237138264 -0.20504438968102207 -0.91358388814339975 -0.54721570118671925 
		-0.20587133750935166 -0.58900132548023532 -0.77442349505093344 -0.12359211689578017 
		0.19461029941098884 0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeLidOutUp2CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "78FD5E31-45B8-780A-DF7F-C09F8BFF57EF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp2CtrlGrp" -p "RightEyeLidOutUp2CtrlPos";
	rename -uid "689F061B-4DEA-DDCD-4ABE-D3937260541B";
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
		0.23639596405023119 0.1114906554800266 0.19461021372579246
		0.001312476582864491 0.20886542427898031 0.19461021372578891
		-0.23377101088450244 0.11149065548003015 0.19461021372579246
		-0.33114577968345266 -0.12359283198733359 0.19461021372579246
		-0.23377101088450289 -0.20587205260091213 0.19461021372578891
		0.0013124765828640469 -0.20504510477258608 0.19461021372579246
		0.23639596405023119 -0.20587205260091568 0.19461021372579601
		0.33377073284917952 -0.12359283198733359 0.19461021372579246
		0.23639596405023119 0.1114906554800266 0.19461021372579246
		0.001312476582864491 0.20886542427898031 0.19461021372578891
		-0.23377101088450244 0.11149065548003015 0.19461021372579246
		;
createNode transform -n "RightEyeLidOutUp3CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "4894F9C0-4D84-2EB8-E2A2-54BB0CF5EA58";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp3CtrlGrp" -p "RightEyeLidOutUp3CtrlPos";
	rename -uid "C27858A0-4E7C-519C-B453-4BAF3BCE8910";
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
	setAttr -k on ".blend" 0.3;
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
		0.23639564984884129 0.11149061414885603 0.19461100436536261
		0.0013121623814743959 0.20886538294780982 0.19461100436536261
		-0.23377132508589285 0.11149061414885603 0.19461100436536261
		-0.33114609388484256 -0.12359287331850766 0.19461100436536261
		-0.23377132508589329 -0.20587209393208977 0.19461100436535905
		0.0013121623814743959 -0.20504514610375485 0.19461100436536261
		0.23639564984884173 -0.20587209393208977 0.19461100436536261
		0.33377041864779139 -0.12359287331850766 0.19461100436536261
		0.23639564984884129 0.11149061414885603 0.19461100436536261
		0.0013121623814743959 0.20886538294780982 0.19461100436536261
		-0.23377132508589285 0.11149061414885603 0.19461100436536261
		;
createNode transform -n "RightEyeLidOutDownCtrlGrp" -p "RightEyeLidOutCtrlGrp";
	rename -uid "6B31CC0B-452B-32E6-F0FB-BF9D5DB9758A";
createNode transform -n "RightEyeLidOutDown1CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "A73D0C0E-40BC-358E-1F69-6181509C5E50";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown1CtrlGrp" -p "RightEyeLidOutDown1CtrlPos";
	rename -uid "1B729C43-42A2-C6EA-7C9A-8496ABBEAE51";
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
		-0.2363956601793554 -0.11149145370833653 0.40538830044912921
		-0.0013121727119889855 -0.20886622250728298 0.40538830044912921
		0.23377131475537835 -0.11149145370833476 0.40538830044912921
		0.33114608355432829 0.12359203375903076 0.40538830044912921
		0.23377131475537835 0.20587125437261139 0.40538830044912921
		-0.0013121727119898736 0.20504430654428002 0.40538830044912921
		-0.23639566017935629 0.20587125437261139 0.40538830044912921
		-0.33377042897830567 0.12359203375903076 0.40538830044912921
		-0.2363956601793554 -0.11149145370833653 0.40538830044912921
		-0.0013121727119889855 -0.20886622250728298 0.40538830044912921
		0.23377131475537835 -0.11149145370833476 0.40538830044912921
		;
createNode transform -n "RightEyeLidOutDown2CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "3D34C43C-463E-4427-630B-0797915437A6";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CtrlGrp" -p "RightEyeLidOutDown2CtrlPos";
	rename -uid "15FCE7C5-49B3-2837-1D11-DCB435EE4836";
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
		-0.23639595226178226 -0.11149065407564016 0.40538980198853847
		-0.0013124647944149671 -0.20886542287458659 0.40538980198853847
		0.23377102267295277 -0.11149065407563838 0.40538980198853847
		0.33114579147190271 0.12359283339172891 0.40538980198853847
		0.23377102267295277 0.205872054005306 0.40538980198853847
		-0.0013124647944149671 0.20504510617697463 0.40538980198854202
		-0.23639595226178226 0.20587205400530778 0.40538980198854202
		-0.33377072106073169 0.12359283339172714 0.40538980198854202
		-0.23639595226178226 -0.11149065407564016 0.40538980198853847
		-0.0013124647944149671 -0.20886542287458659 0.40538980198853847
		0.23377102267295277 -0.11149065407563838 0.40538980198853847
		;
createNode transform -n "RightEyeLidOutDown3CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "F5539A37-4166-7B2E-A451-BD81EC57710F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown3CtrlGrp" -p "RightEyeLidOutDown3CtrlPos";
	rename -uid "E2F03423-4659-5CB8-3A5D-80A4B8C5314F";
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
		-0.23639575984760333 -0.11149120535146728 0.20538908620485263
		-0.0013122723802370014 -0.20886597415041913 0.20538908620485263
		0.23377121508712936 -0.11149120535146906 0.20538908620485263
		0.33114598388608035 0.12359228211589648 0.20538908620485263
		0.23377121508713025 0.20587150272947702 0.20538908620485263
		-0.0013122723802370014 0.20504455490114565 0.20538908620484908
		-0.23639575984760333 0.20587150272947702 0.20538908620484908
		-0.33377052864655282 0.12359228211589826 0.20538908620484908
		-0.23639575984760333 -0.11149120535146728 0.20538908620485263
		-0.0013122723802370014 -0.20886597415041913 0.20538908620485263
		0.23377121508712936 -0.11149120535146906 0.20538908620485263
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
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.7836073933885549 0.42315027744126138 
		1.0836117362785758 1.2644103063190787e-15 0.59842486127937156 1.4081942989417389 
		0.36046134744996416 0.42315027744126316 1.0836117362785755 0.50976932627502025 6.6613381477509392e-16 
		0.30000011138735122 0.36046134744996416 -0.42315027744125827 -0.48361151350387332 
		1.4432761992462201e-15 -0.59842486127937022 -0.8081940761670372 -0.7836073933885549 
		-0.42315027744126182 -0.48361151350387321 -1.1081882033059247 6.6613381477509392e-16 
		0.30000011138735105 0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeLidUpCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "3B6659CC-467F-9D36-327B-F28C380276FF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidUpMainCtrlGrp" -p "RightEyeLidUpCtrlPos";
	rename -uid "6108C7AA-413F-7A6D-8E27-FE862FCA76D7";
createNode transform -n "RightEyeLidUpMainCtrlRvs" -p "RightEyeLidUpMainCtrlGrp";
	rename -uid "24BC8F38-42D0-D78E-45F1-7B96156F04D0";
createNode transform -n "RightEyeLidUpMainCtrl" -p "RightEyeLidUpMainCtrlRvs";
	rename -uid "83562D53-4B7C-6D55-0363-BB978B03ECB8";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Blink" -ln "Blink" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BlinkCenter" -ln "BlinkCenter" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
	setAttr -cb on ".BlinkCenter" 33.6;
createNode nurbsCurve -n "RightEyeLidUpMainCtrlShape" -p "RightEyeLidUpMainCtrl";
	rename -uid "99A22BAA-48B4-9176-1CBE-5999218CB7FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.36046134744996594 0.22315027744126031 
		1.0836116248912346 -3.1764817921815471e-15 0.39842486127936699 1.4081941875543942 
		0.36046134744996061 0.22315027744125676 1.0836116248912309 0.50976932627501581 -0.19999999999999862 
		0.30000000000000654 0.36046134744996017 -0.20000423150266683 -0.48361162489122156 
		-2.9976158992544061e-15 -0.20000598424845889 -0.80819418755438188 -0.36046134744996638 
		-0.20000423150266683 -0.48361162489121789 -0.5097693262750207 -0.19999999999999862 
		0.30000000000000637 0 0 0 0 0 0 0 0 0;
createNode transform -n "RightEyeLidOutCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "71B55AA2-4020-E701-B300-0DB5890D7B6B";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutMainCtrlGrp" -p "RightEyeLidOutCtrlPos";
	rename -uid "868343C2-46A0-01D6-526C-D289A977862D";
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
		-4.2315026670403074e-06 0.42315027744126282 0.30000011138734972
		4.0744625530526267e-16 0.598424861279371 0.30000011138734961
		0.42315027744126155 0.42315027744126282 0.30000011138734961
		0.59842486127937022 1.4076990010178279e-15 0.30000011138734972
		0.42315027744126177 -0.42315027744125988 0.30000011138734967
		5.0403383748591955e-16 -0.59842486127936867 0.30000011138734961
		-4.2315026670403083e-06 -0.42315027744125988 0.30000011138734994
		-5.9842484609884386e-06 1.2950695634930761e-15 0.30000011138734972
		-4.2315026670403074e-06 0.42315027744126282 0.30000011138734972
		4.0744625530526267e-16 0.598424861279371 0.30000011138734961
		0.42315027744126155 0.42315027744126282 0.30000011138734961
		;
createNode transform -n "RightEyeLidDownCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "79B5C4EA-4C67-6CE4-DB39-8D9905F52212";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidDownMainCtrlGrp" -p "RightEyeLidDownCtrlPos";
	rename -uid "A9B2A846-4C99-497E-BB12-769E8CD0DB23";
createNode transform -n "RightEyeLidDownMainCtrlRvs" -p "RightEyeLidDownMainCtrlGrp";
	rename -uid "BE19DB31-4F70-FC8F-6AAC-B3866B5005C2";
createNode transform -n "RightEyeLidDownMainCtrl" -p "RightEyeLidDownMainCtrlRvs";
	rename -uid "2B121ACC-4F11-197C-03D8-9DB79DFE9C46";
	addAttr -ci true -sn "Z" -ln "Z" -at "double";
	addAttr -ci true -sn "Blink" -ln "Blink" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "BlinkCenter" -ln "BlinkCenter" -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Z";
	setAttr -k on ".Blink";
	setAttr -cb on ".BlinkCenter" -33.7;
createNode nurbsCurve -n "RightEyeLidDownMainCtrlShape" -p "RightEyeLidDownMainCtrl";
	rename -uid "2328ED1F-4048-D93A-D33C-59999A270EB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.42315027744126077 -0.12315027744126117 0.4000000000000008
		0 -0.29842486127936962 0.40000000000000435
		0.42315027744126166 -0.12315027744126117 0.4000000000000008
		0.59842486127937056 0.2999999999999996 0.4000000000000008
		0.4231502774412621 0.30000423150266786 0.4000000000000008
		8.8817841970012523e-16 0.3000059842484617 0.39999999999999725
		-0.42315027744126166 0.30000423150266786 0.4000000000000008
		-0.59842486127937011 0.2999999999999996 0.40000000000000435
		-0.42315027744126077 -0.12315027744126117 0.4000000000000008
		0 -0.29842486127936962 0.40000000000000435
		0.42315027744126166 -0.12315027744126117 0.4000000000000008
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
createNode transform -n "RightEyeLidSegmentCtrlGrp" -p "RightEyeLidCCtrl";
	rename -uid "54CBDF52-40E5-B04D-7FF3-CA998B998407";
	setAttr ".t" -type "double3" -2.9999999722059982 1.2079227474220375e-13 -2.9999999999999964 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -0.99999999999999989 ;
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
createNode transform -n "RightEyeLidPinCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "A89E7F41-4B25-CD7E-8DEC-66AC7B2015FD";
	setAttr ".t" -type "double3" 3 0 0 ;
createNode transform -n "RightEyeLidPinUpCtrlGrp" -p "RightEyeLidPinCtrlGrp";
	rename -uid "0FBB32D3-4491-1E42-06E5-99B86B803627";
	setAttr ".t" -type "double3" -2.9999999722059978 1.2079226507921678e-13 6.2172473490555547e-15 ;
	setAttr ".r" -type "double3" 0 180.00000000000327 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidPinUp0CtrlGrp" -p "RightEyeLidPinUpCtrlGrp";
	rename -uid "C9F4E978-4359-6B25-AF78-A1AB07D06D3C";
createNode transform -n "RightEyeLidPinUp0CtrlRvsGrp" -p "RightEyeLidPinUp0CtrlGrp";
	rename -uid "38BE1A05-4AAC-833B-EFF1-4498107A9E0E";
createNode transform -n "RightEyeLidPinUp0Ctrl" -p "RightEyeLidPinUp0CtrlRvsGrp";
	rename -uid "E98AF432-4799-0B50-7E90-25BF4C55D480";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinUp0CtrlShape" -p "RightEyeLidPinUp0Ctrl";
	rename -uid "19F28E84-4101-0D6A-A919-04B4AC1099A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.3600000000000001 0.23999999999999969
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 0.3600000000000001 0.23999999999999969
		;
createNode transform -n "RightEyeLidPinUp1CtrlGrp" -p "RightEyeLidPinUpCtrlGrp";
	rename -uid "39E24843-4431-E702-BEB6-8B874A67C330";
createNode transform -n "RightEyeLidPinUp1CtrlRvsGrp" -p "RightEyeLidPinUp1CtrlGrp";
	rename -uid "3CAD2A01-4B49-C7AA-B8E3-91B5557B174F";
createNode transform -n "RightEyeLidPinUp1Ctrl" -p "RightEyeLidPinUp1CtrlRvsGrp";
	rename -uid "7B53E0FA-4371-BAF8-A80F-858732E7C3B2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinUp1CtrlShape" -p "RightEyeLidPinUp1Ctrl";
	rename -uid "B8490576-49A6-91B5-5615-0EB3ED4E4A6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.3600000000000001 0.23999999999999969
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 0.3600000000000001 0.23999999999999969
		;
createNode transform -n "RightEyeLidPinUp2CtrlGrp" -p "RightEyeLidPinUpCtrlGrp";
	rename -uid "78A4C06B-41DD-1B77-34CB-17BE78A9EE14";
createNode transform -n "RightEyeLidPinUp2CtrlRvsGrp" -p "RightEyeLidPinUp2CtrlGrp";
	rename -uid "AE039C8A-4B16-6531-E898-81B2933DA4BD";
createNode transform -n "RightEyeLidPinUp2Ctrl" -p "RightEyeLidPinUp2CtrlRvsGrp";
	rename -uid "29A6E9ED-4982-6059-E964-729450419758";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinUp2CtrlShape" -p "RightEyeLidPinUp2Ctrl";
	rename -uid "472F980F-4605-3A0E-C17D-55A6BF316250";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.3600000000000001 0.23999999999999969
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 0.3600000000000001 0.23999999999999969
		;
createNode transform -n "RightEyeLidPinDownCtrlGrp" -p "RightEyeLidPinCtrlGrp";
	rename -uid "B0D607EF-4665-71D3-FF93-C7B6DB19291D";
	setAttr ".t" -type "double3" -2.9999999722059978 1.2079226507921678e-13 6.2172473490555547e-15 ;
	setAttr ".r" -type "double3" 0 180.00000000000327 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidPinDown0CtrlGrp" -p "RightEyeLidPinDownCtrlGrp";
	rename -uid "BAC0DFCC-4498-405D-2E68-4FB15CD20C44";
createNode transform -n "RightEyeLidPinDown0CtrlRvsGrp" -p "RightEyeLidPinDown0CtrlGrp";
	rename -uid "0AC9B3F9-4EBA-8BBD-FC0A-BB99F0242114";
createNode transform -n "RightEyeLidPinDown0Ctrl" -p "RightEyeLidPinDown0CtrlRvsGrp";
	rename -uid "DEE1EBD7-4442-9435-F313-349E1B7C2EE9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinDown0CtrlShape" -p "RightEyeLidPinDown0Ctrl";
	rename -uid "652AF67C-4841-D455-6CEF-FEB88EEAB64E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 -0.3600000000000001 0.23999999999999988
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 -0.3600000000000001 0.23999999999999988
		;
createNode transform -n "RightEyeLidPinDown1CtrlGrp" -p "RightEyeLidPinDownCtrlGrp";
	rename -uid "481A1885-4E44-6B13-DF33-188D6FB9AE8A";
createNode transform -n "RightEyeLidPinDown1CtrlRvsGrp" -p "RightEyeLidPinDown1CtrlGrp";
	rename -uid "D47B6DED-4ED3-F837-2445-DE814836D3E3";
createNode transform -n "RightEyeLidPinDown1Ctrl" -p "RightEyeLidPinDown1CtrlRvsGrp";
	rename -uid "9C87647D-438E-6185-3324-D4BA7E009AAD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinDown1CtrlShape" -p "RightEyeLidPinDown1Ctrl";
	rename -uid "F53306B4-4C34-0E6D-1EFB-518F204193FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 -0.3600000000000001 0.23999999999999988
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 -0.3600000000000001 0.23999999999999988
		;
createNode transform -n "RightEyeLidPinDown2CtrlGrp" -p "RightEyeLidPinDownCtrlGrp";
	rename -uid "09C62DE9-4CE9-84A0-571C-B18DAC4FCB86";
createNode transform -n "RightEyeLidPinDown2CtrlRvsGrp" -p "RightEyeLidPinDown2CtrlGrp";
	rename -uid "41834BD7-4BB0-71FB-8FF4-6DBD13E022C0";
createNode transform -n "RightEyeLidPinDown2Ctrl" -p "RightEyeLidPinDown2CtrlRvsGrp";
	rename -uid "6EAE514D-4887-F7B1-2259-49B324EC873B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinDown2CtrlShape" -p "RightEyeLidPinDown2Ctrl";
	rename -uid "B4018851-4134-431C-772F-8B84FC384628";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 -0.3600000000000001 0.23999999999999988
		-0.24000000000000007 0 0.23999999999999988
		0.24000000000000007 0 0.23999999999999988
		0 -0.3600000000000001 0.23999999999999988
		;
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
createNode bezierCurve -n "LeftEyeLidUpCrvShape" -p "LeftEyeLidUpCrv";
	rename -uid "8C6123C9-43B8-85B1-E0DD-91928809827B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277940035 2.4385355839496914e-13 2.9999999999999907
		1.0000000277940035 2.4385355839496914e-13 2.9999999999999907
		1.0000000475163149 2.0000000000002376 2.9999999387567886
		3.000000047516314 2.0000000000009521 2.999999938756766
		5.0000000475163127 2.0000000000016667 2.9999999387567673
		5.0000000277940018 1.6672071808600085e-12 2.9999999999999774
		5.0000000277940018 1.6672071808600085e-12 2.9999999999999774
		;
createNode transform -n "LeftEyeLidDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "AF35A092-4AC3-34DD-A0EB-198E89FF642F";
createNode bezierCurve -n "LeftEyeLidDownCrvShape" -p "LeftEyeLidDownCrv";
	rename -uid "2C4FFA4E-455A-0995-D556-C592CD63DC3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277940035 2.4385355839496914e-13 2.9999999999999907
		1.0000000277940035 2.4385355839496914e-13 2.9999999999999907
		1.0000000277947185 -1.9999999999997609 2.9999999909604185
		3.0000000277947176 -1.9999999999990463 2.9999999909604287
		5.0000000277947168 -1.9999999999983318 2.9999999909604211
		5.0000000277940018 1.6672071808600085e-12 2.9999999999999774
		5.0000000277940018 1.6672071808600085e-12 2.9999999999999774
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
		1.3358896319268525 1.4327798058233436e-12 2.4961416060840125
		1.3962411187840975 0.43189504969075754 2.4982258387907281
		1.8367316878879172 1.2243757327299043 2.4794516314254951
		3.0000000441407551 1.6641104193897329 2.4961415904043878
		4.1632683881993655 1.2243757289293102 2.4794516236884219
		4.6037589428848458 0.43189504903960801 2.498225834998836
		4.6641104166212894 3.2112765025668412e-12 2.4961416107770313
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
		1.3358896319268474 1.4296711813543913e-12 2.4961416060840125
		1.3962411207622241 -0.4318950480102724 2.4982258403502078
		1.8367316878788431 -1.2243757200420735 2.4794516376859299
		3.0000000277963754 -1.6641103993353683 2.4961416037706297
		4.1632683677126545 -1.2243757200387573 2.4794516376859277
		4.6037589348270105 -0.43189504800569128 2.4982258403502042
		4.6641104166212859 3.2121646809865401e-12 2.4961416107770313
		;
createNode transform -n "LeftEyeLidOutUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "1AE65E68-4964-B646-C429-61B1968C6EC6";
createNode bezierCurve -n "LeftEyeLidOutUpCrvShape" -p "LeftEyeLidOutUpCrv";
	rename -uid "EC1FBE77-4D3A-7620-FC60-A1BC9C3B5B2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.75000002779355679 1.2500000000001488 2.9999999999999831
		0.75000002779355679 1.2500000000001488 2.9999999999999831
		1.5000000277931067 2.500000000000417 2.999999999999988
		3.0000000277931056 2.5000000000009535 2.999999999999988
		4.5000000277931056 2.5000000000014895 2.9999999999999885
		5.2500000277935577 1.2500000000017568 2.9999999999999893
		5.2500000277935577 1.2500000000017568 2.9999999999999893
		;
createNode transform -n "LeftEyeLidOutDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "14AF1094-47AA-C400-DBAB-79A4E2819F6C";
createNode bezierCurve -n "LeftEyeLidOutDownCrvShape" -p "LeftEyeLidOutDownCrv";
	rename -uid "2741CBCD-4A37-AB4E-8034-15B2CADE93DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.75000002779445107 -1.2499999999998499 2.9999999999999898
		0.75000002779445107 -1.2499999999998499 2.9999999999999898
		1.5000000277948973 -2.4999999999995799 2.9999999999999893
		3.0000000277948966 -2.4999999999990443 2.9999999999999893
		4.5000000277948962 -2.4999999999985074 2.9999999999999898
		5.2500000277944494 -1.2499999999982419 2.9999999999999893
		5.2500000277944494 -1.2499999999982419 2.9999999999999893
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
		1.2923203371587049 0.94846663265908115 2.276812941343608
		1.7082827786504349 1.4349412763335441 2.2961442027117633
		3.0000000277926304 1.92054352442749 2.3046656253411504
		4.2917172769334648 1.4349412763372316 2.2961442027117664
		4.7076797184265908 0.94846663266396447 2.2768129413436027
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
		1.2923203371608294 -0.9484666326569855 2.2768129413443896
		1.7082827786594488 -1.4349412763417257 2.2961442027099128
		3.0000000277953736 -1.9205435309875709 2.304665620872199
		4.2917172769326566 -1.4349412763380334 2.2961442027099137
		4.7076797184298869 -0.94846663265210041 2.2768129413443914
		;
createNode transform -n "LeftEyeLidPinUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "AA324C64-480C-C9FA-68D3-5689A2ABBACE";
createNode bezierCurve -n "LeftEyeLidPinUpCrvShape" -p "LeftEyeLidPinUpCrv";
	rename -uid "375CB260-47C4-8CAF-33EA-E996FAE8FD9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.50000002779328856 2.0000000000000591 2.9999999999999827
		0.50000002779328856 2.0000000000000591 2.9999999999999827
		1.5000000277929286 3.0000000000004157 2.999999999999988
		3.000000027792928 3.0000000000009517 2.999999999999988
		4.5000000277929271 3.0000000000014881 2.9999999999999885
		5.5000000277932877 2.0000000000018452 2.9999999999999898
		5.5000000277932877 2.0000000000018452 2.9999999999999898
		;
createNode transform -n "LeftEyeLidPinDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "EBA3DA68-47EC-204A-7E40-B6898462E348";
createNode bezierCurve -n "LeftEyeLidPinDownCrvShape" -p "LeftEyeLidPinDownCrv";
	rename -uid "367FD351-46CE-5302-1B96-169FD45837B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.50000002779471808 -1.9999999999999394 2.9999999999999907
		0.50000002779471808 -1.9999999999999394 2.9999999999999907
		1.5000000277950758 -2.9999999999995817 2.9999999999999893
		3.0000000277950751 -2.9999999999990457 2.9999999999999893
		4.5000000277950747 -2.9999999999985092 2.9999999999999898
		5.5000000277947159 -1.9999999999981535 2.9999999999999898
		5.5000000277947159 -1.9999999999981535 2.9999999999999898
		;
createNode transform -n "LeftEyeLidPinUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "E20A0092-4884-2395-C0FF-019F742BBA23";
createNode nurbsCurve -n "LeftEyeLidPinUpJntCrvShape" -p "LeftEyeLidPinUpJntCrv";
	rename -uid "615852C6-4A8C-B7B9-8C92-8CAE06AD8010";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.2908686355581049 1.367717219581964 2.0512934770847076
		1.7369446591337827 1.7418701881995509 2.0904605496682169
		3.0000000277924861 2.1213208347008425 2.1213197864343281
		4.2630553964492348 1.7418701882031631 2.0904605496682183
		4.7091314200259866 1.3677172195868477 2.051293477084712
		;
createNode transform -n "LeftEyeLidPinDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "D16DD15D-40CE-A472-3274-468570945F66";
createNode nurbsCurve -n "LeftEyeLidPinDownJntCrvShape" -p "LeftEyeLidPinDownJntCrv";
	rename -uid "1FCD9B06-4A5C-1458-DB24-E18585A9E38F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.2908686355612538 -1.3677172195804788 2.0512934770856246
		1.7369446756817071 -1.7418701986194864 2.0904605512561907
		3.0000000277970278 -2.1213208764905569 2.1213197578861647
		4.263055379911278 -1.7418701986158756 2.0904605512561907
		4.709131420030662 -1.367717219575592 2.051293477085621
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
createNode transform -n "LeftEyeLidOutUpCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "6144F3C0-410A-46B0-E0CC-2BB48C799CB6";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv0Pos" -p "LeftEyeLidOutUpCrv0PosSurfPos";
	rename -uid "ECC67970-4CE7-D92E-77FD-D18C7C6BB26A";
createNode locator -n "LeftEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv0PosSurfPos|LeftEyeLidOutUpCrv0Pos";
	rename -uid "A891E188-4683-0A65-17AD-B4886A367AC7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "C5FFA073-41B2-29C1-0174-D58222075A49";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv1Pos" -p "LeftEyeLidOutUpCrv1PosSurfPos";
	rename -uid "215092C2-41B7-1766-7BB6-8BAB46F643DC";
createNode locator -n "LeftEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv1PosSurfPos|LeftEyeLidOutUpCrv1Pos";
	rename -uid "C1744947-41B0-40EB-6E7D-8BB0792C0DC8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "4828A95F-47CC-716D-14B9-B68AD9C386EE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv2Pos" -p "LeftEyeLidOutUpCrv2PosSurfPos";
	rename -uid "EE256DDE-4B8F-805D-ABCE-16BF1E7B067B";
createNode locator -n "LeftEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv2PosSurfPos|LeftEyeLidOutUpCrv2Pos";
	rename -uid "BC78A605-4541-26D3-B8B2-B797DB450CEA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "5D9B76D6-49B5-21BA-7A69-32AA0F2CCE33";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv3Pos" -p "LeftEyeLidOutUpCrv3PosSurfPos";
	rename -uid "36256847-46A8-9840-21F2-0F827F6F5004";
createNode locator -n "LeftEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv3PosSurfPos|LeftEyeLidOutUpCrv3Pos";
	rename -uid "AE21961F-4694-FC22-D313-48AD175C779D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "76B03E32-4F0D-7536-E710-5B998AD3AAD4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv4Pos" -p "LeftEyeLidOutUpCrv4PosSurfPos";
	rename -uid "9DEE6967-44FA-9E7E-A207-72AFDDAA2BE3";
createNode locator -n "LeftEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv4PosSurfPos|LeftEyeLidOutUpCrv4Pos";
	rename -uid "FC83B31F-4338-9C36-F315-8BA594CA71B7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "2BCAD6DC-4F58-52A6-48EE-E5AB20E154F4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv0Pos" -p "LeftEyeLidOutDownCrv0PosSurfPos";
	rename -uid "CAB0E745-45EC-ADBE-4961-11BFD49F80AA";
createNode locator -n "LeftEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv0PosSurfPos|LeftEyeLidOutDownCrv0Pos";
	rename -uid "5269DB34-4ABB-0AB8-BE61-7AA648593333";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "46D2559D-48B3-1B9E-F26A-C08081A84C85";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv1Pos" -p "LeftEyeLidOutDownCrv1PosSurfPos";
	rename -uid "1EE4E464-48E7-3C84-7F37-37B3E1737104";
createNode locator -n "LeftEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv1PosSurfPos|LeftEyeLidOutDownCrv1Pos";
	rename -uid "BAD17426-4C07-D6E9-8828-04ABE44AADC7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "2F982F2A-4415-F445-B47D-7B9BA144F9D7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv2Pos" -p "LeftEyeLidOutDownCrv2PosSurfPos";
	rename -uid "AA86F019-460A-4399-C938-18BEBF699978";
createNode locator -n "LeftEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv2PosSurfPos|LeftEyeLidOutDownCrv2Pos";
	rename -uid "E15A34D3-4705-80B4-6E35-55853B203F74";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "318A4B11-4667-4977-DDE8-E1A7AE007202";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv3Pos" -p "LeftEyeLidOutDownCrv3PosSurfPos";
	rename -uid "1D29CEB8-41F1-FEEF-2B58-29AD91B54491";
createNode locator -n "LeftEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv3PosSurfPos|LeftEyeLidOutDownCrv3Pos";
	rename -uid "E6E3B6CD-4CCB-DB06-DED7-0BAED8DF70E2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "F5047769-42A8-E73C-4E79-A98B91DB7AE9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv4Pos" -p "LeftEyeLidOutDownCrv4PosSurfPos";
	rename -uid "53109757-4CA1-6AD5-D23D-C78B9DD1A6F9";
createNode locator -n "LeftEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv4PosSurfPos|LeftEyeLidOutDownCrv4Pos";
	rename -uid "C741363C-4F0D-C192-CCBD-78BBC6F44CCE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7FC50483-4D67-DD3D-EAF6-DC9D295DA044";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv0Pos" -p "LeftEyeLidPinUpCrv0PosSurfPos";
	rename -uid "422C0800-43F7-D944-B290-F1A6A54E801A";
createNode locator -n "LeftEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv0PosSurfPos|LeftEyeLidPinUpCrv0Pos";
	rename -uid "6A969ED8-4692-3987-A58B-7B9A8C380E15";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "EE801240-44F6-CD8B-9851-0FAE89903072";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv1Pos" -p "LeftEyeLidPinUpCrv1PosSurfPos";
	rename -uid "D3C80A97-44EF-EBFD-6E24-D5907A7AD472";
createNode locator -n "LeftEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv1PosSurfPos|LeftEyeLidPinUpCrv1Pos";
	rename -uid "2512A312-4A3E-A643-0761-4DB0E270F6F9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "81840E49-4A02-8C04-813C-2C89609997C2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv2Pos" -p "LeftEyeLidPinUpCrv2PosSurfPos";
	rename -uid "01304B8C-4169-3561-E8C2-3B9D97E11B92";
createNode locator -n "LeftEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv2PosSurfPos|LeftEyeLidPinUpCrv2Pos";
	rename -uid "E1D2E699-4C28-6F87-CC5F-7D916FA975EA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "140C25B7-4EB7-C5CE-DBF3-9BB0F91D24E9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv3Pos" -p "LeftEyeLidPinUpCrv3PosSurfPos";
	rename -uid "319070E2-4EAE-8453-A023-63A0EBBBC94F";
createNode locator -n "LeftEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv3PosSurfPos|LeftEyeLidPinUpCrv3Pos";
	rename -uid "3FDA868D-4F17-85EA-A867-6FAAAD0B5D7E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "6B3DF883-498A-2C3D-61F8-A68AF3753A4F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv4Pos" -p "LeftEyeLidPinUpCrv4PosSurfPos";
	rename -uid "464FC1C9-4040-4869-29A8-2B8CB38D32BF";
createNode locator -n "LeftEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv4PosSurfPos|LeftEyeLidPinUpCrv4Pos";
	rename -uid "1ABBF617-4FC5-2512-149F-3EABD240E059";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "5000EDA0-45EE-11C2-F7A6-33814D7344FB";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv0Pos" -p "LeftEyeLidPinDownCrv0PosSurfPos";
	rename -uid "823FF3C9-426B-AB07-D8B3-B6ACB7650DF7";
createNode locator -n "LeftEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv0PosSurfPos|LeftEyeLidPinDownCrv0Pos";
	rename -uid "79584FF4-4742-5D43-5766-9B963747E26B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "317F518B-49D5-F7C8-3371-2CBCE77B7120";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv1Pos" -p "LeftEyeLidPinDownCrv1PosSurfPos";
	rename -uid "9DFE89E2-4077-7646-DF46-A5967930131D";
createNode locator -n "LeftEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv1PosSurfPos|LeftEyeLidPinDownCrv1Pos";
	rename -uid "70ADCAFA-4A9A-4617-BC81-8CA58F8F9E2A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "A9E46494-48D3-D783-F38A-F5838A42BC6C";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv2Pos" -p "LeftEyeLidPinDownCrv2PosSurfPos";
	rename -uid "86954867-4894-8C0E-6339-5C8DAB161A59";
createNode locator -n "LeftEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv2PosSurfPos|LeftEyeLidPinDownCrv2Pos";
	rename -uid "7AFFDBE5-40DB-7081-EA30-4A8E1756B309";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3CE6D44D-492B-0552-46E0-80BD299B784E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv3Pos" -p "LeftEyeLidPinDownCrv3PosSurfPos";
	rename -uid "D24D1CBD-4EC5-FDE9-333D-14BAB3F2E0B3";
createNode locator -n "LeftEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv3PosSurfPos|LeftEyeLidPinDownCrv3Pos";
	rename -uid "6B6AB093-47EE-75A7-B82B-A0ABB9D73109";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "BEDAF494-4F24-A8F8-A412-2A8D1359314E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv4Pos" -p "LeftEyeLidPinDownCrv4PosSurfPos";
	rename -uid "DBA08086-40A2-EC6D-4A74-D38AE4BCD61B";
createNode locator -n "LeftEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv4PosSurfPos|LeftEyeLidPinDownCrv4Pos";
	rename -uid "DD321DC0-491B-E87D-3F85-A0A4A718EF91";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "0136F2C1-48BF-B767-8B27-E79550BD1A6D";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "1847D4B3-4217-ED85-0B4F-F1A9F32BE397";
createNode transform -n "LeftEyeLidUpCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidUpCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidUpCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidUpCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidUpCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidUpCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidUpCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidDownCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
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
createNode transform -n "LeftEyeLidOutCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "C85ED7DD-4286-53C6-B5BE-E8A7FB95FF39";
createNode transform -n "LeftEyeLidOutUpCrv0Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "BB0E6732-4198-342F-3657-55A298B6D873";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv0Pos";
	rename -uid "D7F7B76B-4243-3EF9-EBD8-25B413F89733";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv1Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "32EB3992-4ACE-6482-10E1-EB93984DD64D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv1Pos";
	rename -uid "51B4B64B-48E8-76DF-E7AA-FDA5903F5020";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv2Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "2428BD24-4BDA-FA87-C140-C393A472B106";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv2Pos";
	rename -uid "00BCB711-489B-DABB-B0C6-B18AB5D59106";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv3Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "3256D9F8-4398-DBDF-C9E5-628AF648D721";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv3Pos";
	rename -uid "EFF28B35-4260-B135-9591-48979286C6AE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv4Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "AE630AD1-4E1B-09AB-564E-8199D15D1508";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv4Pos";
	rename -uid "08E8C29D-4627-D3A9-E8D3-7D922F40DE9F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv0Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "8F2B79BD-4764-03BE-1AF6-7BA86FF9F21F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv0Pos";
	rename -uid "AF411E84-468D-1453-7102-03984ABC3909";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv1Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "37E5F919-419F-8DA7-FAC1-1AB8EC2D2F55";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv1Pos";
	rename -uid "090363F0-4464-7E99-075B-5E945AABEC1C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv2Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "27A46BC9-4285-2E9C-89F1-448C6A69DA90";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv2Pos";
	rename -uid "0E3E74EC-4354-C26F-2002-FD9CC519E5E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv3Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "94B4DE53-4567-D6B6-2CBB-589E6278E96E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv3Pos";
	rename -uid "BA580BB1-40EC-7124-206E-E9B57F1537C5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv4Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "3DB7742C-4F56-4D84-07E6-6CA9C7F9B612";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv4Pos";
	rename -uid "78CF784A-4219-0F78-E42D-DFA94D4B4FE6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "8D8BACDB-43FA-53AE-9199-CAAB9EB70B3E";
createNode transform -n "LeftEyeLidPinUpCrv0Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "63B0FAEA-4533-D2F3-861D-6BB095D1FEEF";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv0Pos";
	rename -uid "6228A544-46EB-EBBE-4633-51AEF2B378F2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv1Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "5EBD7C39-4346-D707-5681-AC8889637E70";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv1Pos";
	rename -uid "E18EE5D2-431A-9447-3D4F-88B54A41008D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv2Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "445EE028-4B99-9743-71FD-56B9D2BFC938";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv2Pos";
	rename -uid "7B6FEB3D-4C53-87AA-BBB0-BB99223DD385";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv3Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "6383740A-4866-8237-5475-EC82F84D8E2E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv3Pos";
	rename -uid "88601B28-4B76-6EDB-797B-2880327134C3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv4Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "96854160-498A-4215-CC35-54A08A3851A1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv4Pos";
	rename -uid "D2351399-4C36-444D-DD65-D287DB82DB19";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv0Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "0EBE37DC-4E8D-765C-690B-88BE9CFB3524";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv0Pos";
	rename -uid "7784D5DA-4BAD-B679-9FEE-C69B97EEFDEB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv1Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "22CB4B1C-4A77-6744-FB28-7B8350F463F7";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv1Pos";
	rename -uid "A988DFBF-406E-19F2-7596-7CA669CCA571";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv2Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "4B017E2C-4E05-A6BE-8F28-6BB58FECF7E1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv2Pos";
	rename -uid "E339C4B5-44A7-F8F4-FFCD-92A50BD807E0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv3Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "DDC7B9A2-4452-5F98-A8A8-B7B7B7889538";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv3Pos";
	rename -uid "91452F82-4F90-A0F8-EC44-70A42A4039CD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv4Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "C0CC61B4-4E4B-FB32-1413-FEA1F307ACCE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv4Pos";
	rename -uid "94C27732-4457-7D38-F8D6-DA9E0A6C3932";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "C01AB61F-4160-D071-B195-19ADAB896551";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv0AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "78CB417A-4D4B-295F-A532-639D4E0B18A2";
createNode locator -n "LeftEyeLidOutUpCrv0AimPosShape" -p "LeftEyeLidOutUpCrv0AimPos";
	rename -uid "37EE9EA4-4427-2DA0-C57C-ACB68F19F5B2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv1AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "C7194B2C-4017-42D0-7FAC-B5BD55A8BAF0";
createNode locator -n "LeftEyeLidOutUpCrv1AimPosShape" -p "LeftEyeLidOutUpCrv1AimPos";
	rename -uid "5DA5BCD4-4CCE-6F5F-35E9-BFA42E0C8047";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv2AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "87BFE0B0-4DC9-2363-DDEC-30983388822D";
createNode locator -n "LeftEyeLidOutUpCrv2AimPosShape" -p "LeftEyeLidOutUpCrv2AimPos";
	rename -uid "2498899F-40C9-D235-3C75-A9A625979933";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv0AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "59629A83-4B3A-25BC-64C8-CE885ABFC051";
createNode locator -n "LeftEyeLidOutDownCrv0AimPosShape" -p "LeftEyeLidOutDownCrv0AimPos";
	rename -uid "B456EF94-4732-26CD-88DD-448DA82DABA1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv1AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "80090AFE-468D-1472-87D6-26A5409C2193";
createNode locator -n "LeftEyeLidOutDownCrv1AimPosShape" -p "LeftEyeLidOutDownCrv1AimPos";
	rename -uid "1AEDDC00-4457-7716-4CEC-5CB90B574307";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv2AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "6F69F965-449E-8280-2753-778ABC1C9108";
createNode locator -n "LeftEyeLidOutDownCrv2AimPosShape" -p "LeftEyeLidOutDownCrv2AimPos";
	rename -uid "BE1A6712-4230-4A79-090A-3C8704076787";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "CFF09971-4AA5-54FB-16A3-9E841075966A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv0AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "830DC653-4685-8091-0B16-DF8F8EEBF3DC";
createNode locator -n "LeftEyeLidPinUpCrv0AimPosShape" -p "LeftEyeLidPinUpCrv0AimPos";
	rename -uid "E3410D62-4881-F2D9-0E65-E9A589EB46AA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv1AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "EAFBB20F-4C5E-E469-9B18-C0B754400FEC";
createNode locator -n "LeftEyeLidPinUpCrv1AimPosShape" -p "LeftEyeLidPinUpCrv1AimPos";
	rename -uid "BD35ABA7-4212-44A5-B180-318770C17EA2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv2AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "72961F17-4986-57F9-974A-02999E4A5918";
createNode locator -n "LeftEyeLidPinUpCrv2AimPosShape" -p "LeftEyeLidPinUpCrv2AimPos";
	rename -uid "784A5982-4A50-5697-0616-D28C18E3FDB6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv0AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "69FF1438-4DA3-E12A-8263-03951EF5C95A";
createNode locator -n "LeftEyeLidPinDownCrv0AimPosShape" -p "LeftEyeLidPinDownCrv0AimPos";
	rename -uid "F2302D03-49B6-C6A9-28DD-669B75FCF21E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv1AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "79BAA6B3-4043-55C5-191B-FBADA30793F7";
createNode locator -n "LeftEyeLidPinDownCrv1AimPosShape" -p "LeftEyeLidPinDownCrv1AimPos";
	rename -uid "D5BC4D11-4920-8DA4-319B-E78F0A049EC3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv2AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "43F5F786-4B7A-301E-A71D-8D910F1DA9BE";
createNode locator -n "LeftEyeLidPinDownCrv2AimPosShape" -p "LeftEyeLidPinDownCrv2AimPos";
	rename -uid "2E248CFD-468A-FABA-594C-4BBB9881D2F9";
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
	setAttr -k on ".mode";
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
	setAttr -s 4 ".iog[0].og";
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
createNode transform -n "LeftEyeLidLocGrpOffGrp" -p "LeftEyeLidRootPoser";
	rename -uid "9497EFD7-431A-FEFA-1BA3-DB992A640A17";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode transform -n "LeftEyeLidLocGrp" -p "LeftEyeLidLocGrpOffGrp";
	rename -uid "8835DE5F-4B6F-006F-E8F9-B1B6A872350B";
createNode transform -n "LeftEyeLidUpCenterGrp" -p "LeftEyeLidLocGrp";
	rename -uid "FA5C9186-4A0D-88B0-BF4F-33B0824E655D";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.7763568394005029e-15 7.105427357601005e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "LeftEyeLidUpPos" -p "LeftEyeLidUpCenterGrp";
	rename -uid "16CA5CAE-47AE-AB32-AA09-569951884F54";
	setAttr ".t" -type "double3" 1.9723026767337615e-08 2.0000000000000004 2.9999999387567695 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
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
	setAttr ".t" -type "double3" -2 0 2.2439515523497988e-14 ;
createNode locator -n "LeftEyeLidUpCvPos2Shape" -p "LeftEyeLidUpCvPos2";
	rename -uid "5A12298A-40B2-BC69-BCB2-D780D8478F3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos1" -p "LeftEyeLidUpLoc";
	rename -uid "1F51CA7F-4D91-C7AA-9388-30B962AFB03A";
	setAttr ".t" -type "double3" 2 0 1.1171619185290638e-15 ;
createNode locator -n "LeftEyeLidUpCvPos1Shape" -p "LeftEyeLidUpCvPos1";
	rename -uid "53826005-4629-F704-E8BA-288734D64846";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCenterGrp" -p "LeftEyeLidLocGrp";
	rename -uid "6EA1FE88-4797-1D98-4C58-01B8FDA3A1A7";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.7763568394005029e-15 7.105427357601005e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "LeftEyeLidDownPos" -p "LeftEyeLidDownCenterGrp";
	rename -uid "764F4A18-47F9-50FA-B5D2-BBB9A3979ACB";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.9999999999999969 2.9999999909604322 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
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
	setAttr ".t" -type "double3" -2 0 -1.017588791007995e-14 ;
createNode locator -n "LeftEyeLidDownCvPos2Shape" -p "LeftEyeLidDownCvPos2";
	rename -uid "B1D8A2BB-42B8-DD17-50FA-00856D99F7F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos1" -p "LeftEyeLidDownLoc";
	rename -uid "15BC720D-4563-B4F3-413F-DCBC46A460EF";
	setAttr ".t" -type "double3" 2 0 -7.5911499308745078e-15 ;
createNode locator -n "LeftEyeLidDownCvPos1Shape" -p "LeftEyeLidDownCvPos1";
	rename -uid "5F2DB2F0-4393-EF6A-67EF-A6B889DBF4EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidInPos" -p "LeftEyeLidLocGrp";
	rename -uid "E5BFDCEA-4347-DC93-51C2-8D895C178248";
	setAttr ".t" -type "double3" -2 5.5996873804531333e-15 3.0000000000000027 ;
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
createNode transform -n "LeftEyeLidOutPos" -p "LeftEyeLidLocGrp";
	rename -uid "8BAB1D5C-41C3-1E5C-D2E3-C59F226C612C";
	setAttr ".t" -type "double3" 2 -1.2576745200831851e-16 2.9999999999999893 ;
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
createNode transform -n "LeftEyeLidOutUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "C0A8C3FA-4E68-333A-19F6-B183F45A61A7";
createNode transform -n "LeftEyeLidOutUp1LocGrp" -p "LeftEyeLidOutUp1LocOffGrp";
	rename -uid "C2248B0B-4D2F-3FDB-DF35-C8B8A4AEDDBD";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidOutUp1ZGrp" -p "LeftEyeLidOutUp1LocGrp";
	rename -uid "5FF1A0D0-44A3-CF3D-594E-EE8BD6F560D6";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftEyeLidOutUp1Pos" -p "LeftEyeLidOutUp1ZGrp";
	rename -uid "253802F2-4109-873C-6DF3-0E98621B2B88";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -4.4408920985006262e-16 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp1PosShape" -p "LeftEyeLidOutUp1Pos";
	rename -uid "BF1ECFE4-43DB-2FD0-9F71-BD90246525E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "00FB7B8B-45D8-5D08-4948-FD92D8A709CF";
createNode transform -n "LeftEyeLidOutUp2LocGrp" -p "LeftEyeLidOutUp2LocOffGrp";
	rename -uid "9D198110-46D9-3CF3-F1B2-5DA23B4E8F12";
createNode transform -n "LeftEyeLidOutUp2ZGrp" -p "LeftEyeLidOutUp2LocGrp";
	rename -uid "7D3438FF-4BF6-0CD8-9824-719F61F605EE";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode transform -n "LeftEyeLidOutUp2Pos" -p "LeftEyeLidOutUp2ZGrp";
	rename -uid "878B103E-4AEC-165D-E38E-09B0804929A1";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp2PosShape" -p "LeftEyeLidOutUp2Pos";
	rename -uid "3BA3C57D-4821-932C-952E-D3AFE6B252B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1" -p "LeftEyeLidOutUp2Pos";
	rename -uid "4439A05E-4591-EDAD-3D8D-1B863ACD4702";
	setAttr ".t" -type "double3" -1.4999999999999996 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1Shape" -p "LeftEyeLidOutUp2CvPos1";
	rename -uid "FDBA798A-49F6-C603-1CEF-A78C3EC9D631";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2" -p "LeftEyeLidOutUp2Pos";
	rename -uid "20E7BA6A-4F81-9AAE-46C6-68AAF8714BBF";
	setAttr ".t" -type "double3" 1.5000000000000009 0 4.4408920985006262e-16 ;
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
createNode transform -n "LeftEyeLidOutUp3ZGrp" -p "LeftEyeLidOutUp3LocGrp";
	rename -uid "3718A0C3-49EF-AD75-D4CB-059976B756F2";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 4.4408920985006262e-16 0 ;
createNode transform -n "LeftEyeLidOutUp3Pos" -p "LeftEyeLidOutUp3ZGrp";
	rename -uid "4738B418-45EF-AA6A-1058-7A84D455CD6B";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp3PosShape" -p "LeftEyeLidOutUp3Pos";
	rename -uid "7D642AA7-4DDD-C08E-E1CC-609AC1BE8708";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "D9C9F823-44BC-43F2-8677-E7952BFDDD00";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown1LocGrp" -p "LeftEyeLidOutDown1LocOffGrp";
	rename -uid "CE0BDB6A-4578-1160-836A-DBB2CCABA94F";
createNode transform -n "LeftEyeLidOutDown1ZGrp" -p "LeftEyeLidOutDown1LocGrp";
	rename -uid "191F5B4C-4D9F-B687-E765-EBA8724A792B";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftEyeLidOutDown1Pos" -p "LeftEyeLidOutDown1ZGrp";
	rename -uid "0B62871F-4D8D-283A-3BD4-72A060B3B663";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown1PosShape" -p "LeftEyeLidOutDown1Pos";
	rename -uid "56840691-4723-E95E-1796-9A808C257550";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "A6DB04EB-4CD4-87FD-CE1A-6A94ABE5F1B0";
createNode transform -n "LeftEyeLidOutDown2LocGrp" -p "LeftEyeLidOutDown2LocOffGrp";
	rename -uid "58CC4D2B-45FA-D9E5-9664-849E19411BF7";
createNode transform -n "LeftEyeLidOutDown2ZGrp" -p "LeftEyeLidOutDown2LocGrp";
	rename -uid "410D68C4-467F-7D57-879D-F594962C7127";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode transform -n "LeftEyeLidOutDown2Pos" -p "LeftEyeLidOutDown2ZGrp";
	rename -uid "B3D5A8F9-41FA-FACE-7CDD-4BA446D9948C";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown2PosShape" -p "LeftEyeLidOutDown2Pos";
	rename -uid "63A83822-4F15-DA59-AC1B-3E96E1AB82A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1" -p "LeftEyeLidOutDown2Pos";
	rename -uid "2F485343-4F73-951F-4924-E9BB3C22FB69";
	setAttr ".t" -type "double3" -1.5 4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1Shape" -p "LeftEyeLidOutDown2CvPos1";
	rename -uid "E284E191-488F-F312-AC18-EBA98AEF132D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2" -p "LeftEyeLidOutDown2Pos";
	rename -uid "6B43AF9E-43D4-E457-6A8B-F6BD9D8882AE";
	setAttr ".t" -type "double3" 1.5 8.8817841970012523e-16 4.4408920985006262e-16 ;
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
createNode transform -n "LeftEyeLidOutDown3ZGrp" -p "LeftEyeLidOutDown3LocGrp";
	rename -uid "A8DD9EBF-4C98-A232-FC41-0F843A85E76D";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftEyeLidOutDown3Pos" -p "LeftEyeLidOutDown3ZGrp";
	rename -uid "A41A4072-4256-A8B5-B9AF-FABAC522A982";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 6.6613381477509392e-16 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown3PosShape" -p "LeftEyeLidOutDown3Pos";
	rename -uid "2D880240-4044-0676-AEB3-9293FA107801";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "D7D4CBB3-4A87-883B-753E-BA8F93CB1A69";
	setAttr ".t" -type "double3" -2.5 2 2.9999999999999947 ;
createNode transform -n "LeftEyeLidPinUp1LocGrp" -p "LeftEyeLidPinUp1LocOffGrp";
	rename -uid "CDC9B92A-4B91-E622-E3A6-D08247123224";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidPinUp1Pos" -p "LeftEyeLidPinUp1LocGrp";
	rename -uid "19A6642A-4808-DE2E-D4FF-3EB9D7D97AD8";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidPinUp1PosShape" -p "LeftEyeLidPinUp1Pos";
	rename -uid "756098DB-4B9A-E85B-71AE-048337DA5770";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "0E9A1375-40A9-6531-94E7-0484A1E3A964";
	setAttr ".t" -type "double3" -2.9309887850104131e-15 3 3 ;
createNode transform -n "LeftEyeLidPinUp2LocGrp" -p "LeftEyeLidPinUp2LocOffGrp";
	rename -uid "8DC1410F-4D9B-6EC6-24CF-14B131E78777";
createNode transform -n "LeftEyeLidPinUp2Pos" -p "LeftEyeLidPinUp2LocGrp";
	rename -uid "A9E5214C-4651-9B8F-685F-149464B1EA95";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -7.4446255129772491e-24 0 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidPinUp2PosShape" -p "LeftEyeLidPinUp2Pos";
	rename -uid "5CCF0F22-4149-F622-63F9-BA9A09E23253";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinUp2CvPos1" -p "LeftEyeLidPinUp2Pos";
	rename -uid "929ABEB7-45C5-CD9B-70BE-E283777F4D91";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidPinUp2CvPos1Shape" -p "LeftEyeLidPinUp2CvPos1";
	rename -uid "97A20C5C-4D68-744A-4040-A6BD0914F727";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUp2CvPos2" -p "LeftEyeLidPinUp2Pos";
	rename -uid "6EC6B89B-4C90-4675-6E61-6D9DDEDF61BA";
	setAttr ".t" -type "double3" 1.5 4.4408920985006262e-16 4.4408920985006262e-16 ;
createNode locator -n "LeftEyeLidPinUp2CvPos2Shape" -p "LeftEyeLidPinUp2CvPos2";
	rename -uid "B869D622-4BA7-8653-F5C0-AE8333D2A9CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUp3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "6EE8E156-4690-8A36-2AC9-9A9FED898AFF";
	setAttr ".t" -type "double3" 2.5 2 3.0000000000000018 ;
createNode transform -n "LeftEyeLidPinUp3LocGrp" -p "LeftEyeLidPinUp3LocOffGrp";
	rename -uid "995AB082-499F-F2A2-C86E-E0A1627D32F4";
createNode transform -n "LeftEyeLidPinUp3Pos" -p "LeftEyeLidPinUp3LocGrp";
	rename -uid "EDA1CE11-46B4-9565-FE8C-CBA62F9867F6";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidPinUp3PosShape" -p "LeftEyeLidPinUp3Pos";
	rename -uid "535F3198-4E00-338F-F171-CCB28981622E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "D59B0D81-49DA-5206-E80C-9A8E91972B53";
	setAttr ".t" -type "double3" -2.5 -2 3.0000000000000027 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidPinDown1LocGrp" -p "LeftEyeLidPinDown1LocOffGrp";
	rename -uid "35E92CA4-44DE-31BC-DB21-049342049551";
createNode transform -n "LeftEyeLidPinDown1Pos" -p "LeftEyeLidPinDown1LocGrp";
	rename -uid "53B9445A-420D-6262-D772-7788EFF510D4";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidPinDown1PosShape" -p "LeftEyeLidPinDown1Pos";
	rename -uid "09204E7C-45D7-53AC-BB77-02BC06B3FFA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "8DFAA5AD-4CF3-064E-4C5A-988775B0E26C";
	setAttr ".t" -type "double3" 5.7731597280508132e-16 -3 3.0000000000000013 ;
createNode transform -n "LeftEyeLidPinDown2LocGrp" -p "LeftEyeLidPinDown2LocOffGrp";
	rename -uid "F000175E-4AD5-670E-5EC3-6790DE2DAF7C";
createNode transform -n "LeftEyeLidPinDown2Pos" -p "LeftEyeLidPinDown2LocGrp";
	rename -uid "41671E11-4731-84B6-FE28-33BA121395E1";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidPinDown2PosShape" -p "LeftEyeLidPinDown2Pos";
	rename -uid "D608A7AC-44AD-39C5-C717-E789359374B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinDown2CvPos1" -p "LeftEyeLidPinDown2Pos";
	rename -uid "2ADEA5B7-47B4-C1B8-CDDA-16889FAFEFE7";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidPinDown2CvPos1Shape" -p "LeftEyeLidPinDown2CvPos1";
	rename -uid "88AC039B-48E8-DC0D-8316-F9887158422F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDown2CvPos2" -p "LeftEyeLidPinDown2Pos";
	rename -uid "72B42021-4242-F819-F496-2EA63153F220";
	setAttr ".t" -type "double3" 1.5 4.4408920985006262e-16 4.4408920985006262e-16 ;
createNode locator -n "LeftEyeLidPinDown2CvPos2Shape" -p "LeftEyeLidPinDown2CvPos2";
	rename -uid "C76F4636-4E7E-3070-DABE-6FAB1CBFAB55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDown3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "051FAE18-4991-1708-A5E2-77A376FBF30E";
	setAttr ".t" -type "double3" 2.5 -2 3.0000000000000013 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftEyeLidPinDown3LocGrp" -p "LeftEyeLidPinDown3LocOffGrp";
	rename -uid "B5305934-495C-4934-75DF-FEBBB71A4EA1";
createNode transform -n "LeftEyeLidPinDown3Pos" -p "LeftEyeLidPinDown3LocGrp";
	rename -uid "C9A782CF-48A1-068A-D092-99B6A5DC0095";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidPinDown3PosShape" -p "LeftEyeLidPinDown3Pos";
	rename -uid "DA8BBB33-4249-A52F-C11B-59B46E6F7F92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeCorneaCtrlGrp" -p "LeftEyeLidRootPoser";
	rename -uid "21A2C7BA-41BF-305E-DC75-1D958E9E85FF";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.0724754417879002e-12 2.9876376390457162 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeCorneaCtrl" -p "LeftEyeCorneaCtrlGrp";
	rename -uid "5441C10C-45CA-E116-1E9C-3CB68FBEE10F";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -4.0389678347315804e-28 0 ;
createNode nurbsCurve -n "LeftEyeCorneaCtrlShape" -p "LeftEyeCorneaCtrl";
	rename -uid "5005BD8C-457D-DA23-0146-C7855624B491";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 -0.49999999999999994 8.3266726846886741e-17
		0.1913415 -0.46194000000000007 4.163336342344337e-17
		0.35355349999999997 -0.35355349999999997 -1.3877787807814455e-17
		0.46194000000000002 -0.19134149999999997 0
		0.49999999999999994 0 0
		0.46194000000000002 0.19134149999999997 0
		0.35355349999999997 0.35355349999999997 1.3877787807814455e-17
		0.1913415 0.46194000000000007 -4.163336342344337e-17
		0 0.49999999999999994 -8.3266726846886741e-17
		-0.1913415 0.46194000000000007 -4.163336342344337e-17
		-0.35355349999999997 0.35355349999999997 1.3877787807814455e-17
		-0.46194000000000002 0.19134149999999997 0
		-0.49999999999999994 0 0
		-0.46194000000000002 -0.19134149999999997 0
		-0.35355349999999997 -0.35355349999999997 -1.3877787807814455e-17
		-0.1913415 -0.46194000000000007 4.163336342344337e-17
		0 -0.49999999999999994 8.3266726846886741e-17
		;
createNode transform -n "LeftEyeLidCtrlPosCrv" -p "LeftEyeLidRootPoser";
	rename -uid "6CB015C2-4F1A-40AF-9507-488C1D976D58";
	setAttr ".t" -type "double3" 0 1.2079226507921701e-13 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShape" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "63C275B7-43DF-9449-6CC7-1DBE2E67FB0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.2000000166764013 1.7763568394002505e-15 4.2987835513486061e-13
		-1.2000000166764018 0.60000000000000853 3.907985046680551e-13
		-0.60000001667640124 1.1999999999999993 2.0605739337042905e-13
		-1.6676399816617504e-08 1.1999999999999993 -3.1974423109204508e-14
		0.59999998332359894 1.1999999999999993 -2.2382096176443156e-13
		1.199999983323599 0.60000000000000497 -3.730349362740526e-13
		1.199999983323599 0 -4.1922021409845911e-13
		1.199999983323599 -0.60000000000000497 -3.765876499528531e-13
		0.59999998332359894 -1.1999999999999993 -1.4210854715202004e-13
		-1.6676399816617504e-08 -1.1999999999999993 1.3855583347321954e-13
		-0.60000001667640124 -1.1999999999999993 3.2684965844964609e-13
		-1.2000000166764018 -0.59999999999999964 4.1566750041965861e-13
		;
createNode transform -n "LeftEyeCorneaClsGrp" -p "LeftEyeLidSysGrp";
	rename -uid "5FE95601-4D89-8204-C96E-1487D8FD9164";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeCorneaCls" -p "LeftEyeCorneaClsGrp";
	rename -uid "1CA939BB-4736-3C87-3116-D5A5AD945104";
	setAttr ".rp" -type "double3" 3.0000000277940009 9.5168317670868419e-13 2.9876376390457127 ;
	setAttr ".sp" -type "double3" 3.0000000277940009 9.5168317670868419e-13 2.9876376390457127 ;
createNode clusterHandle -n "LeftEyeCorneaClsShape" -p "LeftEyeCorneaCls";
	rename -uid "5674F231-405E-CA89-D91A-34B2A77F7679";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3.0000000277940009 9.5168317670868419e-13 2.9876376390457127 ;
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
		-0.99999997220582948 -4.7246233709312228e-13 3.000000000000044
		-0.99999997220582948 -4.7246233709312228e-13 3.000000000000044
		-0.9999999919295699 1.9999999999995219 2.9999999387568441
		-2.9999999919295699 1.9999999999988074 2.9999999387569343
		-4.9999999919295703 1.9999999999980929 2.999999938757048
		-4.9999999722058295 -1.9072668692230853e-12 3.0000000000002558
		-4.9999999722058295 -1.9072668692230853e-12 3.0000000000002558
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
		-0.99999997220582948 -4.7246233709312228e-13 3.000000000000044
		-0.99999997220582948 -4.7246233709312228e-13 3.000000000000044
		-0.99999997220511538 -2.0000000000004747 2.9999999909604744
		-2.9999999722051154 -2.0000000000011893 2.999999990960597
		-4.9999999722051154 -2.0000000000019038 2.9999999909607018
		-4.9999999722058295 -1.9072668692230853e-12 3.0000000000002558
		-4.9999999722058295 -1.9072668692230853e-12 3.0000000000002558
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
		-1.3358895833785704 -1.0750170397546822e-12 2.4961416107771055
		-1.3962410631967361 0.43189504968815862 2.4982258387910186
		-1.8367316323021168 1.2243757327266294 2.4794516314261967
		-2.9999999722070463 1.6641104123444654 2.4961415950983183
		-4.1632683326141224 1.2243757289210566 2.4794516236892541
		-4.6037588872977677 0.43189504903013165 2.4982258349993058
		-4.6641103680730147 -3.4545679832808049e-12 2.4961416060842705
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
		-1.3358895833785704 -1.0750170397546822e-12 2.4961416107771055
		-1.3962410651732913 -0.43189504801286882 2.4982258403500719
		-1.8367316322883547 -1.2243757200453469 2.479451637685433
		-2.9999999722046677 -1.6641103993408888 2.4961416037699751
		-4.1632683121216125 -1.2243757200470105 2.4794516376855635
		-4.6037588792378044 -0.43189504801516526 2.4982258403502495
		-4.6641103680730147 -3.4545679832808049e-12 2.4961416060842705
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
		-0.74999997220627634 1.249999999999611 3.0000000000000266
		-0.74999997220627634 1.249999999999611 3.0000000000000266
		-1.499999972206723 2.4999999999993423 3.0000000000000702
		-2.9999999722067225 2.4999999999988067 3.0000000000001545
		-4.499999972206723 2.4999999999982707 3.0000000000002394
		-5.2499999722062736 1.2499999999980038 3.0000000000002864
		-5.2499999722062736 1.2499999999980038 3.0000000000002864
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
		-0.74999997220538284 -1.2500000000003879 3.0000000000000249
		-0.74999997220538284 -1.2500000000003879 3.0000000000000249
		-1.4999999722049349 -2.5000000000006546 3.0000000000000817
		-2.9999999722049346 -2.500000000001191 3.0000000000001661
		-4.4999999722049342 -2.5000000000017262 3.0000000000002509
		-5.2499999722053854 -1.2500000000019946 3.0000000000002913
		-5.2499999722053854 -1.2500000000019946 3.0000000000002913
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
		-1.2923202815723074 0.94846663265699227 2.2768129413440659
		-1.7082827230650406 1.4349412763307594 2.2961442027124606
		-2.9999999722072381 1.9205435241941735 2.3046656255321789
		-4.2917172213487476 1.4349412763289127 2.2961442027126044
		-4.7076796628407802 0.94846663265455022 2.276812941344263
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
		-1.2923202815709522 -0.94846663265907882 2.2768129413440668
		-1.7082827230685764 -1.4349412763445091 2.2961442027094074
		-2.9999999722044932 -1.9205435307647818 2.3046656210616003
		-4.2917172213411101 -1.4349412763463574 2.2961442027095504
		-4.7076796628394249 -0.94846663266151521 2.2768129413442639
		;
createNode transform -n "RightEyeLidPinUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "889D0045-44A9-DAA7-497E-1089AA5AA0F3";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidPinUpCrvShape" -p "RightEyeLidPinUpCrv";
	rename -uid "FA54AD33-41B9-A909-AFED-58A3D199E1EC";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.49999997220654357 1.9999999999997005 3.0000000000000129
		-0.49999997220654357 1.9999999999997005 3.0000000000000129
		-1.4999999722069011 2.9999999999993432 3.0000000000000675
		-2.9999999722069011 2.9999999999988072 3.0000000000001519
		-4.4999999722069006 2.9999999999982716 3.0000000000002367
		-5.4999999722065436 1.9999999999979141 3.0000000000002998
		-5.4999999722065436 1.9999999999979141 3.0000000000002998
		;
createNode transform -n "RightEyeLidPinDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "508AEC33-4DE3-6FFF-DCFC-32B6892CD97E";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidPinDownCrvShape" -p "RightEyeLidPinDownCrv";
	rename -uid "FD6DFA08-4E8B-68DB-143D-49B8E9B8B9C2";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.49999997220511494 -2.0000000000002989 3.0000000000000089
		-0.49999997220511494 -2.0000000000002989 3.0000000000000089
		-1.4999999722047566 -3.0000000000006559 3.0000000000000808
		-2.9999999722047566 -3.0000000000011919 3.0000000000001652
		-4.4999999722047566 -3.0000000000017275 3.00000000000025
		-5.4999999722051154 -2.0000000000020854 3.0000000000003038
		-5.4999999722051154 -2.0000000000020854 3.0000000000003038
		;
createNode transform -n "RightEyeLidPinUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "993C26D9-4887-9B39-834B-1FA56D8EE289";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidPinUpJntCrvShape" -p "RightEyeLidPinUpJntCrv";
	rename -uid "1B8A2CC6-470C-BD60-7AF8-F5924BDD8BE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.2908685799725377 1.3677172195801788 2.0512934770852382
		-1.7369446035490304 1.7418701881969811 2.0904605496689168
		-2.9999999722073936 2.1213208347866503 2.1213197863444
		-4.2630553251229681 1.7418701970484451 2.0904605517993335
		-4.7091313644411761 1.3677172195777321 2.0512934770854372
		;
createNode transform -n "RightEyeLidPinDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "BD1BFDC9-4A49-D4B2-A59A-7DB2F6FC3E8E";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidPinDownJntCrvShape" -p "RightEyeLidPinDownJntCrv";
	rename -uid "2D97AC68-4698-C76D-B558-56A4A39BE164";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.2908685799705828 -1.3677172195822627 2.0512934770852391
		-1.7369446200902117 -1.7418701986220555 2.0904605512556813
		-2.9999999722043618 -2.121320876398066 2.1213197579831102
		-4.2630553243190557 -1.7418701986238585 2.0904605512558265
		-4.7091313644392265 -1.3677172195847043 2.0512934770854336
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
createNode transform -n "RightEyeLidOutUpCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "8D8C302C-4C04-1DB1-6AD1-C39063645012";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "RightEyeLidOutUpCrv0Pos" -p "RightEyeLidOutUpCrv0PosSurfPos";
	rename -uid "16D5A946-40D9-D679-01B0-77ACFE4153B1";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode locator -n "RightEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv0PosSurfPos|RightEyeLidOutUpCrv0Pos";
	rename -uid "13C4CD02-4AA9-9496-063B-E590C1E14036";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "97FA495D-43CF-EBEB-7F8F-C3962F7E4ADB";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUpCrv1Pos" -p "RightEyeLidOutUpCrv1PosSurfPos";
	rename -uid "206479D0-4B74-EB07-38C9-9587875D2E07";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 2.2204460492503131e-16 0 ;
createNode locator -n "RightEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv1PosSurfPos|RightEyeLidOutUpCrv1Pos";
	rename -uid "B0FD0883-49C2-79B0-B68A-E0894EE6D214";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A9B5F9D2-4BB3-60F5-AD84-97A5C2EA85B0";
createNode transform -n "RightEyeLidOutUpCrv2Pos" -p "RightEyeLidOutUpCrv2PosSurfPos";
	rename -uid "23B102EF-43C3-52FB-81A4-E8AF2AC4A86D";
	setAttr ".t" -type "double3" 0 5.6446275605026575e-17 0 ;
createNode locator -n "RightEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv2PosSurfPos|RightEyeLidOutUpCrv2Pos";
	rename -uid "E6B8025F-4BC3-6B2E-4013-F6AF8E66C10D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "21C7DE0D-4A34-6B25-F0C0-0B8083A09055";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutUpCrv3Pos" -p "RightEyeLidOutUpCrv3PosSurfPos";
	rename -uid "B4AD832B-4531-2D31-FA10-6E84AD0949C1";
	setAttr ".t" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv3PosSurfPos|RightEyeLidOutUpCrv3Pos";
	rename -uid "D3DC8B5B-49BD-D0CA-16AB-7ABD365A1C43";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "C997E772-44AD-A44A-EBE8-0D9DE4285344";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightEyeLidOutUpCrv4Pos" -p "RightEyeLidOutUpCrv4PosSurfPos";
	rename -uid "503F3302-494D-3254-2601-AC8FFA1FF968";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv4PosSurfPos|RightEyeLidOutUpCrv4Pos";
	rename -uid "447BB25A-4D5F-EDEA-E120-0AB98C527CA4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "B0433559-4637-45EE-085E-97AFE6D5DE2A";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDownCrv0Pos" -p "RightEyeLidOutDownCrv0PosSurfPos";
	rename -uid "C94CF3DE-47DB-55FD-8119-B5986970CDE9";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv0PosSurfPos|RightEyeLidOutDownCrv0Pos";
	rename -uid "F1B4950E-4B95-6EBA-60D9-8896829CD9C0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F34DD811-404A-0F8A-68A2-C0B803520ECF";
createNode transform -n "RightEyeLidOutDownCrv1Pos" -p "RightEyeLidOutDownCrv1PosSurfPos";
	rename -uid "8186EC02-40E4-BCB9-5C96-7F809F059D53";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv1PosSurfPos|RightEyeLidOutDownCrv1Pos";
	rename -uid "60CE3C59-4523-B993-90B8-83877FCD0D31";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "D5C71068-4B5A-96F8-04F7-58A502E763B7";
createNode transform -n "RightEyeLidOutDownCrv2Pos" -p "RightEyeLidOutDownCrv2PosSurfPos";
	rename -uid "BC3AF0C6-4982-0FCE-2F7A-F79AE5A3CB3A";
	setAttr ".t" -type "double3" 0 -1.7354011023346105e-17 0 ;
createNode locator -n "RightEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv2PosSurfPos|RightEyeLidOutDownCrv2Pos";
	rename -uid "AC80EF1E-46E3-0976-EE6B-53829AB05077";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "061E348C-4BFA-B006-B4A4-93A498BE9849";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDownCrv3Pos" -p "RightEyeLidOutDownCrv3PosSurfPos";
	rename -uid "B6ABB10A-4AA9-E273-CAE8-E9A238DF1796";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv3PosSurfPos|RightEyeLidOutDownCrv3Pos";
	rename -uid "6AE07144-4994-6C9C-826D-608FD4E53897";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "6B70D0AF-40A9-9C3C-FDA2-B6A50988C283";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDownCrv4Pos" -p "RightEyeLidOutDownCrv4PosSurfPos";
	rename -uid "FD2D6C07-4B94-C9F4-ED2C-27A37017C450";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv4PosSurfPos|RightEyeLidOutDownCrv4Pos";
	rename -uid "4EF4D93D-49C0-41B8-8BDD-E5885E640969";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "98B6AFFF-467F-3643-5DAD-D688546A7E2E";
createNode transform -n "RightEyeLidPinUpCrv0Pos" -p "RightEyeLidPinUpCrv0PosSurfPos";
	rename -uid "21D103C8-44CF-9365-D5B2-0292EA868416";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "RightEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv0PosSurfPos|RightEyeLidPinUpCrv0Pos";
	rename -uid "ACC7A097-4F61-40C6-19B0-DF996D219D60";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "933129AD-43B6-0081-9AF1-B1A524C0FAF5";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidPinUpCrv1Pos" -p "RightEyeLidPinUpCrv1PosSurfPos";
	rename -uid "BBB30930-44C4-88D3-A836-5792162F4399";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode locator -n "RightEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv1PosSurfPos|RightEyeLidPinUpCrv1Pos";
	rename -uid "F959BF66-4D0F-D276-D3FF-CF8BF81A4B28";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A5AE22F3-43B4-516A-525A-CBB773983EE1";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidPinUpCrv2Pos" -p "RightEyeLidPinUpCrv2PosSurfPos";
	rename -uid "67655F1D-4126-0A0F-6895-3FAE9D18B513";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.8883329009613745e-17 0 ;
createNode locator -n "RightEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv2PosSurfPos|RightEyeLidPinUpCrv2Pos";
	rename -uid "0FFE22C7-4763-0704-DFF9-C98B4EA28EAB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "147C192D-4FBE-52F9-76A8-D0A37C0449F7";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidPinUpCrv3Pos" -p "RightEyeLidPinUpCrv3PosSurfPos";
	rename -uid "483C28F4-4FE7-3C0A-C031-F1B16DDECE7F";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv3PosSurfPos|RightEyeLidPinUpCrv3Pos";
	rename -uid "64909486-4E1B-19FE-2B51-FEB932BE6547";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "E3D50483-4AA8-0E81-A167-D9BC3B731904";
createNode transform -n "RightEyeLidPinUpCrv4Pos" -p "RightEyeLidPinUpCrv4PosSurfPos";
	rename -uid "8A7794C4-437B-8087-6FE0-918C2B2EA70F";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
createNode locator -n "RightEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv4PosSurfPos|RightEyeLidPinUpCrv4Pos";
	rename -uid "AFA872BF-40FD-064C-F2BC-BEB498661306";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "3085C6DE-4317-0658-C973-E9ADB476ED4D";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidPinDownCrv0Pos" -p "RightEyeLidPinDownCrv0PosSurfPos";
	rename -uid "0F2C3A6E-4C73-A947-2298-3CBD7451CA24";
	setAttr ".t" -type "double3" 0 6.6613381477509392e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv0PosSurfPos|RightEyeLidPinDownCrv0Pos";
	rename -uid "4A53BA61-4B83-CFA4-83A6-28B048FEC5AB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "5BFB179D-40E4-7574-4E4D-F9ABFBC62D38";
createNode transform -n "RightEyeLidPinDownCrv1Pos" -p "RightEyeLidPinDownCrv1PosSurfPos";
	rename -uid "3D83CC0F-4F73-4147-E774-438C98220625";
	setAttr ".t" -type "double3" 0 0 -2.2204460492503131e-16 ;
createNode locator -n "RightEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv1PosSurfPos|RightEyeLidPinDownCrv1Pos";
	rename -uid "8F11DF26-40CF-1C6A-3FCB-06949F2C917A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "35C6C851-4F3B-3F5B-A1B8-698D317BE398";
createNode transform -n "RightEyeLidPinDownCrv2Pos" -p "RightEyeLidPinDownCrv2PosSurfPos";
	rename -uid "CB4228A9-4A2D-3612-D1A0-298148651967";
	setAttr ".t" -type "double3" 0 -1.0337147736644119e-16 0 ;
createNode locator -n "RightEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv2PosSurfPos|RightEyeLidPinDownCrv2Pos";
	rename -uid "7F520981-4A25-A8AB-0CBA-6193AAE1B7E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "FDD6F056-4697-CBBB-F7AB-06AD09B36E48";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "RightEyeLidPinDownCrv3Pos" -p "RightEyeLidPinDownCrv3PosSurfPos";
	rename -uid "CF07A8B1-4443-4AF4-72E2-3F99C9B85C9D";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv3PosSurfPos|RightEyeLidPinDownCrv3Pos";
	rename -uid "0E7B44D7-49E2-DEAC-7971-A5AC14D1F2F6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "B873E3BB-410D-3996-3BB0-86B7DF64941C";
createNode transform -n "RightEyeLidPinDownCrv4Pos" -p "RightEyeLidPinDownCrv4PosSurfPos";
	rename -uid "097F5044-4F54-709E-9FCE-A0B1CA473F4D";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 -2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "RightEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv4PosSurfPos|RightEyeLidPinDownCrv4Pos";
	rename -uid "2B547332-4747-DCCF-FA0C-24A940BF9316";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCrvPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "B34768C3-4B8B-0DDF-6253-5287F5F59974";
	setAttr ".v" no;
createNode transform -n "RightEyeLidCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "F6FEFEB0-4DA0-7DF5-F941-94A8A0406A4A";
createNode transform -n "RightEyeLidUpCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidUpCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidUpCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidUpCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidUpCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidUpCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidUpCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidDownCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
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
createNode transform -n "RightEyeLidOutCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "41F69470-4E69-1BD6-9DD5-C7A9C4DE0694";
createNode transform -n "RightEyeLidOutUpCrv0Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "DADDA922-49D4-4DD9-7884-C18591C5D0E5";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv0Pos";
	rename -uid "1411ED6D-4327-5C86-C89E-3A8CBFBDA659";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv1Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "77915C2C-442F-BFB0-CDB4-82BF7C2EA7E1";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv1Pos";
	rename -uid "327F93CF-401D-E58A-7D42-F0895DD82D84";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv2Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "FBF7C83F-4188-579E-6C1A-599EA6DF7536";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv2Pos";
	rename -uid "9243D539-4274-E3C8-49DB-9C8D19C345FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv3Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "DB2E9081-4495-BAB7-8F39-65BD28343288";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv3Pos";
	rename -uid "690472BA-4CC8-5CF5-FB48-0BBF233E180F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv4Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "69D821D8-4A0F-CE13-DF29-369DAB0A4B11";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv4Pos";
	rename -uid "F9BBA9AF-47BA-A994-2B40-6E8AA26216B7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv0Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "A188F5DE-48CC-F992-C1A1-248549E5EA00";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv0Pos";
	rename -uid "AA5B37BF-4409-655C-79DC-269EF5A099BD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv1Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "95B1EF09-4DCE-484F-34AC-438081CA4FDD";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv1Pos";
	rename -uid "C49E1A09-487D-CE37-184A-78861481DCA1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv2Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "EA9C45A2-4790-8777-EEC0-D2BBE9C2C21E";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv2Pos";
	rename -uid "CE772029-4840-F877-004F-14BEA91F9C77";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv3Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "AA705E7E-4C19-FC1B-5025-F6B4F232CAA9";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv3Pos";
	rename -uid "EA499B2F-44B7-F984-BDEF-2EA2BD0A4EBF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv4Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "D049B47F-45DE-6095-AB8F-EE9C712BAE9C";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv4Pos";
	rename -uid "F3C9C097-436C-1154-5510-63BCDAE98F60";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "8794E686-4831-1013-3FD2-FCB0B7F05097";
createNode transform -n "RightEyeLidPinUpCrv0Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "3E3EBDD7-458A-7A9C-2A9E-9F82A7E9D741";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv0Pos";
	rename -uid "DDA7F2DC-47AB-0DD9-B048-D88A8BE190E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv1Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "927852BD-4EF4-A0DB-F1CF-9BA108077A30";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv1Pos";
	rename -uid "3D96806B-44DF-058D-9921-51AEDECE013B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv2Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "F8DABB80-415D-C09A-7D17-C6948957CF99";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv2Pos";
	rename -uid "3CD31F18-43F4-2497-CDE0-6D8EC51CEE46";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv3Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "5F1F713D-4E69-C9EF-FF7B-6AA578118169";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv3Pos";
	rename -uid "7DF05055-4DC8-8867-4E89-1AA7E29B23B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv4Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "06F680FE-4145-162C-8C18-22AF726A9FCA";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv4Pos";
	rename -uid "C21754DC-4DA8-4607-43BC-DAB9D86282C4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv0Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "AAC4001A-4F8A-FFFC-AEE4-3F8E36D4F60E";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv0Pos";
	rename -uid "A36B0DEE-4065-32F6-7FC3-29B9F1FF22B0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv1Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "3E43A9E7-42DE-625D-6BE1-DEAD47953D49";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv1Pos";
	rename -uid "676E5194-484F-14F6-C064-0D8A64F722C9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv2Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "E9079C20-457D-F29F-2282-01A7936DE9B7";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv2Pos";
	rename -uid "1B480859-45DA-A5C8-7755-D3B0F695BE2D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv3Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "89332D6F-4256-FF0B-CA01-E3BBDFD3E334";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv3Pos";
	rename -uid "F9D644A1-48D2-4B9C-150C-838CDA1AAF5C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv4Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "7CBB86D8-4A01-91C8-8053-C19B23C15A01";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv4Pos";
	rename -uid "E707E45C-41A1-538D-9888-B48F3BF44017";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "E0A2AC97-4C69-D619-AD5D-C7AB18B0B17F";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUpCrv0AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "A5AAE5CE-4FEB-7907-8764-26883523C720";
createNode locator -n "RightEyeLidOutUpCrv0AimPosShape" -p "RightEyeLidOutUpCrv0AimPos";
	rename -uid "F5AC50F4-4447-5713-C12E-45892845B76D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv1AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "1791BD26-421B-46BA-2A12-E4A8F50C4AAD";
createNode locator -n "RightEyeLidOutUpCrv1AimPosShape" -p "RightEyeLidOutUpCrv1AimPos";
	rename -uid "12403B2A-46F4-B201-5781-1A9AD08AC1CD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv2AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "85DFC728-4EF5-EE56-C2B1-AE802CD7E920";
createNode locator -n "RightEyeLidOutUpCrv2AimPosShape" -p "RightEyeLidOutUpCrv2AimPos";
	rename -uid "E424FB51-4F53-06C2-8C69-FB993510AD89";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv0AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "8BA45F31-43C9-EDE3-A4DE-CB83DF410B0E";
createNode locator -n "RightEyeLidOutDownCrv0AimPosShape" -p "RightEyeLidOutDownCrv0AimPos";
	rename -uid "066D9B17-4263-3841-D835-5E927A264CBE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv1AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "37B2BB3C-4B6C-9B93-3C83-BA8E8F92334E";
createNode locator -n "RightEyeLidOutDownCrv1AimPosShape" -p "RightEyeLidOutDownCrv1AimPos";
	rename -uid "92B6397C-467E-94FF-8573-BE8CF7739457";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv2AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "C666AB8A-4716-8E2A-EA1B-F1907C1E600E";
createNode locator -n "RightEyeLidOutDownCrv2AimPosShape" -p "RightEyeLidOutDownCrv2AimPos";
	rename -uid "1C36D1C3-4EA4-6EC0-5983-B79334AF1854";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "0BAAD316-4FF5-93E8-50A9-03BD4E39F350";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidPinUpCrv0AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "759C03BE-439F-BB29-3586-19A8808296FC";
createNode locator -n "RightEyeLidPinUpCrv0AimPosShape" -p "RightEyeLidPinUpCrv0AimPos";
	rename -uid "5487E4F4-4C7E-B622-46D9-4C9E2079AFAB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv1AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "10296565-441D-A3B7-73B7-21B4158E4581";
createNode locator -n "RightEyeLidPinUpCrv1AimPosShape" -p "RightEyeLidPinUpCrv1AimPos";
	rename -uid "93B0E400-467E-FD3E-2342-7CBADBB2053D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv2AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "6F8A65D4-4867-8726-F210-2C9CD35E71B3";
createNode locator -n "RightEyeLidPinUpCrv2AimPosShape" -p "RightEyeLidPinUpCrv2AimPos";
	rename -uid "0F907D7F-474E-ED80-8368-A48A81E0722E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv0AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "92C61AD6-4A14-065F-BDAB-81AF62C8CB90";
createNode locator -n "RightEyeLidPinDownCrv0AimPosShape" -p "RightEyeLidPinDownCrv0AimPos";
	rename -uid "0FB6284C-4C0B-8A98-C16C-B586CEE69016";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv1AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "E96BF1BA-46DA-4346-0BEC-57AB318CAEEF";
createNode locator -n "RightEyeLidPinDownCrv1AimPosShape" -p "RightEyeLidPinDownCrv1AimPos";
	rename -uid "D83CCDC5-48DA-D611-6E1E-7988F67B393D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv2AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "5A44BF8A-4CDB-A5BB-FB27-6B93EFE6F2BB";
createNode locator -n "RightEyeLidPinDownCrv2AimPosShape" -p "RightEyeLidPinDownCrv2AimPos";
	rename -uid "52CD6427-4A0D-EB6F-3C4F-51A4BDA71E0A";
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
	setAttr -s 4 ".iog[0].og";
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
createNode transform -n "RightEyeLidLocGrpOffGrp" -p "RightEyeLidRootPoser";
	rename -uid "ACD03EDB-489D-F09B-2701-6CBAE35D39D0";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightEyeLidLocGrp" -p "RightEyeLidLocGrpOffGrp";
	rename -uid "15F06CDF-4543-2379-EF04-8186A5273B4B";
createNode transform -n "RightEyeLidUpPosCenterGrp" -p "RightEyeLidLocGrp";
	rename -uid "3C765F7D-4D92-9879-9EF0-D5926F3A2649";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.0097419586828951e-28 1.0658141036401481e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidUpPos" -p "RightEyeLidUpPosCenterGrp";
	rename -uid "FF08003C-4AAC-7D81-C461-AEA8D69066FB";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
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
createNode transform -n "RightEyeLidDownCenterGrp" -p "RightEyeLidLocGrp";
	rename -uid "F94D72A6-48E6-E1A9-AA38-4696D4B11F24";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.0097419586828951e-28 1.0658141036401481e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidDownPos" -p "RightEyeLidDownCenterGrp";
	rename -uid "403DB618-4021-048A-66ED-4AAB997507DE";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
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
createNode transform -n "RightEyeLidOutUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "55092F31-495B-5C01-4BEB-C2B836184A84";
createNode transform -n "RightEyeLidOutUp1LocGrp" -p "RightEyeLidOutUp1LocOffGrp";
	rename -uid "ADEE98DF-40E0-E4ED-DF0E-1EA81D13441C";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp1ZGrp" -p "RightEyeLidOutUp1LocGrp";
	rename -uid "9D555C9D-4256-3CE4-01C4-B58411607099";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUp1Pos" -p "RightEyeLidOutUp1ZGrp";
	rename -uid "CCA450DB-4755-5A33-E876-A48E4485EAA1";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp1PosShape" -p "RightEyeLidOutUp1Pos";
	rename -uid "50EC922B-4F96-A7A4-5EB2-1795FAFEFBFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "3F723989-4CB0-369C-289B-01A6624084B0";
createNode transform -n "RightEyeLidOutUp2LocGrp" -p "RightEyeLidOutUp2LocOffGrp";
	rename -uid "A06F3F64-4020-80B9-C737-F2B8E178BD48";
createNode transform -n "RightEyeLidOutUp2ZGrp" -p "RightEyeLidOutUp2LocGrp";
	rename -uid "2BF31F7D-4516-47C0-1958-2DB221EA9CD9";
createNode transform -n "RightEyeLidOutUp2Pos" -p "RightEyeLidOutUp2ZGrp";
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
createNode transform -n "RightEyeLidOutUp2CvPos1" -p "RightEyeLidOutUp2Pos";
	rename -uid "95C9E774-4381-AFCF-A657-0D933FF4C991";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUp2CvPos1Shape" -p "RightEyeLidOutUp2CvPos1";
	rename -uid "14ED9641-411B-4CD6-B048-118C3BB85669";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos2" -p "RightEyeLidOutUp2Pos";
	rename -uid "E1D97B3F-4616-6C28-3112-D5917FC668EC";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
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
createNode transform -n "RightEyeLidOutUp3ZGrp" -p "RightEyeLidOutUp3LocGrp";
	rename -uid "EF0E17AC-4761-A2F8-48C9-B0B18F090B2A";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp3Pos" -p "RightEyeLidOutUp3ZGrp";
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
createNode transform -n "RightEyeLidOutDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "6CB305BC-4A70-4283-3B3F-4991DABFACCF";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocGrp" -p "RightEyeLidOutDown1LocOffGrp";
	rename -uid "7D77DB6B-403A-B2B4-34E0-65A30DE9B66D";
createNode transform -n "RightEyeLidOutDown1ZGrp" -p "RightEyeLidOutDown1LocGrp";
	rename -uid "2F2B885E-4BE2-415F-8CEE-A6BB888CD723";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown1Pos" -p "RightEyeLidOutDown1ZGrp";
	rename -uid "FE64BA19-43F9-F54A-F0DA-8A8E9A84B498";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown1PosShape" -p "RightEyeLidOutDown1Pos";
	rename -uid "B810ABE0-40A9-2A97-8616-28AAA0D2AD20";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "EAB1FE7A-48AD-F393-98B1-88B189BF5E5A";
createNode transform -n "RightEyeLidOutDown2LocGrp" -p "RightEyeLidOutDown2LocOffGrp";
	rename -uid "ECA96A37-4246-832F-EE29-478B2320C0E8";
createNode transform -n "RightEyeLidOutDown2ZGrp" -p "RightEyeLidOutDown2LocGrp";
	rename -uid "D43103E9-46D0-4FEF-0913-1DA6B0F7C729";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 4.4408920985006262e-16 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutDown2Pos" -p "RightEyeLidOutDown2ZGrp";
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
createNode transform -n "RightEyeLidOutDown2CvPos1" -p "RightEyeLidOutDown2Pos";
	rename -uid "145EEFCA-4ADB-9A47-CE34-E880CFE770DF";
createNode locator -n "RightEyeLidOutDown2CvPos1Shape" -p "RightEyeLidOutDown2CvPos1";
	rename -uid "D18F95B6-4CF4-35E9-D999-3E812C48C4A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2" -p "RightEyeLidOutDown2Pos";
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
createNode transform -n "RightEyeLidOutDown3ZGrp" -p "RightEyeLidOutDown3LocGrp";
	rename -uid "4126DE5F-4FE4-4843-E142-0F91F5917486";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown3Pos" -p "RightEyeLidOutDown3ZGrp";
	rename -uid "6291A154-439E-F17C-822A-71B160938EF7";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown3PosShape" -p "RightEyeLidOutDown3Pos";
	rename -uid "6CC913B3-4C2B-1762-C32A-62A32C00B12D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "8224CBDE-4AD2-BA5C-138E-1DA61F7B61B9";
	setAttr ".t" -type "double3" -2.5 2 3 ;
createNode transform -n "RightEyeLidPinUp1LocGrp" -p "RightEyeLidPinUp1LocOffGrp";
	rename -uid "22523193-475F-724F-BCA7-1683D99C284F";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidPinUp1Pos" -p "RightEyeLidPinUp1LocGrp";
	rename -uid "027DDE43-4F55-F0B8-E88A-BC98D8C99E46";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidPinUp1PosShape" -p "RightEyeLidPinUp1Pos";
	rename -uid "A5AF04DD-4C9F-DE47-97BC-9C8E983EB0A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "C5CC463E-40D7-DAB2-3109-84BB7B0A13B6";
	setAttr ".t" -type "double3" 0 3 2.9999999999999978 ;
createNode transform -n "RightEyeLidPinUp2LocGrp" -p "RightEyeLidPinUp2LocOffGrp";
	rename -uid "4CC3E764-435B-2484-3BA5-11B9D0CFC4F2";
createNode transform -n "RightEyeLidPinUp2Pos" -p "RightEyeLidPinUp2LocGrp";
	rename -uid "7BC5EEAC-4EBC-1E8E-D7C2-F3AE5C9C41F6";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidPinUp2PosShape" -p "RightEyeLidPinUp2Pos";
	rename -uid "0A1294DD-4358-65BD-53D5-1F89C0E4D819";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinUp2CvPos1" -p "RightEyeLidPinUp2Pos";
	rename -uid "4C8AA056-400E-ADC1-651B-4C994A636B67";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUp2CvPos1Shape" -p "RightEyeLidPinUp2CvPos1";
	rename -uid "837A74C7-4B7D-6A92-48C4-1B97D9948087";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUp2CvPos2" -p "RightEyeLidPinUp2Pos";
	rename -uid "27BAE57E-441E-9385-8030-F398D71B73AE";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUp2CvPos2Shape" -p "RightEyeLidPinUp2CvPos2";
	rename -uid "6F22401A-441B-D450-EAE0-1B96FDF8E689";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUp3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "FCF96DD0-4933-2B32-CE86-F89857542CF1";
	setAttr ".t" -type "double3" 2.5 2 3.0000000000000053 ;
createNode transform -n "RightEyeLidPinUp3LocGrp" -p "RightEyeLidPinUp3LocOffGrp";
	rename -uid "310CA6CA-4B7C-8707-0AC0-B984B5C18BCC";
createNode transform -n "RightEyeLidPinUp3Pos" -p "RightEyeLidPinUp3LocGrp";
	rename -uid "61287D8C-4499-DF5A-58FB-1A8BF811103E";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidPinUp3PosShape" -p "RightEyeLidPinUp3Pos";
	rename -uid "FD9700B8-49E7-83A0-3FFB-36AE0E6FDA31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "30B92658-4F5B-4B90-7D38-E5AC4ACFC09D";
	setAttr ".t" -type "double3" -2.5 -2 2.9999999999999956 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidPinDown1LocGrp" -p "RightEyeLidPinDown1LocOffGrp";
	rename -uid "86BEE084-4097-B04F-1A7B-27B50FC8C5AD";
createNode transform -n "RightEyeLidPinDown1Pos" -p "RightEyeLidPinDown1LocGrp";
	rename -uid "011C05C7-4876-0035-1456-30929AAA4E4F";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidPinDown1PosShape" -p "RightEyeLidPinDown1Pos";
	rename -uid "5F3663B2-4F0E-0EFB-A3D1-F3AF0AC93BC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "217B9742-41E2-8115-77E5-7E9F36D77FDC";
	setAttr ".t" -type "double3" -9.3258734068513134e-16 -3 3.0000000000000115 ;
createNode transform -n "RightEyeLidPinDown2LocGrp" -p "RightEyeLidPinDown2LocOffGrp";
	rename -uid "BE2FB45B-4939-9ABF-A2A1-AB8C1ADEB090";
createNode transform -n "RightEyeLidPinDown2Pos" -p "RightEyeLidPinDown2LocGrp";
	rename -uid "8E9B6681-40D9-DB3A-CD9C-A0975EE096AF";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidPinDown2PosShape" -p "RightEyeLidPinDown2Pos";
	rename -uid "57899EDE-418F-51E8-721B-758B6CDDC829";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinDown2CvPos1" -p "RightEyeLidPinDown2Pos";
	rename -uid "7A9B4199-4B6E-FB81-03D8-2C9CB16CD46B";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDown2CvPos1Shape" -p "RightEyeLidPinDown2CvPos1";
	rename -uid "B37FDF0A-4A86-2DC1-53D5-8A8300246001";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDown2CvPos2" -p "RightEyeLidPinDown2Pos";
	rename -uid "AE07375F-4B10-05EC-76E7-53AE59872FCB";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDown2CvPos2Shape" -p "RightEyeLidPinDown2CvPos2";
	rename -uid "AF9A934D-4811-211A-0CE7-01A4A7BA9353";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDown3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "58B1A60B-4B84-D37E-733A-52A0A35FA261";
	setAttr ".t" -type "double3" 2.5 -2 3.0000000000000089 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RightEyeLidPinDown3LocGrp" -p "RightEyeLidPinDown3LocOffGrp";
	rename -uid "229FB0E0-4DA1-F2EC-F469-98B372B833A1";
createNode transform -n "RightEyeLidPinDown3Pos" -p "RightEyeLidPinDown3LocGrp";
	rename -uid "ED02A1A7-4D77-2BBB-A7AA-DF90277130BF";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidPinDown3PosShape" -p "RightEyeLidPinDown3Pos";
	rename -uid "799204A3-4723-29AE-68EB-7499E4E28A97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeCorneaCtrlGrp" -p "RightEyeLidRootPoser";
	rename -uid "0DB414D5-4A93-1B6B-DDEE-42B9F5AE5856";
	setAttr ".t" -type "double3" 0 -1.071143174158351e-12 2.9876376390457065 ;
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000002 ;
createNode transform -n "RightEyeCorneaCtrl" -p "RightEyeCorneaCtrlGrp";
	rename -uid "2D3175BE-4072-6839-3819-4A9D86FD9723";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -4.0389678347315804e-28 0 ;
createNode nurbsCurve -n "RightEyeCorneaCtrlShape" -p "RightEyeCorneaCtrl";
	rename -uid "394F3C58-4AA7-0DF9-8362-BBA245CB45DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 -0.49999999999999994 8.3266726846886741e-17
		0.1913415 -0.46194000000000007 4.163336342344337e-17
		0.35355349999999997 -0.35355349999999997 -1.3877787807814455e-17
		0.46194000000000002 -0.19134149999999997 0
		0.49999999999999994 0 0
		0.46194000000000002 0.19134149999999997 0
		0.35355349999999997 0.35355349999999997 1.3877787807814455e-17
		0.1913415 0.46194000000000007 -4.163336342344337e-17
		0 0.49999999999999994 -8.3266726846886741e-17
		-0.1913415 0.46194000000000007 -4.163336342344337e-17
		-0.35355349999999997 0.35355349999999997 1.3877787807814455e-17
		-0.46194000000000002 0.19134149999999997 0
		-0.49999999999999994 0 0
		-0.46194000000000002 -0.19134149999999997 0
		-0.35355349999999997 -0.35355349999999997 -1.3877787807814455e-17
		-0.1913415 -0.46194000000000007 4.163336342344337e-17
		0 -0.49999999999999994 8.3266726846886741e-17
		;
createNode transform -n "RightEyeLidCtrlPosCrv" -p "RightEyeLidRootPoser";
	rename -uid "772A0BEB-48A6-EB00-7296-8A8C489C10D2";
	setAttr ".t" -type "double3" 0 1.2079226507921706e-13 3.5527121146411737e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShape" -p "RightEyeLidCtrlPosCrv";
	rename -uid "82681D09-42EB-889F-0042-5A90C16A54BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-1.2000000198897132 1.7159607068606419e-12 3.3040237212844659e-13
		-1.2000000198899277 0.60000002384250095 2.9132252166164108e-13
		-0.59999987683899469 1.2000000476845738 7.1054273576010019e-14
		2.7793574108869734e-08 1.200000047684787 -1.9895196601282805e-13
		0.59999993242614247 1.2000000476850019 -4.2632564145606011e-13
		1.1999998370589249 0.60000002384335893 -6.0751403907488566e-13
		1.1999998370591398 2.5721647034515627e-12 -6.5369931689929217e-13
		1.1999998370593539 -0.60000002384035689 -6.1106675275368616e-13
		0.59999993242700045 -1.200000047682428 -3.4461322684364859e-13
		2.7794432089223164e-08 -1.2000000476826447 -2.8421709430404007e-14
		-0.59999987683813671 -1.2000000476828596 1.9539925233402755e-13
		-1.2000000198894991 -0.60000002384121487 3.1619151741324458e-13
		;
createNode transform -n "RightEyeCorneaClsGrp" -p "RightEyeLidSysGrp";
	rename -uid "720385B0-4D7F-0292-B0EE-3D901F8A0842";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeCorneaCls" -p "RightEyeCorneaClsGrp";
	rename -uid "5594734D-423B-0B25-5422-228B4E851DC5";
	setAttr ".rp" -type "double3" -2.9999999722058304 -1.1919354392375681e-12 2.9876376390458703 ;
	setAttr ".sp" -type "double3" -2.9999999722058304 -1.1919354392375681e-12 2.9876376390458703 ;
createNode clusterHandle -n "RightEyeCorneaClsShape" -p "RightEyeCorneaCls";
	rename -uid "07582694-4DF5-5138-260C-32949ADB480A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -2.9999999722058304 -1.1919354392375681e-12 2.9876376390458703 ;
createNode transform -n "LeftEyeLidJntGrp" -p "EyeLidGrp";
	rename -uid "B66D4709-41B4-ABAF-0EF8-A284F6A7DA50";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "LeftEyeLidOutUp0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "A4AE5DEF-41E2-6996-182F-9FA836F22B5E";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutUpCrv0Jnt" -p "LeftEyeLidOutUp0AimPos";
	rename -uid "3717AE87-45B9-C2BA-5428-1CAB0FC5EB11";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftEyeLidOutUpCrv0Jnt";
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutUp0AimPos_aimConstraint1" -p "LeftEyeLidOutUp0AimPos";
	rename -uid "50AEA124-44FE-783B-7E3C-A7977CACA812";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidOutUpCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 22.615459999032989 34.6971113675555 13.340212784926608 ;
	setAttr ".rsrr" -type "double3" -6.7586786981099719e-15 1.3517357396219944e-14 -1.5902773407317588e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidOutUp1AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "0408F516-4DCB-6912-FDDE-098BA61D4355";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutUpCrv1Jnt" -p "LeftEyeLidOutUp1AimPos";
	rename -uid "5AE27ECF-4A19-DF09-82C7-81B973BD9E2F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutUp1AimPos_aimConstraint1" -p "LeftEyeLidOutUp1AimPos";
	rename -uid "510C696C-46A1-846B-FAE9-358AC2A06204";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidOutUpCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 36.104199579846714 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidOutUp2AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "0D4406EE-474F-83A4-59D9-96A376703D8B";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutUpCrv2Jnt" -p "LeftEyeLidOutUp2AimPos";
	rename -uid "F0C7B8D5-4898-5FF8-BCA4-65901042CC5E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutUp2AimPos_aimConstraint1" -p "LeftEyeLidOutUp2AimPos";
	rename -uid "754961D8-411E-ED8A-D51E-3B8BA4EC2035";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidOutUpCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 22.615459999163896 -34.697111367476808 -13.34021278498388 ;
	setAttr ".rsrr" -type "double3" 3.5781240166464568e-15 -1.9083328088781101e-14 7.951386703658787e-16 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidOutDown0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "6724D3BF-4E76-8845-C226-08918453AA29";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutDownCrv0Jnt" -p "LeftEyeLidOutDown0AimPos";
	rename -uid "54BE8DC8-4093-68E5-A69A-5C96335B5487";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutDown0AimPos_aimConstraint1" -p "LeftEyeLidOutDown0AimPos";
	rename -uid "BD9D26A4-45DE-7AA2-6F0C-739D2FBDFDA1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidOutDownCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -22.615459999002152 34.697111367508263 -13.340212784891781 ;
	setAttr ".rsrr" -type "double3" -3.975693351829394e-16 6.0629323615398278e-15 1.590277340731758e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidOutDown1AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "7969C56E-4C1B-F84E-5E83-9B84C8DE3F10";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutDownCrv1Jnt" -p "LeftEyeLidOutDown1AimPos";
	rename -uid "41898554-4810-B2D5-8AA2-119867E6EAB0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutDown1AimPos_aimConstraint1" -p "LeftEyeLidOutDown1AimPos";
	rename -uid "264AA4E7-45CD-0F37-7731-A5BCF629D4ED";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidOutDownCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -36.104199656735062 0 0 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidOutDown2AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "51C13CA6-4AFA-BCD7-DCF4-0DA0DA6096B0";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutDownCrv2Jnt" -p "LeftEyeLidOutDown2AimPos";
	rename -uid "EFA7A8CE-4EC4-E41D-724F-0082688CA9B3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutDown2AimPos_aimConstraint1" -p "LeftEyeLidOutDown2AimPos";
	rename -uid "71EF3160-41A3-9618-9127-3894EACA36C9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidOutDownCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -22.615459998871238 -34.697111367587063 13.340212784834538 ;
	setAttr ".rsrr" -type "double3" 3.180554681463516e-15 -6.460501696722767e-15 -7.9513867036587919e-16 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinUp0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "831F6A8A-41D0-3819-FDD8-C5B67E0E5BF0";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinUpCrv0Jnt" -p "LeftEyeLidPinUp0AimPos";
	rename -uid "4E5B79A4-4C22-6BBC-4050-3FB7DA17930E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinUp0AimPos_aimConstraint1" -p "LeftEyeLidPinUp0AimPos";
	rename -uid "3D0D2BC5-484A-B90F-4C4B-20B490F4F2FA";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidPinUpCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 33.693707310287984 34.730952791180776 20.800182176746851 ;
	setAttr ".rsrr" -type "double3" 3.5781240166464568e-15 -7.9513867036587919e-16 1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinUp1AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "EBF76BE0-4483-25D1-4DF7-C9A67294E8C1";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinUpCrv1Jnt" -p "LeftEyeLidPinUp1AimPos";
	rename -uid "E29C8476-4383-9564-0790-429A40EA01A3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinUp1AimPos_aimConstraint1" -p "LeftEyeLidPinUp1AimPos";
	rename -uid "18881F32-427C-3B77-5DFF-318E3781423E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidPinUpCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 42.528127030488889 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinUp2AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "D0EC514A-4398-CC60-71F0-7FB99D677EAC";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinUpCrv2Jnt" -p "LeftEyeLidPinUp2AimPos";
	rename -uid "B0692B36-4AEA-4B43-97DF-BD993E1ECB2A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinUp2AimPos_aimConstraint1" -p "LeftEyeLidPinUp2AimPos";
	rename -uid "69F9ACD7-4A46-F832-4803-BD8CC863A7DD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidPinUpCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 33.693707310405983 -34.730952791067153 -20.800182176777319 ;
	setAttr ".rsrr" -type "double3" -1.7890620083232281e-14 3.975693351829396e-15 1.5902773407317576e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinDown0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "83C5FE5F-4C1D-A4B7-423E-2A83ED5D1128";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinDownCrv0Jnt" -p "LeftEyeLidPinDown0AimPos";
	rename -uid "56638140-415C-928A-D24A-9EA215AF3ED4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinDown0AimPos_aimConstraint1" -p "LeftEyeLidPinDown0AimPos";
	rename -uid "1740C409-44A9-6F8A-6D2B-7587F5DF6296";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidPinDownCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -33.693707310266383 34.730952791110766 -20.800182176697792 ;
	setAttr ".rsrr" -type "double3" -5.1684013573782151e-15 -2.8690390937326033e-31 
		-6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinDown1AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "4F2D61A0-4B40-E9F2-51D4-E5A0353AA6D7";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinDownCrv1Jnt" -p "LeftEyeLidPinDown1AimPos";
	rename -uid "51FA8FD5-44F5-242D-9C21-F69B30BA3D65";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinDown1AimPos_aimConstraint1" -p "LeftEyeLidPinDown1AimPos";
	rename -uid "B219F368-4C41-076C-7F72-6BA556BE1C6A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidPinDownCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -42.528127598881198 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinDown2AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "CE4E553F-4B76-DC91-BDE1-7AA77BBAEA94";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinDownCrv2Jnt" -p "LeftEyeLidPinDown2AimPos";
	rename -uid "2B9DB576-4D56-868A-5441-419EA744EC65";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinDown2AimPos_aimConstraint1" -p "LeftEyeLidPinDown2AimPos";
	rename -uid "32B5F9E8-4489-FBD2-C61D-5EB52E3D9C98";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftEyeLidPinDownCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -33.693707310148298 -34.730952791224446 20.800182176667299 ;
	setAttr ".rsrr" -type "double3" -2.7829853462805772e-15 6.7586786981099735e-15 1.5902773407317582e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidJntGrp" -p "EyeLidGrp";
	rename -uid "291B55CD-4A46-5D87-66E6-21A7414CA0D7";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "RightEyeLidOutUp0AimPos" -p "RightEyeLidJntGrp";
	rename -uid "83E12DC1-47FD-BF36-83FE-889A53E39F84";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutUpCrv0Jnt" -p "RightEyeLidOutUp0AimPos";
	rename -uid "EA6DC101-41BC-FCE0-00BF-A7A0B150F746";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutUp0AimPos_aimConstraint1" -p "RightEyeLidOutUp0AimPos";
	rename -uid "4541DE0B-45B0-5FEE-5A07-D0A633D41BC6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidOutUpCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 22.61545999898803 -34.697111367526119 -13.340212784888644 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-15 -1.3119788061037007e-14 
		1.5902773407317588e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidOutUp1AimPos" -p "RightEyeLidJntGrp";
	rename -uid "0E12FE78-4026-047D-3BCD-B1B8800969D1";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutUpCrv1Jnt" -p "RightEyeLidOutUp1AimPos";
	rename -uid "7516C231-4191-4477-633D-26B76BFD33E3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutUp1AimPos_aimConstraint1" -p "RightEyeLidOutUp1AimPos";
	rename -uid "2A971540-4F1C-4B2E-8734-DEA8C838DA92";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidOutUpCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 36.104199576750204 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidOutUp2AimPos" -p "RightEyeLidJntGrp";
	rename -uid "031A7B8B-4D47-47DA-9EB7-27912DB21E77";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutUpCrv2Jnt" -p "RightEyeLidOutUp2AimPos";
	rename -uid "0BDB7E8D-4EB9-AFC9-A40F-00848DEC9AFB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutUp2AimPos_aimConstraint1" -p "RightEyeLidOutUp2AimPos";
	rename -uid "3D1AE4C1-4619-6745-71CE-47A969D0834C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidOutUpCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 22.615459998906182 34.697111367561355 13.340212784848301 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-16 -1.9878466759146977e-16 -2.3854160110976376e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidOutDown0AimPos" -p "RightEyeLidJntGrp";
	rename -uid "9FDF3468-4815-2913-DE9A-CD9393C358E7";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutDownCrv0Jnt" -p "RightEyeLidOutDown0AimPos";
	rename -uid "4762E051-45D1-00AB-710D-D28D3E0620B5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutDown0AimPos_aimConstraint1" -p "RightEyeLidOutDown0AimPos";
	rename -uid "2B655778-4D92-8F9E-551C-ADAEDAFF0911";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidOutDownCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -22.615459999047495 -34.697111367546476 13.340212784932854 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-15 -6.7586786981099735e-15 -1.5902773407317588e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidOutDown1AimPos" -p "RightEyeLidJntGrp";
	rename -uid "CF1A1FE8-47F1-7702-563C-F5A50ED2AF4E";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutDownCrv1Jnt" -p "RightEyeLidOutDown1AimPos";
	rename -uid "452B1942-482B-2A77-D57E-4AA2278CE8D2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutDown1AimPos_aimConstraint1" -p "RightEyeLidOutDown1AimPos";
	rename -uid "21A8D259-4C2A-B155-0743-5AB39BF03CC0";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidOutDownCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -36.104199659826747 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidOutDown2AimPos" -p "RightEyeLidJntGrp";
	rename -uid "5BB22F7E-4694-2A80-52EE-5B9F06DD1C16";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutDownCrv2Jnt" -p "RightEyeLidOutDown2AimPos";
	rename -uid "57CE26ED-4330-F35B-1120-D6835D1D4430";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutDown2AimPos_aimConstraint1" -p "RightEyeLidOutDown2AimPos";
	rename -uid "E3F4ED40-443C-34D7-1ADA-238D3FC2200F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidOutDownCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -22.615459999122404 34.697111367487054 -13.340212784960961 ;
	setAttr ".rsrr" -type "double3" -2.782985346280578e-15 1.9580289757759779e-14 -2.3854160110976384e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinUp0AimPos" -p "RightEyeLidJntGrp";
	rename -uid "8F44DD6C-483B-7144-E77F-D982023FBC81";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinUpCrv0Jnt" -p "RightEyeLidPinUp0AimPos";
	rename -uid "68F2860E-4125-C5BC-2C20-418671FCFC14";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinUp0AimPos_aimConstraint1" -p "RightEyeLidPinUp0AimPos";
	rename -uid "CFF2318F-429E-D54F-3BE0-7E8E0969AF57";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidPinUpCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 33.693707310250737 -34.730952791134968 -20.800182176698126 ;
	setAttr ".rsrr" -type "double3" 3.975693351829396e-15 -5.5659706925611543e-15 -1.9310840053969443e-31 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinUp1AimPos" -p "RightEyeLidJntGrp";
	rename -uid "012ECB41-43DC-EA1D-04C9-F2B71F37F49A";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinUpCrv1Jnt" -p "RightEyeLidPinUp1AimPos";
	rename -uid "A40C8CC2-4FFD-1EDC-A47A-53B36A632CDB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinUp1AimPos_aimConstraint1" -p "RightEyeLidPinUp1AimPos";
	rename -uid "141EA020-4DDA-F5EF-7521-C4B5DF65B4E6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidPinUpCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 42.528127057158272 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinUp2AimPos" -p "RightEyeLidJntGrp";
	rename -uid "E349674F-47FC-3C38-0A14-5C8BF4E5057B";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinUpCrv2Jnt" -p "RightEyeLidPinUp2AimPos";
	rename -uid "E9D5C46B-4EB0-85A3-4BE1-6C8E667BEF1E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinUp2AimPos_aimConstraint1" -p "RightEyeLidPinUp2AimPos";
	rename -uid "B305B3EC-468B-86A7-5A96-19B2332B84EC";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidPinUpCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 33.693707310174737 34.73095279119228 20.800182176670919 ;
	setAttr ".rsrr" -type "double3" -1.1529510720305249e-14 -4.3732626870123352e-15 
		3.1805546814635176e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinDown0AimPos" -p "RightEyeLidJntGrp";
	rename -uid "097480D9-4C08-4416-5FBE-94AE5C10A4E3";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinDownCrv0Jnt" -p "RightEyeLidPinDown0AimPos";
	rename -uid "436305E6-461E-B702-2945-FDBF2BD55851";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightEyeLidPinDownCrv0Jnt";
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinDown0AimPos_aimConstraint1" -p "RightEyeLidPinDown0AimPos";
	rename -uid "E43AC628-4600-3F83-F5A6-BE897422046C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidPinDownCrv0AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -33.693707310304191 -34.730952791164292 20.80018217675061 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635152e-15 -2.4251729446159314e-14 
		-6.3611093629270327e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinDown1AimPos" -p "RightEyeLidJntGrp";
	rename -uid "E32CE132-43E5-4F03-732C-9FA7F9F2ABAC";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinDownCrv1Jnt" -p "RightEyeLidPinDown1AimPos";
	rename -uid "1475018D-453A-7774-F95F-A8A077938E66";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinDown1AimPos_aimConstraint1" -p "RightEyeLidPinDown1AimPos";
	rename -uid "B84ED0B1-4693-2EF8-B809-53A7A9AD7B0D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidPinDownCrv1AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -42.528127597598711 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinDown2AimPos" -p "RightEyeLidJntGrp";
	rename -uid "135396E4-41E8-92F3-4366-129DBBF69C9F";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinDownCrv2Jnt" -p "RightEyeLidPinDown2AimPos";
	rename -uid "4F86F0A6-47B4-B5D2-CC42-34B08460821B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinDown2AimPos_aimConstraint1" -p "RightEyeLidPinDown2AimPos";
	rename -uid "A166786D-46D5-4FAA-E1CA-47A89EA652B6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "RightEyeLidPinDownCrv2AimPosW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" -33.693707310370051 34.730952791085407 -20.80018217676021 ;
	setAttr ".rsrr" -type "double3" -1.2324649390671127e-14 5.9635400277440935e-15 -4.7708320221952759e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BEC87EC3-49FF-BE7F-E713-D2AB65CC57C4";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "46DBA82A-4A25-96A3-585C-8D8C59B02301";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2644E93E-4FEA-D911-C980-4DA822C66FF3";
createNode displayLayerManager -n "layerManager";
	rename -uid "240EEC4B-4176-7BE7-C1F3-8C8EF5ADF319";
createNode displayLayer -n "defaultLayer";
	rename -uid "B94BA74C-4D50-76C0-CEEF-B088B22E27CD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3C2E18A4-4E9A-81BC-FB99-9C9B4AF1B56B";
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
createNode multDoubleLinear -n "LeftEyeLidOutUp1CtrlZML";
	rename -uid "499C1328-4E90-540E-521C-37AFBA2071DD";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutUp2CtrlZML";
	rename -uid "8B375A85-44BF-948D-E0D5-9B9181E9C02F";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutUp3CtrlZML";
	rename -uid "AC21522B-46B6-1E56-B852-73801BD898CB";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutDown1CtrlZML";
	rename -uid "CF8D5273-49C6-5F2A-F4B9-9880B3CE06DA";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutDown2CtrlZML";
	rename -uid "20C572B3-488C-2CF1-C232-F5A6D205511F";
	setAttr ".i2" 0.1;
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
	setAttr ".s" 16;
	setAttr ".nsp" 20;
createNode pairBlend -n "LeftEyeLidOutUp1LocOffGrpPB";
	rename -uid "16DFAC53-43A8-96A4-A591-E19064C0D171";
createNode pairBlend -n "LeftEyeLidOutUp3LocOffGrpPB";
	rename -uid "F5DA1747-4082-4049-4AD8-45B203A7B1C0";
createNode pairBlend -n "LeftEyeLidOutDown1LocOffGrpPB";
	rename -uid "76D28429-4345-4BC8-9F4F-2F9C256AB1AC";
createNode pairBlend -n "LeftEyeLidOutDown2LocOffGrpPB";
	rename -uid "9EC71179-4DD3-F671-61B7-268DB0ABC6C9";
createNode pairBlend -n "LeftEyeLidOutDown3LocOffGrpPB";
	rename -uid "C1C3DBBD-46ED-3915-C884-A4B655A85927";
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
createNode multDoubleLinear -n "RightEyeLidOutUp1ZRvs";
	rename -uid "E4E576FB-4CE2-4A59-587E-54A445D3882F";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutUp2ZRvs";
	rename -uid "02F04214-454C-BD03-2869-9D8AAF39A20B";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutUp3ZRvs";
	rename -uid "B0E5D20B-489D-BC0A-8E7E-E4979E1CD645";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutDown1ZRvs";
	rename -uid "4DA18BA2-4B2C-4E05-9F83-ADAD9B67ABF1";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutDown2ZRvs";
	rename -uid "467EB040-495B-1875-5EAC-A0977E7E1097";
	setAttr ".i2" 0.1;
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
	setAttr ".s" 16;
	setAttr ".nsp" 20;
createNode pairBlend -n "RightEyeLidOutUp1LocOffGrpPB";
	rename -uid "35189D14-44D1-50E0-FDDC-29AB5D61AEC9";
createNode pairBlend -n "RightEyeLidOutDown1LocOffGrpPB";
	rename -uid "5CC7E583-4804-A3BF-8356-69821B308970";
createNode pairBlend -n "RightEyeLidOutDown2LocOffGrpPB";
	rename -uid "10888678-4D22-75D1-BCB6-A88AC974CAC7";
createNode pairBlend -n "RightEyeLidOutDown3LocOffGrpPB";
	rename -uid "3F65F4D8-458C-8C68-932B-52A21A4FBD20";
createNode cluster -n "LeftEyeCorneaClsCluster";
	rename -uid "9571927B-4E98-F2D8-F69E-E9AA5AA54F18";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr ".gm[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -2.2204460492503131e-16 2.2204460492495203e-16 1 0 3.5726976932437548e-13 -1.0000000000000002 2.2204460492503131e-16 0
		 3.0000000277940018 9.510170528238658e-13 -2.8865798578538989e-15 1;
createNode objectSet -n "cluster1Set";
	rename -uid "D4A2F8DB-4FDE-22A3-4C6C-FCACA8CCF002";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "EE9FDE7F-423B-83FF-87F9-FCBC19CD65C1";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "CDB1C90F-4A87-B7DE-0C91-B5847770FB3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[20:22][0:15]";
createNode cluster -n "RightEyeCorneaClsCluster";
	rename -uid "850F2EB0-4CCF-EE9D-A1CE-2ABB8208E139";
	setAttr ".ip[0].gtg" -type "string" "";
	setAttr ".gm[0]" -type "matrix" -0.99999999999999978 -3.5726976932437527e-13 5.6054820366118173e-14 0
		 5.6054820366118173e-14 2.2204460494505797e-16 0.99999999999999978 0 3.5726976932437532e-13 -0.99999999999999989 2.2204460492503126e-16 0
		 -2.9999999722059973 -1.192601563122386e-12 1.6461174742572555e-13 1;
createNode objectSet -n "cluster2Set";
	rename -uid "5911A802-48BD-DE71-3411-3083CE59FB84";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "6A0A33FD-45D8-79F5-467D-A4B4D41A9A21";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "6BD19AD0-4B44-AF1B-E908-83924916BDDB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[20:22][0:15]";
createNode pairBlend -n "LeftEyeLidOutUp2LocOffGrpPB";
	rename -uid "EE79CF7C-43AC-A327-8F67-8F9EE173ABE4";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM";
	rename -uid "B7DC5784-4878-39A4-A823-1B82C42F6E01";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.000000027793106 2.5000000000009521 2.9999999999999889 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437548e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495208e-16 0 1.0000000000000004 0
		 -3.0000000475170303 -1.9999999999998812 -2.9999999387567673 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM";
	rename -uid "71F85C98-4F75-443F-A3A7-A9B926F33668";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM1";
	rename -uid "6DA0C223-4DE6-7C34-56AA-9D93C25715AA";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.0000000277931056 2.5000000000009521 2.9999999999999889 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -3.3306690738754696e-16 0
		 3.5726976932437553e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 0 1.0000000000000004 0
		 -3.0000000277940004 -2.999999999999881 -2.9999999999999889 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM1";
	rename -uid "657F285B-4F0E-45E9-1655-AAA2BD11531C";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM";
	rename -uid "1E41BEA4-4EDC-92EA-7809-B3B89EB49E6B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 0.75000002779355635 1.2500000000001485 2.9999999999999836 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437553e-13 1.0000000000000004 -1.0097419586828951e-28 0 2.2204460492495208e-16 0 1.0000000000000004 0
		 -3.0000000475170299 -1.9999999999998812 -2.9999999387567673 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM";
	rename -uid "4FB58C0B-4D17-C21D-7F50-0BA944CD31C5";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM1";
	rename -uid "E3D9A73B-4713-64BE-BB7D-4886FF200CC2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 0.75000002779355635 1.2500000000001485 2.9999999999999845 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437563e-13 -2.2204460492505542e-16 0
		 3.5726976932437537e-13 1.0000000000000004 0 0 2.4980018054066022e-16 0 1.0000000000000007 0
		 -0.50000002779400365 -1.9999999999998812 -2.9999999999999849 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM1";
	rename -uid "93C4A041-4C9A-7F6A-FEC9-EFA8CDE37A2C";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM";
	rename -uid "C1752E8F-4135-5E39-9C19-8C9252E28455";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 5.2500000277935541 1.2500000000017562 2.9999999999999911 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437553e-13 1.0000000000000004 -1.0097419586828951e-28 0 2.2204460492495208e-16 0 1.0000000000000004 0
		 -3.0000000475170299 -1.9999999999998812 -2.9999999387567673 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM";
	rename -uid "4B59E8EF-4E84-425C-2E16-C2ABB1AE7625";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM1";
	rename -uid "18BA47D7-4381-55F2-A74F-E3B96F95F4C3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 5.2500000277935559 1.2500000000017564 2.9999999999999911 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5721425817314412e-13 -3.3306690738754696e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.0097419586828951e-28 0 2.2204460492495213e-16 1.2325951644078309e-32 1.0000000000000007 0
		 -5.5000000277940053 -1.9999999999998814 -2.9999999999999916 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM1";
	rename -uid "E6AB2C49-4E37-E2FD-6571-FFBFE3143ED9";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM";
	rename -uid "27C97F9E-4B18-C052-BDF9-3697D268502D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495186e-16 -7.9329824781287955e-29 0.99999999999999944 0
		 0.75000002779444985 -1.2499999999998506 2.9999999999999902 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 2.4651903288156619e-32 1.0000000000000004 0
		 -3.0000000277940044 2.000000000000119 -2.99999999096043 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM";
	rename -uid "72F335FA-41AB-5FD5-0BCC-0AA9EEA4F08B";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM1";
	rename -uid "E1FC8B52-4E99-1D2C-0405-6AB5C438BCB7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495186e-16 -7.9329824781287955e-29 0.99999999999999944 0
		 0.75000002779445074 -1.2499999999998503 2.9999999999999911 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437553e-13 -2.2204460492505596e-16 -1.2325951644078309e-32
		 3.5732528047560663e-13 1.0000000000000004 0 0 1.9428902930940239e-16 1.1102230246251565e-16 1.0000000000000002 5.5511151231257827e-17
		 -0.50000002779400388 2.0000000000001186 -2.999999999999992 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM1";
	rename -uid "3346F39F-4CA7-C5A0-2F4F-01868DFAE847";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM";
	rename -uid "F9058241-488B-C206-51F8-7C9EAE1EEC97";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.0000000277948957 -2.4999999999990461 2.9999999999999902 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 2.4651903288156619e-32 1.0000000000000004 0
		 -3.0000000277940044 2.000000000000119 -2.99999999096043 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM";
	rename -uid "7A2F222F-436E-CE71-AFBF-BF87CD5A6BE3";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM1";
	rename -uid "C01D08D1-417F-377C-1B88-F2A92A218D6E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.0000000277948957 -2.4999999999990457 2.9999999999999902 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -3.3306690738754696e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -5.0487097934144756e-29 0 2.2204460492495205e-16 4.9303806576313238e-32 1.0000000000000004 0
		 -3.0000000277940044 3.0000000000001186 -2.9999999999999907 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM1";
	rename -uid "AE202921-4CAC-3C95-29C9-31A782D51046";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM";
	rename -uid "C2D178E2-43AE-CB74-73BF-9CB0AAC68D08";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999933 3.5726976932437512e-13 2.2204460492503116e-16 0
		 -3.5726976932437517e-13 0.99999999999999944 0 0 -2.2204460492495183e-16 -7.9329824781287944e-29 0.99999999999999933 0
		 5.2500000277944476 -1.249999999998243 2.9999999999999907 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 2.4651903288156619e-32 1.0000000000000004 0
		 -3.0000000277940044 2.000000000000119 -2.99999999096043 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM";
	rename -uid "5FDA5819-4DF8-FCC6-878D-EDB9BC3BAEE5";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM1";
	rename -uid "C7447545-43C2-B04A-1498-1DAE826A6887";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999933 3.5726976932437512e-13 2.2204460492503116e-16 0
		 -3.5726976932437517e-13 0.99999999999999944 0 0 -2.2204460492495183e-16 -7.9329824781287944e-29 0.99999999999999933 0
		 5.2500000277944494 -1.2499999999982423 2.9999999999999907 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -7.5730646901217133e-29 0 2.2204460492495213e-16 0 1.0000000000000007 0
		 -5.5000000277940053 2.0000000000001195 -2.9999999999999916 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM1";
	rename -uid "44B34E11-4AD8-4177-1F0C-06893E69D1E5";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM";
	rename -uid "D2B18EDF-47B9-DD9F-9069-EDAF02A2918D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -0.74999997220627668 1.249999999999611 3.0000000000000271 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5715874702191286e-13 5.6177285046032921e-14 -5.5511151231257827e-17
		 -3.5726976932437543e-13 1 2.0043377879855468e-26 -2.5243548967072378e-29 5.6054820366118268e-14 0 1.0000000000000002 3.1554436208840472e-30
		 -2.9999999919290241 -1.9999999999998792 -2.9999999387567642 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM";
	rename -uid "82A338A2-4E07-41C7-A73E-5B9572AFD1A3";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM1";
	rename -uid "285CF042-4C09-3652-6966-1081347DD875";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -0.74999997220627668 1.2499999999996105 3.0000000000000271 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437548e-13 5.6054820366118167e-14 0
		 -3.57297524899991e-13 1.0000000000000002 0 0 5.6094018319186034e-14 0 1.0000000000000002 0
		 -0.49999997220599812 -1.9999999999998792 -2.9999999999999853 1;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM1";
	rename -uid "2D7B1AB8-4D4F-3FFE-37E7-2F9C76186567";
createNode pairBlend -n "RightEyeLidOutUp2LocOffGrpPB";
	rename -uid "765E94B9-42D6-FEB5-C254-5BB2BB7722D8";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM";
	rename -uid "E73840A5-4D1F-5C5E-3C0F-FBA1AF951DCB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.9999999722067234 2.4999999999988072 3.0000000000001523 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5715874702191286e-13 5.6177285046032921e-14 -5.5511151231257827e-17
		 -3.5726976932437543e-13 1 2.0043377879855468e-26 -2.5243548967072378e-29 5.6054820366118268e-14 0 1.0000000000000002 3.1554436208840472e-30
		 -2.9999999919290241 -1.9999999999998792 -2.9999999387567642 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM";
	rename -uid "EE100EA1-40BC-17E5-F89B-D3A55D36C9AA";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM1";
	rename -uid "1FE6C9A3-433E-428C-6431-E5A7BC156E81";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.9999999722067234 2.4999999999988067 3.0000000000001528 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.573807916268236e-13 5.5844218138647248e-14 0
		 -3.57214258174687e-13 1.0000000000000002 1.6653345369377267e-16 0 5.6177285046032921e-14 0 1.0000000000000004 0
		 -2.9999999722059991 -2.9999999999998797 -2.9999999999999853 1;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM1";
	rename -uid "20D99F3D-45CF-0738-BD0E-D18F5DF6F232";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM";
	rename -uid "1FC80F11-4BD2-5B8E-7B7E-21A20227D13B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118249e-14 2.0026692741722337e-26 0.99999999999999967 0
		 -0.74999997220538317 -1.2500000000003886 3.0000000000000231 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437765e-13 5.595524027250408e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0068621368351957e-26 0 5.6288307348495437e-14 -1.1102230246251565e-16 1.0000000000000007 0
		 -2.9999999722059991 2.0000000000001212 -2.9999999909604278 1;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM";
	rename -uid "F2D10E7A-40E7-6F10-FF38-E4B7A406F932";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM1";
	rename -uid "974A7A70-4663-D125-FBE3-B1A5C5F8B63F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118249e-14 2.0026692741722337e-26 0.99999999999999967 0
		 -0.74999997220538317 -1.2500000000003886 3.0000000000000244 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437543e-13 5.6054820366118173e-14 0
		 -3.5726976932437537e-13 1 0 0 5.6066262743570405e-14 -1.1102230246251565e-16 1.0000000000000002 0
		 -0.49999997220599818 2.0000000000001208 -2.9999999999999818 1;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM1";
	rename -uid "B0E37FE6-467E-B634-B299-358A8965CE11";
createNode pairBlend -n "RightEyeLidOutUp3LocOffGrpPB";
	rename -uid "CD129EB7-4722-2752-B1F8-4990C8E2E922";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM";
	rename -uid "31554B1B-4E20-5ABC-C136-6BB294363958";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -5.2499999722062771 1.2499999999980034 3.0000000000002847 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5715874702191286e-13 5.6177285046032921e-14 -5.5511151231257827e-17
		 -3.5726976932437543e-13 1 2.0043377879855468e-26 -2.5243548967072378e-29 5.6054820366118268e-14 0 1.0000000000000002 3.1554436208840472e-30
		 -2.9999999919290241 -1.9999999999998792 -2.9999999387567642 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM";
	rename -uid "3C4E6343-4439-596A-8140-9BA5842AF7A3";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM1";
	rename -uid "8C57AC3E-46A4-668D-B452-2596C7AA00CD";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -5.2499999722062753 1.2499999999980034 3.0000000000002847 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437537e-13 5.6066262743570405e-14 0
		 -3.5726976932437543e-13 1.0000000000000002 1.9967647232954251e-26 0 5.6054820366118255e-14 -6.3108872417680944e-30 1.0000000000000002 0
		 -5.4999999722059973 -1.999999999999879 -2.9999999999999911 1;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM1";
	rename -uid "07A8F52F-4185-72B1-8F2E-27A7BF5BE899";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM";
	rename -uid "963B5A5C-4EA0-D7C0-C5DC-5FBD1B542988";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.999999972204936 -2.5000000000011919 3.0000000000001648 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437765e-13 5.595524027250408e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0068621368351957e-26 0 5.6288307348495437e-14 -1.1102230246251565e-16 1.0000000000000007 0
		 -2.9999999722059991 2.0000000000001212 -2.9999999909604278 1;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM";
	rename -uid "6B3BB975-44E6-3E58-8FD8-A6B5B78FDC85";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM1";
	rename -uid "D605EE34-419E-A9B7-FCA1-9695FD23A64C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.9999999722049364 -2.5000000000011924 3.0000000000001656 1;
	setAttr ".i[1]" -type "matrix" -1 -3.572142581731584e-13 5.5899729289876228e-14 2.5243548967072378e-29
		 -3.5704772471945034e-13 0.99999999999999978 3.3306690738754696e-16 -5.5511151231257827e-17
		 5.6054820366118274e-14 0 1.0000000000000004 0 -2.9999999722059969 3.0000000000001199 -2.9999999999999978 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM1";
	rename -uid "81A2AA18-4AA2-62D2-403C-EFA35F5932F6";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM";
	rename -uid "77D20AB3-4CF6-31AA-F89F-758E8ABE8A57";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.99999999999999978 -3.5726976932437527e-13 5.6054820366118173e-14 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 5.6054820366118243e-14 2.0026692741722334e-26 0.99999999999999956 0
		 -5.2499999722053836 -1.2500000000019962 3.0000000000002882 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437765e-13 5.595524027250408e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0068621368351957e-26 0 5.6288307348495437e-14 -1.1102230246251565e-16 1.0000000000000007 0
		 -2.9999999722059991 2.0000000000001212 -2.9999999909604278 1;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM";
	rename -uid "F4DB5C21-4495-289C-5E3C-1F929790A346";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM1";
	rename -uid "EC7CD4CB-41AA-1C05-DCF8-7198C3DD98B8";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.99999999999999978 -3.5726976932437527e-13 5.6054820366118173e-14 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 5.6054820366118243e-14 2.0026692741722334e-26 0.99999999999999956 0
		 -5.2499999722053836 -1.2500000000019964 3.0000000000002895 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5732528047560663e-13 5.6066262743570405e-14 0
		 -3.5726976932437537e-13 1 2.0018134330888396e-26 0 5.6054820366118262e-14 0 1.0000000000000002 0
		 -5.4999999722059973 2.0000000000001203 -2.9999999999999951 1;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM1";
	rename -uid "67470DD9-43B0-5C2A-69FB-429C41EEE343";
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC";
	rename -uid "FDF495DF-4F0F-1051-4353-3CA63951643A";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC1";
	rename -uid "05DC8011-4FF5-01CC-9FF2-8A80FC678A4A";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC2";
	rename -uid "12F31D22-4AF3-238E-AA6D-F3815963233B";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC3";
	rename -uid "E069EA8E-4FEA-A24D-6492-D08011BB5D6E";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC4";
	rename -uid "93619BD7-4E1B-DF99-AF3F-3E879B9863B3";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC";
	rename -uid "DD1C243F-4DC7-FFB0-8816-91B82DC91404";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC1";
	rename -uid "692157BC-480C-62B9-54E4-5D879391DD34";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC2";
	rename -uid "9C93F016-4B75-0A4A-E2DB-B09285700CA8";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC3";
	rename -uid "79D34493-46D0-975D-523B-F686DD1DE5FD";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC4";
	rename -uid "79A2B8F2-4E26-1EA9-8F5E-B7BC17302202";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC";
	rename -uid "3ED450F6-4FA0-4813-1A03-85A25B1653E5";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC1";
	rename -uid "576302B7-4539-D6D4-B6F0-FFB715785B6C";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC2";
	rename -uid "187E083B-46C3-CCE9-133A-2BB40FC8EAB9";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC3";
	rename -uid "CB560760-47DF-47BA-B21F-24A7C0F30691";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC4";
	rename -uid "90FF56D5-403C-E30C-B85F-37967042CD11";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC";
	rename -uid "24D02C31-418F-52E0-9235-749FA93A5A21";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC1";
	rename -uid "952376B2-4809-183A-577C-E5825EAED671";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC2";
	rename -uid "74A271BD-4934-8588-2039-94A4A2CA075D";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC3";
	rename -uid "44FCBFC3-47F8-06A3-EE19-2695FAF5F2F3";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC4";
	rename -uid "E296EC1F-4F6F-0970-0950-FE8B73B15B63";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv0PosCS";
	rename -uid "89355F5C-4F35-C70A-6A73-6190AD3499CF";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv0PosPS";
	rename -uid "F5D84E82-48D9-273C-E66A-3F91EEBEBB13";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv1PosCS";
	rename -uid "D2F69234-40F0-B40D-4F17-9A8EFFCF2D86";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv1PosPS";
	rename -uid "6B79F834-4415-B43F-5FD0-819E376BA51C";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv2PosCS";
	rename -uid "4424059C-4E13-4CE0-852B-739E736F7753";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv2PosPS";
	rename -uid "3693B034-4C07-2D31-81A2-77AB1E51CED8";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv3PosCS";
	rename -uid "F5664115-4F63-31A4-07EE-93BB234A340D";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv3PosPS";
	rename -uid "AAFF1947-4DEE-E11E-B3F8-8ABB9D7FABF1";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv4PosCS";
	rename -uid "9554E34D-455D-CBF0-E6B8-B2AE426DF0A9";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv4PosPS";
	rename -uid "CF12DE89-4C10-AB1C-BF49-D6BCDA7E660C";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv0PosCS";
	rename -uid "96D285F3-4162-6CB9-0EB0-669B14609EFF";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv0PosPS";
	rename -uid "C8EB5B02-436C-D665-5E92-2C895B8AD747";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv1PosCS";
	rename -uid "E7F7FA34-4B2D-03CB-7D2A-B6875D16E42E";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv1PosPS";
	rename -uid "58D45431-44EF-897B-1E17-8A84422A0F0D";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv2PosCS";
	rename -uid "FAD09016-4CC5-1DA4-42C7-03AB9B34FE70";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv2PosPS";
	rename -uid "F5536115-4297-E9C8-270D-65A310136245";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv3PosCS";
	rename -uid "A5F29671-498D-0058-B1C6-5B9C4C985D30";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv3PosPS";
	rename -uid "5557236E-4FEF-6380-E6AC-9ABB2947A0AB";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv4PosCS";
	rename -uid "A4C99E55-41C4-C7DD-98D2-B2951D1BEE80";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv4PosPS";
	rename -uid "797A2301-42EE-8DDC-A111-4D8C1DD118C8";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv0PosCS";
	rename -uid "4897F8E9-4051-0448-1E23-60AC1D682827";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv0PosPS";
	rename -uid "2F9D7E56-4A94-4993-82E8-C781BC761E6F";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv1PosCS";
	rename -uid "EC369EE5-4403-7F19-199B-98A79A2871C6";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv1PosPS";
	rename -uid "87120A42-4DF4-D647-8F97-99831B625052";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv2PosCS";
	rename -uid "5C0B644F-48A0-44D5-C956-218D8DF0EC5C";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv2PosPS";
	rename -uid "D5588FC9-4459-F390-94C8-BBBE7050E0FF";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv3PosCS";
	rename -uid "FC9C5D8B-433C-1012-D2D2-379B291E4308";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv3PosPS";
	rename -uid "F52A9616-4344-3B1C-5D2C-99BD1E71B886";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv4PosCS";
	rename -uid "2A281720-4FA7-A43F-B639-AEA35D484DDF";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv4PosPS";
	rename -uid "FD503995-435E-175F-74D8-ABB552A696ED";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv0PosCS";
	rename -uid "14221107-40DC-A615-C508-56B8EC95F388";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv0PosPS";
	rename -uid "5F3A4EDA-470C-0C95-B658-EEA41C3EA611";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv1PosCS";
	rename -uid "2E2A8AAA-46FB-F3B8-721E-A0A07E1DDDAD";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv1PosPS";
	rename -uid "83867442-4127-3825-B397-48907F698E9F";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv2PosCS";
	rename -uid "2EB4AD0F-4D09-B84E-548E-619D5D827047";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv2PosPS";
	rename -uid "9136F646-4EDB-10A7-C222-E0AA3D51CB71";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv3PosCS";
	rename -uid "07A4B6E4-4A99-300B-C90B-40A2442288FC";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv3PosPS";
	rename -uid "34FD9F86-4656-401D-6EB6-CD8F04D77BEC";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv4PosCS";
	rename -uid "CB3641B2-4CDB-FDE7-8A19-67A9DC1F4B73";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv4PosPS";
	rename -uid "B728ACAD-4A7D-76EB-7B13-BE9D2AFD6271";
createNode multMatrix -n "LeftEyeLidOutUpCrv0PosSurfPosMM";
	rename -uid "307FB341-4BAF-76B1-4E5B-07BDD5E18344";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2923203371587006 0.94846663265908338 2.2768129413436053 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv0PosSurfPosDM";
	rename -uid "8F88BF3F-479E-A603-914D-C68B35D24B64";
createNode multMatrix -n "LeftEyeLidOutUpCrv1PosSurfPosMM";
	rename -uid "092DA4C3-4C9D-A4F6-CBAB-BC95D7CE1A5B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.7082827786560182 1.4349412763446128 2.2961442027087098 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv1PosSurfPosDM";
	rename -uid "323858D7-4C10-9188-A5B0-7D8A76A7DF48";
createNode multMatrix -n "LeftEyeLidOutUpCrv2PosSurfPosMM";
	rename -uid "188A0FB3-41A0-C8F2-075F-6099FC4B2DF3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277912768 1.9205435307655081 2.3046656210606278 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv2PosSurfPosDM";
	rename -uid "2847DB29-48D9-D169-C453-CDA476CB9EF3";
createNode multMatrix -n "LeftEyeLidOutUpCrv3PosSurfPosMM";
	rename -uid "6130C68F-4915-CC60-9960-3C896F97AC6A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2917172769278817 1.4349412763483047 2.2961442027087098 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv3PosSurfPosDM";
	rename -uid "788A1CD0-421B-F0D6-CB1C-C6A3542FB8CC";
createNode multMatrix -n "LeftEyeLidOutUpCrv4PosSurfPosMM";
	rename -uid "CD35CCF2-47FC-6B62-9C8E-B79D54BD65BB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.7076797184265837 0.94846663266396292 2.2768129413436107 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv4PosSurfPosDM";
	rename -uid "4E3630FB-4C91-6D43-A443-24A875E01C14";
createNode multMatrix -n "LeftEyeLidOutDownCrv0PosSurfPosMM";
	rename -uid "7F843470-42A3-BC75-F098-F9A4BDB5E436";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2923203371608274 -0.94846663265698694 2.2768129413443883 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv0PosSurfPosDM";
	rename -uid "A0A07442-4CD3-DD96-E92D-92B556B70D3C";
createNode multMatrix -n "LeftEyeLidOutDownCrv1PosSurfPosMM";
	rename -uid "C9FDB740-4DAF-6651-4D4F-518039D3527E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.708282778659447 -1.4349412763417262 2.2961442027099137 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv1PosSurfPosDM";
	rename -uid "D5FD0A1C-472D-FE03-2856-6CB131A266AB";
createNode multMatrix -n "LeftEyeLidOutDownCrv2PosSurfPosMM";
	rename -uid "AACD66FC-4A3A-520F-9AC5-30ABA77D222B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277967218 -1.9205435307595209 2.304665621062246 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv2PosSurfPosDM";
	rename -uid "3D05DE48-441C-96DF-58E9-73A7CEC84B8A";
createNode multMatrix -n "LeftEyeLidOutDownCrv3PosSurfPosMM";
	rename -uid "64A48257-4B4C-C6E7-0D32-989C562D568D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2917172769326548 -1.4349412763380369 2.2961442027099146 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv3PosSurfPosDM";
	rename -uid "4F877613-4C27-E35B-2463-008198FF5624";
createNode multMatrix -n "LeftEyeLidOutDownCrv4PosSurfPosMM";
	rename -uid "482E5C43-40C4-7845-EE32-3B9D84B8A73E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.7076797184298913 -0.94846663265210363 2.2768129413443887 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv4PosSurfPosDM";
	rename -uid "3C4E9FA0-47D1-AC1A-D971-1BB7D735E618";
createNode multMatrix -n "LeftEyeLidPinUpCrv0PosSurfPosMM";
	rename -uid "51649BBE-4F42-A5CA-5ACF-BA9712B62749";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2908686355581029 1.3677172195819631 2.051293477084708 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv0PosSurfPosDM";
	rename -uid "A1AD25D1-44CC-2BCD-313C-889B6E9B0B2E";
createNode multMatrix -n "LeftEyeLidPinUpCrv1PosSurfPosMM";
	rename -uid "EC454BC8-467D-0D23-8CCC-03A0318243BA";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.7369446582593795 1.7418701937501464 2.0904605447936415 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv1PosSurfPosDM";
	rename -uid "FDD8F025-4679-93D2-A9B4-00988FB7EF25";
createNode multMatrix -n "LeftEyeLidPinUpCrv2PosSurfPosMM";
	rename -uid "66EC1AD3-427C-63A2-66AF-3ABD137D26B3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277909722 2.1213208764961204 2.1213197578846499 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv2PosSurfPosDM";
	rename -uid "367E0EC1-4BCA-BA57-EB64-C1ABAAD71B8F";
createNode multMatrix -n "LeftEyeLidPinUpCrv3PosSurfPosMM";
	rename -uid "2D44B574-40A0-C0D7-4ACA-D28DECFCB3A0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2630553799055591 1.7418701986255176 2.0904605512549828 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv3PosSurfPosDM";
	rename -uid "15132970-49E0-EA8C-DF41-CE974D52D9F7";
createNode multMatrix -n "LeftEyeLidPinUpCrv4PosSurfPosMM";
	rename -uid "03A75A65-4F48-E002-1482-5AA3E9F33812";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.7091314200259804 1.3677172195868512 2.0512934770847173 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv4PosSurfPosDM";
	rename -uid "213E133E-4296-2171-613D-148EB4524A2D";
createNode multMatrix -n "LeftEyeLidPinDownCrv0PosSurfPosMM";
	rename -uid "558F2D97-4DFE-4C77-1D1F-538CF92E73A7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2908686355612522 -1.3677172195804776 2.0512934770856259 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv0PosSurfPosDM";
	rename -uid "C096E3E0-4413-A86E-8B9E-F59FA51C51E1";
createNode multMatrix -n "LeftEyeLidPinDownCrv1PosSurfPosMM";
	rename -uid "F5AFAC51-40FA-CD49-7067-DEBBDB0E083B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.7369446599394631 -1.7418701897662181 2.0904605491259223 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv1PosSurfPosDM";
	rename -uid "98060E5D-4352-AA9D-0E8B-1199FD1C7C3C";
createNode multMatrix -n "LeftEyeLidPinDownCrv2PosSurfPosMM";
	rename -uid "C0DA2293-4C60-30E2-9D58-44B3B7B5EBEC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277955161 -2.1213208763930189 2.1213197579837049 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv2PosSurfPosDM";
	rename -uid "94C3E56A-4255-1228-0933-E7B7360B227A";
createNode multMatrix -n "LeftEyeLidPinDownCrv3PosSurfPosMM";
	rename -uid "04E16462-4E8D-7638-289C-76B4FF0BBF5D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2630553956535193 -1.7418701897626072 2.0904605491259245 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv3PosSurfPosDM";
	rename -uid "551F423C-4CE9-314E-9E0F-89B9EB2DC079";
createNode multMatrix -n "LeftEyeLidPinDownCrv4PosSurfPosMM";
	rename -uid "1679246C-4487-AF5A-A98F-FFB2B37B5039";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.709131420030654 -1.3677172195755887 2.0512934770856317 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv4PosSurfPosDM";
	rename -uid "216F0E18-4854-C911-4979-B98D3D6CA6C4";
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC";
	rename -uid "1890CF0B-4580-3F0B-355D-07BA1C99204E";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC1";
	rename -uid "9D7B86C2-40CF-7763-026E-E2A64E3A92EA";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC2";
	rename -uid "4DDF8D01-4825-261D-A7C6-20AE02C3C1B9";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC3";
	rename -uid "26DD7419-4B10-CCE2-FE63-C89C7D33A8C9";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC4";
	rename -uid "7AF967EF-4EDF-68C3-4C73-19BC4AEC3500";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC";
	rename -uid "A82207A0-4271-B389-03B3-BBAD83C97CD0";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC1";
	rename -uid "9E3CC3B4-4814-D78B-E9D9-E98EB2BE5C63";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC2";
	rename -uid "C7E78217-4C75-CFA0-F369-44A95EF25B93";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC3";
	rename -uid "548180C6-4459-747B-7F4A-558A42A3FD35";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC4";
	rename -uid "6F359D33-4351-5C51-5A88-178EDA3ACED1";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC";
	rename -uid "7DC4DB93-40EB-2558-5BD9-24BA892E98B8";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC1";
	rename -uid "31D4EB3A-4FDD-E74E-24E8-B8A797A3349A";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC2";
	rename -uid "37A7660E-46E7-EA80-C0D8-9CA00B8A50DE";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC3";
	rename -uid "E23DE6E6-49BB-FF83-FE37-32A657652D8C";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC4";
	rename -uid "F78F6DE5-4B21-0E08-D8A0-628037763020";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC";
	rename -uid "C42EA3B8-4088-E1B5-A8EF-9E9062B0AD8D";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC1";
	rename -uid "FF477CED-4B0F-6A2F-251A-DC80C0DE8214";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC2";
	rename -uid "03433AF5-4B12-2804-ED5B-D5911891D0E1";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC3";
	rename -uid "5AE684B1-4CC5-21B9-BCD8-D496030D56B3";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC4";
	rename -uid "A102A444-484E-CEF0-6779-F2A08BEDE2B6";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv0PosCS";
	rename -uid "1509DB9C-48AC-2DCE-0668-9A9BC8196D31";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv0PosPS";
	rename -uid "056F8ED3-476B-1EB3-B577-1FB6930B8B51";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv1PosCS";
	rename -uid "3B35DF72-41F6-B554-8CA1-29B6972F769B";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv1PosPS";
	rename -uid "BB0A9B78-4D1D-6394-900D-9EA35130F1B7";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv2PosCS";
	rename -uid "7D1A34E0-4809-DFF5-9417-BEA4A888A71A";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv2PosPS";
	rename -uid "3C165F4E-42F9-35D6-3D46-A580458409DC";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv3PosCS";
	rename -uid "099B4663-469C-0B58-3B3F-35A6E478F7FE";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv3PosPS";
	rename -uid "4FA0F708-4ACF-16F3-8164-608C0F7134B5";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv4PosCS";
	rename -uid "B95FAAC5-44E8-BA07-8386-11894E43F019";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv4PosPS";
	rename -uid "17E27FBD-49B6-79FA-9D7F-FD96BF3169A1";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv0PosCS";
	rename -uid "ADF49B1C-4895-7FD0-FC5E-44A47208BB63";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv0PosPS";
	rename -uid "38153BC0-4A80-228B-B22C-7EB517599397";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv1PosCS";
	rename -uid "2D243836-4C08-79A6-DFA7-DD8D5FBEF13E";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv1PosPS";
	rename -uid "7D918E21-43CF-E2B1-0485-2883522FC78C";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv2PosCS";
	rename -uid "435B389F-4CA4-BDA6-631A-AAB258631C91";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv2PosPS";
	rename -uid "CBFFB375-47A7-9E09-9E1F-2C970489936C";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv3PosCS";
	rename -uid "6867066F-48EF-4D6D-F8B0-C291A4935FE4";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv3PosPS";
	rename -uid "6FB0DE72-473F-2756-297D-6BA42B7AD818";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv4PosCS";
	rename -uid "0D1F8A2E-4F84-8D3E-9D0A-05865DE893EE";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv4PosPS";
	rename -uid "F17616BB-41C5-849B-D57E-7897D7DEFB09";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv0PosCS";
	rename -uid "8B148CF7-4C9C-5D63-4A45-12BDA90AF5F8";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv0PosPS";
	rename -uid "B22906E6-49AF-C1FB-08C7-1E84418FA5D6";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv1PosCS";
	rename -uid "48C73E3A-4A37-DC6A-9699-54A1EBE89B96";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv1PosPS";
	rename -uid "6B675A2C-4DD3-F948-7C0B-9C99596E4D7F";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv2PosCS";
	rename -uid "F7D36266-48EA-0E40-7546-C9AEBF778788";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv2PosPS";
	rename -uid "71714263-44FA-5996-A494-E8B4D56CF8E6";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv3PosCS";
	rename -uid "B72F509E-4D6D-5217-B744-5BB98AF54FDD";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv3PosPS";
	rename -uid "B6B382E5-4021-3AA7-F1BB-639079ED36BB";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv4PosCS";
	rename -uid "AFC84777-4358-CB17-6194-48BAC9933981";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv4PosPS";
	rename -uid "1ACCA883-4C08-B303-E67A-6AA1D1A88748";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv0PosCS";
	rename -uid "C41AB92D-4D2D-0248-E91B-2DB058695AB1";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv0PosPS";
	rename -uid "91624605-403A-A388-D3F7-91A5664051C3";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv1PosCS";
	rename -uid "78FDE3DF-4136-AEE7-3F7F-A28200C5699E";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv1PosPS";
	rename -uid "005A39AA-4274-5325-6E21-2F9C8D45B0B4";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv2PosCS";
	rename -uid "71E3D745-496D-E8A2-E144-74B8867D00EF";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv2PosPS";
	rename -uid "D25E3BD3-465F-2A0B-5C0D-D296A5DEDC84";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv3PosCS";
	rename -uid "11BEDEC1-47CF-1623-5E63-F89AC8DC3BD3";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv3PosPS";
	rename -uid "DD9C2E01-43AD-43CC-3B19-AA88393F415F";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv4PosCS";
	rename -uid "136F89A8-45E9-E505-FADD-7AAC73929619";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv4PosPS";
	rename -uid "C6CE0F8B-4C41-1824-8AE7-AB9547317064";
createNode multMatrix -n "RightEyeLidOutUpCrv0PosSurfPosMM";
	rename -uid "DD605DFE-48A4-5632-E5B0-7AAE6A14FB45";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494937e-16 -7.9329824781285163e-29 1.0000000000000004 0
		 -1.2923202946454739 0.94846662539009974 2.2768129514738602 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv0PosSurfPosDM";
	rename -uid "63B7675A-41AB-A539-8A0F-13B4763EBC56";
createNode multMatrix -n "RightEyeLidOutUpCrv1PosSurfPosMM";
	rename -uid "31AF80C1-46BE-0567-7BC1-C69CAF137648";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 3.5726976932437532e-13 2.2204460492503128e-16 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 -2.2204460492494924e-16 -7.9329824781285119e-29 0.99999999999999989 0
		 -1.708282730626292 1.4349412679426776 2.2961442103867151 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv1PosSurfPosDM";
	rename -uid "F54F7310-4E77-72F7-0B55-EEBBF247755C";
createNode multMatrix -n "RightEyeLidOutUpCrv2PosSurfPosMM";
	rename -uid "8F78C3E4-464E-5A97-0BC0-96A12310676A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -2.9999999722072399 1.9205435209111452 2.3046656277674571 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv2PosSurfPosDM";
	rename -uid "377EBEA8-4F9C-35CF-85AA-B09204CB5159";
createNode multMatrix -n "RightEyeLidOutUpCrv3PosSurfPosMM";
	rename -uid "1206D274-4860-86EE-E741-9EB0DCD2DF60";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437527e-13 0.99999999999999967 0 0 -2.2204460492494922e-16 -7.9329824781285107e-29 0.99999999999999978 0
		 -4.2917172137874946 1.4349412679408284 2.296144210386863 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv3PosSurfPosDM";
	rename -uid "10D06430-4B94-2089-9475-FFA05AB8D104";
createNode multMatrix -n "RightEyeLidOutUpCrv4PosSurfPosMM";
	rename -uid "86D19D5B-4079-AF62-8FF9-B8B29ED82861";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.7076796497676163 0.94846662538765891 2.2768129514740552 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv4PosSurfPosDM";
	rename -uid "34C8A1B3-45F0-3CB0-C6C8-6EA3FD599D43";
createNode multMatrix -n "RightEyeLidOutDownCrv0PosSurfPosMM";
	rename -uid "30C3AD04-4F21-BA38-A147-0A9271F899C3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -1.2923202946441155 -0.94846662539219107 2.2768129514738562 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv0PosSurfPosDM";
	rename -uid "DE68D9B0-4B62-8C3D-AE3E-49B7113D5155";
createNode multMatrix -n "RightEyeLidOutDownCrv1PosSurfPosMM";
	rename -uid "F452E31C-49B8-0778-B10A-69B22E7B2389";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -1.708282730624245 -1.4349412679453573 2.2961442103867191 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv1PosSurfPosDM";
	rename -uid "C2FD4266-4E33-A4EA-DFFB-F0AC7CA44C09";
createNode multMatrix -n "RightEyeLidOutDownCrv2PosSurfPosMM";
	rename -uid "430FAECA-41D3-24B4-94EB-AC8FDC55C2E4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -2.9999999722044959 -1.9205435211437034 2.3046656275774295 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv2PosSurfPosDM";
	rename -uid "0517B8A0-41A4-A734-0017-3BB3F42DBA21";
createNode multMatrix -n "RightEyeLidOutDownCrv3PosSurfPosMM";
	rename -uid "DE2A9281-46B7-C208-CBAC-81BF7A1BAED1";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -4.2917172137854367 -1.4349412679471956 2.2961442103868714 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv3PosSurfPosDM";
	rename -uid "27090000-431E-B567-54F1-E3825AD14A9A";
createNode multMatrix -n "RightEyeLidOutDownCrv4PosSurfPosMM";
	rename -uid "0CA20FE6-4AD0-A280-5E6C-E1ACA09AD6F1";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -4.7076796497662601 -0.94846662539462578 2.2768129514740565 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv4PosSurfPosDM";
	rename -uid "0181EBA4-4B3D-5FA8-B7F1-1B8C8F388AD5";
createNode multMatrix -n "RightEyeLidPinUpCrv0PosSurfPosMM";
	rename -uid "67583D92-49C2-9DA3-EFD8-47B04373D5E1";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -1.2908686454013716 1.3677171672554507 2.0512935322828532 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv0PosSurfPosDM";
	rename -uid "948283BC-450A-EDD7-D0FA-489F4206719F";
createNode multMatrix -n "RightEyeLidPinUpCrv1PosSurfPosMM";
	rename -uid "73B4DCFF-4645-4A3F-34CD-53A9ED8C4568";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 -2.2204460492494924e-16 -7.9329824781285119e-29 0.99999999999999989 0
		 -1.7369446633329362 1.7418701389656543 2.0904606012934592 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv1PosSurfPosDM";
	rename -uid "5EACA6C9-4513-378F-3974-3AA6FAB80526";
createNode multMatrix -n "RightEyeLidPinUpCrv2PosSurfPosMM";
	rename -uid "2F9971E0-45B3-7F20-28EB-818A4D86C8B6";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437548e-13 1.0000000000000002 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -2.9999999722073953 2.1213208138469226 2.1213198006613303 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv2PosSurfPosDM";
	rename -uid "43E7CE82-4534-B10B-6027-A3B37DA79A9C";
createNode multMatrix -n "RightEyeLidPinUpCrv3PosSurfPosMM";
	rename -uid "7965BE7D-416E-8491-AF40-898441D49CE5";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437548e-13 1.0000000000000002 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -4.26305529849955 1.7418701340920364 2.0904605948322112 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv3PosSurfPosDM";
	rename -uid "FB9DAB9A-4F8C-1496-92AE-64A440C24A04";
createNode multMatrix -n "RightEyeLidPinUpCrv4PosSurfPosMM";
	rename -uid "B819731A-468C-87E1-8AA6-B8983C2971E3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.7091312990123528 1.3677171672530051 2.0512935322830432 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv4PosSurfPosDM";
	rename -uid "76417E4B-4552-FF06-58A8-D3AFAF19AF37";
createNode multMatrix -n "RightEyeLidPinDownCrv0PosSurfPosMM";
	rename -uid "98590F5A-430B-EAB1-7F1B-37ABEBC8ED78";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -1.2908686453994094 -1.3677171672575386 2.0512935322828461 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv0PosSurfPosDM";
	rename -uid "D864A300-4926-7322-6EDA-36B3993B75BF";
createNode multMatrix -n "RightEyeLidPinDownCrv1PosSurfPosMM";
	rename -uid "CFE5A2BD-4165-C24D-35EE-E78DEF477E20";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -1.7369446475880574 -1.7418701301150203 2.0904605991631753 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv1PosSurfPosDM";
	rename -uid "859BD1D5-454F-1943-5B80-6BA14E636C4F";
createNode multMatrix -n "RightEyeLidPinDownCrv2PosSurfPosMM";
	rename -uid "B2D70884-4CAD-0CBC-01B1-F0AB2F803B96";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -2.9999999722043622 -2.1213208138514497 2.1213198006613312 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv2PosSurfPosDM";
	rename -uid "E4E25D52-4FAA-723B-8F69-798470E31AC5";
createNode multMatrix -n "RightEyeLidPinDownCrv3PosSurfPosMM";
	rename -uid "7FC2FBF6-4C6B-14D1-8CEC-2CAA0121E4B9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 3.5726976932437532e-13 2.2204460492503128e-16 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.263055298497056 -1.7418701340983656 2.0904605948322166 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv3PosSurfPosDM";
	rename -uid "9F31D59C-4199-B22A-667D-8BAD23BF75EE";
createNode multMatrix -n "RightEyeLidPinDownCrv4PosSurfPosMM";
	rename -uid "A6AE86CA-4F3D-EC1D-4787-F6981978019F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.7091312990103962 -1.3677171672599815 2.0512935322830401 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv4PosSurfPosDM";
	rename -uid "AF0AEA34-4B36-E560-6CEF-43AB013D9A26";
createNode multiplyDivide -n "LeftEyeLidPinUp0CtrlRvsMultMD";
	rename -uid "EE0285BE-4E60-D149-8826-1F8E49367D89";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinUp1CtrlRvsMultMD";
	rename -uid "F9065939-462A-738C-A8DD-A7BC02A24232";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinUp2CtrlRvsMultMD";
	rename -uid "4F255858-4462-DCAB-717B-2EB83D0EF5F9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinDown0CtrlRvsMultMD";
	rename -uid "4FC36109-490B-5BC4-1D45-D5BA0C544A75";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinDown1CtrlRvsMultMD";
	rename -uid "DCFAE06C-4120-871D-C866-3B85AED8A121";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinDown2CtrlRvsMultMD";
	rename -uid "0462ADCA-46D4-AD11-A300-01B9D30955B2";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinUp0CtrlRvsMultMD";
	rename -uid "A7359F2B-433B-9661-B715-66B4AF653A4C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinUp1CtrlRvsMultMD";
	rename -uid "A1FEDA41-4A8F-774C-D13A-EE85512C9360";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinUp2CtrlRvsMultMD";
	rename -uid "4025EAE3-48AE-F1E3-091E-CDADD25AE515";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinDown0CtrlRvsMultMD";
	rename -uid "5AF0A2F6-4C7E-7D02-8D40-ACA54A0D0D2D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinDown1CtrlRvsMultMD";
	rename -uid "F29F70E3-45B6-33F9-0E7E-E78BC6941C06";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinDown2CtrlRvsMultMD";
	rename -uid "B76328AA-4163-DBCB-14BB-DF8A37967F30";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "81B91F30-4FE0-DF5D-0A06-1E98B8C8F02E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 809\n            -height 208\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 808\n            -height 207\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 809\n            -height 207\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1624\n            -height 1059\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"look\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1624\\n    -height 1059\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1624\\n    -height 1059\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "517AB797-4403-74CB-BE72-92B6190F1F9C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode setRange -n "LeftEyeLidUpBlinkCenterSR";
	rename -uid "5B8CBD1B-4D01-88A7-503E-26964A0E194D";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "E33293DF-4548-D90F-CE45-CCB4B03F1996";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "LeftEyeLidDownBlinkCenterSR";
	rename -uid "F82E5444-4749-32FE-D019-2A9774AD433B";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion2";
	rename -uid "3C593B99-4EF5-6D4B-AF89-899972E6D6FD";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "RightEyeLidUpBlinkCenterSR";
	rename -uid "D59502F2-45BE-A207-84F0-038A5ADD59C8";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "RightEyeLidDownBlinkCenterSR";
	rename -uid "93A9C565-47E1-F189-54CD-B8B0E11DF002";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "BF03D275-430B-A244-976A-01BEE14B24E2";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "8A282C86-4647-BE57-6581-D4903C448223";
	setAttr ".cf" 0.017453292519943295;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrvPC";
	rename -uid "96968235-49DC-B741-7256-229A0DD3D394";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrvPC1";
	rename -uid "A520740E-4231-43D5-F720-ED9B1A2DA783";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrvPC2";
	rename -uid "9234201C-4012-D86D-F462-47BD7D4831C3";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrvPC";
	rename -uid "A9DCB8DB-47B4-B657-D81C-3FB9E286F910";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrvPC1";
	rename -uid "AB30C97E-42B4-BE53-D351-FC933714E49A";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrvPC2";
	rename -uid "3A7F0B0C-4030-0D89-B46E-A39C7C5C9ECC";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpJntCrvPC";
	rename -uid "D8C908FD-4A01-D62A-B204-5BAFFF7BFA13";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpJntCrvPC1";
	rename -uid "707147DF-4065-14C0-C80B-C2996F59842F";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpJntCrvPC2";
	rename -uid "DD757189-4AD8-F285-9743-3C81784EF6F4";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownJntCrvPC";
	rename -uid "7BCE62A3-4025-59E0-EA8E-3C9891B8387A";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownJntCrvPC1";
	rename -uid "9FCCE313-4FD2-0D6C-5960-BBA29306BCBA";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownJntCrvPC2";
	rename -uid "A24F98B8-4A8D-C137-008F-43BDE0DDF96B";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrvPC";
	rename -uid "735FB627-4BE6-80B1-C546-7AB6832C449F";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrvPC1";
	rename -uid "D3D1E0DB-4C19-52E3-8D26-90A1CF106FD5";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrvPC2";
	rename -uid "7BF1B569-45DA-28D8-7436-9BADCE35A587";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrvPC";
	rename -uid "75FEF9BF-40C6-8163-90ED-13A73EC4759C";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrvPC1";
	rename -uid "2366D7AE-4B78-6E72-1698-F6BA4BE77E78";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrvPC2";
	rename -uid "8C6FD3B0-41FA-7F11-4773-D99645E46363";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpJntCrvPC";
	rename -uid "44AF58A5-47FF-2BCF-09E1-59BFF764E551";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpJntCrvPC1";
	rename -uid "8D0024F2-45C2-6323-AE0B-3DB6A4EBC905";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpJntCrvPC2";
	rename -uid "35504370-435F-C425-F55F-6DB6D53BDA30";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownJntCrvPC";
	rename -uid "A615E59E-48FF-F5F2-A9A6-C0BB999E6AE8";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownJntCrvPC1";
	rename -uid "85DBC7A9-4EEA-1C4B-DB1F-7BA5290C1E44";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownJntCrvPC2";
	rename -uid "2625E4E7-43A4-BD0E-443E-3A865D774EAE";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode multMatrix -n "RightEyeLidPinUp2CtrlGrpMM";
	rename -uid "BC50A4B7-4772-9373-C032-8D828288FC91";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.966491239064113e-29 0.99999999999999978 0
		 -4.7091313922351778 1.3677172195778529 2.0512934770854421 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinUp2CtrlGrpDM";
	rename -uid "7133D985-4064-CBED-C4B1-E3B2BCEF6C57";
createNode multMatrix -n "RightEyeLidPinDown1CtrlGrpMM";
	rename -uid "F3B4D2A8-4191-4CA2-5227-41A1C0CECEB9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.966491239064113e-29 0.99999999999999978 0
		 -2.9999999999983631 -2.1213208763979452 2.121319757983116 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinDown1CtrlGrpDM";
	rename -uid "C86EEC48-4B60-9EFF-D51E-D5936889D93D";
createNode multMatrix -n "RightEyeLidPinUp1CtrlGrpMM";
	rename -uid "1DE924E1-4816-19BF-A207-5D89D00241CA";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.966491239064113e-29 0.99999999999999978 0
		 -3.0000000000013953 2.1213208347867711 2.1213197863444058 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinUp1CtrlGrpDM";
	rename -uid "E0CEE0ED-4A6F-D2B1-D3B5-61A117620AE2";
createNode multMatrix -n "RightEyeLidPinUp0CtrlGrpMM";
	rename -uid "EBBBEFF8-4B8A-AF12-D7A6-778B1196E15B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.966491239064113e-29 0.99999999999999978 0
		 -1.290868607766539 1.3677172195802991 2.051293477085244 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinUp0CtrlGrpDM";
	rename -uid "23EF5812-4141-9452-806C-8A8789DDA7A9";
createNode multMatrix -n "RightEyeLidPinDown0CtrlGrpMM";
	rename -uid "7AC7B16C-4C51-E9CE-2ABA-979AD8B3CEE5";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.966491239064113e-29 0.99999999999999978 0
		 -1.2908686077645843 -1.3677172195821425 2.0512934770852445 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinDown0CtrlGrpDM";
	rename -uid "B8669ED5-4259-A84F-9E15-6DA560F34ECD";
createNode multMatrix -n "RightEyeLidPinDown2CtrlGrpMM";
	rename -uid "E0EB8E0E-4AEC-C83B-7CCA-A68C30BE6AD9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.966491239064113e-29 0.99999999999999978 0
		 -4.7091313922332283 -1.3677172195845833 2.0512934770854385 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinDown2CtrlGrpDM";
	rename -uid "412837BB-4860-4BE6-948C-DB9A0A60F780";
createNode multMatrix -n "LeftEyeLidOutUpCrv0JntMM";
	rename -uid "0E369717-48C4-D230-BAD0-2A86B27C3D76";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2923203371576883 0.9484666326604666 2.276812941343608 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 1.1494967794734294e-28 0
		 0 5.5511151231257827e-17 1 0 -1.2923203371583663 -0.94846663265954323 -2.2768129413436085 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv0JntDM";
	rename -uid "1E7D19F3-4380-E75F-2555-7ABC635BD254";
createNode multMatrix -n "LeftEyeLidOutUpCrv1JntMM";
	rename -uid "C4BEBA6A-4736-CF46-7FC5-A8BD9BC3D448";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277904921 1.6777424003846582 2.3004049140264544 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5738079162683789e-13 -1.1102230246251565e-16 5.5511151231257827e-17
		 3.5726976932437522e-13 1 0 2.5243548967072378e-29 0 0 1 0 -3.0000000277916912 -1.6777424003825141 -2.3004049140264544 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv1JntDM";
	rename -uid "CAA18700-4A0D-5632-F03E-98939F233BED";
createNode multMatrix -n "LeftEyeLidOutUpCrv2JntMM";
	rename -uid "CE34DCF5-4DAD-5C32-B745-0FA084EFACEF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7076797184255721 0.94846663266900766 2.2768129413436053 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.57297524899991e-13 0 2.7755575615628914e-17
		 3.5726976932437522e-13 1 -2.5243548967072378e-29 1.2621774483536189e-29 0 0 1 0 -4.7076797184262498 -0.94846663266564379 -2.2768129413436053 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv2JntDM";
	rename -uid "6B09C7A3-446E-A008-F6D7-41AF197DDD27";
createNode multMatrix -n "LeftEyeLidOutDownCrv0JntMM";
	rename -uid "64018E81-4F86-F49F-C79A-B0AB5CFA5205";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2923203371618461 -0.94846663265560116 2.2768129413443896 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5738079162683789e-13 0 0 3.5726976932437527e-13 1 -1.1494967794738235e-28 0
		 0 0 1 0 -1.2923203371611685 0.94846663265652464 -2.2768129413443892 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv0JntDM";
	rename -uid "6951C52E-4D6A-DBB3-EF11-CCAF5B3B0599";
createNode multMatrix -n "LeftEyeLidOutDownCrv1JntMM";
	rename -uid "A41B1F52-4A8A-A8AB-4A0C-3592F359ABBF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277981869 -1.6777424035465072 2.3004049118860612 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 5.0487097934144756e-29 0
		 0 0 1 0 -3.0000000277969878 1.677742403548651 -2.3004049118860612 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv1JntDM";
	rename -uid "A2F3A438-4DA5-9BC0-8768-22914ED56108";
createNode multMatrix -n "LeftEyeLidOutDownCrv2JntMM";
	rename -uid "82BA209E-484F-A592-B578-77A70C88D373";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7076797184309065 -0.94846663264705722 2.2768129413443896 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5724201374875975e-13 0 2.7755575615628914e-17
		 3.5726976932437527e-13 1 2.5243548967072378e-29 1.2621774483536189e-29 0 0 1 0 -4.7076797184302279 0.94846663265042086 -2.2768129413443896 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv2JntDM";
	rename -uid "E0B5A8A1-4397-FCBD-5C88-4A80ED68425D";
createNode multMatrix -n "LeftEyeLidPinUpCrv0JntMM";
	rename -uid "FA638EF6-4EA4-4B6E-1E22-8A86DE672F72";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2908686355566388 1.3677172195833478 2.0512934770847076 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000002 -3.5729626120833381e-13 -7.6999693323350249e-17 0
		 3.5726976932437537e-13 1 0 0 0 0 1 0 -1.2908686355576162 -1.3677172195824254 -2.0512934770847076 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv0JntDM";
	rename -uid "955A88AB-4B64-2545-433F-4C893B08D735";
createNode multMatrix -n "LeftEyeLidPinUpCrv1JntMM";
	rename -uid "EDF7A3EA-481B-2C64-318C-8EB04DD4BF46";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277899268 1.9315955114543157 2.1058901680512729 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 5.0487097934144756e-29 0
		 0 0 1 0 -3.0000000277913066 -1.9315955114521721 -2.1058901680512729 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv1JntDM";
	rename -uid "4B9B3640-4F0C-9B14-462A-68926291EC8B";
createNode multMatrix -n "LeftEyeLidPinUpCrv2JntMM";
	rename -uid "85884BED-4F1D-B91E-F774-27BDB5D249E3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7091314200245211 1.3677172195918952 2.051293477084712 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437537e-13 1 0 0
		 0 0 1 0 -4.709131420025499 -1.3677172195885305 -2.051293477084712 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv2JntDM";
	rename -uid "BCDB7CBA-4C72-5637-7556-9386E1AA782D";
createNode multMatrix -n "LeftEyeLidPinDownCrv0JntMM";
	rename -uid "8EC85D6A-480E-8667-143D-698DFF145F0F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2908686355627199 -1.3677172195790954 2.0512934770856246 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5729626120770484e-13 7.6999693562927861e-17 0
		 3.5738079162683789e-13 1 0 0 0 0 1 0 -1.2908686355617425 1.3677172195800176 -2.0512934770856246 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv0JntDM";
	rename -uid "6A834BBD-46D0-1369-F571-D8BAB5337EB0";
createNode multMatrix -n "LeftEyeLidPinDownCrv1JntMM";
	rename -uid "F60F551D-4702-8F69-7D03-9D9F4E62E243";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277988308 -1.931595537550904 2.1058901545711777 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5726976932437537e-13 0 5.5511151231257827e-17
		 3.5726976932437527e-13 1 -5.0487097934144756e-29 2.5243548967072378e-29 0 0 1 0 -3.0000000277974506 1.9315955375530476 -2.1058901545711777 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv1JntDM";
	rename -uid "1EBDD3A0-4BAB-CCCA-0CCA-7DB37119B360";
createNode multMatrix -n "LeftEyeLidPinDownCrv2JntMM";
	rename -uid "1526D683-4F3E-F3F3-C8D2-FEAC1DBCAB1D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7091314200321275 -1.3677172195705449 2.051293477085621 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437532e-13 1.0000000000000002 0 0
		 0 0 1 0 -4.7091314200311505 1.3677172195739102 -2.051293477085621 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv2JntDM";
	rename -uid "9806846B-4124-FAFF-3CF7-4E96668FBEBC";
createNode multMatrix -n "RightEyeLidOutUpCrv0JntMM";
	rename -uid "B933B913-45EF-DF03-1BFE-83B53101EF0A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.2923202815731973 0.94846663265560438 2.27681294134414 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726404797127927e-13 -2.5277701502447903e-16 0
		 3.5726976932437527e-13 1 0 0 0 0 1 0 1.2923202815725197 -0.94846663265652797 -2.27681294134414 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv0JntDM";
	rename -uid "83998FFF-4C7A-8873-521A-0C97B9932399";
createNode multMatrix -n "RightEyeLidOutUpCrv1JntMM";
	rename -uid "24433A58-4431-AA3C-DA43-02BAB2F6513D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999722087347 1.6777424002587886 2.3004049141225242 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437532e-13 1 -5.0487097934144756e-29 0
		 -1.0253139540048461e-54 -2.8698592549372254e-42 1 0 2.9999999722075357 -1.6777424002609322 -2.3004049141225242 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv1JntDM";
	rename -uid "05C12D74-4042-E2B5-FB69-66B5EAC97A8B";
createNode multMatrix -n "RightEyeLidOutUpCrv2JntMM";
	rename -uid "72E715FA-4A37-4433-066E-D7A6EFD031C7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7076796628416719 0.9484666326495057 2.2768129413445264 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5724201374875975e-13 0 0 3.5726976932437527e-13 1 -2.5243548967072378e-29 0
		 -1.025313954004846e-54 -2.8698592549372254e-42 1 0 4.7076796628409943 -0.94846663265286935 -2.2768129413445264 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv2JntDM";
	rename -uid "70CFD1A1-4551-7404-B09F-7BB7B5312809";
createNode multMatrix -n "RightEyeLidOutDownCrv0JntMM";
	rename -uid "C722B493-44FF-5009-051B-96AEDECC04D9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.2923202815698074 -0.94846663266046405 2.2768129413441387 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437522e-13 1 -1.1494967794736971e-28 -5.6051938572992683e-45
		 0 5.5511151231257827e-17 0.99999999999999989 5.5511151231257827e-17 1.2923202815704851 0.94846663265954045 -2.2768129413441387 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv0JntDM";
	rename -uid "8D3C82A1-4EDA-BCB9-DE8B-33B980F24573";
createNode multMatrix -n "RightEyeLidOutDownCrv1JntMM";
	rename -uid "E9DEFECC-4CEB-5B0D-E8E2-F29D2AFA3EF2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999722027395 -1.6777424036723432 2.3004049117906895 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 5.0487097934144756e-29 0
		 -1.025313954004846e-54 -2.8698592549372254e-42 1 0 2.9999999722039385 1.6777424036701996 -2.3004049117906895 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv1JntDM";
	rename -uid "A0A18FEA-4795-218F-8F72-DC9A4DD8EC6E";
createNode multMatrix -n "RightEyeLidOutDownCrv2JntMM";
	rename -uid "B88260C6-4EF9-4C69-3FE7-BDBDC1DB1321";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7076796628382738 -0.94846663266655984 2.2768129413445335 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5724201374875975e-13 0 0 3.5726976932437532e-13 1 2.5243548967072378e-29 0
		 -1.0253139540048461e-54 -2.8698592549372254e-42 1 0 4.7076796628389515 0.9484666326631962 -2.2768129413445335 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv2JntDM";
	rename -uid "6143770D-492D-E99D-53D5-B6AE0C5C2EDE";
createNode multMatrix -n "RightEyeLidPinUpCrv0JntMM";
	rename -uid "C110530A-4E05-C9BA-3522-57A37BDB9D82";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.2908685799738882 1.3677172195787952 2.0512934770853106 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5714441409279105e-13 1.5073963137156081e-16 0
		 3.5715874702191286e-13 1 0 0 1.1102230246251565e-16 0 1 0 1.2908685799729107 -1.3677172195797174 -2.0512934770853102 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv0JntDM";
	rename -uid "84D7286A-404F-DBBD-EAFF-D9A90BBE06DF";
createNode multMatrix -n "RightEyeLidPinUpCrv1JntMM";
	rename -uid "2AEB55E6-4EE3-43A3-87DA-13B8BA83682F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999682736478 1.9315955137014664 2.1058901685394309 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437522e-13 1 0 0
		 -1.0253139540048459e-54 -2.8698592549372254e-42 1 0 2.9999999682722676 -1.9315955137036103 -2.1058901685394309 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv1JntDM";
	rename -uid "6C05783B-4A8A-33AE-0CFE-B1AC44B5ECA4";
createNode multMatrix -n "RightEyeLidPinUpCrv2JntMM";
	rename -uid "18C13402-418E-10FB-F0BA-BBBAEA56C033";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7091313644425252 1.3677172195726848 2.0512934770857019 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437532e-13 1.0000000000000002 0 0
		 -1.0253139540048461e-54 -2.869859254937226e-42 1 0 4.7091313644415482 -1.3677172195760499 -2.0512934770857019 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv2JntDM";
	rename -uid "5BCB979A-45D9-91A9-B829-3C8D03C4A799";
createNode multMatrix -n "RightEyeLidPinDownCrv0JntMM";
	rename -uid "D9E9563A-4DA8-DC68-6703-FA98135B5E63";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.290868579969001 -1.3677172195836462 2.0512934770853115 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000002 -3.5729626120841176e-13 7.6999693481100675e-17 6.1629758220391547e-33
		 3.5726976932437537e-13 0.99999999999999989 0 0 0 1.1102230246251565e-16 0.99999999999999989 5.5511151231257827e-17
		 1.2908685799699784 1.3677172195827236 -2.0512934770853115 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv0JntDM";
	rename -uid "908DC3C9-4AC3-698F-F330-028845B26A66";
createNode multMatrix -n "RightEyeLidPinDownCrv1JntMM";
	rename -uid "A38A7312-480F-D355-F74B-DC9CFDEBDD8E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999722023083 -1.9315955375137268 2.1058901546196003 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 -5.0487097934144756e-29 0
		 -1.025313954004846e-54 -2.8698592549372254e-42 1 0 2.9999999722036881 1.931595537511583 -2.1058901546196003 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv1JntDM";
	rename -uid "7E218486-4C10-E41F-6891-C4BFE8440E1F";
createNode multMatrix -n "RightEyeLidPinDownCrv2JntMM";
	rename -uid "3B4FB5CA-44BE-78DE-95C1-1FA71D143BEB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7091313644376447 -1.3677172195897516 2.0512934770856983 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 5.5511151231257827e-17 0
		 3.5726976932437532e-13 1 0 0 -1.0253139540048461e-54 -2.8698592549372254e-42 1 0
		 4.7091313644386217 1.3677172195863867 -2.0512934770856983 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv2JntDM";
	rename -uid "12806529-4BB2-88CB-1B67-A2B62654A2D3";
createNode blendTwoAttr -n "LeftEyeLidOutUp1ZBA";
	rename -uid "77A07BDD-4A77-15C3-C627-019089DE3DF0";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "LeftEyeLidOutUp2ZBA";
	rename -uid "1015B1D9-4917-7572-6215-5FB29171D91F";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "LeftEyeLidOutDown1ZBA";
	rename -uid "E7A6971C-4F1E-5F88-FAD7-CFA020B4FBC4";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "LeftEyeLidOutDown2ZBA";
	rename -uid "F29B86D6-4A42-C28C-D8A5-3491B7075450";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "RightEyeLidOutUp1ZBA";
	rename -uid "A9F7DC8C-4829-225F-68E2-DD981FF8F69F";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "RightEyeLidOutUp2ZBA";
	rename -uid "0DB690B3-4265-FBDF-8886-34B2A640FD22";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "blendTwoAttr1";
	rename -uid "A18112AB-48D8-E9D0-903F-B6B9F6800379";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "blendTwoAttr2";
	rename -uid "2B4B8FF5-478F-02AD-45A8-2FB1684EDE75";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "34F33239-4FC4-1170-A055-249A38AD601D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -961.90472368210237 -305.95236879492614 ;
	setAttr ".tgi[0].vh" -type "double2" 961.90472368210237 304.7618926517552 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 138 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".pram" -type "string" "";
	setAttr ".poam" -type "string" "";
	setAttr ".prlm" -type "string" "";
	setAttr ".polm" -type "string" "";
	setAttr ".prm" -type "string" "";
	setAttr ".pom" -type "string" "";
	setAttr ".pfrm" -type "string" "";
	setAttr ".pfom" -type "string" "";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidOutCtrlGrp.v";
connectAttr "LeftEyeLidOutUp1LocPS.p" "LeftEyeLidOutUp1CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutUp1CtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutUp1CtrlPos.s";
connectAttr "LeftEyeLidOutUp1CtrlRvsMultMD.o" "LeftEyeLidOutUp1CtrlRvs.t";
connectAttr "makeNurbCircle8.oc" "LeftEyeLidOutUp1CtrlShape.cr";
connectAttr "LeftEyeLidOutUp2LocPS.p" "LeftEyeLidOutUp2CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutUp2CtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutUp2CtrlPos.s";
connectAttr "LeftEyeLidOutUp2CtrlRvsMultMD.o" "LeftEyeLidOutUp2CtrlRvs.t";
connectAttr "LeftEyeLidOutUp3LocPS.p" "LeftEyeLidOutUp3CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutUp3CtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutUp3CtrlPos.s";
connectAttr "LeftEyeLidOutUp3CtrlRvsMultMD.o" "LeftEyeLidOutUp3CtrlRvs.t";
connectAttr "LeftEyeLidOutDown1LocPS.p" "LeftEyeLidOutDown1CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutDown1CtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutDown1CtrlPos.s";
connectAttr "LeftEyeLidOutDown1CtrlRvsMultMD.o" "LeftEyeLidOutDown1CtrlRvs.t";
connectAttr "LeftEyeLidOutDown2LocPS.p" "LeftEyeLidOutDown2CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutDown2CtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutDown2CtrlPos.s";
connectAttr "LeftEyeLidOutDown2CtrlRvsMultMD.o" "LeftEyeLidOutDown2CtrlRvs.t";
connectAttr "LeftEyeLidOutDown3LocPS.p" "LeftEyeLidOutDown3CtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutDown3CtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutDown3CtrlPos.s";
connectAttr "LeftEyeLidOutDown3CtrlRvsMultMD.o" "LeftEyeLidOutDown3CtrlRvs.t";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidMainCtrlGrp.v";
connectAttr "LeftEyeLidInLocPS.p" "LeftEyeLidInCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidInCtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidInCtrlPos.s";
connectAttr "LefteyeLidInCtrlRvsMultMD.o" "LeftEyeLidInMainCtrlRvs.t";
connectAttr "makeNurbCircle5.oc" "LeftEyeLidInMainCtrlShape.cr";
connectAttr "LeftEyeLidUpLocPS.p" "LeftEyeLidUpCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidUpCtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidUpCtrlPos.s";
connectAttr "LeftEyeLidUpCtrlRvsMultMD.o" "LeftEyeLidUpMainCtrlRvs.t";
connectAttr "makeNurbCircle4.oc" "LeftEyeLidUpMainCtrlShape.cr";
connectAttr "LeftEyeLidOutLocPS.p" "LeftEyeLidOutCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidOutCtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidOutCtrlPos.s";
connectAttr "LefteyeLidOutCtrlRvsMultMD.o" "LeftEyeLidOutMainCtrlRvs.t";
connectAttr "LeftEyeLidDownLocPS.p" "LeftEyeLidDownCtrlPos.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidDownCtrlPos.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidDownCtrlPos.s";
connectAttr "LefteyeLidDownCtrlRvsMultMD.o" "LeftEyeLidDownMainCtrlRvs.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidCCtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.t" "LeftEyeLidCCtrlGrp.t";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidCCtrlGrp.s";
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
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidPinCtrlGrp.v";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidPinUp0CtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidPinUp0CtrlGrp.s";
connectAttr "LeftEyeLidPinUpCrv0PosPS.p" "LeftEyeLidPinUp0CtrlGrp.t";
connectAttr "LeftEyeLidPinUp0CtrlRvsMultMD.o" "LeftEyeLidPinUp0CtrlRvsGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidPinUp1CtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidPinUp1CtrlGrp.s";
connectAttr "LeftEyeLidPinUpCrv2PosPS.p" "LeftEyeLidPinUp1CtrlGrp.t";
connectAttr "LeftEyeLidPinUp1CtrlRvsMultMD.o" "LeftEyeLidPinUp1CtrlRvsGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidPinUp2CtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidPinUp2CtrlGrp.s";
connectAttr "LeftEyeLidPinUpCrv4PosPS.p" "LeftEyeLidPinUp2CtrlGrp.t";
connectAttr "LeftEyeLidPinUp2CtrlRvsMultMD.o" "LeftEyeLidPinUp2CtrlRvsGrp.t";
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidPinDown0CtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidPinDown0CtrlGrp.s";
connectAttr "LeftEyeLidPinDownCrv0PosPS.p" "LeftEyeLidPinDown0CtrlGrp.t";
connectAttr "LeftEyeLidPinDown0CtrlRvsMultMD.o" "LeftEyeLidPinDown0CtrlRvsGrp.t"
		;
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidPinDown1CtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidPinDown1CtrlGrp.s";
connectAttr "LeftEyeLidPinDownCrv2PosPS.p" "LeftEyeLidPinDown1CtrlGrp.t";
connectAttr "LeftEyeLidPinDown1CtrlRvsMultMD.o" "LeftEyeLidPinDown1CtrlRvsGrp.t"
		;
connectAttr "LeftEyeLidRootPoser.r" "LeftEyeLidPinDown2CtrlGrp.r";
connectAttr "LeftEyeLidRootPoser.s" "LeftEyeLidPinDown2CtrlGrp.s";
connectAttr "LeftEyeLidPinDownCrv4PosPS.p" "LeftEyeLidPinDown2CtrlGrp.t";
connectAttr "LeftEyeLidPinDown2CtrlRvsMultMD.o" "LeftEyeLidPinDown2CtrlRvsGrp.t"
		;
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidOutCtrlGrp.v";
connectAttr "RightEyeLidOutUp1LocPS.p" "RightEyeLidOutUp1CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutUp1CtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutUp1CtrlGrp.s";
connectAttr "RightEyeLidOutUp1CtrlRvsMultMD.o" "RightEyeLidOutUp1CtrlRvs.t";
connectAttr "makeNurbCircle13.oc" "RightEyeLidOutUp1CtrlShape.cr";
connectAttr "RightEyeLidOutUp2LocPS.p" "RightEyeLidOutUp2CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutUp2CtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutUp2CtrlGrp.s";
connectAttr "RightEyeLidOutUp2CtrlRvsMultMD.o" "RightEyeLidOutUp2CtrlRvs.t";
connectAttr "RightEyeLidOutUp3LocPS.p" "RightEyeLidOutUp3CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutUp3CtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutUp3CtrlGrp.s";
connectAttr "RightEyeLidOutUp3CtrlRvsMultMD.o" "RightEyeLidOutUp3CtrlRvs.t";
connectAttr "RightEyeLidOutDown1LocPS.p" "RightEyeLidOutDown1CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutDown1CtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutDown1CtrlGrp.s";
connectAttr "RightEyeLidOutDown1CtrlRvsMultMD.o" "RightEyeLidOutDown1CtrlRvs.t";
connectAttr "RightEyeLidOutDown2LocPS.p" "RightEyeLidOutDown2CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutDown2CtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutDown2CtrlGrp.s";
connectAttr "RightEyeLidOutDown2CtrlRvsMultMD.o" "RightEyeLidOutDown2CtrlRvs.t";
connectAttr "RightEyeLidOutDown3LocPS.p" "RightEyeLidOutDown3CtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutDown3CtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutDown3CtrlGrp.s";
connectAttr "RightEyeLidOutDown3CtrlRvsMultMD.o" "RightEyeLidOutDown3CtrlRvs.t";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidMainCtrlGrp.v";
connectAttr "RightEyeLidInLocPS.p" "RightEyeLidInCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidInMainCtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidInMainCtrlGrp.s";
connectAttr "RighteyeLidInCtrlRvsMultMD.o" "RightEyeLidInMainCtrlRvs.t";
connectAttr "makeNurbCircle10.oc" "RightEyeLidInMainCtrlShape.cr";
connectAttr "RightEyeLidUpLocPS.p" "RightEyeLidUpCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidUpMainCtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidUpMainCtrlGrp.s";
connectAttr "RightEyeLidUpCtrlRvsMultMD.o" "RightEyeLidUpMainCtrlRvs.t";
connectAttr "makeNurbCircle9.oc" "RightEyeLidUpMainCtrlShape.cr";
connectAttr "RightEyeLidOutLocPS.p" "RightEyeLidOutCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidOutMainCtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidOutMainCtrlGrp.s";
connectAttr "RighteyeLidOutCtrlRvsMultMD.o" "RightEyeLidOutMainCtrlRvs.t";
connectAttr "RightEyeLidDownLocPS.p" "RightEyeLidDownCtrlPos.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidDownMainCtrlGrp.r";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidDownMainCtrlGrp.s";
connectAttr "RighteyeLidDownCtrlRvsMultMD.o" "RightEyeLidDownMainCtrlRvs.t";
connectAttr "RightEyeLidRootPoser.r" "RightEyeLidCCtrlGrp.r";
connectAttr "RightEyeLidRootPoser.t" "RightEyeLidCCtrlGrp.t";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidCCtrlGrp.s";
connectAttr "LeftEyeLidCCtrlOffGrp.t" "RightEyeLidCCtrlOffGrp.t";
connectAttr "LeftEyeLidCCtrlOffGrp.r" "RightEyeLidCCtrlOffGrp.r";
connectAttr "makeNurbCircle11.oc" "RightEyeLidCCtrlShape.cr";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidSegmentCtrlGrp.v";
connectAttr "RightEyeLidUp2CtrlPosGrpDM.ot" "RightEyeLidUp2CtrlPosGrp.t";
connectAttr "RightEyeLidUp2CtrlRvsMultMD.o" "RightEyeLidUp2CtrlRvsGrp.t";
connectAttr "RightEyeLidUp3CtrlPosGrpDM.ot" "RightEyeLidUp3CtrlPosGrp.t";
connectAttr "RightEyeLidUp3CtrlRvsMultMD.o" "RightEyeLidUp3CtrlRvsGrp.t";
connectAttr "RightEyeLidUp4CtrlPosGrpDM.ot" "RightEyeLidUp4CtrlPosGrp.t";
connectAttr "RightEyeLidUp4CtrlRvsMultMD.o" "RightEyeLidUp4CtrlRvsGrp.t";
connectAttr "RightEyeLidUp5CtrlPosGrpDM.ot" "RightEyeLidUp5CtrlPosGrp.t";
connectAttr "RightEyeLidUp5CtrlRvsMultMD.o" "RightEyeLidUp5CtrlRvsGrp.t";
connectAttr "RightEyeLidUp6CtrlPosGrpDM.ot" "RightEyeLidUp6CtrlPosGrp.t";
connectAttr "RightEyeLidUp6CtrlRvsMultMD.o" "RightEyeLidUp6CtrlRvsGrp.t";
connectAttr "RightEyeLidDown2CtrlPosGrpDM.ot" "RightEyeLidDown2CtrlPosGrp.t";
connectAttr "RightEyeLidDown2CtrlRvsMultMD.o" "RightEyeLidDown2CtrlRvsGrp.t";
connectAttr "RightEyeLidDown3CtrlPosGrpDM.ot" "RightEyeLidDown3CtrlPosGrp.t";
connectAttr "RightEyeLidDown3CtrlRvsMultMD.o" "RightEyeLidDown3CtrlRvsGrp.t";
connectAttr "RightEyeLidDown4CtrlPosGrpDM.ot" "RightEyeLidDown4CtrlPosGrp.t";
connectAttr "RightEyeLidDown4CtrlRvsMultMD.o" "RightEyeLidDown4CtrlRvsGrp.t";
connectAttr "RightEyeLidDown5CtrlPosGrpDM.ot" "RightEyeLidDown5CtrlPosGrp.t";
connectAttr "RightEyeLidDown5CtrlRvsMultMD.o" "RightEyeLidDown5CtrlRvsGrp.t";
connectAttr "RightEyeLidDown6CtrlPosGrpDM.ot" "RightEyeLidDown6CtrlPosGrp.t";
connectAttr "RightEyeLidDown6CtrlRvsMultMD.o" "RightEyeLidDown6CtrlRvsGrp.t";
connectAttr "RightEyeLidUp1CtrlPosGrpDM.ot" "RightEyeLidSide1CtrlPosGrp.t";
connectAttr "RightEyeLidUp1CtrlRvsMultMD.o" "RightEyeLidSide1CtrlRvsGrp.t";
connectAttr "RightEyeLidDown7CtrlPosGrpDM.ot" "RightEyeLidSide2CtrlPosGrp.t";
connectAttr "RightEyeLidSide2CtrlRvsMultMD.o" "RightEyeLidSide2CtrlRvsGrp.t";
connectAttr "RightEyeLidRootPoser.mode" "RightEyeLidPinCtrlGrp.v";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidPinUp0CtrlGrp.s";
connectAttr "RightEyeLidPinUp0CtrlGrpDM.or" "RightEyeLidPinUp0CtrlGrp.r";
connectAttr "RightEyeLidPinUpCrv0PosPS.p" "RightEyeLidPinUp0CtrlGrp.t";
connectAttr "RightEyeLidPinUp0CtrlRvsMultMD.o" "RightEyeLidPinUp0CtrlRvsGrp.t";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidPinUp1CtrlGrp.s";
connectAttr "RightEyeLidPinUp1CtrlGrpDM.or" "RightEyeLidPinUp1CtrlGrp.r";
connectAttr "RightEyeLidPinUpCrv2PosPS.p" "RightEyeLidPinUp1CtrlGrp.t";
connectAttr "RightEyeLidPinUp1CtrlRvsMultMD.o" "RightEyeLidPinUp1CtrlRvsGrp.t";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidPinUp2CtrlGrp.s";
connectAttr "RightEyeLidPinUp2CtrlGrpDM.or" "RightEyeLidPinUp2CtrlGrp.r";
connectAttr "RightEyeLidPinUpCrv4PosPS.p" "RightEyeLidPinUp2CtrlGrp.t";
connectAttr "RightEyeLidPinUp2CtrlRvsMultMD.o" "RightEyeLidPinUp2CtrlRvsGrp.t";
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidPinDown0CtrlGrp.s";
connectAttr "RightEyeLidPinDown0CtrlGrpDM.or" "RightEyeLidPinDown0CtrlGrp.r";
connectAttr "RightEyeLidPinDownCrv0PosPS.p" "RightEyeLidPinDown0CtrlGrp.t";
connectAttr "RightEyeLidPinDown0CtrlRvsMultMD.o" "RightEyeLidPinDown0CtrlRvsGrp.t"
		;
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidPinDown1CtrlGrp.s";
connectAttr "RightEyeLidPinDown1CtrlGrpDM.or" "RightEyeLidPinDown1CtrlGrp.r";
connectAttr "RightEyeLidPinDownCrv2PosPS.p" "RightEyeLidPinDown1CtrlGrp.t";
connectAttr "RightEyeLidPinDown1CtrlRvsMultMD.o" "RightEyeLidPinDown1CtrlRvsGrp.t"
		;
connectAttr "RightEyeLidRootPoser.s" "RightEyeLidPinDown2CtrlGrp.s";
connectAttr "RightEyeLidPinDown2CtrlGrpDM.or" "RightEyeLidPinDown2CtrlGrp.r";
connectAttr "RightEyeLidPinDownCrv4PosPS.p" "RightEyeLidPinDown2CtrlGrp.t";
connectAttr "RightEyeLidPinDown2CtrlRvsMultMD.o" "RightEyeLidPinDown2CtrlRvsGrp.t"
		;
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidUpCrv.v";
connectAttr "LeftEyeLidInLocShape.wp" "LeftEyeLidUpCrvShape.cp[0]";
connectAttr "LeftEyeLidInLocShape.wp" "LeftEyeLidUpCrvShape.cp[1]";
connectAttr "LeftEyeLidUpCvPos2Shape.wp" "LeftEyeLidUpCrvShape.cp[2]";
connectAttr "LeftEyeLidUpLocShape.wp" "LeftEyeLidUpCrvShape.cp[3]";
connectAttr "LeftEyeLidUpCvPos1Shape.wp" "LeftEyeLidUpCrvShape.cp[4]";
connectAttr "LeftEyeLidOutLocShape.wp" "LeftEyeLidUpCrvShape.cp[5]";
connectAttr "LeftEyeLidOutLocShape.wp" "LeftEyeLidUpCrvShape.cp[6]";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidDownCrv.v";
connectAttr "LefteyeLidInEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[0]";
connectAttr "LefteyeLidInEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[1]";
connectAttr "LeftEyeLidDownCvPos2Shape.wp" "LeftEyeLidDownCrvShape.cp[2]";
connectAttr "LeftEyeLidDownLocShape.wp" "LeftEyeLidDownCrvShape.cp[3]";
connectAttr "LeftEyeLidDownCvPos1Shape.wp" "LeftEyeLidDownCrvShape.cp[4]";
connectAttr "LefteyeLidOutEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[5]";
connectAttr "LefteyeLidOutEPPosShape.wp" "LeftEyeLidDownCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidUpJntCrv.v";
connectAttr "LeftEyeLidUp1PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[0]";
connectAttr "LeftEyeLidUp2PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[1]";
connectAttr "LeftEyeLidUp3PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[2]";
connectAttr "LeftEyeLidUp4PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[3]";
connectAttr "LeftEyeLidUp5PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[4]";
connectAttr "LeftEyeLidUp6PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[5]";
connectAttr "LeftEyeLidUp7PosShape.wp" "LeftEyeLidUpJntCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidDownJntCrv.v";
connectAttr "LeftEyeLidDown1PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[0]";
connectAttr "LeftEyeLidDown2PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[1]";
connectAttr "LeftEyeLidDown3PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[2]";
connectAttr "LeftEyeLidDown4PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[3]";
connectAttr "LeftEyeLidDown5PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[4]";
connectAttr "LeftEyeLidDown6PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[5]";
connectAttr "LeftEyeLidDown7PosShape.wp" "LeftEyeLidDownJntCrvShape.cp[6]";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidOutUpCrv.v";
connectAttr "LeftEyeLidOutUp1PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[0]";
connectAttr "LeftEyeLidOutUp1PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[1]";
connectAttr "LeftEyeLidOutUp2CvPos1Shape.wp" "LeftEyeLidOutUpCrvShape.cp[2]";
connectAttr "LeftEyeLidOutUp2PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[3]";
connectAttr "LeftEyeLidOutUp2CvPos2Shape.wp" "LeftEyeLidOutUpCrvShape.cp[4]";
connectAttr "LeftEyeLidOutUp3PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[5]";
connectAttr "LeftEyeLidOutUp3PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[6]";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidOutDownCrv.v";
connectAttr "LeftEyeLidOutDown1PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[0]";
connectAttr "LeftEyeLidOutDown1PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[1]";
connectAttr "LeftEyeLidOutDown2CvPos1Shape.wp" "LeftEyeLidOutDownCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidOutDown2PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[3]";
connectAttr "LeftEyeLidOutDown2CvPos2Shape.wp" "LeftEyeLidOutDownCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidOutDown3PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[5]";
connectAttr "LeftEyeLidOutDown3PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidOutUpJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv0PosSurfPos|LeftEyeLidOutUpCrv0Pos|LeftEyeLidOutUpCrv0PosShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv1PosSurfPos|LeftEyeLidOutUpCrv1Pos|LeftEyeLidOutUpCrv1PosShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv2PosSurfPos|LeftEyeLidOutUpCrv2Pos|LeftEyeLidOutUpCrv2PosShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv3PosSurfPos|LeftEyeLidOutUpCrv3Pos|LeftEyeLidOutUpCrv3PosShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv4PosSurfPos|LeftEyeLidOutUpCrv4Pos|LeftEyeLidOutUpCrv4PosShape.wp" "LeftEyeLidOutUpJntCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidOutDownJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv0PosSurfPos|LeftEyeLidOutDownCrv0Pos|LeftEyeLidOutDownCrv0PosShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv1PosSurfPos|LeftEyeLidOutDownCrv1Pos|LeftEyeLidOutDownCrv1PosShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv2PosSurfPos|LeftEyeLidOutDownCrv2Pos|LeftEyeLidOutDownCrv2PosShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv3PosSurfPos|LeftEyeLidOutDownCrv3Pos|LeftEyeLidOutDownCrv3PosShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv4PosSurfPos|LeftEyeLidOutDownCrv4Pos|LeftEyeLidOutDownCrv4PosShape.wp" "LeftEyeLidOutDownJntCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidPinUpCrv.v";
connectAttr "LeftEyeLidPinUp1PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[0]";
connectAttr "LeftEyeLidPinUp1PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[1]";
connectAttr "LeftEyeLidPinUp2CvPos1Shape.wp" "LeftEyeLidPinUpCrvShape.cp[2]";
connectAttr "LeftEyeLidPinUp2PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[3]";
connectAttr "LeftEyeLidPinUp2CvPos2Shape.wp" "LeftEyeLidPinUpCrvShape.cp[4]";
connectAttr "LeftEyeLidPinUp3PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[5]";
connectAttr "LeftEyeLidPinUp3PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[6]";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidPinDownCrv.v";
connectAttr "LeftEyeLidPinDown1PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[0]";
connectAttr "LeftEyeLidPinDown1PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[1]";
connectAttr "LeftEyeLidPinDown2CvPos1Shape.wp" "LeftEyeLidPinDownCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidPinDown2PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[3]";
connectAttr "LeftEyeLidPinDown2CvPos2Shape.wp" "LeftEyeLidPinDownCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidPinDown3PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[5]";
connectAttr "LeftEyeLidPinDown3PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidPinUpJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv0PosSurfPos|LeftEyeLidPinUpCrv0Pos|LeftEyeLidPinUpCrv0PosShape.wp" "LeftEyeLidPinUpJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv1PosSurfPos|LeftEyeLidPinUpCrv1Pos|LeftEyeLidPinUpCrv1PosShape.wp" "LeftEyeLidPinUpJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv2PosSurfPos|LeftEyeLidPinUpCrv2Pos|LeftEyeLidPinUpCrv2PosShape.wp" "LeftEyeLidPinUpJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv3PosSurfPos|LeftEyeLidPinUpCrv3Pos|LeftEyeLidPinUpCrv3PosShape.wp" "LeftEyeLidPinUpJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv4PosSurfPos|LeftEyeLidPinUpCrv4Pos|LeftEyeLidPinUpCrv4PosShape.wp" "LeftEyeLidPinUpJntCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidRootPoser.mode" "LeftEyeLidPinDownJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv0PosSurfPos|LeftEyeLidPinDownCrv0Pos|LeftEyeLidPinDownCrv0PosShape.wp" "LeftEyeLidPinDownJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv1PosSurfPos|LeftEyeLidPinDownCrv1Pos|LeftEyeLidPinDownCrv1PosShape.wp" "LeftEyeLidPinDownJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv2PosSurfPos|LeftEyeLidPinDownCrv2Pos|LeftEyeLidPinDownCrv2PosShape.wp" "LeftEyeLidPinDownJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv3PosSurfPos|LeftEyeLidPinDownCrv3Pos|LeftEyeLidPinDownCrv3PosShape.wp" "LeftEyeLidPinDownJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv4PosSurfPos|LeftEyeLidPinDownCrv4Pos|LeftEyeLidPinDownCrv4PosShape.wp" "LeftEyeLidPinDownJntCrvShape.cp[4]"
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
connectAttr "LeftEyeLidOutUpCrv0PosPS.p" "LeftEyeLidOutUpCrv0PosSurfPos.t";
connectAttr "LeftEyeLidOutUpCrv0PosSurfPosDM.or" "LeftEyeLidOutUpCrv0PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutUp1CtrlZML.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv0PosSurfPos|LeftEyeLidOutUpCrv0Pos.tz"
		;
connectAttr "LeftEyeLidOutUpCrv1PosPS.p" "LeftEyeLidOutUpCrv1PosSurfPos.t";
connectAttr "LeftEyeLidOutUpCrv1PosSurfPosDM.or" "LeftEyeLidOutUpCrv1PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutUp1ZBA.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv1PosSurfPos|LeftEyeLidOutUpCrv1Pos.tz"
		;
connectAttr "LeftEyeLidOutUpCrv2PosPS.p" "LeftEyeLidOutUpCrv2PosSurfPos.t";
connectAttr "LeftEyeLidOutUpCrv2PosSurfPosDM.or" "LeftEyeLidOutUpCrv2PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutUp2CtrlZML.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv2PosSurfPos|LeftEyeLidOutUpCrv2Pos.tz"
		;
connectAttr "LeftEyeLidOutUpCrv3PosPS.p" "LeftEyeLidOutUpCrv3PosSurfPos.t";
connectAttr "LeftEyeLidOutUpCrv3PosSurfPosDM.or" "LeftEyeLidOutUpCrv3PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutUp2ZBA.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv3PosSurfPos|LeftEyeLidOutUpCrv3Pos.tz"
		;
connectAttr "LeftEyeLidOutUpCrv4PosPS.p" "LeftEyeLidOutUpCrv4PosSurfPos.t";
connectAttr "LeftEyeLidOutUpCrv4PosSurfPosDM.or" "LeftEyeLidOutUpCrv4PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutUp3CtrlZML.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv4PosSurfPos|LeftEyeLidOutUpCrv4Pos.tz"
		;
connectAttr "LeftEyeLidOutDownCrv0PosPS.p" "LeftEyeLidOutDownCrv0PosSurfPos.t";
connectAttr "LeftEyeLidOutDownCrv0PosSurfPosDM.or" "LeftEyeLidOutDownCrv0PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutDown1CtrlZML.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv0PosSurfPos|LeftEyeLidOutDownCrv0Pos.tz"
		;
connectAttr "LeftEyeLidOutDownCrv1PosPS.p" "LeftEyeLidOutDownCrv1PosSurfPos.t";
connectAttr "LeftEyeLidOutDownCrv1PosSurfPosDM.or" "LeftEyeLidOutDownCrv1PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutDown1ZBA.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv1PosSurfPos|LeftEyeLidOutDownCrv1Pos.tz"
		;
connectAttr "LeftEyeLidOutDownCrv2PosPS.p" "LeftEyeLidOutDownCrv2PosSurfPos.t";
connectAttr "LeftEyeLidOutDownCrv2PosSurfPosDM.or" "LeftEyeLidOutDownCrv2PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutDown2CtrlZML.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv2PosSurfPos|LeftEyeLidOutDownCrv2Pos.tz"
		;
connectAttr "LeftEyeLidOutDownCrv3PosPS.p" "LeftEyeLidOutDownCrv3PosSurfPos.t";
connectAttr "LeftEyeLidOutDownCrv3PosSurfPosDM.or" "LeftEyeLidOutDownCrv3PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutDown2ZBA.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv3PosSurfPos|LeftEyeLidOutDownCrv3Pos.tz"
		;
connectAttr "LeftEyeLidOutDownCrv4PosPS.p" "LeftEyeLidOutDownCrv4PosSurfPos.t";
connectAttr "LeftEyeLidOutDownCrv4PosSurfPosDM.or" "LeftEyeLidOutDownCrv4PosSurfPos.r"
		;
connectAttr "LeftEyeLidOutDown3CtrlZML.o" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv4PosSurfPos|LeftEyeLidOutDownCrv4Pos.tz"
		;
connectAttr "LeftEyeLidPinUpCrv0PosPS.p" "LeftEyeLidPinUpCrv0PosSurfPos.t";
connectAttr "LeftEyeLidPinUpCrv0PosSurfPosDM.or" "LeftEyeLidPinUpCrv0PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinUpCrv1PosPS.p" "LeftEyeLidPinUpCrv1PosSurfPos.t";
connectAttr "LeftEyeLidPinUpCrv1PosSurfPosDM.or" "LeftEyeLidPinUpCrv1PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinUpCrv2PosPS.p" "LeftEyeLidPinUpCrv2PosSurfPos.t";
connectAttr "LeftEyeLidPinUpCrv2PosSurfPosDM.or" "LeftEyeLidPinUpCrv2PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinUpCrv3PosPS.p" "LeftEyeLidPinUpCrv3PosSurfPos.t";
connectAttr "LeftEyeLidPinUpCrv3PosSurfPosDM.or" "LeftEyeLidPinUpCrv3PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinUpCrv4PosPS.p" "LeftEyeLidPinUpCrv4PosSurfPos.t";
connectAttr "LeftEyeLidPinUpCrv4PosSurfPosDM.or" "LeftEyeLidPinUpCrv4PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinDownCrv0PosPS.p" "LeftEyeLidPinDownCrv0PosSurfPos.t";
connectAttr "LeftEyeLidPinDownCrv0PosSurfPosDM.or" "LeftEyeLidPinDownCrv0PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinDownCrv1PosPS.p" "LeftEyeLidPinDownCrv1PosSurfPos.t";
connectAttr "LeftEyeLidPinDownCrv1PosSurfPosDM.or" "LeftEyeLidPinDownCrv1PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinDownCrv2PosPS.p" "LeftEyeLidPinDownCrv2PosSurfPos.t";
connectAttr "LeftEyeLidPinDownCrv2PosSurfPosDM.or" "LeftEyeLidPinDownCrv2PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinDownCrv3PosPS.p" "LeftEyeLidPinDownCrv3PosSurfPos.t";
connectAttr "LeftEyeLidPinDownCrv3PosSurfPosDM.or" "LeftEyeLidPinDownCrv3PosSurfPos.r"
		;
connectAttr "LeftEyeLidPinDownCrv4PosPS.p" "LeftEyeLidPinDownCrv4PosSurfPos.t";
connectAttr "LeftEyeLidPinDownCrv4PosSurfPosDM.or" "LeftEyeLidPinDownCrv4PosSurfPos.r"
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
connectAttr "LeftEyeLidOutUpCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv0Pos.t"
		;
connectAttr "LeftEyeLidOutUpCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv1Pos.t"
		;
connectAttr "LeftEyeLidOutUpCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv2Pos.t"
		;
connectAttr "LeftEyeLidOutUpCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv3Pos.t"
		;
connectAttr "LeftEyeLidOutUpCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv4Pos.t"
		;
connectAttr "LeftEyeLidOutDownCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv0Pos.t"
		;
connectAttr "LeftEyeLidOutDownCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv1Pos.t"
		;
connectAttr "LeftEyeLidOutDownCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv2Pos.t"
		;
connectAttr "LeftEyeLidOutDownCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv3Pos.t"
		;
connectAttr "LeftEyeLidOutDownCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv4Pos.t"
		;
connectAttr "LeftEyeLidPinUpCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv0Pos.t"
		;
connectAttr "LeftEyeLidPinUpCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv1Pos.t"
		;
connectAttr "LeftEyeLidPinUpCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv2Pos.t"
		;
connectAttr "LeftEyeLidPinUpCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv3Pos.t"
		;
connectAttr "LeftEyeLidPinUpCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv4Pos.t"
		;
connectAttr "LeftEyeLidPinDownCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv0Pos.t"
		;
connectAttr "LeftEyeLidPinDownCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv1Pos.t"
		;
connectAttr "LeftEyeLidPinDownCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv2Pos.t"
		;
connectAttr "LeftEyeLidPinDownCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv3Pos.t"
		;
connectAttr "LeftEyeLidPinDownCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv4Pos.t"
		;
connectAttr "LeftEyeLidOutUpJntCrvPC.p" "LeftEyeLidOutUpCrv0AimPos.t";
connectAttr "LeftEyeLidOutUpJntCrvPC1.p" "LeftEyeLidOutUpCrv1AimPos.t";
connectAttr "LeftEyeLidOutUpJntCrvPC2.p" "LeftEyeLidOutUpCrv2AimPos.t";
connectAttr "LeftEyeLidOutDownJntCrvPC.p" "LeftEyeLidOutDownCrv0AimPos.t";
connectAttr "LeftEyeLidOutDownJntCrvPC1.p" "LeftEyeLidOutDownCrv1AimPos.t";
connectAttr "LeftEyeLidOutDownJntCrvPC2.p" "LeftEyeLidOutDownCrv2AimPos.t";
connectAttr "LeftEyeLidPinUpJntCrvPC.p" "LeftEyeLidPinUpCrv0AimPos.t";
connectAttr "LeftEyeLidPinUpJntCrvPC1.p" "LeftEyeLidPinUpCrv1AimPos.t";
connectAttr "LeftEyeLidPinUpJntCrvPC2.p" "LeftEyeLidPinUpCrv2AimPos.t";
connectAttr "LeftEyeLidPinDownJntCrvPC.p" "LeftEyeLidPinDownCrv0AimPos.t";
connectAttr "LeftEyeLidPinDownJntCrvPC1.p" "LeftEyeLidPinDownCrv1AimPos.t";
connectAttr "LeftEyeLidPinDownJntCrvPC2.p" "LeftEyeLidPinDownCrv2AimPos.t";
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
connectAttr "LeftEyeCorneaClsCluster.og[0]" "LeftEyeBallSurfShape.cr";
connectAttr "ffd1GroupId4.id" "LeftEyeBallSurfShape.iog.og[0].gid";
connectAttr "LeftEyeBallffdSet.mwc" "LeftEyeBallSurfShape.iog.og[0].gco";
connectAttr "cluster1GroupId.id" "LeftEyeBallSurfShape.iog.og[1].gid";
connectAttr "cluster1Set.mwc" "LeftEyeBallSurfShape.iog.og[1].gco";
connectAttr "makeNurbSphere1.os" "LeftEyeBallSurfShapeOrig.cr";
connectAttr "LeftEyeLidRootPoser.FFD" "LeftEyeBallFFDGrp.v";
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeLidLocGrp.v";
connectAttr "LeftEyeLidCCtrl.t" "LeftEyeLidLocGrp.t";
connectAttr "LeftEyeLidCCtrl.sy" "LeftEyeLidLocGrp.sy";
connectAttr "LeftEyeLidCCtrl.sx" "LeftEyeLidLocGrp.sx";
connectAttr "unitConversion1.o" "LeftEyeLidUpCenterGrp.rx";
connectAttr "LeftEyeLidUpMainCtrl.t" "LeftEyeLidUpLoc.t";
connectAttr "LeftEyeLidUpMainCtrl.r" "LeftEyeLidUpLoc.r";
connectAttr "unitConversion2.o" "LeftEyeLidDownCenterGrp.rx";
connectAttr "LeftEyeLidDownMainCtrl.t" "LeftEyeLidDownLoc.t";
connectAttr "LeftEyeLidDownMainCtrl.r" "LeftEyeLidDownLoc.r";
connectAttr "LeftEyeLidInMainCtrl.t" "LeftEyeLidInLoc.t";
connectAttr "LeftEyeLidInMainCtrl.r" "LeftEyeLidInLoc.r";
connectAttr "LeftEyeLidOutMainCtrl.t" "LeftEyeLidOutLoc.t";
connectAttr "LeftEyeLidOutMainCtrl.r" "LeftEyeLidOutLoc.r";
connectAttr "LeftEyeLidOutUp1LocOffGrpPB.ot" "LeftEyeLidOutUp1LocOffGrp.t";
connectAttr "LeftEyeLidOutUp1Ctrl.t" "LeftEyeLidOutUp1LocGrp.t";
connectAttr "LeftEyeLidOutUp2LocOffGrpPB.ot" "LeftEyeLidOutUp2LocOffGrp.t";
connectAttr "LeftEyeLidOutUp2Ctrl.t" "LeftEyeLidOutUp2LocGrp.t";
connectAttr "LeftEyeLidOutUp3LocOffGrpPB.ot" "LeftEyeLidOutUp3LocOffGrp.t";
connectAttr "LeftEyeLidOutUp3Ctrl.t" "LeftEyeLidOutUp3LocGrp.t";
connectAttr "LeftEyeLidOutDown1LocOffGrpPB.ot" "LeftEyeLidOutDown1LocOffGrp.t";
connectAttr "LeftEyeLidOutDown1Ctrl.t" "LeftEyeLidOutDown1LocGrp.t";
connectAttr "LeftEyeLidOutDown2LocOffGrpPB.ot" "LeftEyeLidOutDown2LocOffGrp.t";
connectAttr "LeftEyeLidOutDown2Ctrl.t" "LeftEyeLidOutDown2LocGrp.t";
connectAttr "LeftEyeLidOutDown3LocOffGrpPB.ot" "LeftEyeLidOutDown3LocOffGrp.t";
connectAttr "LeftEyeLidOutDown3Ctrl.t" "LeftEyeLidOutDown3LocGrp.t";
connectAttr "LeftEyeLidPinUp0Ctrl.t" "LeftEyeLidPinUp1LocGrp.t";
connectAttr "LeftEyeLidPinUp1Ctrl.t" "LeftEyeLidPinUp2LocGrp.t";
connectAttr "LeftEyeLidPinUp2Ctrl.t" "LeftEyeLidPinUp3LocGrp.t";
connectAttr "LeftEyeLidPinDown0Ctrl.t" "LeftEyeLidPinDown1LocGrp.t";
connectAttr "LeftEyeLidPinDown1Ctrl.t" "LeftEyeLidPinDown2LocGrp.t";
connectAttr "LeftEyeLidPinDown2Ctrl.t" "LeftEyeLidPinDown3LocGrp.t";
connectAttr "LeftEyeCorneaCtrl.t" "LeftEyeCorneaCls.t";
connectAttr "LeftEyeCorneaCtrl.r" "LeftEyeCorneaCls.r";
connectAttr "LeftEyeCorneaCtrl.s" "LeftEyeCorneaCls.s";
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
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidUpJntCrv.v";
connectAttr "RightEyeLidUp1PosShape.wp" "RightEyeLidUpJntCrvShape.cp[0]";
connectAttr "RightEyeLidUp2PosShape.wp" "RightEyeLidUpJntCrvShape.cp[1]";
connectAttr "RightEyeLidUp3PosShape.wp" "RightEyeLidUpJntCrvShape.cp[2]";
connectAttr "RightEyeLidUp4PosShape.wp" "RightEyeLidUpJntCrvShape.cp[3]";
connectAttr "RightEyeLidUp5PosShape.wp" "RightEyeLidUpJntCrvShape.cp[4]";
connectAttr "RightEyeLidUp6PosShape.wp" "RightEyeLidUpJntCrvShape.cp[5]";
connectAttr "RightEyeLidUp7PosShape.wp" "RightEyeLidUpJntCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidDownJntCrv.v";
connectAttr "RightEyeLidDown1PosShape.wp" "RightEyeLidDownJntCrvShape.cp[0]";
connectAttr "RightEyeLidDown2PosShape.wp" "RightEyeLidDownJntCrvShape.cp[1]";
connectAttr "RightEyeLidDown3PosShape.wp" "RightEyeLidDownJntCrvShape.cp[2]";
connectAttr "RightEyeLidDown4PosShape.wp" "RightEyeLidDownJntCrvShape.cp[3]";
connectAttr "RightEyeLidDown5PosShape.wp" "RightEyeLidDownJntCrvShape.cp[4]";
connectAttr "RightEyeLidDown6PosShape.wp" "RightEyeLidDownJntCrvShape.cp[5]";
connectAttr "RightEyeLidDown7PosShape.wp" "RightEyeLidDownJntCrvShape.cp[6]";
connectAttr "RightEyeLidOutUp1PosShape.wp" "RightEyeLidOutUpCrvShape.cp[0]";
connectAttr "RightEyeLidOutUp1PosShape.wp" "RightEyeLidOutUpCrvShape.cp[1]";
connectAttr "RightEyeLidOutUp2CvPos1Shape.wp" "RightEyeLidOutUpCrvShape.cp[2]";
connectAttr "RightEyeLidOutUp2PosShape.wp" "RightEyeLidOutUpCrvShape.cp[3]";
connectAttr "RightEyeLidOutUp2CvPos2Shape.wp" "RightEyeLidOutUpCrvShape.cp[4]";
connectAttr "RightEyeLidOutUp3PosShape.wp" "RightEyeLidOutUpCrvShape.cp[5]";
connectAttr "RightEyeLidOutUp3PosShape.wp" "RightEyeLidOutUpCrvShape.cp[6]";
connectAttr "RightEyeLidOutDown1PosShape.wp" "RightEyeLidOutDownCrvShape.cp[0]";
connectAttr "RightEyeLidOutDown1PosShape.wp" "RightEyeLidOutDownCrvShape.cp[1]";
connectAttr "RightEyeLidOutDown2CvPos1Shape.wp" "RightEyeLidOutDownCrvShape.cp[2]"
		;
connectAttr "RightEyeLidOutDown2PosShape.wp" "RightEyeLidOutDownCrvShape.cp[3]";
connectAttr "RightEyeLidOutDown2CvPos2Shape.wp" "RightEyeLidOutDownCrvShape.cp[4]"
		;
connectAttr "RightEyeLidOutDown3PosShape.wp" "RightEyeLidOutDownCrvShape.cp[5]";
connectAttr "RightEyeLidOutDown3PosShape.wp" "RightEyeLidOutDownCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidOutUpJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv0PosSurfPos|RightEyeLidOutUpCrv0Pos|RightEyeLidOutUpCrv0PosShape.wp" "RightEyeLidOutUpJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv1PosSurfPos|RightEyeLidOutUpCrv1Pos|RightEyeLidOutUpCrv1PosShape.wp" "RightEyeLidOutUpJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv2PosSurfPos|RightEyeLidOutUpCrv2Pos|RightEyeLidOutUpCrv2PosShape.wp" "RightEyeLidOutUpJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv3PosSurfPos|RightEyeLidOutUpCrv3Pos|RightEyeLidOutUpCrv3PosShape.wp" "RightEyeLidOutUpJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv4PosSurfPos|RightEyeLidOutUpCrv4Pos|RightEyeLidOutUpCrv4PosShape.wp" "RightEyeLidOutUpJntCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidOutDownJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv0PosSurfPos|RightEyeLidOutDownCrv0Pos|RightEyeLidOutDownCrv0PosShape.wp" "RightEyeLidOutDownJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv1PosSurfPos|RightEyeLidOutDownCrv1Pos|RightEyeLidOutDownCrv1PosShape.wp" "RightEyeLidOutDownJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv2PosSurfPos|RightEyeLidOutDownCrv2Pos|RightEyeLidOutDownCrv2PosShape.wp" "RightEyeLidOutDownJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv3PosSurfPos|RightEyeLidOutDownCrv3Pos|RightEyeLidOutDownCrv3PosShape.wp" "RightEyeLidOutDownJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv4PosSurfPos|RightEyeLidOutDownCrv4Pos|RightEyeLidOutDownCrv4PosShape.wp" "RightEyeLidOutDownJntCrvShape.cp[4]"
		;
connectAttr "RightEyeLidPinUp1PosShape.wp" "RightEyeLidPinUpCrvShape.cp[0]";
connectAttr "RightEyeLidPinUp1PosShape.wp" "RightEyeLidPinUpCrvShape.cp[1]";
connectAttr "RightEyeLidPinUp2CvPos1Shape.wp" "RightEyeLidPinUpCrvShape.cp[2]";
connectAttr "RightEyeLidPinUp2PosShape.wp" "RightEyeLidPinUpCrvShape.cp[3]";
connectAttr "RightEyeLidPinUp2CvPos2Shape.wp" "RightEyeLidPinUpCrvShape.cp[4]";
connectAttr "RightEyeLidPinUp3PosShape.wp" "RightEyeLidPinUpCrvShape.cp[5]";
connectAttr "RightEyeLidPinUp3PosShape.wp" "RightEyeLidPinUpCrvShape.cp[6]";
connectAttr "RightEyeLidPinDown1PosShape.wp" "RightEyeLidPinDownCrvShape.cp[0]";
connectAttr "RightEyeLidPinDown1PosShape.wp" "RightEyeLidPinDownCrvShape.cp[1]";
connectAttr "RightEyeLidPinDown2CvPos1Shape.wp" "RightEyeLidPinDownCrvShape.cp[2]"
		;
connectAttr "RightEyeLidPinDown2PosShape.wp" "RightEyeLidPinDownCrvShape.cp[3]";
connectAttr "RightEyeLidPinDown2CvPos2Shape.wp" "RightEyeLidPinDownCrvShape.cp[4]"
		;
connectAttr "RightEyeLidPinDown3PosShape.wp" "RightEyeLidPinDownCrvShape.cp[5]";
connectAttr "RightEyeLidPinDown3PosShape.wp" "RightEyeLidPinDownCrvShape.cp[6]";
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidPinUpJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv0PosSurfPos|RightEyeLidPinUpCrv0Pos|RightEyeLidPinUpCrv0PosShape.wp" "RightEyeLidPinUpJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv1PosSurfPos|RightEyeLidPinUpCrv1Pos|RightEyeLidPinUpCrv1PosShape.wp" "RightEyeLidPinUpJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv2PosSurfPos|RightEyeLidPinUpCrv2Pos|RightEyeLidPinUpCrv2PosShape.wp" "RightEyeLidPinUpJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv3PosSurfPos|RightEyeLidPinUpCrv3Pos|RightEyeLidPinUpCrv3PosShape.wp" "RightEyeLidPinUpJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv4PosSurfPos|RightEyeLidPinUpCrv4Pos|RightEyeLidPinUpCrv4PosShape.wp" "RightEyeLidPinUpJntCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidRootPoser.mode" "RightEyeLidPinDownJntCrv.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv0PosSurfPos|RightEyeLidPinDownCrv0Pos|RightEyeLidPinDownCrv0PosShape.wp" "RightEyeLidPinDownJntCrvShape.cp[0]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv1PosSurfPos|RightEyeLidPinDownCrv1Pos|RightEyeLidPinDownCrv1PosShape.wp" "RightEyeLidPinDownJntCrvShape.cp[1]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv2PosSurfPos|RightEyeLidPinDownCrv2Pos|RightEyeLidPinDownCrv2PosShape.wp" "RightEyeLidPinDownJntCrvShape.cp[2]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv3PosSurfPos|RightEyeLidPinDownCrv3Pos|RightEyeLidPinDownCrv3PosShape.wp" "RightEyeLidPinDownJntCrvShape.cp[3]"
		;
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv4PosSurfPos|RightEyeLidPinDownCrv4Pos|RightEyeLidPinDownCrv4PosShape.wp" "RightEyeLidPinDownJntCrvShape.cp[4]"
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
connectAttr "RightEyeLidOutUpCrv0PosPS.p" "RightEyeLidOutUpCrv0PosSurfPos.t";
connectAttr "RightEyeLidOutUpCrv0PosSurfPosDM.or" "RightEyeLidOutUpCrv0PosSurfPos.r"
		;
connectAttr "RightEyeLidOutUp1ZRvs.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv0PosSurfPos|RightEyeLidOutUpCrv0Pos.tz"
		;
connectAttr "RightEyeLidOutUpCrv1PosPS.p" "RightEyeLidOutUpCrv1PosSurfPos.t";
connectAttr "RightEyeLidOutUpCrv1PosSurfPosDM.or" "RightEyeLidOutUpCrv1PosSurfPos.r"
		;
connectAttr "RightEyeLidOutUp1ZBA.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv1PosSurfPos|RightEyeLidOutUpCrv1Pos.tz"
		;
connectAttr "RightEyeLidOutUpCrv2PosPS.p" "RightEyeLidOutUpCrv2PosSurfPos.t";
connectAttr "RightEyeLidOutUpCrv2PosSurfPosDM.or" "RightEyeLidOutUpCrv2PosSurfPos.r"
		;
connectAttr "RightEyeLidOutUp2ZRvs.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv2PosSurfPos|RightEyeLidOutUpCrv2Pos.tz"
		;
connectAttr "RightEyeLidOutUpCrv3PosPS.p" "RightEyeLidOutUpCrv3PosSurfPos.t";
connectAttr "RightEyeLidOutUpCrv3PosSurfPosDM.or" "RightEyeLidOutUpCrv3PosSurfPos.r"
		;
connectAttr "RightEyeLidOutUp2ZBA.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv3PosSurfPos|RightEyeLidOutUpCrv3Pos.tz"
		;
connectAttr "RightEyeLidOutUpCrv4PosPS.p" "RightEyeLidOutUpCrv4PosSurfPos.t";
connectAttr "RightEyeLidOutUpCrv4PosSurfPosDM.or" "RightEyeLidOutUpCrv4PosSurfPos.r"
		;
connectAttr "RightEyeLidOutUp3ZRvs.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv4PosSurfPos|RightEyeLidOutUpCrv4Pos.tz"
		;
connectAttr "RightEyeLidOutDownCrv0PosPS.p" "RightEyeLidOutDownCrv0PosSurfPos.t"
		;
connectAttr "RightEyeLidOutDownCrv0PosSurfPosDM.or" "RightEyeLidOutDownCrv0PosSurfPos.r"
		;
connectAttr "RightEyeLidOutDown1ZRvs.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv0PosSurfPos|RightEyeLidOutDownCrv0Pos.tz"
		;
connectAttr "RightEyeLidOutDownCrv1PosPS.p" "RightEyeLidOutDownCrv1PosSurfPos.t"
		;
connectAttr "RightEyeLidOutDownCrv1PosSurfPosDM.or" "RightEyeLidOutDownCrv1PosSurfPos.r"
		;
connectAttr "blendTwoAttr1.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv1PosSurfPos|RightEyeLidOutDownCrv1Pos.tz"
		;
connectAttr "RightEyeLidOutDownCrv2PosPS.p" "RightEyeLidOutDownCrv2PosSurfPos.t"
		;
connectAttr "RightEyeLidOutDownCrv2PosSurfPosDM.or" "RightEyeLidOutDownCrv2PosSurfPos.r"
		;
connectAttr "RightEyeLidOutDown2ZRvs.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv2PosSurfPos|RightEyeLidOutDownCrv2Pos.tz"
		;
connectAttr "RightEyeLidOutDownCrv3PosPS.p" "RightEyeLidOutDownCrv3PosSurfPos.t"
		;
connectAttr "RightEyeLidOutDownCrv3PosSurfPosDM.or" "RightEyeLidOutDownCrv3PosSurfPos.r"
		;
connectAttr "blendTwoAttr2.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv3PosSurfPos|RightEyeLidOutDownCrv3Pos.tz"
		;
connectAttr "RightEyeLidOutDownCrv4PosPS.p" "RightEyeLidOutDownCrv4PosSurfPos.t"
		;
connectAttr "RightEyeLidOutDownCrv4PosSurfPosDM.or" "RightEyeLidOutDownCrv4PosSurfPos.r"
		;
connectAttr "RightEyeLidOutDown3ZRvs.o" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv4PosSurfPos|RightEyeLidOutDownCrv4Pos.tz"
		;
connectAttr "RightEyeLidPinUpCrv0PosPS.p" "RightEyeLidPinUpCrv0PosSurfPos.t";
connectAttr "RightEyeLidPinUpCrv0PosSurfPosDM.or" "RightEyeLidPinUpCrv0PosSurfPos.r"
		;
connectAttr "RightEyeLidPinUpCrv1PosPS.p" "RightEyeLidPinUpCrv1PosSurfPos.t";
connectAttr "RightEyeLidPinUpCrv1PosSurfPosDM.or" "RightEyeLidPinUpCrv1PosSurfPos.r"
		;
connectAttr "RightEyeLidPinUpCrv2PosPS.p" "RightEyeLidPinUpCrv2PosSurfPos.t";
connectAttr "RightEyeLidPinUpCrv2PosSurfPosDM.or" "RightEyeLidPinUpCrv2PosSurfPos.r"
		;
connectAttr "RightEyeLidPinUpCrv3PosPS.p" "RightEyeLidPinUpCrv3PosSurfPos.t";
connectAttr "RightEyeLidPinUpCrv3PosSurfPosDM.or" "RightEyeLidPinUpCrv3PosSurfPos.r"
		;
connectAttr "RightEyeLidPinUpCrv4PosPS.p" "RightEyeLidPinUpCrv4PosSurfPos.t";
connectAttr "RightEyeLidPinUpCrv4PosSurfPosDM.or" "RightEyeLidPinUpCrv4PosSurfPos.r"
		;
connectAttr "RightEyeLidPinDownCrv0PosPS.p" "RightEyeLidPinDownCrv0PosSurfPos.t"
		;
connectAttr "RightEyeLidPinDownCrv0PosSurfPosDM.or" "RightEyeLidPinDownCrv0PosSurfPos.r"
		;
connectAttr "RightEyeLidPinDownCrv1PosPS.p" "RightEyeLidPinDownCrv1PosSurfPos.t"
		;
connectAttr "RightEyeLidPinDownCrv1PosSurfPosDM.or" "RightEyeLidPinDownCrv1PosSurfPos.r"
		;
connectAttr "RightEyeLidPinDownCrv2PosPS.p" "RightEyeLidPinDownCrv2PosSurfPos.t"
		;
connectAttr "RightEyeLidPinDownCrv2PosSurfPosDM.or" "RightEyeLidPinDownCrv2PosSurfPos.r"
		;
connectAttr "RightEyeLidPinDownCrv3PosPS.p" "RightEyeLidPinDownCrv3PosSurfPos.t"
		;
connectAttr "RightEyeLidPinDownCrv3PosSurfPosDM.or" "RightEyeLidPinDownCrv3PosSurfPos.r"
		;
connectAttr "RightEyeLidPinDownCrv4PosPS.p" "RightEyeLidPinDownCrv4PosSurfPos.t"
		;
connectAttr "RightEyeLidPinDownCrv4PosSurfPosDM.or" "RightEyeLidPinDownCrv4PosSurfPos.r"
		;
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
connectAttr "RightEyeLidOutUpCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv0Pos.t"
		;
connectAttr "RightEyeLidOutUpCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv1Pos.t"
		;
connectAttr "RightEyeLidOutUpCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv2Pos.t"
		;
connectAttr "RightEyeLidOutUpCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv3Pos.t"
		;
connectAttr "RightEyeLidOutUpCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv4Pos.t"
		;
connectAttr "RightEyeLidOutDownCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv0Pos.t"
		;
connectAttr "RightEyeLidOutDownCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv1Pos.t"
		;
connectAttr "RightEyeLidOutDownCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv2Pos.t"
		;
connectAttr "RightEyeLidOutDownCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv3Pos.t"
		;
connectAttr "RightEyeLidOutDownCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv4Pos.t"
		;
connectAttr "RightEyeLidPinUpCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv0Pos.t"
		;
connectAttr "RightEyeLidPinUpCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv1Pos.t"
		;
connectAttr "RightEyeLidPinUpCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv2Pos.t"
		;
connectAttr "RightEyeLidPinUpCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv3Pos.t"
		;
connectAttr "RightEyeLidPinUpCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv4Pos.t"
		;
connectAttr "RightEyeLidPinDownCrvPC.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv0Pos.t"
		;
connectAttr "RightEyeLidPinDownCrvPC1.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv1Pos.t"
		;
connectAttr "RightEyeLidPinDownCrvPC2.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv2Pos.t"
		;
connectAttr "RightEyeLidPinDownCrvPC3.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv3Pos.t"
		;
connectAttr "RightEyeLidPinDownCrvPC4.p" "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv4Pos.t"
		;
connectAttr "RightEyeLidOutUpJntCrvPC.p" "RightEyeLidOutUpCrv0AimPos.t";
connectAttr "RightEyeLidOutUpJntCrvPC1.p" "RightEyeLidOutUpCrv1AimPos.t";
connectAttr "RightEyeLidOutUpJntCrvPC2.p" "RightEyeLidOutUpCrv2AimPos.t";
connectAttr "RightEyeLidOutDownJntCrvPC.p" "RightEyeLidOutDownCrv0AimPos.t";
connectAttr "RightEyeLidOutDownJntCrvPC1.p" "RightEyeLidOutDownCrv1AimPos.t";
connectAttr "RightEyeLidOutDownJntCrvPC2.p" "RightEyeLidOutDownCrv2AimPos.t";
connectAttr "RightEyeLidPinUpJntCrvPC.p" "RightEyeLidPinUpCrv0AimPos.t";
connectAttr "RightEyeLidPinUpJntCrvPC1.p" "RightEyeLidPinUpCrv1AimPos.t";
connectAttr "RightEyeLidPinUpJntCrvPC2.p" "RightEyeLidPinUpCrv2AimPos.t";
connectAttr "RightEyeLidPinDownJntCrvPC.p" "RightEyeLidPinDownCrv0AimPos.t";
connectAttr "RightEyeLidPinDownJntCrvPC1.p" "RightEyeLidPinDownCrv1AimPos.t";
connectAttr "RightEyeLidPinDownJntCrvPC2.p" "RightEyeLidPinDownCrv2AimPos.t";
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
connectAttr "RightEyeCorneaClsCluster.og[0]" "RightEyeBallSurfShape.cr";
connectAttr "ffd1GroupId5.id" "RightEyeBallSurfShape.iog.og[0].gid";
connectAttr "RightEyeBallffdSet.mwc" "RightEyeBallSurfShape.iog.og[0].gco";
connectAttr "cluster2GroupId.id" "RightEyeBallSurfShape.iog.og[1].gid";
connectAttr "cluster2Set.mwc" "RightEyeBallSurfShape.iog.og[1].gco";
connectAttr "makeNurbSphere2.os" "RightEyeBallSurfShapeOrig.cr";
connectAttr "RightEyeLidRootPoser.FFD" "RightEyeBallFFDGrp.v";
connectAttr "RightEyeLidRootModeRvs.ox" "RightEyeLidLocGrp.v";
connectAttr "RightEyeLidCCtrl.sx" "RightEyeLidLocGrp.sx";
connectAttr "RightEyeLidCCtrl.sy" "RightEyeLidLocGrp.sy";
connectAttr "RightEyeLidCCtrl.t" "RightEyeLidLocGrp.t";
connectAttr "unitConversion3.o" "RightEyeLidUpPosCenterGrp.rx";
connectAttr "LeftEyeLidUpPos.t" "RightEyeLidUpPos.t";
connectAttr "RightEyeLidUpMainCtrl.t" "RightEyeLidUpLoc.t";
connectAttr "RightEyeLidUpMainCtrl.r" "RightEyeLidUpLoc.r";
connectAttr "LeftEyeLidUpCvPos2.t" "RightEyeLidUpCvPos2.t";
connectAttr "LeftEyeLidUpCvPos1.t" "RightEyeLidUpCvPos1.t";
connectAttr "unitConversion4.o" "RightEyeLidDownCenterGrp.rx";
connectAttr "LeftEyeLidDownPos.t" "RightEyeLidDownPos.t";
connectAttr "RightEyeLidDownMainCtrl.t" "RightEyeLidDownLoc.t";
connectAttr "RightEyeLidDownMainCtrl.r" "RightEyeLidDownLoc.r";
connectAttr "LeftEyeLidDownCvPos2.t" "RightEyeLidDownCvPos2.t";
connectAttr "LeftEyeLidDownCvPos1.t" "RightEyeLidDownCvPos1.t";
connectAttr "LeftEyeLidInPos.t" "RightEyeLidInPos.t";
connectAttr "RightEyeLidInMainCtrl.t" "RightEyeLidInLoc.t";
connectAttr "RightEyeLidInMainCtrl.r" "RightEyeLidInLoc.r";
connectAttr "LeftEyeLidOutPos.t" "RightEyeLidOutPos.t";
connectAttr "RightEyeLidOutMainCtrl.t" "RightEyeLidOutLoc.t";
connectAttr "RightEyeLidOutMainCtrl.r" "RightEyeLidOutLoc.r";
connectAttr "RightEyeLidOutUp1LocOffGrpPB.ot" "RightEyeLidOutUp1LocOffGrp.t";
connectAttr "RightEyeLidOutUp1Ctrl.t" "RightEyeLidOutUp1LocGrp.t";
connectAttr "LeftEyeLidOutUp1Pos.t" "RightEyeLidOutUp1Pos.t";
connectAttr "RightEyeLidOutUp2LocOffGrpPB.ot" "RightEyeLidOutUp2LocOffGrp.t";
connectAttr "RightEyeLidOutUp2Ctrl.t" "RightEyeLidOutUp2LocGrp.t";
connectAttr "LeftEyeLidOutUp2Pos.t" "RightEyeLidOutUp2Pos.t";
connectAttr "LeftEyeLidOutUp2CvPos1.t" "RightEyeLidOutUp2CvPos1.t";
connectAttr "LeftEyeLidOutUp2CvPos2.t" "RightEyeLidOutUp2CvPos2.t";
connectAttr "RightEyeLidOutUp3LocOffGrpPB.ot" "RightEyeLidOutUp3LocOffGrp.t";
connectAttr "RightEyeLidOutUp3Ctrl.t" "RightEyeLidOutUp3LocGrp.t";
connectAttr "LeftEyeLidOutUp3Pos.t" "RightEyeLidOutUp3Pos.t";
connectAttr "RightEyeLidOutDown1LocOffGrpPB.ot" "RightEyeLidOutDown1LocOffGrp.t"
		;
connectAttr "RightEyeLidOutDown1Ctrl.t" "RightEyeLidOutDown1LocGrp.t";
connectAttr "LeftEyeLidOutDown1Pos.t" "RightEyeLidOutDown1Pos.t";
connectAttr "RightEyeLidOutDown2LocOffGrpPB.ot" "RightEyeLidOutDown2LocOffGrp.t"
		;
connectAttr "RightEyeLidOutDown2Ctrl.t" "RightEyeLidOutDown2LocGrp.t";
connectAttr "LeftEyeLidOutDown2Pos.t" "RightEyeLidOutDown2Pos.t";
connectAttr "LeftEyeLidOutDown2CvPos1.t" "RightEyeLidOutDown2CvPos1.t";
connectAttr "LeftEyeLidOutDown2CvPos2.t" "RightEyeLidOutDown2CvPos2.t";
connectAttr "RightEyeLidOutDown3LocOffGrpPB.ot" "RightEyeLidOutDown3LocOffGrp.t"
		;
connectAttr "RightEyeLidOutDown3Ctrl.t" "RightEyeLidOutDown3LocGrp.t";
connectAttr "LeftEyeLidOutDown3Pos.t" "RightEyeLidOutDown3Pos.t";
connectAttr "RightEyeLidPinUp0Ctrl.t" "RightEyeLidPinUp1LocGrp.t";
connectAttr "LeftEyeLidPinUp1Pos.t" "RightEyeLidPinUp1Pos.t";
connectAttr "RightEyeLidPinUp1Ctrl.t" "RightEyeLidPinUp2LocGrp.t";
connectAttr "LeftEyeLidPinUp2Pos.t" "RightEyeLidPinUp2Pos.t";
connectAttr "LeftEyeLidPinUp2CvPos1.t" "RightEyeLidPinUp2CvPos1.t";
connectAttr "LeftEyeLidPinUp2CvPos2.t" "RightEyeLidPinUp2CvPos2.t";
connectAttr "RightEyeLidPinUp2Ctrl.t" "RightEyeLidPinUp3LocGrp.t";
connectAttr "LeftEyeLidPinUp3Pos.t" "RightEyeLidPinUp3Pos.t";
connectAttr "RightEyeLidPinDown0Ctrl.t" "RightEyeLidPinDown1LocGrp.t";
connectAttr "LeftEyeLidPinDown1Pos.t" "RightEyeLidPinDown1Pos.t";
connectAttr "RightEyeLidPinDown1Ctrl.t" "RightEyeLidPinDown2LocGrp.t";
connectAttr "LeftEyeLidPinDown2Pos.t" "RightEyeLidPinDown2Pos.t";
connectAttr "LeftEyeLidPinDown2CvPos1.t" "RightEyeLidPinDown2CvPos1.t";
connectAttr "LeftEyeLidPinDown2CvPos2.t" "RightEyeLidPinDown2CvPos2.t";
connectAttr "RightEyeLidPinDown2Ctrl.t" "RightEyeLidPinDown3LocGrp.t";
connectAttr "LeftEyeLidPinDown3Pos.t" "RightEyeLidPinDown3Pos.t";
connectAttr "RightEyeCorneaCtrl.t" "RightEyeCorneaCls.t";
connectAttr "RightEyeCorneaCtrl.r" "RightEyeCorneaCls.r";
connectAttr "RightEyeCorneaCtrl.s" "RightEyeCorneaCls.s";
connectAttr "LeftEyeLidOutUp0AimPos_aimConstraint1.crx" "LeftEyeLidOutUp0AimPos.rx"
		;
connectAttr "LeftEyeLidOutUp0AimPos_aimConstraint1.cry" "LeftEyeLidOutUp0AimPos.ry"
		;
connectAttr "LeftEyeLidOutUp0AimPos_aimConstraint1.crz" "LeftEyeLidOutUp0AimPos.rz"
		;
connectAttr "LeftEyeLidOutUpCrv0JntDM.ot" "LeftEyeLidOutUpCrv0Jnt.t";
connectAttr "LeftEyeLidOutUp0AimPos.pim" "LeftEyeLidOutUp0AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidOutUp0AimPos.t" "LeftEyeLidOutUp0AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidOutUp0AimPos.rp" "LeftEyeLidOutUp0AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidOutUp0AimPos.rpt" "LeftEyeLidOutUp0AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidOutUp0AimPos.ro" "LeftEyeLidOutUp0AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidOutUpCrv0AimPos.t" "LeftEyeLidOutUp0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidOutUpCrv0AimPos.rp" "LeftEyeLidOutUp0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidOutUpCrv0AimPos.rpt" "LeftEyeLidOutUp0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidOutUpCrv0AimPos.pm" "LeftEyeLidOutUp0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidOutUp0AimPos_aimConstraint1.w0" "LeftEyeLidOutUp0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUp0AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidOutUp1AimPos_aimConstraint1.crx" "LeftEyeLidOutUp1AimPos.rx"
		;
connectAttr "LeftEyeLidOutUp1AimPos_aimConstraint1.cry" "LeftEyeLidOutUp1AimPos.ry"
		;
connectAttr "LeftEyeLidOutUp1AimPos_aimConstraint1.crz" "LeftEyeLidOutUp1AimPos.rz"
		;
connectAttr "LeftEyeLidOutUpCrv1JntDM.ot" "LeftEyeLidOutUpCrv1Jnt.t";
connectAttr "LeftEyeLidOutUp1AimPos.pim" "LeftEyeLidOutUp1AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidOutUp1AimPos.t" "LeftEyeLidOutUp1AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidOutUp1AimPos.rp" "LeftEyeLidOutUp1AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidOutUp1AimPos.rpt" "LeftEyeLidOutUp1AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidOutUp1AimPos.ro" "LeftEyeLidOutUp1AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidOutUpCrv1AimPos.t" "LeftEyeLidOutUp1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidOutUpCrv1AimPos.rp" "LeftEyeLidOutUp1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidOutUpCrv1AimPos.rpt" "LeftEyeLidOutUp1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidOutUpCrv1AimPos.pm" "LeftEyeLidOutUp1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidOutUp1AimPos_aimConstraint1.w0" "LeftEyeLidOutUp1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUp1AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidOutUp2AimPos_aimConstraint1.crx" "LeftEyeLidOutUp2AimPos.rx"
		;
connectAttr "LeftEyeLidOutUp2AimPos_aimConstraint1.cry" "LeftEyeLidOutUp2AimPos.ry"
		;
connectAttr "LeftEyeLidOutUp2AimPos_aimConstraint1.crz" "LeftEyeLidOutUp2AimPos.rz"
		;
connectAttr "LeftEyeLidOutUpCrv2JntDM.ot" "LeftEyeLidOutUpCrv2Jnt.t";
connectAttr "LeftEyeLidOutUp2AimPos.pim" "LeftEyeLidOutUp2AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidOutUp2AimPos.t" "LeftEyeLidOutUp2AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidOutUp2AimPos.rp" "LeftEyeLidOutUp2AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidOutUp2AimPos.rpt" "LeftEyeLidOutUp2AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidOutUp2AimPos.ro" "LeftEyeLidOutUp2AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidOutUpCrv2AimPos.t" "LeftEyeLidOutUp2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidOutUpCrv2AimPos.rp" "LeftEyeLidOutUp2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidOutUpCrv2AimPos.rpt" "LeftEyeLidOutUp2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidOutUpCrv2AimPos.pm" "LeftEyeLidOutUp2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidOutUp2AimPos_aimConstraint1.w0" "LeftEyeLidOutUp2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUp2AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidOutDown0AimPos_aimConstraint1.crx" "LeftEyeLidOutDown0AimPos.rx"
		;
connectAttr "LeftEyeLidOutDown0AimPos_aimConstraint1.cry" "LeftEyeLidOutDown0AimPos.ry"
		;
connectAttr "LeftEyeLidOutDown0AimPos_aimConstraint1.crz" "LeftEyeLidOutDown0AimPos.rz"
		;
connectAttr "LeftEyeLidOutDownCrv0JntDM.ot" "LeftEyeLidOutDownCrv0Jnt.t";
connectAttr "LeftEyeLidOutDown0AimPos.pim" "LeftEyeLidOutDown0AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidOutDown0AimPos.t" "LeftEyeLidOutDown0AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidOutDown0AimPos.rp" "LeftEyeLidOutDown0AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidOutDown0AimPos.rpt" "LeftEyeLidOutDown0AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidOutDown0AimPos.ro" "LeftEyeLidOutDown0AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidOutDownCrv0AimPos.t" "LeftEyeLidOutDown0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidOutDownCrv0AimPos.rp" "LeftEyeLidOutDown0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidOutDownCrv0AimPos.rpt" "LeftEyeLidOutDown0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidOutDownCrv0AimPos.pm" "LeftEyeLidOutDown0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidOutDown0AimPos_aimConstraint1.w0" "LeftEyeLidOutDown0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDown0AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidOutDown1AimPos_aimConstraint1.crx" "LeftEyeLidOutDown1AimPos.rx"
		;
connectAttr "LeftEyeLidOutDown1AimPos_aimConstraint1.cry" "LeftEyeLidOutDown1AimPos.ry"
		;
connectAttr "LeftEyeLidOutDown1AimPos_aimConstraint1.crz" "LeftEyeLidOutDown1AimPos.rz"
		;
connectAttr "LeftEyeLidOutDownCrv1JntDM.ot" "LeftEyeLidOutDownCrv1Jnt.t";
connectAttr "LeftEyeLidOutDown1AimPos.pim" "LeftEyeLidOutDown1AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidOutDown1AimPos.t" "LeftEyeLidOutDown1AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidOutDown1AimPos.rp" "LeftEyeLidOutDown1AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidOutDown1AimPos.rpt" "LeftEyeLidOutDown1AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidOutDown1AimPos.ro" "LeftEyeLidOutDown1AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidOutDownCrv1AimPos.t" "LeftEyeLidOutDown1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidOutDownCrv1AimPos.rp" "LeftEyeLidOutDown1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidOutDownCrv1AimPos.rpt" "LeftEyeLidOutDown1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidOutDownCrv1AimPos.pm" "LeftEyeLidOutDown1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidOutDown1AimPos_aimConstraint1.w0" "LeftEyeLidOutDown1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDown1AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidOutDown2AimPos_aimConstraint1.crx" "LeftEyeLidOutDown2AimPos.rx"
		;
connectAttr "LeftEyeLidOutDown2AimPos_aimConstraint1.cry" "LeftEyeLidOutDown2AimPos.ry"
		;
connectAttr "LeftEyeLidOutDown2AimPos_aimConstraint1.crz" "LeftEyeLidOutDown2AimPos.rz"
		;
connectAttr "LeftEyeLidOutDownCrv2JntDM.ot" "LeftEyeLidOutDownCrv2Jnt.t";
connectAttr "LeftEyeLidOutDown2AimPos.pim" "LeftEyeLidOutDown2AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidOutDown2AimPos.t" "LeftEyeLidOutDown2AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidOutDown2AimPos.rp" "LeftEyeLidOutDown2AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidOutDown2AimPos.rpt" "LeftEyeLidOutDown2AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidOutDown2AimPos.ro" "LeftEyeLidOutDown2AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidOutDownCrv2AimPos.t" "LeftEyeLidOutDown2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidOutDownCrv2AimPos.rp" "LeftEyeLidOutDown2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidOutDownCrv2AimPos.rpt" "LeftEyeLidOutDown2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidOutDownCrv2AimPos.pm" "LeftEyeLidOutDown2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidOutDown2AimPos_aimConstraint1.w0" "LeftEyeLidOutDown2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDown2AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidPinUp0AimPos_aimConstraint1.crx" "LeftEyeLidPinUp0AimPos.rx"
		;
connectAttr "LeftEyeLidPinUp0AimPos_aimConstraint1.cry" "LeftEyeLidPinUp0AimPos.ry"
		;
connectAttr "LeftEyeLidPinUp0AimPos_aimConstraint1.crz" "LeftEyeLidPinUp0AimPos.rz"
		;
connectAttr "LeftEyeLidPinUpCrv0JntDM.ot" "LeftEyeLidPinUpCrv0Jnt.t";
connectAttr "LeftEyeLidPinUp0AimPos.pim" "LeftEyeLidPinUp0AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidPinUp0AimPos.t" "LeftEyeLidPinUp0AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidPinUp0AimPos.rp" "LeftEyeLidPinUp0AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidPinUp0AimPos.rpt" "LeftEyeLidPinUp0AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidPinUp0AimPos.ro" "LeftEyeLidPinUp0AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidPinUpCrv0AimPos.t" "LeftEyeLidPinUp0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidPinUpCrv0AimPos.rp" "LeftEyeLidPinUp0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidPinUpCrv0AimPos.rpt" "LeftEyeLidPinUp0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidPinUpCrv0AimPos.pm" "LeftEyeLidPinUp0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidPinUp0AimPos_aimConstraint1.w0" "LeftEyeLidPinUp0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUp0AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidPinUp1AimPos_aimConstraint1.crx" "LeftEyeLidPinUp1AimPos.rx"
		;
connectAttr "LeftEyeLidPinUp1AimPos_aimConstraint1.cry" "LeftEyeLidPinUp1AimPos.ry"
		;
connectAttr "LeftEyeLidPinUp1AimPos_aimConstraint1.crz" "LeftEyeLidPinUp1AimPos.rz"
		;
connectAttr "LeftEyeLidPinUpCrv1JntDM.ot" "LeftEyeLidPinUpCrv1Jnt.t";
connectAttr "LeftEyeLidPinUp1AimPos.pim" "LeftEyeLidPinUp1AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidPinUp1AimPos.t" "LeftEyeLidPinUp1AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidPinUp1AimPos.rp" "LeftEyeLidPinUp1AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidPinUp1AimPos.rpt" "LeftEyeLidPinUp1AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidPinUp1AimPos.ro" "LeftEyeLidPinUp1AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidPinUpCrv1AimPos.t" "LeftEyeLidPinUp1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidPinUpCrv1AimPos.rp" "LeftEyeLidPinUp1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidPinUpCrv1AimPos.rpt" "LeftEyeLidPinUp1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidPinUpCrv1AimPos.pm" "LeftEyeLidPinUp1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidPinUp1AimPos_aimConstraint1.w0" "LeftEyeLidPinUp1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUp1AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidPinUp2AimPos_aimConstraint1.crx" "LeftEyeLidPinUp2AimPos.rx"
		;
connectAttr "LeftEyeLidPinUp2AimPos_aimConstraint1.cry" "LeftEyeLidPinUp2AimPos.ry"
		;
connectAttr "LeftEyeLidPinUp2AimPos_aimConstraint1.crz" "LeftEyeLidPinUp2AimPos.rz"
		;
connectAttr "LeftEyeLidPinUpCrv2JntDM.ot" "LeftEyeLidPinUpCrv2Jnt.t";
connectAttr "LeftEyeLidPinUp2AimPos.pim" "LeftEyeLidPinUp2AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidPinUp2AimPos.t" "LeftEyeLidPinUp2AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidPinUp2AimPos.rp" "LeftEyeLidPinUp2AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidPinUp2AimPos.rpt" "LeftEyeLidPinUp2AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidPinUp2AimPos.ro" "LeftEyeLidPinUp2AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidPinUpCrv2AimPos.t" "LeftEyeLidPinUp2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidPinUpCrv2AimPos.rp" "LeftEyeLidPinUp2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidPinUpCrv2AimPos.rpt" "LeftEyeLidPinUp2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidPinUpCrv2AimPos.pm" "LeftEyeLidPinUp2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidPinUp2AimPos_aimConstraint1.w0" "LeftEyeLidPinUp2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUp2AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidPinDown0AimPos_aimConstraint1.crx" "LeftEyeLidPinDown0AimPos.rx"
		;
connectAttr "LeftEyeLidPinDown0AimPos_aimConstraint1.cry" "LeftEyeLidPinDown0AimPos.ry"
		;
connectAttr "LeftEyeLidPinDown0AimPos_aimConstraint1.crz" "LeftEyeLidPinDown0AimPos.rz"
		;
connectAttr "LeftEyeLidPinDownCrv0JntDM.ot" "LeftEyeLidPinDownCrv0Jnt.t";
connectAttr "LeftEyeLidPinDown0AimPos.pim" "LeftEyeLidPinDown0AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidPinDown0AimPos.t" "LeftEyeLidPinDown0AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidPinDown0AimPos.rp" "LeftEyeLidPinDown0AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidPinDown0AimPos.rpt" "LeftEyeLidPinDown0AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidPinDown0AimPos.ro" "LeftEyeLidPinDown0AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidPinDownCrv0AimPos.t" "LeftEyeLidPinDown0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidPinDownCrv0AimPos.rp" "LeftEyeLidPinDown0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidPinDownCrv0AimPos.rpt" "LeftEyeLidPinDown0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidPinDownCrv0AimPos.pm" "LeftEyeLidPinDown0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidPinDown0AimPos_aimConstraint1.w0" "LeftEyeLidPinDown0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDown0AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidPinDown1AimPos_aimConstraint1.crx" "LeftEyeLidPinDown1AimPos.rx"
		;
connectAttr "LeftEyeLidPinDown1AimPos_aimConstraint1.cry" "LeftEyeLidPinDown1AimPos.ry"
		;
connectAttr "LeftEyeLidPinDown1AimPos_aimConstraint1.crz" "LeftEyeLidPinDown1AimPos.rz"
		;
connectAttr "LeftEyeLidPinDownCrv1JntDM.ot" "LeftEyeLidPinDownCrv1Jnt.t";
connectAttr "LeftEyeLidPinDown1AimPos.pim" "LeftEyeLidPinDown1AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidPinDown1AimPos.t" "LeftEyeLidPinDown1AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidPinDown1AimPos.rp" "LeftEyeLidPinDown1AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidPinDown1AimPos.rpt" "LeftEyeLidPinDown1AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidPinDown1AimPos.ro" "LeftEyeLidPinDown1AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidPinDownCrv1AimPos.t" "LeftEyeLidPinDown1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidPinDownCrv1AimPos.rp" "LeftEyeLidPinDown1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidPinDownCrv1AimPos.rpt" "LeftEyeLidPinDown1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidPinDownCrv1AimPos.pm" "LeftEyeLidPinDown1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidPinDown1AimPos_aimConstraint1.w0" "LeftEyeLidPinDown1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDown1AimPos_aimConstraint1.wum";
connectAttr "LeftEyeLidPinDown2AimPos_aimConstraint1.crx" "LeftEyeLidPinDown2AimPos.rx"
		;
connectAttr "LeftEyeLidPinDown2AimPos_aimConstraint1.cry" "LeftEyeLidPinDown2AimPos.ry"
		;
connectAttr "LeftEyeLidPinDown2AimPos_aimConstraint1.crz" "LeftEyeLidPinDown2AimPos.rz"
		;
connectAttr "LeftEyeLidPinDownCrv2JntDM.ot" "LeftEyeLidPinDownCrv2Jnt.t";
connectAttr "LeftEyeLidPinDown2AimPos.pim" "LeftEyeLidPinDown2AimPos_aimConstraint1.cpim"
		;
connectAttr "LeftEyeLidPinDown2AimPos.t" "LeftEyeLidPinDown2AimPos_aimConstraint1.ct"
		;
connectAttr "LeftEyeLidPinDown2AimPos.rp" "LeftEyeLidPinDown2AimPos_aimConstraint1.crp"
		;
connectAttr "LeftEyeLidPinDown2AimPos.rpt" "LeftEyeLidPinDown2AimPos_aimConstraint1.crt"
		;
connectAttr "LeftEyeLidPinDown2AimPos.ro" "LeftEyeLidPinDown2AimPos_aimConstraint1.cro"
		;
connectAttr "LeftEyeLidPinDownCrv2AimPos.t" "LeftEyeLidPinDown2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "LeftEyeLidPinDownCrv2AimPos.rp" "LeftEyeLidPinDown2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "LeftEyeLidPinDownCrv2AimPos.rpt" "LeftEyeLidPinDown2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "LeftEyeLidPinDownCrv2AimPos.pm" "LeftEyeLidPinDown2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "LeftEyeLidPinDown2AimPos_aimConstraint1.w0" "LeftEyeLidPinDown2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDown2AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidOutUp0AimPos_aimConstraint1.crx" "RightEyeLidOutUp0AimPos.rx"
		;
connectAttr "RightEyeLidOutUp0AimPos_aimConstraint1.cry" "RightEyeLidOutUp0AimPos.ry"
		;
connectAttr "RightEyeLidOutUp0AimPos_aimConstraint1.crz" "RightEyeLidOutUp0AimPos.rz"
		;
connectAttr "RightEyeLidOutUpCrv0JntDM.ot" "RightEyeLidOutUpCrv0Jnt.t";
connectAttr "RightEyeLidOutUp0AimPos.pim" "RightEyeLidOutUp0AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidOutUp0AimPos.t" "RightEyeLidOutUp0AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidOutUp0AimPos.rp" "RightEyeLidOutUp0AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidOutUp0AimPos.rpt" "RightEyeLidOutUp0AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidOutUp0AimPos.ro" "RightEyeLidOutUp0AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidOutUpCrv0AimPos.t" "RightEyeLidOutUp0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidOutUpCrv0AimPos.rp" "RightEyeLidOutUp0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidOutUpCrv0AimPos.rpt" "RightEyeLidOutUp0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidOutUpCrv0AimPos.pm" "RightEyeLidOutUp0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidOutUp0AimPos_aimConstraint1.w0" "RightEyeLidOutUp0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUp0AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidOutUp1AimPos_aimConstraint1.crx" "RightEyeLidOutUp1AimPos.rx"
		;
connectAttr "RightEyeLidOutUp1AimPos_aimConstraint1.cry" "RightEyeLidOutUp1AimPos.ry"
		;
connectAttr "RightEyeLidOutUp1AimPos_aimConstraint1.crz" "RightEyeLidOutUp1AimPos.rz"
		;
connectAttr "RightEyeLidOutUpCrv1JntDM.ot" "RightEyeLidOutUpCrv1Jnt.t";
connectAttr "RightEyeLidOutUp1AimPos.pim" "RightEyeLidOutUp1AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidOutUp1AimPos.t" "RightEyeLidOutUp1AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidOutUp1AimPos.rp" "RightEyeLidOutUp1AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidOutUp1AimPos.rpt" "RightEyeLidOutUp1AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidOutUp1AimPos.ro" "RightEyeLidOutUp1AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidOutUpCrv1AimPos.t" "RightEyeLidOutUp1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidOutUpCrv1AimPos.rp" "RightEyeLidOutUp1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidOutUpCrv1AimPos.rpt" "RightEyeLidOutUp1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidOutUpCrv1AimPos.pm" "RightEyeLidOutUp1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidOutUp1AimPos_aimConstraint1.w0" "RightEyeLidOutUp1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUp1AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidOutUp2AimPos_aimConstraint1.crx" "RightEyeLidOutUp2AimPos.rx"
		;
connectAttr "RightEyeLidOutUp2AimPos_aimConstraint1.cry" "RightEyeLidOutUp2AimPos.ry"
		;
connectAttr "RightEyeLidOutUp2AimPos_aimConstraint1.crz" "RightEyeLidOutUp2AimPos.rz"
		;
connectAttr "RightEyeLidOutUpCrv2JntDM.ot" "RightEyeLidOutUpCrv2Jnt.t";
connectAttr "RightEyeLidOutUp2AimPos.pim" "RightEyeLidOutUp2AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidOutUp2AimPos.t" "RightEyeLidOutUp2AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidOutUp2AimPos.rp" "RightEyeLidOutUp2AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidOutUp2AimPos.rpt" "RightEyeLidOutUp2AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidOutUp2AimPos.ro" "RightEyeLidOutUp2AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidOutUpCrv2AimPos.t" "RightEyeLidOutUp2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidOutUpCrv2AimPos.rp" "RightEyeLidOutUp2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidOutUpCrv2AimPos.rpt" "RightEyeLidOutUp2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidOutUpCrv2AimPos.pm" "RightEyeLidOutUp2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidOutUp2AimPos_aimConstraint1.w0" "RightEyeLidOutUp2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUp2AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidOutDown0AimPos_aimConstraint1.crx" "RightEyeLidOutDown0AimPos.rx"
		;
connectAttr "RightEyeLidOutDown0AimPos_aimConstraint1.cry" "RightEyeLidOutDown0AimPos.ry"
		;
connectAttr "RightEyeLidOutDown0AimPos_aimConstraint1.crz" "RightEyeLidOutDown0AimPos.rz"
		;
connectAttr "RightEyeLidOutDownCrv0JntDM.ot" "RightEyeLidOutDownCrv0Jnt.t";
connectAttr "RightEyeLidOutDown0AimPos.pim" "RightEyeLidOutDown0AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidOutDown0AimPos.t" "RightEyeLidOutDown0AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidOutDown0AimPos.rp" "RightEyeLidOutDown0AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidOutDown0AimPos.rpt" "RightEyeLidOutDown0AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidOutDown0AimPos.ro" "RightEyeLidOutDown0AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidOutDownCrv0AimPos.t" "RightEyeLidOutDown0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidOutDownCrv0AimPos.rp" "RightEyeLidOutDown0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidOutDownCrv0AimPos.rpt" "RightEyeLidOutDown0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidOutDownCrv0AimPos.pm" "RightEyeLidOutDown0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidOutDown0AimPos_aimConstraint1.w0" "RightEyeLidOutDown0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDown0AimPos_aimConstraint1.wum"
		;
connectAttr "RightEyeLidOutDown1AimPos_aimConstraint1.crx" "RightEyeLidOutDown1AimPos.rx"
		;
connectAttr "RightEyeLidOutDown1AimPos_aimConstraint1.cry" "RightEyeLidOutDown1AimPos.ry"
		;
connectAttr "RightEyeLidOutDown1AimPos_aimConstraint1.crz" "RightEyeLidOutDown1AimPos.rz"
		;
connectAttr "RightEyeLidOutDownCrv1JntDM.ot" "RightEyeLidOutDownCrv1Jnt.t";
connectAttr "RightEyeLidOutDown1AimPos.pim" "RightEyeLidOutDown1AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidOutDown1AimPos.t" "RightEyeLidOutDown1AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidOutDown1AimPos.rp" "RightEyeLidOutDown1AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidOutDown1AimPos.rpt" "RightEyeLidOutDown1AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidOutDown1AimPos.ro" "RightEyeLidOutDown1AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidOutDownCrv1AimPos.t" "RightEyeLidOutDown1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidOutDownCrv1AimPos.rp" "RightEyeLidOutDown1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidOutDownCrv1AimPos.rpt" "RightEyeLidOutDown1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidOutDownCrv1AimPos.pm" "RightEyeLidOutDown1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidOutDown1AimPos_aimConstraint1.w0" "RightEyeLidOutDown1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDown1AimPos_aimConstraint1.wum"
		;
connectAttr "RightEyeLidOutDown2AimPos_aimConstraint1.crx" "RightEyeLidOutDown2AimPos.rx"
		;
connectAttr "RightEyeLidOutDown2AimPos_aimConstraint1.cry" "RightEyeLidOutDown2AimPos.ry"
		;
connectAttr "RightEyeLidOutDown2AimPos_aimConstraint1.crz" "RightEyeLidOutDown2AimPos.rz"
		;
connectAttr "RightEyeLidOutDownCrv2JntDM.ot" "RightEyeLidOutDownCrv2Jnt.t";
connectAttr "RightEyeLidOutDown2AimPos.pim" "RightEyeLidOutDown2AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidOutDown2AimPos.t" "RightEyeLidOutDown2AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidOutDown2AimPos.rp" "RightEyeLidOutDown2AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidOutDown2AimPos.rpt" "RightEyeLidOutDown2AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidOutDown2AimPos.ro" "RightEyeLidOutDown2AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidOutDownCrv2AimPos.t" "RightEyeLidOutDown2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidOutDownCrv2AimPos.rp" "RightEyeLidOutDown2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidOutDownCrv2AimPos.rpt" "RightEyeLidOutDown2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidOutDownCrv2AimPos.pm" "RightEyeLidOutDown2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidOutDown2AimPos_aimConstraint1.w0" "RightEyeLidOutDown2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDown2AimPos_aimConstraint1.wum"
		;
connectAttr "RightEyeLidPinUp0AimPos_aimConstraint1.crx" "RightEyeLidPinUp0AimPos.rx"
		;
connectAttr "RightEyeLidPinUp0AimPos_aimConstraint1.cry" "RightEyeLidPinUp0AimPos.ry"
		;
connectAttr "RightEyeLidPinUp0AimPos_aimConstraint1.crz" "RightEyeLidPinUp0AimPos.rz"
		;
connectAttr "RightEyeLidPinUpCrv0JntDM.ot" "RightEyeLidPinUpCrv0Jnt.t";
connectAttr "RightEyeLidPinUp0AimPos.pim" "RightEyeLidPinUp0AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidPinUp0AimPos.t" "RightEyeLidPinUp0AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidPinUp0AimPos.rp" "RightEyeLidPinUp0AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidPinUp0AimPos.rpt" "RightEyeLidPinUp0AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidPinUp0AimPos.ro" "RightEyeLidPinUp0AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidPinUpCrv0AimPos.t" "RightEyeLidPinUp0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidPinUpCrv0AimPos.rp" "RightEyeLidPinUp0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidPinUpCrv0AimPos.rpt" "RightEyeLidPinUp0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidPinUpCrv0AimPos.pm" "RightEyeLidPinUp0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidPinUp0AimPos_aimConstraint1.w0" "RightEyeLidPinUp0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUp0AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidPinUp1AimPos_aimConstraint1.crx" "RightEyeLidPinUp1AimPos.rx"
		;
connectAttr "RightEyeLidPinUp1AimPos_aimConstraint1.cry" "RightEyeLidPinUp1AimPos.ry"
		;
connectAttr "RightEyeLidPinUp1AimPos_aimConstraint1.crz" "RightEyeLidPinUp1AimPos.rz"
		;
connectAttr "RightEyeLidPinUpCrv1JntDM.ot" "RightEyeLidPinUpCrv1Jnt.t";
connectAttr "RightEyeLidPinUp1AimPos.pim" "RightEyeLidPinUp1AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidPinUp1AimPos.t" "RightEyeLidPinUp1AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidPinUp1AimPos.rp" "RightEyeLidPinUp1AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidPinUp1AimPos.rpt" "RightEyeLidPinUp1AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidPinUp1AimPos.ro" "RightEyeLidPinUp1AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidPinUpCrv1AimPos.t" "RightEyeLidPinUp1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidPinUpCrv1AimPos.rp" "RightEyeLidPinUp1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidPinUpCrv1AimPos.rpt" "RightEyeLidPinUp1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidPinUpCrv1AimPos.pm" "RightEyeLidPinUp1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidPinUp1AimPos_aimConstraint1.w0" "RightEyeLidPinUp1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUp1AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidPinUp2AimPos_aimConstraint1.crx" "RightEyeLidPinUp2AimPos.rx"
		;
connectAttr "RightEyeLidPinUp2AimPos_aimConstraint1.cry" "RightEyeLidPinUp2AimPos.ry"
		;
connectAttr "RightEyeLidPinUp2AimPos_aimConstraint1.crz" "RightEyeLidPinUp2AimPos.rz"
		;
connectAttr "RightEyeLidPinUpCrv2JntDM.ot" "RightEyeLidPinUpCrv2Jnt.t";
connectAttr "RightEyeLidPinUp2AimPos.pim" "RightEyeLidPinUp2AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidPinUp2AimPos.t" "RightEyeLidPinUp2AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidPinUp2AimPos.rp" "RightEyeLidPinUp2AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidPinUp2AimPos.rpt" "RightEyeLidPinUp2AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidPinUp2AimPos.ro" "RightEyeLidPinUp2AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidPinUpCrv2AimPos.t" "RightEyeLidPinUp2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidPinUpCrv2AimPos.rp" "RightEyeLidPinUp2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidPinUpCrv2AimPos.rpt" "RightEyeLidPinUp2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidPinUpCrv2AimPos.pm" "RightEyeLidPinUp2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidPinUp2AimPos_aimConstraint1.w0" "RightEyeLidPinUp2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUp2AimPos_aimConstraint1.wum";
connectAttr "RightEyeLidPinDown0AimPos_aimConstraint1.crx" "RightEyeLidPinDown0AimPos.rx"
		;
connectAttr "RightEyeLidPinDown0AimPos_aimConstraint1.cry" "RightEyeLidPinDown0AimPos.ry"
		;
connectAttr "RightEyeLidPinDown0AimPos_aimConstraint1.crz" "RightEyeLidPinDown0AimPos.rz"
		;
connectAttr "RightEyeLidPinDownCrv0JntDM.ot" "RightEyeLidPinDownCrv0Jnt.t";
connectAttr "RightEyeLidPinDown0AimPos.pim" "RightEyeLidPinDown0AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidPinDown0AimPos.t" "RightEyeLidPinDown0AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidPinDown0AimPos.rp" "RightEyeLidPinDown0AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidPinDown0AimPos.rpt" "RightEyeLidPinDown0AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidPinDown0AimPos.ro" "RightEyeLidPinDown0AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidPinDownCrv0AimPos.t" "RightEyeLidPinDown0AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidPinDownCrv0AimPos.rp" "RightEyeLidPinDown0AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidPinDownCrv0AimPos.rpt" "RightEyeLidPinDown0AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidPinDownCrv0AimPos.pm" "RightEyeLidPinDown0AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidPinDown0AimPos_aimConstraint1.w0" "RightEyeLidPinDown0AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDown0AimPos_aimConstraint1.wum"
		;
connectAttr "RightEyeLidPinDown1AimPos_aimConstraint1.crx" "RightEyeLidPinDown1AimPos.rx"
		;
connectAttr "RightEyeLidPinDown1AimPos_aimConstraint1.cry" "RightEyeLidPinDown1AimPos.ry"
		;
connectAttr "RightEyeLidPinDown1AimPos_aimConstraint1.crz" "RightEyeLidPinDown1AimPos.rz"
		;
connectAttr "RightEyeLidPinDownCrv1JntDM.ot" "RightEyeLidPinDownCrv1Jnt.t";
connectAttr "RightEyeLidPinDown1AimPos.pim" "RightEyeLidPinDown1AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidPinDown1AimPos.t" "RightEyeLidPinDown1AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidPinDown1AimPos.rp" "RightEyeLidPinDown1AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidPinDown1AimPos.rpt" "RightEyeLidPinDown1AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidPinDown1AimPos.ro" "RightEyeLidPinDown1AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidPinDownCrv1AimPos.t" "RightEyeLidPinDown1AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidPinDownCrv1AimPos.rp" "RightEyeLidPinDown1AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidPinDownCrv1AimPos.rpt" "RightEyeLidPinDown1AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidPinDownCrv1AimPos.pm" "RightEyeLidPinDown1AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidPinDown1AimPos_aimConstraint1.w0" "RightEyeLidPinDown1AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDown1AimPos_aimConstraint1.wum"
		;
connectAttr "RightEyeLidPinDown2AimPos_aimConstraint1.crx" "RightEyeLidPinDown2AimPos.rx"
		;
connectAttr "RightEyeLidPinDown2AimPos_aimConstraint1.cry" "RightEyeLidPinDown2AimPos.ry"
		;
connectAttr "RightEyeLidPinDown2AimPos_aimConstraint1.crz" "RightEyeLidPinDown2AimPos.rz"
		;
connectAttr "RightEyeLidPinDownCrv2JntDM.ot" "RightEyeLidPinDownCrv2Jnt.t";
connectAttr "RightEyeLidPinDown2AimPos.pim" "RightEyeLidPinDown2AimPos_aimConstraint1.cpim"
		;
connectAttr "RightEyeLidPinDown2AimPos.t" "RightEyeLidPinDown2AimPos_aimConstraint1.ct"
		;
connectAttr "RightEyeLidPinDown2AimPos.rp" "RightEyeLidPinDown2AimPos_aimConstraint1.crp"
		;
connectAttr "RightEyeLidPinDown2AimPos.rpt" "RightEyeLidPinDown2AimPos_aimConstraint1.crt"
		;
connectAttr "RightEyeLidPinDown2AimPos.ro" "RightEyeLidPinDown2AimPos_aimConstraint1.cro"
		;
connectAttr "RightEyeLidPinDownCrv2AimPos.t" "RightEyeLidPinDown2AimPos_aimConstraint1.tg[0].tt"
		;
connectAttr "RightEyeLidPinDownCrv2AimPos.rp" "RightEyeLidPinDown2AimPos_aimConstraint1.tg[0].trp"
		;
connectAttr "RightEyeLidPinDownCrv2AimPos.rpt" "RightEyeLidPinDown2AimPos_aimConstraint1.tg[0].trt"
		;
connectAttr "RightEyeLidPinDownCrv2AimPos.pm" "RightEyeLidPinDown2AimPos_aimConstraint1.tg[0].tpm"
		;
connectAttr "RightEyeLidPinDown2AimPos_aimConstraint1.w0" "RightEyeLidPinDown2AimPos_aimConstraint1.tg[0].tw"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDown2AimPos_aimConstraint1.wum"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp1LocPS.is";
connectAttr "LeftEyeLidOutUp1LocCS.u" "LeftEyeLidOutUp1LocPS.u";
connectAttr "LeftEyeLidOutUp1LocCS.v" "LeftEyeLidOutUp1LocPS.v";
connectAttr "LeftEyeLidOutUp1PosShape.wp" "LeftEyeLidOutUp1LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp1LocCS.is";
connectAttr "LeftEyeLidOutUp1Ctrl.t" "LeftEyeLidOutUp1CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocPS.is";
connectAttr "LeftEyeLidOutUp2LocCS.u" "LeftEyeLidOutUp2LocPS.u";
connectAttr "LeftEyeLidOutUp2LocCS.v" "LeftEyeLidOutUp2LocPS.v";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocCS.is";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv2PosSurfPos|LeftEyeLidOutUpCrv2Pos|LeftEyeLidOutUpCrv2PosShape.wp" "LeftEyeLidOutUp2LocCS.ip"
		;
connectAttr "LeftEyeLidOutUp2Ctrl.t" "LeftEyeLidOutUp2CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocPS.is";
connectAttr "LeftEyeLidOutUp3LocCS.u" "LeftEyeLidOutUp3LocPS.u";
connectAttr "LeftEyeLidOutUp3LocCS.v" "LeftEyeLidOutUp3LocPS.v";
connectAttr "LeftEyeLidOutUp3PosShape.wp" "LeftEyeLidOutUp3LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocCS.is";
connectAttr "LeftEyeLidOutUp3Ctrl.t" "LeftEyeLidOutUp3CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocPS.is";
connectAttr "LeftEyeLidOutDown1LocCS.u" "LeftEyeLidOutDown1LocPS.u";
connectAttr "LeftEyeLidOutDown1LocCS.v" "LeftEyeLidOutDown1LocPS.v";
connectAttr "LeftEyeLidOutDown1PosShape.wp" "LeftEyeLidOutDown1LocCS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocCS.is";
connectAttr "LeftEyeLidOutDown1Ctrl.t" "LeftEyeLidOutDown1CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocPS.is";
connectAttr "LeftEyeLidOutDown2LocCS.u" "LeftEyeLidOutDown2LocPS.u";
connectAttr "LeftEyeLidOutDown2LocCS.v" "LeftEyeLidOutDown2LocPS.v";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocCS.is";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv2Pos|LeftEyeLidOutDownCrv2PosShape.wp" "LeftEyeLidOutDown2LocCS.ip"
		;
connectAttr "LeftEyeLidOutDown2Ctrl.t" "LeftEyeLidOutDown2CtrlRvsMultMD.i1";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocPS.is";
connectAttr "LeftEyeLidOutDown3LocCS.u" "LeftEyeLidOutDown3LocPS.u";
connectAttr "LeftEyeLidOutDown3LocCS.v" "LeftEyeLidOutDown3LocPS.v";
connectAttr "LeftEyeLidOutDown3PosShape.wp" "LeftEyeLidOutDown3LocCS.ip";
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
connectAttr "RightEyeLidOutUp1PosShape.wp" "RightEyeLidOutUp1LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp1LocCS.is";
connectAttr "RightEyeLidOutUp1Ctrl.t" "RightEyeLidOutUp1CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocPS.is";
connectAttr "RightEyeLidOutUp2LocCS.u" "RightEyeLidOutUp2LocPS.u";
connectAttr "RightEyeLidOutUp2LocCS.v" "RightEyeLidOutUp2LocPS.v";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocCS.is";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv2PosSurfPos|RightEyeLidOutUpCrv2Pos|RightEyeLidOutUpCrv2PosShape.wp" "RightEyeLidOutUp2LocCS.ip"
		;
connectAttr "RightEyeLidOutUp2Ctrl.t" "RightEyeLidOutUp2CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocPS.is";
connectAttr "RightEyeLidOutUp3LocCS.u" "RightEyeLidOutUp3LocPS.u";
connectAttr "RightEyeLidOutUp3LocCS.v" "RightEyeLidOutUp3LocPS.v";
connectAttr "RightEyeLidOutUp3PosShape.wp" "RightEyeLidOutUp3LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocCS.is";
connectAttr "RightEyeLidOutUp3Ctrl.t" "RightEyeLidOutUp3CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocPS.is";
connectAttr "RightEyeLidOutDown1LocCS.u" "RightEyeLidOutDown1LocPS.u";
connectAttr "RightEyeLidOutDown1LocCS.v" "RightEyeLidOutDown1LocPS.v";
connectAttr "RightEyeLidOutDown1PosShape.wp" "RightEyeLidOutDown1LocCS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocCS.is";
connectAttr "RightEyeLidOutDown1Ctrl.t" "RightEyeLidOutDown1CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocPS.is";
connectAttr "RightEyeLidOutDown2LocCS.u" "RightEyeLidOutDown2LocPS.u";
connectAttr "RightEyeLidOutDown2LocCS.v" "RightEyeLidOutDown2LocPS.v";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocCS.is";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv2Pos|RightEyeLidOutDownCrv2PosShape.wp" "RightEyeLidOutDown2LocCS.ip"
		;
connectAttr "RightEyeLidOutDown2Ctrl.t" "RightEyeLidOutDown2CtrlRvsMultMD.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocPS.is";
connectAttr "RightEyeLidOutDown3LocCS.u" "RightEyeLidOutDown3LocPS.u";
connectAttr "RightEyeLidOutDown3LocCS.v" "RightEyeLidOutDown3LocPS.v";
connectAttr "RightEyeLidOutDown3PosShape.wp" "RightEyeLidOutDown3LocCS.ip";
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
connectAttr "LeftEyeLidOutUp1Ctrl.Z" "LeftEyeLidOutUp1CtrlZML.i1";
connectAttr "LeftEyeLidOutUp2Ctrl.Z" "LeftEyeLidOutUp2CtrlZML.i1";
connectAttr "LeftEyeLidOutUp3Ctrl.Z" "LeftEyeLidOutUp3CtrlZML.i1";
connectAttr "LeftEyeLidOutDown1Ctrl.Z" "LeftEyeLidOutDown1CtrlZML.i1";
connectAttr "LeftEyeLidOutDown2Ctrl.Z" "LeftEyeLidOutDown2CtrlZML.i1";
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
connectAttr "LeftEyeLidOutUp1LocOffGrpDM1.ot" "LeftEyeLidOutUp1LocOffGrpPB.it1";
connectAttr "LeftEyeLidOutUp3Ctrl.blend" "LeftEyeLidOutUp3LocOffGrpPB.w";
connectAttr "LeftEyeLidOutUp3LocOffGrpDM.ot" "LeftEyeLidOutUp3LocOffGrpPB.it2";
connectAttr "LeftEyeLidOutUp3LocOffGrpDM1.ot" "LeftEyeLidOutUp3LocOffGrpPB.it1";
connectAttr "LeftEyeLidOutDown1LocOffGrpDM.ot" "LeftEyeLidOutDown1LocOffGrpPB.it2"
		;
connectAttr "LeftEyeLidOutDown1Ctrl.blend" "LeftEyeLidOutDown1LocOffGrpPB.w";
connectAttr "LeftEyeLidOutDown1LocOffGrpDM1.ot" "LeftEyeLidOutDown1LocOffGrpPB.it1"
		;
connectAttr "LeftEyeLidOutDown2LocOffGrpDM.ot" "LeftEyeLidOutDown2LocOffGrpPB.it2"
		;
connectAttr "LeftEyeLidOutDown2Ctrl.blend" "LeftEyeLidOutDown2LocOffGrpPB.w";
connectAttr "LeftEyeLidOutDown2LocOffGrpDM1.ot" "LeftEyeLidOutDown2LocOffGrpPB.it1"
		;
connectAttr "LeftEyeLidOutDown3LocOffGrpDM.ot" "LeftEyeLidOutDown3LocOffGrpPB.it2"
		;
connectAttr "LeftEyeLidOutDown3Ctrl.blend" "LeftEyeLidOutDown3LocOffGrpPB.w";
connectAttr "LeftEyeLidOutDown3LocOffGrpDM1.ot" "LeftEyeLidOutDown3LocOffGrpPB.it1"
		;
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
connectAttr "RightEyeLidOutUp1Ctrl.Z" "RightEyeLidOutUp1ZRvs.i1";
connectAttr "RightEyeLidOutUp2Ctrl.Z" "RightEyeLidOutUp2ZRvs.i1";
connectAttr "RightEyeLidOutUp3Ctrl.Z" "RightEyeLidOutUp3ZRvs.i1";
connectAttr "RightEyeLidOutDown1Ctrl.Z" "RightEyeLidOutDown1ZRvs.i1";
connectAttr "RightEyeLidOutDown2Ctrl.Z" "RightEyeLidOutDown2ZRvs.i1";
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
connectAttr "RightEyeLidOutUp1LocOffGrpDM1.ot" "RightEyeLidOutUp1LocOffGrpPB.it1"
		;
connectAttr "RightEyeLidOutDown1LocOffGrpDM.ot" "RightEyeLidOutDown1LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutDown1Ctrl.blend" "RightEyeLidOutDown1LocOffGrpPB.w";
connectAttr "RightEyeLidOutDown1LocOffGrpDM1.ot" "RightEyeLidOutDown1LocOffGrpPB.it1"
		;
connectAttr "RightEyeLidOutDown2LocOffGrpDM.ot" "RightEyeLidOutDown2LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutDown2Ctrl.blend" "RightEyeLidOutDown2LocOffGrpPB.w";
connectAttr "RightEyeLidOutDown2LocOffGrpDM1.ot" "RightEyeLidOutDown2LocOffGrpPB.it1"
		;
connectAttr "RightEyeLidOutDown3LocOffGrpDM.ot" "RightEyeLidOutDown3LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutDown3Ctrl.blend" "RightEyeLidOutDown3LocOffGrpPB.w";
connectAttr "RightEyeLidOutDown3LocOffGrpDM1.ot" "RightEyeLidOutDown3LocOffGrpPB.it1"
		;
connectAttr "cluster1GroupParts.og" "LeftEyeCorneaClsCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "LeftEyeCorneaClsCluster.ip[0].gi";
connectAttr "LeftEyeCorneaCls.wm" "LeftEyeCorneaClsCluster.ma";
connectAttr "LeftEyeCorneaClsShape.x" "LeftEyeCorneaClsCluster.x";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "LeftEyeBallSurfShape.iog.og[1]" "cluster1Set.dsm" -na;
connectAttr "LeftEyeCorneaClsCluster.msg" "cluster1Set.ub[0]";
connectAttr "LeftEyeBallffd.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "cluster2GroupParts.og" "RightEyeCorneaClsCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "RightEyeCorneaClsCluster.ip[0].gi";
connectAttr "RightEyeCorneaCls.wm" "RightEyeCorneaClsCluster.ma";
connectAttr "RightEyeCorneaClsShape.x" "RightEyeCorneaClsCluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "RightEyeBallSurfShape.iog.og[1]" "cluster2Set.dsm" -na;
connectAttr "RightEyeCorneaClsCluster.msg" "cluster2Set.ub[0]";
connectAttr "RightEyeBallffd.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "LeftEyeLidOutUp2Ctrl.blend" "LeftEyeLidOutUp2LocOffGrpPB.w";
connectAttr "LeftEyeLidOutUp2LocOffGrpDM.ot" "LeftEyeLidOutUp2LocOffGrpPB.it2";
connectAttr "LeftEyeLidOutUp2LocOffGrpDM1.ot" "LeftEyeLidOutUp2LocOffGrpPB.it1";
connectAttr "LeftEyeLidUpLoc.wm" "LeftEyeLidOutUp2LocOffGrpMM.i[2]";
connectAttr "LeftEyeLidOutUp2LocOffGrp.pim" "LeftEyeLidOutUp2LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutUp2LocOffGrpMM.o" "LeftEyeLidOutUp2LocOffGrpDM.imat";
connectAttr "LeftEyeLidPinUp2Pos.wm" "LeftEyeLidOutUp2LocOffGrpMM1.i[2]";
connectAttr "LeftEyeLidOutUp2LocOffGrp.pim" "LeftEyeLidOutUp2LocOffGrpMM1.i[3]";
connectAttr "LeftEyeLidOutUp2LocOffGrpMM1.o" "LeftEyeLidOutUp2LocOffGrpDM1.imat"
		;
connectAttr "LeftEyeLidUpLoc.wm" "LeftEyeLidOutUp1LocOffGrpMM.i[2]";
connectAttr "LeftEyeLidOutUp1LocOffGrp.pim" "LeftEyeLidOutUp1LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutUp1LocOffGrpMM.o" "LeftEyeLidOutUp1LocOffGrpDM.imat";
connectAttr "LeftEyeLidPinUp1Pos.wm" "LeftEyeLidOutUp1LocOffGrpMM1.i[2]";
connectAttr "LeftEyeLidOutUp1LocOffGrp.pim" "LeftEyeLidOutUp1LocOffGrpMM1.i[3]";
connectAttr "LeftEyeLidOutUp1LocOffGrpMM1.o" "LeftEyeLidOutUp1LocOffGrpDM1.imat"
		;
connectAttr "LeftEyeLidUpLoc.wm" "LeftEyeLidOutUp3LocOffGrpMM.i[2]";
connectAttr "LeftEyeLidOutUp3LocOffGrp.pim" "LeftEyeLidOutUp3LocOffGrpMM.i[3]";
connectAttr "LeftEyeLidOutUp3LocOffGrpMM.o" "LeftEyeLidOutUp3LocOffGrpDM.imat";
connectAttr "LeftEyeLidPinUp3Pos.wm" "LeftEyeLidOutUp3LocOffGrpMM1.i[2]";
connectAttr "LeftEyeLidOutUp3LocOffGrp.pim" "LeftEyeLidOutUp3LocOffGrpMM1.i[3]";
connectAttr "LeftEyeLidOutUp3LocOffGrpMM1.o" "LeftEyeLidOutUp3LocOffGrpDM1.imat"
		;
connectAttr "LeftEyeLidDownLoc.wm" "LeftEyeLidOutDown1LocOffGrpMM.i[2]";
connectAttr "LeftEyeLidOutDown1LocOffGrp.pim" "LeftEyeLidOutDown1LocOffGrpMM.i[3]"
		;
connectAttr "LeftEyeLidOutDown1LocOffGrpMM.o" "LeftEyeLidOutDown1LocOffGrpDM.imat"
		;
connectAttr "LeftEyeLidPinDown1Pos.wm" "LeftEyeLidOutDown1LocOffGrpMM1.i[2]";
connectAttr "LeftEyeLidOutDown1LocOffGrp.pim" "LeftEyeLidOutDown1LocOffGrpMM1.i[3]"
		;
connectAttr "LeftEyeLidOutDown1LocOffGrpMM1.o" "LeftEyeLidOutDown1LocOffGrpDM1.imat"
		;
connectAttr "LeftEyeLidDownLoc.wm" "LeftEyeLidOutDown2LocOffGrpMM.i[2]";
connectAttr "LeftEyeLidOutDown2LocOffGrp.pim" "LeftEyeLidOutDown2LocOffGrpMM.i[3]"
		;
connectAttr "LeftEyeLidOutDown2LocOffGrpMM.o" "LeftEyeLidOutDown2LocOffGrpDM.imat"
		;
connectAttr "LeftEyeLidPinDown2Pos.wm" "LeftEyeLidOutDown2LocOffGrpMM1.i[2]";
connectAttr "LeftEyeLidOutDown2LocOffGrp.pim" "LeftEyeLidOutDown2LocOffGrpMM1.i[3]"
		;
connectAttr "LeftEyeLidOutDown2LocOffGrpMM1.o" "LeftEyeLidOutDown2LocOffGrpDM1.imat"
		;
connectAttr "LeftEyeLidDownLoc.wm" "LeftEyeLidOutDown3LocOffGrpMM.i[2]";
connectAttr "LeftEyeLidOutDown3LocOffGrp.pim" "LeftEyeLidOutDown3LocOffGrpMM.i[3]"
		;
connectAttr "LeftEyeLidOutDown3LocOffGrpMM.o" "LeftEyeLidOutDown3LocOffGrpDM.imat"
		;
connectAttr "LeftEyeLidPinDown3Pos.wm" "LeftEyeLidOutDown3LocOffGrpMM1.i[2]";
connectAttr "LeftEyeLidOutDown3LocOffGrp.pim" "LeftEyeLidOutDown3LocOffGrpMM1.i[3]"
		;
connectAttr "LeftEyeLidOutDown3LocOffGrpMM1.o" "LeftEyeLidOutDown3LocOffGrpDM1.imat"
		;
connectAttr "RightEyeLidUpLoc.wm" "RightEyeLidOutUp1LocOffGrpMM.i[2]";
connectAttr "RightEyeLidOutUp1LocOffGrp.pim" "RightEyeLidOutUp1LocOffGrpMM.i[3]"
		;
connectAttr "RightEyeLidOutUp1LocOffGrpMM.o" "RightEyeLidOutUp1LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidPinUp1Pos.wm" "RightEyeLidOutUp1LocOffGrpMM1.i[2]";
connectAttr "RightEyeLidOutUp1LocOffGrp.pim" "RightEyeLidOutUp1LocOffGrpMM1.i[3]"
		;
connectAttr "RightEyeLidOutUp1LocOffGrpMM1.o" "RightEyeLidOutUp1LocOffGrpDM1.imat"
		;
connectAttr "RightEyeLidOutUp2LocOffGrpDM.ot" "RightEyeLidOutUp2LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutUp2Ctrl.blend" "RightEyeLidOutUp2LocOffGrpPB.w";
connectAttr "RightEyeLidOutUp2LocOffGrpDM1.ot" "RightEyeLidOutUp2LocOffGrpPB.it1"
		;
connectAttr "RightEyeLidUpLoc.wm" "RightEyeLidOutUp2LocOffGrpMM.i[2]";
connectAttr "RightEyeLidOutUp2LocOffGrp.pim" "RightEyeLidOutUp2LocOffGrpMM.i[3]"
		;
connectAttr "RightEyeLidOutUp2LocOffGrpMM.o" "RightEyeLidOutUp2LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidPinUp2Pos.wm" "RightEyeLidOutUp2LocOffGrpMM1.i[2]";
connectAttr "RightEyeLidOutUp2LocOffGrp.pim" "RightEyeLidOutUp2LocOffGrpMM1.i[3]"
		;
connectAttr "RightEyeLidOutUp2LocOffGrpMM1.o" "RightEyeLidOutUp2LocOffGrpDM1.imat"
		;
connectAttr "RightEyeLidDownLoc.wm" "RightEyeLidOutDown1LocOffGrpMM.i[2]";
connectAttr "RightEyeLidOutDown1LocOffGrp.pim" "RightEyeLidOutDown1LocOffGrpMM.i[3]"
		;
connectAttr "RightEyeLidOutDown1LocOffGrpMM.o" "RightEyeLidOutDown1LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidPinDown1Pos.wm" "RightEyeLidOutDown1LocOffGrpMM1.i[2]";
connectAttr "RightEyeLidOutDown1LocOffGrp.pim" "RightEyeLidOutDown1LocOffGrpMM1.i[3]"
		;
connectAttr "RightEyeLidOutDown1LocOffGrpMM1.o" "RightEyeLidOutDown1LocOffGrpDM1.imat"
		;
connectAttr "RightEyeLidOutUp3LocOffGrpDM.ot" "RightEyeLidOutUp3LocOffGrpPB.it2"
		;
connectAttr "RightEyeLidOutUp3Ctrl.blend" "RightEyeLidOutUp3LocOffGrpPB.w";
connectAttr "RightEyeLidOutUp3LocOffGrpDM1.ot" "RightEyeLidOutUp3LocOffGrpPB.it1"
		;
connectAttr "RightEyeLidUpLoc.wm" "RightEyeLidOutUp3LocOffGrpMM.i[2]";
connectAttr "RightEyeLidOutUp3LocOffGrp.pim" "RightEyeLidOutUp3LocOffGrpMM.i[3]"
		;
connectAttr "RightEyeLidOutUp3LocOffGrpMM.o" "RightEyeLidOutUp3LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidPinUp3Pos.wm" "RightEyeLidOutUp3LocOffGrpMM1.i[2]";
connectAttr "RightEyeLidOutUp3LocOffGrp.pim" "RightEyeLidOutUp3LocOffGrpMM1.i[3]"
		;
connectAttr "RightEyeLidOutUp3LocOffGrpMM1.o" "RightEyeLidOutUp3LocOffGrpDM1.imat"
		;
connectAttr "RightEyeLidDownLoc.wm" "RightEyeLidOutDown2LocOffGrpMM.i[2]";
connectAttr "RightEyeLidOutDown2LocOffGrp.pim" "RightEyeLidOutDown2LocOffGrpMM.i[3]"
		;
connectAttr "RightEyeLidOutDown2LocOffGrpMM.o" "RightEyeLidOutDown2LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidPinDown2Pos.wm" "RightEyeLidOutDown2LocOffGrpMM1.i[2]";
connectAttr "RightEyeLidOutDown2LocOffGrp.pim" "RightEyeLidOutDown2LocOffGrpMM1.i[3]"
		;
connectAttr "RightEyeLidOutDown2LocOffGrpMM1.o" "RightEyeLidOutDown2LocOffGrpDM1.imat"
		;
connectAttr "RightEyeLidDownLoc.wm" "RightEyeLidOutDown3LocOffGrpMM.i[2]";
connectAttr "RightEyeLidOutDown3LocOffGrp.pim" "RightEyeLidOutDown3LocOffGrpMM.i[3]"
		;
connectAttr "RightEyeLidOutDown3LocOffGrpMM.o" "RightEyeLidOutDown3LocOffGrpDM.imat"
		;
connectAttr "RightEyeLidPinDown3Pos.wm" "RightEyeLidOutDown3LocOffGrpMM1.i[2]";
connectAttr "RightEyeLidOutDown3LocOffGrp.pim" "RightEyeLidOutDown3LocOffGrpMM1.i[3]"
		;
connectAttr "RightEyeLidOutDown3LocOffGrpMM1.o" "RightEyeLidOutDown3LocOffGrpDM1.imat"
		;
connectAttr "LeftEyeLidOutUpCrvShape.ws" "LeftEyeLidOutUpCrvPC.ic";
connectAttr "LeftEyeLidOutUpCrvShape.ws" "LeftEyeLidOutUpCrvPC1.ic";
connectAttr "LeftEyeLidOutUpCrvShape.ws" "LeftEyeLidOutUpCrvPC2.ic";
connectAttr "LeftEyeLidOutUpCrvShape.ws" "LeftEyeLidOutUpCrvPC3.ic";
connectAttr "LeftEyeLidOutUpCrvShape.ws" "LeftEyeLidOutUpCrvPC4.ic";
connectAttr "LeftEyeLidOutDownCrvShape.ws" "LeftEyeLidOutDownCrvPC.ic";
connectAttr "LeftEyeLidOutDownCrvShape.ws" "LeftEyeLidOutDownCrvPC1.ic";
connectAttr "LeftEyeLidOutDownCrvShape.ws" "LeftEyeLidOutDownCrvPC2.ic";
connectAttr "LeftEyeLidOutDownCrvShape.ws" "LeftEyeLidOutDownCrvPC3.ic";
connectAttr "LeftEyeLidOutDownCrvShape.ws" "LeftEyeLidOutDownCrvPC4.ic";
connectAttr "LeftEyeLidPinUpCrvShape.ws" "LeftEyeLidPinUpCrvPC.ic";
connectAttr "LeftEyeLidPinUpCrvShape.ws" "LeftEyeLidPinUpCrvPC1.ic";
connectAttr "LeftEyeLidPinUpCrvShape.ws" "LeftEyeLidPinUpCrvPC2.ic";
connectAttr "LeftEyeLidPinUpCrvShape.ws" "LeftEyeLidPinUpCrvPC3.ic";
connectAttr "LeftEyeLidPinUpCrvShape.ws" "LeftEyeLidPinUpCrvPC4.ic";
connectAttr "LeftEyeLidPinDownCrvShape.ws" "LeftEyeLidPinDownCrvPC.ic";
connectAttr "LeftEyeLidPinDownCrvShape.ws" "LeftEyeLidPinDownCrvPC1.ic";
connectAttr "LeftEyeLidPinDownCrvShape.ws" "LeftEyeLidPinDownCrvPC2.ic";
connectAttr "LeftEyeLidPinDownCrvShape.ws" "LeftEyeLidPinDownCrvPC3.ic";
connectAttr "LeftEyeLidPinDownCrvShape.ws" "LeftEyeLidPinDownCrvPC4.ic";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv0Pos|LeftEyeLidOutUpCrv0PosShape.wp" "LeftEyeLidOutUpCrv0PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv0PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv0PosPS.is";
connectAttr "LeftEyeLidOutUpCrv0PosCS.u" "LeftEyeLidOutUpCrv0PosPS.u";
connectAttr "LeftEyeLidOutUpCrv0PosCS.v" "LeftEyeLidOutUpCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv1Pos|LeftEyeLidOutUpCrv1PosShape.wp" "LeftEyeLidOutUpCrv1PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv1PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv1PosPS.is";
connectAttr "LeftEyeLidOutUpCrv1PosCS.u" "LeftEyeLidOutUpCrv1PosPS.u";
connectAttr "LeftEyeLidOutUpCrv1PosCS.v" "LeftEyeLidOutUpCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv2Pos|LeftEyeLidOutUpCrv2PosShape.wp" "LeftEyeLidOutUpCrv2PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv2PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv2PosPS.is";
connectAttr "LeftEyeLidOutUpCrv2PosCS.u" "LeftEyeLidOutUpCrv2PosPS.u";
connectAttr "LeftEyeLidOutUpCrv2PosCS.v" "LeftEyeLidOutUpCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv3Pos|LeftEyeLidOutUpCrv3PosShape.wp" "LeftEyeLidOutUpCrv3PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv3PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv3PosPS.is";
connectAttr "LeftEyeLidOutUpCrv3PosCS.u" "LeftEyeLidOutUpCrv3PosPS.u";
connectAttr "LeftEyeLidOutUpCrv3PosCS.v" "LeftEyeLidOutUpCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv4Pos|LeftEyeLidOutUpCrv4PosShape.wp" "LeftEyeLidOutUpCrv4PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv4PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUpCrv4PosPS.is";
connectAttr "LeftEyeLidOutUpCrv4PosCS.u" "LeftEyeLidOutUpCrv4PosPS.u";
connectAttr "LeftEyeLidOutUpCrv4PosCS.v" "LeftEyeLidOutUpCrv4PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv0Pos|LeftEyeLidOutDownCrv0PosShape.wp" "LeftEyeLidOutDownCrv0PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv0PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv0PosPS.is";
connectAttr "LeftEyeLidOutDownCrv0PosCS.u" "LeftEyeLidOutDownCrv0PosPS.u";
connectAttr "LeftEyeLidOutDownCrv0PosCS.v" "LeftEyeLidOutDownCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv1Pos|LeftEyeLidOutDownCrv1PosShape.wp" "LeftEyeLidOutDownCrv1PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv1PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv1PosPS.is";
connectAttr "LeftEyeLidOutDownCrv1PosCS.u" "LeftEyeLidOutDownCrv1PosPS.u";
connectAttr "LeftEyeLidOutDownCrv1PosCS.v" "LeftEyeLidOutDownCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv2Pos|LeftEyeLidOutDownCrv2PosShape.wp" "LeftEyeLidOutDownCrv2PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv2PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv2PosPS.is";
connectAttr "LeftEyeLidOutDownCrv2PosCS.u" "LeftEyeLidOutDownCrv2PosPS.u";
connectAttr "LeftEyeLidOutDownCrv2PosCS.v" "LeftEyeLidOutDownCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv3Pos|LeftEyeLidOutDownCrv3PosShape.wp" "LeftEyeLidOutDownCrv3PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv3PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv3PosPS.is";
connectAttr "LeftEyeLidOutDownCrv3PosCS.u" "LeftEyeLidOutDownCrv3PosPS.u";
connectAttr "LeftEyeLidOutDownCrv3PosCS.v" "LeftEyeLidOutDownCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv4Pos|LeftEyeLidOutDownCrv4PosShape.wp" "LeftEyeLidOutDownCrv4PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv4PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDownCrv4PosPS.is";
connectAttr "LeftEyeLidOutDownCrv4PosCS.u" "LeftEyeLidOutDownCrv4PosPS.u";
connectAttr "LeftEyeLidOutDownCrv4PosCS.v" "LeftEyeLidOutDownCrv4PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv0Pos|LeftEyeLidPinUpCrv0PosShape.wp" "LeftEyeLidPinUpCrv0PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv0PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv0PosPS.is";
connectAttr "LeftEyeLidPinUpCrv0PosCS.u" "LeftEyeLidPinUpCrv0PosPS.u";
connectAttr "LeftEyeLidPinUpCrv0PosCS.v" "LeftEyeLidPinUpCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv1Pos|LeftEyeLidPinUpCrv1PosShape.wp" "LeftEyeLidPinUpCrv1PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv1PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv1PosPS.is";
connectAttr "LeftEyeLidPinUpCrv1PosCS.u" "LeftEyeLidPinUpCrv1PosPS.u";
connectAttr "LeftEyeLidPinUpCrv1PosCS.v" "LeftEyeLidPinUpCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv2Pos|LeftEyeLidPinUpCrv2PosShape.wp" "LeftEyeLidPinUpCrv2PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv2PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv2PosPS.is";
connectAttr "LeftEyeLidPinUpCrv2PosCS.u" "LeftEyeLidPinUpCrv2PosPS.u";
connectAttr "LeftEyeLidPinUpCrv2PosCS.v" "LeftEyeLidPinUpCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv3Pos|LeftEyeLidPinUpCrv3PosShape.wp" "LeftEyeLidPinUpCrv3PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv3PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv3PosPS.is";
connectAttr "LeftEyeLidPinUpCrv3PosCS.u" "LeftEyeLidPinUpCrv3PosPS.u";
connectAttr "LeftEyeLidPinUpCrv3PosCS.v" "LeftEyeLidPinUpCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv4Pos|LeftEyeLidPinUpCrv4PosShape.wp" "LeftEyeLidPinUpCrv4PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv4PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinUpCrv4PosPS.is";
connectAttr "LeftEyeLidPinUpCrv4PosCS.u" "LeftEyeLidPinUpCrv4PosPS.u";
connectAttr "LeftEyeLidPinUpCrv4PosCS.v" "LeftEyeLidPinUpCrv4PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv0Pos|LeftEyeLidPinDownCrv0PosShape.wp" "LeftEyeLidPinDownCrv0PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv0PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv0PosPS.is";
connectAttr "LeftEyeLidPinDownCrv0PosCS.u" "LeftEyeLidPinDownCrv0PosPS.u";
connectAttr "LeftEyeLidPinDownCrv0PosCS.v" "LeftEyeLidPinDownCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv1Pos|LeftEyeLidPinDownCrv1PosShape.wp" "LeftEyeLidPinDownCrv1PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv1PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv1PosPS.is";
connectAttr "LeftEyeLidPinDownCrv1PosCS.u" "LeftEyeLidPinDownCrv1PosPS.u";
connectAttr "LeftEyeLidPinDownCrv1PosCS.v" "LeftEyeLidPinDownCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv2Pos|LeftEyeLidPinDownCrv2PosShape.wp" "LeftEyeLidPinDownCrv2PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv2PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv2PosPS.is";
connectAttr "LeftEyeLidPinDownCrv2PosCS.u" "LeftEyeLidPinDownCrv2PosPS.u";
connectAttr "LeftEyeLidPinDownCrv2PosCS.v" "LeftEyeLidPinDownCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv3Pos|LeftEyeLidPinDownCrv3PosShape.wp" "LeftEyeLidPinDownCrv3PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv3PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv3PosPS.is";
connectAttr "LeftEyeLidPinDownCrv3PosCS.u" "LeftEyeLidPinDownCrv3PosPS.u";
connectAttr "LeftEyeLidPinDownCrv3PosCS.v" "LeftEyeLidPinDownCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv4Pos|LeftEyeLidPinDownCrv4PosShape.wp" "LeftEyeLidPinDownCrv4PosCS.ip"
		;
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv4PosCS.is";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidPinDownCrv4PosPS.is";
connectAttr "LeftEyeLidPinDownCrv4PosCS.u" "LeftEyeLidPinDownCrv4PosPS.u";
connectAttr "LeftEyeLidPinDownCrv4PosCS.v" "LeftEyeLidPinDownCrv4PosPS.v";
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUpCrv0PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv0PosSurfPos.pim" "LeftEyeLidOutUpCrv0PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutUpCrv0PosSurfPosMM.o" "LeftEyeLidOutUpCrv0PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUpCrv1PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv1PosSurfPos.pim" "LeftEyeLidOutUpCrv1PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutUpCrv1PosSurfPosMM.o" "LeftEyeLidOutUpCrv1PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUpCrv2PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv2PosSurfPos.pim" "LeftEyeLidOutUpCrv2PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutUpCrv2PosSurfPosMM.o" "LeftEyeLidOutUpCrv2PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUpCrv3PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv3PosSurfPos.pim" "LeftEyeLidOutUpCrv3PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutUpCrv3PosSurfPosMM.o" "LeftEyeLidOutUpCrv3PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutUpCrv4PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv4PosSurfPos.pim" "LeftEyeLidOutUpCrv4PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutUpCrv4PosSurfPosMM.o" "LeftEyeLidOutUpCrv4PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDownCrv0PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv0PosSurfPos.pim" "LeftEyeLidOutDownCrv0PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutDownCrv0PosSurfPosMM.o" "LeftEyeLidOutDownCrv0PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDownCrv1PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv1PosSurfPos.pim" "LeftEyeLidOutDownCrv1PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutDownCrv1PosSurfPosMM.o" "LeftEyeLidOutDownCrv1PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDownCrv2PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv2PosSurfPos.pim" "LeftEyeLidOutDownCrv2PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutDownCrv2PosSurfPosMM.o" "LeftEyeLidOutDownCrv2PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDownCrv3PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv3PosSurfPos.pim" "LeftEyeLidOutDownCrv3PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutDownCrv3PosSurfPosMM.o" "LeftEyeLidOutDownCrv3PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidOutDownCrv4PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv4PosSurfPos.pim" "LeftEyeLidOutDownCrv4PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidOutDownCrv4PosSurfPosMM.o" "LeftEyeLidOutDownCrv4PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUpCrv0PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv0PosSurfPos.pim" "LeftEyeLidPinUpCrv0PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinUpCrv0PosSurfPosMM.o" "LeftEyeLidPinUpCrv0PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUpCrv1PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv1PosSurfPos.pim" "LeftEyeLidPinUpCrv1PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinUpCrv1PosSurfPosMM.o" "LeftEyeLidPinUpCrv1PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUpCrv2PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv2PosSurfPos.pim" "LeftEyeLidPinUpCrv2PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinUpCrv2PosSurfPosMM.o" "LeftEyeLidPinUpCrv2PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUpCrv3PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv3PosSurfPos.pim" "LeftEyeLidPinUpCrv3PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinUpCrv3PosSurfPosMM.o" "LeftEyeLidPinUpCrv3PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinUpCrv4PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv4PosSurfPos.pim" "LeftEyeLidPinUpCrv4PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinUpCrv4PosSurfPosMM.o" "LeftEyeLidPinUpCrv4PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDownCrv0PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv0PosSurfPos.pim" "LeftEyeLidPinDownCrv0PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinDownCrv0PosSurfPosMM.o" "LeftEyeLidPinDownCrv0PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDownCrv1PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv1PosSurfPos.pim" "LeftEyeLidPinDownCrv1PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinDownCrv1PosSurfPosMM.o" "LeftEyeLidPinDownCrv1PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDownCrv2PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv2PosSurfPos.pim" "LeftEyeLidPinDownCrv2PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinDownCrv2PosSurfPosMM.o" "LeftEyeLidPinDownCrv2PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDownCrv3PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv3PosSurfPos.pim" "LeftEyeLidPinDownCrv3PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinDownCrv3PosSurfPosMM.o" "LeftEyeLidPinDownCrv3PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidCCtrl.wm" "LeftEyeLidPinDownCrv4PosSurfPosMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv4PosSurfPos.pim" "LeftEyeLidPinDownCrv4PosSurfPosMM.i[3]"
		;
connectAttr "LeftEyeLidPinDownCrv4PosSurfPosMM.o" "LeftEyeLidPinDownCrv4PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidOutUpCrvShape.ws" "RightEyeLidOutUpCrvPC.ic";
connectAttr "RightEyeLidOutUpCrvShape.ws" "RightEyeLidOutUpCrvPC1.ic";
connectAttr "RightEyeLidOutUpCrvShape.ws" "RightEyeLidOutUpCrvPC2.ic";
connectAttr "RightEyeLidOutUpCrvShape.ws" "RightEyeLidOutUpCrvPC3.ic";
connectAttr "RightEyeLidOutUpCrvShape.ws" "RightEyeLidOutUpCrvPC4.ic";
connectAttr "RightEyeLidOutDownCrvShape.ws" "RightEyeLidOutDownCrvPC.ic";
connectAttr "RightEyeLidOutDownCrvShape.ws" "RightEyeLidOutDownCrvPC1.ic";
connectAttr "RightEyeLidOutDownCrvShape.ws" "RightEyeLidOutDownCrvPC2.ic";
connectAttr "RightEyeLidOutDownCrvShape.ws" "RightEyeLidOutDownCrvPC3.ic";
connectAttr "RightEyeLidOutDownCrvShape.ws" "RightEyeLidOutDownCrvPC4.ic";
connectAttr "RightEyeLidPinUpCrvShape.ws" "RightEyeLidPinUpCrvPC.ic";
connectAttr "RightEyeLidPinUpCrvShape.ws" "RightEyeLidPinUpCrvPC1.ic";
connectAttr "RightEyeLidPinUpCrvShape.ws" "RightEyeLidPinUpCrvPC2.ic";
connectAttr "RightEyeLidPinUpCrvShape.ws" "RightEyeLidPinUpCrvPC3.ic";
connectAttr "RightEyeLidPinUpCrvShape.ws" "RightEyeLidPinUpCrvPC4.ic";
connectAttr "RightEyeLidPinDownCrvShape.ws" "RightEyeLidPinDownCrvPC.ic";
connectAttr "RightEyeLidPinDownCrvShape.ws" "RightEyeLidPinDownCrvPC1.ic";
connectAttr "RightEyeLidPinDownCrvShape.ws" "RightEyeLidPinDownCrvPC2.ic";
connectAttr "RightEyeLidPinDownCrvShape.ws" "RightEyeLidPinDownCrvPC3.ic";
connectAttr "RightEyeLidPinDownCrvShape.ws" "RightEyeLidPinDownCrvPC4.ic";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv0Pos|RightEyeLidOutUpCrv0PosShape.wp" "RightEyeLidOutUpCrv0PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv0PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv0PosPS.is";
connectAttr "RightEyeLidOutUpCrv0PosCS.u" "RightEyeLidOutUpCrv0PosPS.u";
connectAttr "RightEyeLidOutUpCrv0PosCS.v" "RightEyeLidOutUpCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv1Pos|RightEyeLidOutUpCrv1PosShape.wp" "RightEyeLidOutUpCrv1PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv1PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv1PosPS.is";
connectAttr "RightEyeLidOutUpCrv1PosCS.u" "RightEyeLidOutUpCrv1PosPS.u";
connectAttr "RightEyeLidOutUpCrv1PosCS.v" "RightEyeLidOutUpCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv2Pos|RightEyeLidOutUpCrv2PosShape.wp" "RightEyeLidOutUpCrv2PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv2PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv2PosPS.is";
connectAttr "RightEyeLidOutUpCrv2PosCS.u" "RightEyeLidOutUpCrv2PosPS.u";
connectAttr "RightEyeLidOutUpCrv2PosCS.v" "RightEyeLidOutUpCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv3Pos|RightEyeLidOutUpCrv3PosShape.wp" "RightEyeLidOutUpCrv3PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv3PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv3PosPS.is";
connectAttr "RightEyeLidOutUpCrv3PosCS.u" "RightEyeLidOutUpCrv3PosPS.u";
connectAttr "RightEyeLidOutUpCrv3PosCS.v" "RightEyeLidOutUpCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv4Pos|RightEyeLidOutUpCrv4PosShape.wp" "RightEyeLidOutUpCrv4PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv4PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUpCrv4PosPS.is";
connectAttr "RightEyeLidOutUpCrv4PosCS.u" "RightEyeLidOutUpCrv4PosPS.u";
connectAttr "RightEyeLidOutUpCrv4PosCS.v" "RightEyeLidOutUpCrv4PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv0Pos|RightEyeLidOutDownCrv0PosShape.wp" "RightEyeLidOutDownCrv0PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv0PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv0PosPS.is";
connectAttr "RightEyeLidOutDownCrv0PosCS.u" "RightEyeLidOutDownCrv0PosPS.u";
connectAttr "RightEyeLidOutDownCrv0PosCS.v" "RightEyeLidOutDownCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv1Pos|RightEyeLidOutDownCrv1PosShape.wp" "RightEyeLidOutDownCrv1PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv1PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv1PosPS.is";
connectAttr "RightEyeLidOutDownCrv1PosCS.u" "RightEyeLidOutDownCrv1PosPS.u";
connectAttr "RightEyeLidOutDownCrv1PosCS.v" "RightEyeLidOutDownCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv2Pos|RightEyeLidOutDownCrv2PosShape.wp" "RightEyeLidOutDownCrv2PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv2PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv2PosPS.is";
connectAttr "RightEyeLidOutDownCrv2PosCS.u" "RightEyeLidOutDownCrv2PosPS.u";
connectAttr "RightEyeLidOutDownCrv2PosCS.v" "RightEyeLidOutDownCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv3Pos|RightEyeLidOutDownCrv3PosShape.wp" "RightEyeLidOutDownCrv3PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv3PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv3PosPS.is";
connectAttr "RightEyeLidOutDownCrv3PosCS.u" "RightEyeLidOutDownCrv3PosPS.u";
connectAttr "RightEyeLidOutDownCrv3PosCS.v" "RightEyeLidOutDownCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv4Pos|RightEyeLidOutDownCrv4PosShape.wp" "RightEyeLidOutDownCrv4PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv4PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDownCrv4PosPS.is";
connectAttr "RightEyeLidOutDownCrv4PosCS.u" "RightEyeLidOutDownCrv4PosPS.u";
connectAttr "RightEyeLidOutDownCrv4PosCS.v" "RightEyeLidOutDownCrv4PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv0Pos|RightEyeLidPinUpCrv0PosShape.wp" "RightEyeLidPinUpCrv0PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv0PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv0PosPS.is";
connectAttr "RightEyeLidPinUpCrv0PosCS.u" "RightEyeLidPinUpCrv0PosPS.u";
connectAttr "RightEyeLidPinUpCrv0PosCS.v" "RightEyeLidPinUpCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv1Pos|RightEyeLidPinUpCrv1PosShape.wp" "RightEyeLidPinUpCrv1PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv1PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv1PosPS.is";
connectAttr "RightEyeLidPinUpCrv1PosCS.u" "RightEyeLidPinUpCrv1PosPS.u";
connectAttr "RightEyeLidPinUpCrv1PosCS.v" "RightEyeLidPinUpCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv2Pos|RightEyeLidPinUpCrv2PosShape.wp" "RightEyeLidPinUpCrv2PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv2PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv2PosPS.is";
connectAttr "RightEyeLidPinUpCrv2PosCS.u" "RightEyeLidPinUpCrv2PosPS.u";
connectAttr "RightEyeLidPinUpCrv2PosCS.v" "RightEyeLidPinUpCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv3Pos|RightEyeLidPinUpCrv3PosShape.wp" "RightEyeLidPinUpCrv3PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv3PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv3PosPS.is";
connectAttr "RightEyeLidPinUpCrv3PosCS.u" "RightEyeLidPinUpCrv3PosPS.u";
connectAttr "RightEyeLidPinUpCrv3PosCS.v" "RightEyeLidPinUpCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv4Pos|RightEyeLidPinUpCrv4PosShape.wp" "RightEyeLidPinUpCrv4PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv4PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinUpCrv4PosPS.is";
connectAttr "RightEyeLidPinUpCrv4PosCS.u" "RightEyeLidPinUpCrv4PosPS.u";
connectAttr "RightEyeLidPinUpCrv4PosCS.v" "RightEyeLidPinUpCrv4PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv0Pos|RightEyeLidPinDownCrv0PosShape.wp" "RightEyeLidPinDownCrv0PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv0PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv0PosPS.is";
connectAttr "RightEyeLidPinDownCrv0PosCS.u" "RightEyeLidPinDownCrv0PosPS.u";
connectAttr "RightEyeLidPinDownCrv0PosCS.v" "RightEyeLidPinDownCrv0PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv1Pos|RightEyeLidPinDownCrv1PosShape.wp" "RightEyeLidPinDownCrv1PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv1PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv1PosPS.is";
connectAttr "RightEyeLidPinDownCrv1PosCS.u" "RightEyeLidPinDownCrv1PosPS.u";
connectAttr "RightEyeLidPinDownCrv1PosCS.v" "RightEyeLidPinDownCrv1PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv2Pos|RightEyeLidPinDownCrv2PosShape.wp" "RightEyeLidPinDownCrv2PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv2PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv2PosPS.is";
connectAttr "RightEyeLidPinDownCrv2PosCS.u" "RightEyeLidPinDownCrv2PosPS.u";
connectAttr "RightEyeLidPinDownCrv2PosCS.v" "RightEyeLidPinDownCrv2PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv3Pos|RightEyeLidPinDownCrv3PosShape.wp" "RightEyeLidPinDownCrv3PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv3PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv3PosPS.is";
connectAttr "RightEyeLidPinDownCrv3PosCS.u" "RightEyeLidPinDownCrv3PosPS.u";
connectAttr "RightEyeLidPinDownCrv3PosCS.v" "RightEyeLidPinDownCrv3PosPS.v";
connectAttr "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv4Pos|RightEyeLidPinDownCrv4PosShape.wp" "RightEyeLidPinDownCrv4PosCS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv4PosCS.is";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidPinDownCrv4PosPS.is";
connectAttr "RightEyeLidPinDownCrv4PosCS.u" "RightEyeLidPinDownCrv4PosPS.u";
connectAttr "RightEyeLidPinDownCrv4PosCS.v" "RightEyeLidPinDownCrv4PosPS.v";
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUpCrv0PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutUpCrv0PosSurfPos.pim" "RightEyeLidOutUpCrv0PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutUpCrv0PosSurfPosMM.o" "RightEyeLidOutUpCrv0PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUpCrv1PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutUpCrv1PosSurfPos.pim" "RightEyeLidOutUpCrv1PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutUpCrv1PosSurfPosMM.o" "RightEyeLidOutUpCrv1PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUpCrv2PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutUpCrv2PosSurfPos.pim" "RightEyeLidOutUpCrv2PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutUpCrv2PosSurfPosMM.o" "RightEyeLidOutUpCrv2PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUpCrv3PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutUpCrv3PosSurfPos.pim" "RightEyeLidOutUpCrv3PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutUpCrv3PosSurfPosMM.o" "RightEyeLidOutUpCrv3PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutUpCrv4PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutUpCrv4PosSurfPos.pim" "RightEyeLidOutUpCrv4PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutUpCrv4PosSurfPosMM.o" "RightEyeLidOutUpCrv4PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDownCrv0PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutDownCrv0PosSurfPos.pim" "RightEyeLidOutDownCrv0PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutDownCrv0PosSurfPosMM.o" "RightEyeLidOutDownCrv0PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDownCrv1PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutDownCrv1PosSurfPos.pim" "RightEyeLidOutDownCrv1PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutDownCrv1PosSurfPosMM.o" "RightEyeLidOutDownCrv1PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDownCrv2PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutDownCrv2PosSurfPos.pim" "RightEyeLidOutDownCrv2PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutDownCrv2PosSurfPosMM.o" "RightEyeLidOutDownCrv2PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDownCrv3PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutDownCrv3PosSurfPos.pim" "RightEyeLidOutDownCrv3PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutDownCrv3PosSurfPosMM.o" "RightEyeLidOutDownCrv3PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidOutDownCrv4PosSurfPosMM.i[2]";
connectAttr "RightEyeLidOutDownCrv4PosSurfPos.pim" "RightEyeLidOutDownCrv4PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidOutDownCrv4PosSurfPosMM.o" "RightEyeLidOutDownCrv4PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUpCrv0PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinUpCrv0PosSurfPos.pim" "RightEyeLidPinUpCrv0PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinUpCrv0PosSurfPosMM.o" "RightEyeLidPinUpCrv0PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUpCrv1PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinUpCrv1PosSurfPos.pim" "RightEyeLidPinUpCrv1PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinUpCrv1PosSurfPosMM.o" "RightEyeLidPinUpCrv1PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUpCrv2PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinUpCrv2PosSurfPos.pim" "RightEyeLidPinUpCrv2PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinUpCrv2PosSurfPosMM.o" "RightEyeLidPinUpCrv2PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUpCrv3PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinUpCrv3PosSurfPos.pim" "RightEyeLidPinUpCrv3PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinUpCrv3PosSurfPosMM.o" "RightEyeLidPinUpCrv3PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinUpCrv4PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinUpCrv4PosSurfPos.pim" "RightEyeLidPinUpCrv4PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinUpCrv4PosSurfPosMM.o" "RightEyeLidPinUpCrv4PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDownCrv0PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinDownCrv0PosSurfPos.pim" "RightEyeLidPinDownCrv0PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinDownCrv0PosSurfPosMM.o" "RightEyeLidPinDownCrv0PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDownCrv1PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinDownCrv1PosSurfPos.pim" "RightEyeLidPinDownCrv1PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinDownCrv1PosSurfPosMM.o" "RightEyeLidPinDownCrv1PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDownCrv2PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinDownCrv2PosSurfPos.pim" "RightEyeLidPinDownCrv2PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinDownCrv2PosSurfPosMM.o" "RightEyeLidPinDownCrv2PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDownCrv3PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinDownCrv3PosSurfPos.pim" "RightEyeLidPinDownCrv3PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinDownCrv3PosSurfPosMM.o" "RightEyeLidPinDownCrv3PosSurfPosDM.imat"
		;
connectAttr "RightEyeLidCCtrl.wm" "RightEyeLidPinDownCrv4PosSurfPosMM.i[2]";
connectAttr "RightEyeLidPinDownCrv4PosSurfPos.pim" "RightEyeLidPinDownCrv4PosSurfPosMM.i[3]"
		;
connectAttr "RightEyeLidPinDownCrv4PosSurfPosMM.o" "RightEyeLidPinDownCrv4PosSurfPosDM.imat"
		;
connectAttr "LeftEyeLidPinUp0Ctrl.t" "LeftEyeLidPinUp0CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidPinUp1Ctrl.t" "LeftEyeLidPinUp1CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidPinUp2Ctrl.t" "LeftEyeLidPinUp2CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidPinDown0Ctrl.t" "LeftEyeLidPinDown0CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidPinDown1Ctrl.t" "LeftEyeLidPinDown1CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidPinDown2Ctrl.t" "LeftEyeLidPinDown2CtrlRvsMultMD.i1";
connectAttr "RightEyeLidPinUp0Ctrl.t" "RightEyeLidPinUp0CtrlRvsMultMD.i1";
connectAttr "RightEyeLidPinUp1Ctrl.t" "RightEyeLidPinUp1CtrlRvsMultMD.i1";
connectAttr "RightEyeLidPinUp2Ctrl.t" "RightEyeLidPinUp2CtrlRvsMultMD.i1";
connectAttr "RightEyeLidPinDown0Ctrl.t" "RightEyeLidPinDown0CtrlRvsMultMD.i1";
connectAttr "RightEyeLidPinDown1Ctrl.t" "RightEyeLidPinDown1CtrlRvsMultMD.i1";
connectAttr "RightEyeLidPinDown2Ctrl.t" "RightEyeLidPinDown2CtrlRvsMultMD.i1";
connectAttr "LeftEyeLidUpMainCtrl.Blink" "LeftEyeLidUpBlinkCenterSR.vx";
connectAttr "LeftEyeLidUpMainCtrl.BlinkCenter" "LeftEyeLidUpBlinkCenterSR.mx";
connectAttr "LeftEyeLidUpBlinkCenterSR.ox" "unitConversion1.i";
connectAttr "LeftEyeLidDownMainCtrl.Blink" "LeftEyeLidDownBlinkCenterSR.vx";
connectAttr "LeftEyeLidDownMainCtrl.BlinkCenter" "LeftEyeLidDownBlinkCenterSR.mx"
		;
connectAttr "LeftEyeLidDownBlinkCenterSR.ox" "unitConversion2.i";
connectAttr "RightEyeLidUpMainCtrl.Blink" "RightEyeLidUpBlinkCenterSR.vx";
connectAttr "RightEyeLidUpMainCtrl.BlinkCenter" "RightEyeLidUpBlinkCenterSR.mx";
connectAttr "RightEyeLidDownMainCtrl.Blink" "RightEyeLidDownBlinkCenterSR.vx";
connectAttr "RightEyeLidDownMainCtrl.BlinkCenter" "RightEyeLidDownBlinkCenterSR.mx"
		;
connectAttr "RightEyeLidUpBlinkCenterSR.ox" "unitConversion3.i";
connectAttr "RightEyeLidDownBlinkCenterSR.ox" "unitConversion4.i";
connectAttr "LeftEyeLidOutUpJntCrvShape.ws" "LeftEyeLidOutUpJntCrvPC.ic";
connectAttr "LeftEyeLidOutUpJntCrvShape.ws" "LeftEyeLidOutUpJntCrvPC1.ic";
connectAttr "LeftEyeLidOutUpJntCrvShape.ws" "LeftEyeLidOutUpJntCrvPC2.ic";
connectAttr "LeftEyeLidOutDownJntCrvShape.ws" "LeftEyeLidOutDownJntCrvPC.ic";
connectAttr "LeftEyeLidOutDownJntCrvShape.ws" "LeftEyeLidOutDownJntCrvPC1.ic";
connectAttr "LeftEyeLidOutDownJntCrvShape.ws" "LeftEyeLidOutDownJntCrvPC2.ic";
connectAttr "LeftEyeLidPinUpJntCrvShape.ws" "LeftEyeLidPinUpJntCrvPC.ic";
connectAttr "LeftEyeLidPinUpJntCrvShape.ws" "LeftEyeLidPinUpJntCrvPC1.ic";
connectAttr "LeftEyeLidPinUpJntCrvShape.ws" "LeftEyeLidPinUpJntCrvPC2.ic";
connectAttr "LeftEyeLidPinDownJntCrvShape.ws" "LeftEyeLidPinDownJntCrvPC.ic";
connectAttr "LeftEyeLidPinDownJntCrvShape.ws" "LeftEyeLidPinDownJntCrvPC1.ic";
connectAttr "LeftEyeLidPinDownJntCrvShape.ws" "LeftEyeLidPinDownJntCrvPC2.ic";
connectAttr "RightEyeLidOutUpJntCrvShape.ws" "RightEyeLidOutUpJntCrvPC.ic";
connectAttr "RightEyeLidOutUpJntCrvShape.ws" "RightEyeLidOutUpJntCrvPC1.ic";
connectAttr "RightEyeLidOutUpJntCrvShape.ws" "RightEyeLidOutUpJntCrvPC2.ic";
connectAttr "RightEyeLidOutDownJntCrvShape.ws" "RightEyeLidOutDownJntCrvPC.ic";
connectAttr "RightEyeLidOutDownJntCrvShape.ws" "RightEyeLidOutDownJntCrvPC1.ic";
connectAttr "RightEyeLidOutDownJntCrvShape.ws" "RightEyeLidOutDownJntCrvPC2.ic";
connectAttr "RightEyeLidPinUpJntCrvShape.ws" "RightEyeLidPinUpJntCrvPC.ic";
connectAttr "RightEyeLidPinUpJntCrvShape.ws" "RightEyeLidPinUpJntCrvPC1.ic";
connectAttr "RightEyeLidPinUpJntCrvShape.ws" "RightEyeLidPinUpJntCrvPC2.ic";
connectAttr "RightEyeLidPinDownJntCrvShape.ws" "RightEyeLidPinDownJntCrvPC.ic";
connectAttr "RightEyeLidPinDownJntCrvShape.ws" "RightEyeLidPinDownJntCrvPC1.ic";
connectAttr "RightEyeLidPinDownJntCrvShape.ws" "RightEyeLidPinDownJntCrvPC2.ic";
connectAttr "RightEyeLidRootPoser.wm" "RightEyeLidPinUp2CtrlGrpMM.i[2]";
connectAttr "RightEyeLidPinUp2CtrlGrp.pim" "RightEyeLidPinUp2CtrlGrpMM.i[3]";
connectAttr "RightEyeLidPinUp2CtrlGrpMM.o" "RightEyeLidPinUp2CtrlGrpDM.imat";
connectAttr "RightEyeLidRootPoser.wm" "RightEyeLidPinDown1CtrlGrpMM.i[2]";
connectAttr "RightEyeLidPinDown1CtrlGrp.pim" "RightEyeLidPinDown1CtrlGrpMM.i[3]"
		;
connectAttr "RightEyeLidPinDown1CtrlGrpMM.o" "RightEyeLidPinDown1CtrlGrpDM.imat"
		;
connectAttr "RightEyeLidRootPoser.wm" "RightEyeLidPinUp1CtrlGrpMM.i[2]";
connectAttr "RightEyeLidPinUp1CtrlGrp.pim" "RightEyeLidPinUp1CtrlGrpMM.i[3]";
connectAttr "RightEyeLidPinUp1CtrlGrpMM.o" "RightEyeLidPinUp1CtrlGrpDM.imat";
connectAttr "RightEyeLidRootPoser.wm" "RightEyeLidPinUp0CtrlGrpMM.i[2]";
connectAttr "RightEyeLidPinUp0CtrlGrp.pim" "RightEyeLidPinUp0CtrlGrpMM.i[3]";
connectAttr "RightEyeLidPinUp0CtrlGrpMM.o" "RightEyeLidPinUp0CtrlGrpDM.imat";
connectAttr "RightEyeLidRootPoser.wm" "RightEyeLidPinDown0CtrlGrpMM.i[2]";
connectAttr "RightEyeLidPinDown0CtrlGrp.pim" "RightEyeLidPinDown0CtrlGrpMM.i[3]"
		;
connectAttr "RightEyeLidPinDown0CtrlGrpMM.o" "RightEyeLidPinDown0CtrlGrpDM.imat"
		;
connectAttr "RightEyeLidRootPoser.wm" "RightEyeLidPinDown2CtrlGrpMM.i[2]";
connectAttr "RightEyeLidPinDown2CtrlGrp.pim" "RightEyeLidPinDown2CtrlGrpMM.i[3]"
		;
connectAttr "RightEyeLidPinDown2CtrlGrpMM.o" "RightEyeLidPinDown2CtrlGrpDM.imat"
		;
connectAttr "LeftEyeLidOutUpCrv0AimPos.wm" "LeftEyeLidOutUpCrv0JntMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv0Jnt.pim" "LeftEyeLidOutUpCrv0JntMM.i[3]";
connectAttr "LeftEyeLidOutUpCrv0JntMM.o" "LeftEyeLidOutUpCrv0JntDM.imat";
connectAttr "LeftEyeLidOutUpCrv1AimPos.wm" "LeftEyeLidOutUpCrv1JntMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv1Jnt.pim" "LeftEyeLidOutUpCrv1JntMM.i[3]";
connectAttr "LeftEyeLidOutUpCrv1JntMM.o" "LeftEyeLidOutUpCrv1JntDM.imat";
connectAttr "LeftEyeLidOutUpCrv2AimPos.wm" "LeftEyeLidOutUpCrv2JntMM.i[2]";
connectAttr "LeftEyeLidOutUpCrv2Jnt.pim" "LeftEyeLidOutUpCrv2JntMM.i[3]";
connectAttr "LeftEyeLidOutUpCrv2JntMM.o" "LeftEyeLidOutUpCrv2JntDM.imat";
connectAttr "LeftEyeLidOutDownCrv0AimPos.wm" "LeftEyeLidOutDownCrv0JntMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv0Jnt.pim" "LeftEyeLidOutDownCrv0JntMM.i[3]";
connectAttr "LeftEyeLidOutDownCrv0JntMM.o" "LeftEyeLidOutDownCrv0JntDM.imat";
connectAttr "LeftEyeLidOutDownCrv1AimPos.wm" "LeftEyeLidOutDownCrv1JntMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv1Jnt.pim" "LeftEyeLidOutDownCrv1JntMM.i[3]";
connectAttr "LeftEyeLidOutDownCrv1JntMM.o" "LeftEyeLidOutDownCrv1JntDM.imat";
connectAttr "LeftEyeLidOutDownCrv2AimPos.wm" "LeftEyeLidOutDownCrv2JntMM.i[2]";
connectAttr "LeftEyeLidOutDownCrv2Jnt.pim" "LeftEyeLidOutDownCrv2JntMM.i[3]";
connectAttr "LeftEyeLidOutDownCrv2JntMM.o" "LeftEyeLidOutDownCrv2JntDM.imat";
connectAttr "LeftEyeLidPinUpCrv0AimPos.wm" "LeftEyeLidPinUpCrv0JntMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv0Jnt.pim" "LeftEyeLidPinUpCrv0JntMM.i[3]";
connectAttr "LeftEyeLidPinUpCrv0JntMM.o" "LeftEyeLidPinUpCrv0JntDM.imat";
connectAttr "LeftEyeLidPinUpCrv1AimPos.wm" "LeftEyeLidPinUpCrv1JntMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv1Jnt.pim" "LeftEyeLidPinUpCrv1JntMM.i[3]";
connectAttr "LeftEyeLidPinUpCrv1JntMM.o" "LeftEyeLidPinUpCrv1JntDM.imat";
connectAttr "LeftEyeLidPinUpCrv2AimPos.wm" "LeftEyeLidPinUpCrv2JntMM.i[2]";
connectAttr "LeftEyeLidPinUpCrv2Jnt.pim" "LeftEyeLidPinUpCrv2JntMM.i[3]";
connectAttr "LeftEyeLidPinUpCrv2JntMM.o" "LeftEyeLidPinUpCrv2JntDM.imat";
connectAttr "LeftEyeLidPinDownCrv0AimPos.wm" "LeftEyeLidPinDownCrv0JntMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv0Jnt.pim" "LeftEyeLidPinDownCrv0JntMM.i[3]";
connectAttr "LeftEyeLidPinDownCrv0JntMM.o" "LeftEyeLidPinDownCrv0JntDM.imat";
connectAttr "LeftEyeLidPinDownCrv1AimPos.wm" "LeftEyeLidPinDownCrv1JntMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv1Jnt.pim" "LeftEyeLidPinDownCrv1JntMM.i[3]";
connectAttr "LeftEyeLidPinDownCrv1JntMM.o" "LeftEyeLidPinDownCrv1JntDM.imat";
connectAttr "LeftEyeLidPinDownCrv2AimPos.wm" "LeftEyeLidPinDownCrv2JntMM.i[2]";
connectAttr "LeftEyeLidPinDownCrv2Jnt.pim" "LeftEyeLidPinDownCrv2JntMM.i[3]";
connectAttr "LeftEyeLidPinDownCrv2JntMM.o" "LeftEyeLidPinDownCrv2JntDM.imat";
connectAttr "RightEyeLidOutUpCrv0AimPos.wm" "RightEyeLidOutUpCrv0JntMM.i[2]";
connectAttr "RightEyeLidOutUpCrv0Jnt.pim" "RightEyeLidOutUpCrv0JntMM.i[3]";
connectAttr "RightEyeLidOutUpCrv0JntMM.o" "RightEyeLidOutUpCrv0JntDM.imat";
connectAttr "RightEyeLidOutUpCrv1AimPos.wm" "RightEyeLidOutUpCrv1JntMM.i[2]";
connectAttr "RightEyeLidOutUpCrv1Jnt.pim" "RightEyeLidOutUpCrv1JntMM.i[3]";
connectAttr "RightEyeLidOutUpCrv1JntMM.o" "RightEyeLidOutUpCrv1JntDM.imat";
connectAttr "RightEyeLidOutUpCrv2AimPos.wm" "RightEyeLidOutUpCrv2JntMM.i[2]";
connectAttr "RightEyeLidOutUpCrv2Jnt.pim" "RightEyeLidOutUpCrv2JntMM.i[3]";
connectAttr "RightEyeLidOutUpCrv2JntMM.o" "RightEyeLidOutUpCrv2JntDM.imat";
connectAttr "RightEyeLidOutDownCrv0AimPos.wm" "RightEyeLidOutDownCrv0JntMM.i[2]"
		;
connectAttr "RightEyeLidOutDownCrv0Jnt.pim" "RightEyeLidOutDownCrv0JntMM.i[3]";
connectAttr "RightEyeLidOutDownCrv0JntMM.o" "RightEyeLidOutDownCrv0JntDM.imat";
connectAttr "RightEyeLidOutDownCrv1AimPos.wm" "RightEyeLidOutDownCrv1JntMM.i[2]"
		;
connectAttr "RightEyeLidOutDownCrv1Jnt.pim" "RightEyeLidOutDownCrv1JntMM.i[3]";
connectAttr "RightEyeLidOutDownCrv1JntMM.o" "RightEyeLidOutDownCrv1JntDM.imat";
connectAttr "RightEyeLidOutDownCrv2AimPos.wm" "RightEyeLidOutDownCrv2JntMM.i[2]"
		;
connectAttr "RightEyeLidOutDownCrv2Jnt.pim" "RightEyeLidOutDownCrv2JntMM.i[3]";
connectAttr "RightEyeLidOutDownCrv2JntMM.o" "RightEyeLidOutDownCrv2JntDM.imat";
connectAttr "RightEyeLidPinUpCrv0AimPos.wm" "RightEyeLidPinUpCrv0JntMM.i[2]";
connectAttr "RightEyeLidPinUpCrv0Jnt.pim" "RightEyeLidPinUpCrv0JntMM.i[3]";
connectAttr "RightEyeLidPinUpCrv0JntMM.o" "RightEyeLidPinUpCrv0JntDM.imat";
connectAttr "RightEyeLidPinUpCrv1AimPos.wm" "RightEyeLidPinUpCrv1JntMM.i[2]";
connectAttr "RightEyeLidPinUpCrv1Jnt.pim" "RightEyeLidPinUpCrv1JntMM.i[3]";
connectAttr "RightEyeLidPinUpCrv1JntMM.o" "RightEyeLidPinUpCrv1JntDM.imat";
connectAttr "RightEyeLidPinUpCrv2AimPos.wm" "RightEyeLidPinUpCrv2JntMM.i[2]";
connectAttr "RightEyeLidPinUpCrv2Jnt.pim" "RightEyeLidPinUpCrv2JntMM.i[3]";
connectAttr "RightEyeLidPinUpCrv2JntMM.o" "RightEyeLidPinUpCrv2JntDM.imat";
connectAttr "RightEyeLidPinDownCrv0AimPos.wm" "RightEyeLidPinDownCrv0JntMM.i[2]"
		;
connectAttr "RightEyeLidPinDownCrv0Jnt.pim" "RightEyeLidPinDownCrv0JntMM.i[3]";
connectAttr "RightEyeLidPinDownCrv0JntMM.o" "RightEyeLidPinDownCrv0JntDM.imat";
connectAttr "RightEyeLidPinDownCrv1AimPos.wm" "RightEyeLidPinDownCrv1JntMM.i[2]"
		;
connectAttr "RightEyeLidPinDownCrv1Jnt.pim" "RightEyeLidPinDownCrv1JntMM.i[3]";
connectAttr "RightEyeLidPinDownCrv1JntMM.o" "RightEyeLidPinDownCrv1JntDM.imat";
connectAttr "RightEyeLidPinDownCrv2AimPos.wm" "RightEyeLidPinDownCrv2JntMM.i[2]"
		;
connectAttr "RightEyeLidPinDownCrv2Jnt.pim" "RightEyeLidPinDownCrv2JntMM.i[3]";
connectAttr "RightEyeLidPinDownCrv2JntMM.o" "RightEyeLidPinDownCrv2JntDM.imat";
connectAttr "LeftEyeLidOutUp1CtrlZML.o" "LeftEyeLidOutUp1ZBA.i[0]";
connectAttr "LeftEyeLidOutUp2CtrlZML.o" "LeftEyeLidOutUp1ZBA.i[1]";
connectAttr "LeftEyeLidOutUp3CtrlZML.o" "LeftEyeLidOutUp2ZBA.i[0]";
connectAttr "LeftEyeLidOutUp2CtrlZML.o" "LeftEyeLidOutUp2ZBA.i[1]";
connectAttr "LeftEyeLidOutDown1CtrlZML.o" "LeftEyeLidOutDown1ZBA.i[0]";
connectAttr "LeftEyeLidOutDown2CtrlZML.o" "LeftEyeLidOutDown1ZBA.i[1]";
connectAttr "LeftEyeLidOutDown3CtrlZML.o" "LeftEyeLidOutDown2ZBA.i[0]";
connectAttr "LeftEyeLidOutDown2CtrlZML.o" "LeftEyeLidOutDown2ZBA.i[1]";
connectAttr "RightEyeLidOutUp1ZRvs.o" "RightEyeLidOutUp1ZBA.i[0]";
connectAttr "RightEyeLidOutUp2ZRvs.o" "RightEyeLidOutUp1ZBA.i[1]";
connectAttr "RightEyeLidOutUp3ZRvs.o" "RightEyeLidOutUp2ZBA.i[0]";
connectAttr "RightEyeLidOutUp2ZRvs.o" "RightEyeLidOutUp2ZBA.i[1]";
connectAttr "RightEyeLidOutDown1ZRvs.o" "blendTwoAttr1.i[0]";
connectAttr "RightEyeLidOutDown2ZRvs.o" "blendTwoAttr1.i[1]";
connectAttr "RightEyeLidOutDown3ZRvs.o" "blendTwoAttr2.i[0]";
connectAttr "RightEyeLidOutDown2ZRvs.o" "blendTwoAttr2.i[1]";
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
connectAttr "LeftEyeLidPinUp0CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidPinUp1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidPinUp2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidPinDown0CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LeftEyeLidPinDown1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LeftEyeLidPinDown2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RightEyeLidPinUp0CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RightEyeLidPinUp1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RightEyeLidPinUp2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RightEyeLidPinDown0CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RightEyeLidPinDown1CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "RightEyeLidPinDown2CtrlRvsMultMD.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "LeftEyeLidUpBlinkCenterSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidDownBlinkCenterSR.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "RightEyeLidUpBlinkCenterSR.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidDownBlinkCenterSR.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "LeftEyeLidOutUp1ZBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutUp2ZBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutDown1ZBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "LeftEyeLidOutDown2ZBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutUp1ZBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RightEyeLidOutUp2ZBA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "LeftEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RightEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
// End of eyeLidCtrl01.ma
