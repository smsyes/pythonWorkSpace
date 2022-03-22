//Maya ASCII 2018ff09 scene
//Name: eyeLidCtrl.ma
//Last modified: Tue, Mar 22, 2022 01:01:37 PM
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
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "5B06FE51-4A6E-17C3-CF08-468D3C1A1333";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.419897914199789 9.4839858045320398 20.762910155159251 ;
	setAttr ".r" -type "double3" -20.138352729604076 36.600000000002282 9.9043517977310611e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6EE9E43E-4AFB-00A6-93A4-969578B19E69";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 27.546645467934496;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B3521B7D-40F0-4D4F-22B4-CEA41D0B3006";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E59C51D1-4AF1-D7B8-7BB5-8A9605487E1E";
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
	rename -uid "36270DBF-4503-0929-84EA-16B3846E41BA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5CB62794-43B3-6056-CA1B-459DEDF4148D";
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
	rename -uid "CC9FD845-4F8D-65B2-B183-A2A1F66EC2BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "486EFECA-4020-5610-80A0-47B76DA91090";
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
createNode transform -n "EyeLidGrp";
	rename -uid "B0B7EE36-4482-1461-7555-F2BF38B0A8F8";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode transform -n "EyeLidCtrlGrp" -p "EyeLidGrp";
	rename -uid "699E5A1E-4631-3D46-7729-0A8398AA8AE5";
	setAttr ".r" -type "double3" -90 3.1805546814635168e-15 -90.000000000003254 ;
createNode transform -n "LeftEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "A7CD702B-4F6F-B732-55EE-CF95C416F67D";
	setAttr ".t" -type "double3" 1.4307257320756406e-42 7.9110081719085327e-59 -2.5243548967072378e-29 ;
createNode transform -n "LeftEyeLidOutCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "5E08DB99-4B55-561C-FA55-F696FC6C3E11";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidOutUpCtrlGrp" -p "LeftEyeLidOutCtrlGrp";
	rename -uid "8C951F5D-4095-5EB7-D035-7FBDF8004B6D";
createNode transform -n "LeftEyeLidOutUp1CtrlPos" -p "LeftEyeLidOutUpCtrlGrp";
	rename -uid "9B7E030E-4251-28E5-CFDE-AAB13273879C";
createNode transform -n "LeftEyeLidOutUp1CtrlGrp" -p "LeftEyeLidOutUp1CtrlPos";
	rename -uid "95BDBBD2-405D-2511-70A2-8A9442B95F78";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp1CtrlRvs" -p "LeftEyeLidOutUp1CtrlGrp";
	rename -uid "BFD9EFE7-4A97-23DF-86F2-BDAEB674D7FB";
createNode transform -n "LeftEyeLidOutUp1Ctrl" -p "LeftEyeLidOutUp1CtrlRvs";
	rename -uid "5AA6374A-4A46-3197-F75D-4D836B044712";
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
	rename -uid "03C795A7-49D8-F091-5731-E2AA31716098";
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
	rename -uid "58BB6C66-4FDC-192D-1ABC-9A99D27E4B1C";
createNode transform -n "LeftEyeLidOutUp2CtrlGrp" -p "LeftEyeLidOutUp2CtrlPos";
	rename -uid "4C5A8369-40D9-35CF-19A7-44BDA3DE59F5";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp2CtrlRvs" -p "LeftEyeLidOutUp2CtrlGrp";
	rename -uid "F41FF2CA-4E9B-FC14-2F4F-E1901EBAE045";
createNode transform -n "LeftEyeLidOutUp2Ctrl" -p "LeftEyeLidOutUp2CtrlRvs";
	rename -uid "70C6097A-4D44-9755-761F-47B37599095B";
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
	rename -uid "1710D358-4083-FB03-4350-389EFF0A218B";
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
	rename -uid "9EC92276-4E3F-C07B-7719-CEBDE40A7AAE";
createNode transform -n "LeftEyeLidOutUp3CtrlGrp" -p "LeftEyeLidOutUp3CtrlPos";
	rename -uid "9C0CEE19-49E0-AD59-5294-F581BCC75A10";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp3CtrlRvs" -p "LeftEyeLidOutUp3CtrlGrp";
	rename -uid "C764DB54-4324-2F4C-EECC-2DB2547B414C";
createNode transform -n "LeftEyeLidOutUp3Ctrl" -p "LeftEyeLidOutUp3CtrlRvs";
	rename -uid "F4E72F46-4933-0074-B535-B2B6756B9F48";
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
	rename -uid "132E8AB9-4968-51A7-1B59-A9A1C9CA7EFE";
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
	rename -uid "9767E3D8-4141-CBB8-D0E9-C1851757CF42";
createNode transform -n "LeftEyeLidOutDown1CtrlPos" -p "LeftEyeLidOutDownCtrlGrp";
	rename -uid "D505F2AE-4374-5265-EED4-DFA51ED3CFB1";
createNode transform -n "LeftEyeLidOutDown1CtrlGrp" -p "LeftEyeLidOutDown1CtrlPos";
	rename -uid "D5593957-4867-0DEC-7063-3EB3FF6CD0F3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown1CtrlRvs" -p "LeftEyeLidOutDown1CtrlGrp";
	rename -uid "832AB3C1-4E69-0842-64D0-099A61C73A88";
createNode transform -n "LeftEyeLidOutDown1Ctrl" -p "LeftEyeLidOutDown1CtrlRvs";
	rename -uid "DD62EDF8-460A-613F-1934-C6A8CC265601";
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
	rename -uid "E5940E4C-4034-38C1-D9EA-24BE7C86858D";
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
	rename -uid "F93AD07F-42C7-2E83-2C30-55934FC8034C";
createNode transform -n "LeftEyeLidOutDown2CtrlGrp" -p "LeftEyeLidOutDown2CtrlPos";
	rename -uid "3C2EF496-4E51-D2B2-480F-62B8F2E3DB7C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown2CtrlRvs" -p "LeftEyeLidOutDown2CtrlGrp";
	rename -uid "15CA5BC3-4A7A-057B-5079-1DB3A9552EFF";
createNode transform -n "LeftEyeLidOutDown2Ctrl" -p "LeftEyeLidOutDown2CtrlRvs";
	rename -uid "DBCB914C-46BB-CD7A-B6BA-CFAC17B248C8";
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
	rename -uid "07212F62-42F2-EFE8-B0D9-1E85E96C9D22";
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
	rename -uid "BCA3754E-40E5-2275-6F12-099DD52AD05D";
createNode transform -n "LeftEyeLidOutDown3CtrlGrp" -p "LeftEyeLidOutDown3CtrlPos";
	rename -uid "D1366801-4FAF-758E-22A8-A2B2D53FA8B1";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown3CtrlRvs" -p "LeftEyeLidOutDown3CtrlGrp";
	rename -uid "104D70C4-4B50-78F5-C7DC-69852C814A45";
createNode transform -n "LeftEyeLidOutDown3Ctrl" -p "LeftEyeLidOutDown3CtrlRvs";
	rename -uid "F31037C9-4F99-8B0D-5710-ADB97D15E48E";
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
	rename -uid "12B45544-4DDE-9055-B231-E4B7A2ED4255";
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
	rename -uid "D5EC16FF-43FC-BB36-FE52-319AD712B0A1";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidInCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "4F7BC11B-4198-5813-A953-6AB8C4BFAA86";
createNode transform -n "LeftEyeLidInMainCtrlGrp" -p "LeftEyeLidInCtrlPos";
	rename -uid "21CF528F-48DF-E8C5-4A7F-198DD71553D1";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidInMainCtrlRvs" -p "LeftEyeLidInMainCtrlGrp";
	rename -uid "30AD8A33-40C0-F1A4-9644-E0B538105A85";
createNode transform -n "LeftEyeLidInMainCtrl" -p "LeftEyeLidInMainCtrlRvs";
	rename -uid "454A6EB3-4F17-4AD0-A0C7-28952FD121BB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrlShape" -p "LeftEyeLidInMainCtrl";
	rename -uid "31FEB35B-4938-97AC-C09B-BA8B594B7F02";
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
	rename -uid "E667E288-4CF1-ED6C-A92F-DAB628E9078F";
createNode transform -n "LeftEyeLidUpMainCtrlGrp" -p "LeftEyeLidUpCtrlPos";
	rename -uid "06054305-4F74-B1D8-F529-5C92E53A6522";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftEyeLidUpMainCtrlRvs" -p "LeftEyeLidUpMainCtrlGrp";
	rename -uid "4E639763-4444-2C21-6309-A2B4A4F27B6B";
createNode transform -n "LeftEyeLidUpMainCtrl" -p "LeftEyeLidUpMainCtrlRvs";
	rename -uid "C992C34A-44B7-DE71-224F-1883FFF1D4E6";
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
	rename -uid "55D048F3-4A28-4697-6474-C8B97E61547F";
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
	rename -uid "F3210C73-47F4-A22C-EF68-CEBBC86B6FD2";
createNode transform -n "LeftEyeLidOutMainCtrlGrp" -p "LeftEyeLidOutCtrlPos";
	rename -uid "3EB6992A-41FF-4FE6-625D-A3B93D808CBE";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutMainCtrlRvs" -p "LeftEyeLidOutMainCtrlGrp";
	rename -uid "97861979-49AF-7F36-AD31-4AA454878890";
createNode transform -n "LeftEyeLidOutMainCtrl" -p "LeftEyeLidOutMainCtrlRvs";
	rename -uid "889924AF-46C3-911D-8BAA-2F8DBFFA11C6";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "LeftEyeLidOutMainCtrl";
	rename -uid "1570F530-4DB5-02D1-35B8-A8991696267A";
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
	rename -uid "87850611-46EA-57C0-01E4-B6A7AA4ED4AE";
createNode transform -n "LeftEyeLidDownMainCtrlGrp" -p "LeftEyeLidDownCtrlPos";
	rename -uid "FA1D5DBD-4536-382F-2FDE-D2B01CC26F2B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDownMainCtrlRvs" -p "LeftEyeLidDownMainCtrlGrp";
	rename -uid "8FC7D2A9-4E2D-FEC1-121F-EF9D7E4A5446";
createNode transform -n "LeftEyeLidDownMainCtrl" -p "LeftEyeLidDownMainCtrlRvs";
	rename -uid "5192E82F-4E92-2207-F535-39BD62207E88";
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
	rename -uid "DE169F4C-44A2-9B60-C55D-0FB5D2CCCD40";
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
	rename -uid "CA724CDD-484A-E269-7F97-E48A297B9B50";
createNode transform -n "LeftEyeLidCCtrlOffGrp" -p "LeftEyeLidCCtrlGrp";
	rename -uid "926A7360-4C0A-941E-FFBB-07A90BDFAEB3";
	setAttr ".t" -type "double3" 0 0 3 ;
createNode transform -n "LeftEyeLidCCtrl" -p "LeftEyeLidCCtrlOffGrp";
	rename -uid "1884E869-4D93-E8BD-ECA2-1A921D5BC672";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftEyeLidCCtrlShape" -p "LeftEyeLidCCtrl";
	rename -uid "14AC0FCA-478C-9A5E-A35B-AEB7C99E98C1";
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
	rename -uid "F96185F8-45CE-E6F8-31BF-609D35724DF8";
	setAttr ".t" -type "double3" -3.0000000277940013 1.2079227474570066e-13 -2.9999999999999964 ;
createNode transform -n "LeftEyeLidUpCtrlGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "A2391B79-4635-2C24-F0C4-2C9B276115C0";
createNode transform -n "LeftEyeLidUp2CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "665BD69D-437E-C1DB-D9A3-5E8CC51D6A5B";
createNode transform -n "LeftEyeLidUp2CtrlGrpGrp" -p "LeftEyeLidUp2CtrlPosGrp";
	rename -uid "530390F1-4261-30D6-5076-79B31317B286";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp2CtrlRvsGrp" -p "LeftEyeLidUp2CtrlGrpGrp";
	rename -uid "F42C9DFE-4973-BFA8-A201-E3943394A880";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp2Ctrl" -p "LeftEyeLidUp2CtrlRvsGrp";
	rename -uid "03EA3692-47DA-FB01-561C-09B7CE72F2D6";
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
	rename -uid "C3792CBF-4984-0013-402B-F2B322C4F03D";
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
	rename -uid "8EE9DDF2-4E2A-D3F6-8814-C293E71A716F";
createNode transform -n "LeftEyeLidUp3CtrlGrpGrp" -p "LeftEyeLidUp3CtrlPosGrp";
	rename -uid "DDAE36FD-4158-271E-5404-63BA47D93317";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp3CtrlRvsGrp" -p "LeftEyeLidUp3CtrlGrpGrp";
	rename -uid "20C5E2C6-4590-50B8-381F-DC876043AFBF";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp3Ctrl" -p "LeftEyeLidUp3CtrlRvsGrp";
	rename -uid "4DFCD7E1-41B6-20B7-EDB2-C88C9B880A0F";
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
	rename -uid "BC40C3BC-4B2D-BBC3-78B9-9D86562BA486";
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
	rename -uid "9C333FA1-4A16-5941-7E22-B5A02449F13A";
createNode transform -n "LeftEyeLidUp4CtrlGrpGrp" -p "LeftEyeLidUp4CtrlPosGrp";
	rename -uid "72FDEF8E-42E1-CBBD-E506-CE90ECA81122";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp4CtrlRvsGrp" -p "LeftEyeLidUp4CtrlGrpGrp";
	rename -uid "1DEE8E52-47C9-9D66-F231-5FA79292C47A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp4Ctrl" -p "LeftEyeLidUp4CtrlRvsGrp";
	rename -uid "5763FBBD-46A0-2157-C01C-1AB88D1D3DA7";
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
	rename -uid "75FDED8E-4AC8-D354-EC0C-639A94CBA92F";
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
	rename -uid "5499F457-44A6-50FD-C922-FD980A9833AE";
createNode transform -n "LeftEyeLidUp5CtrlGrpGrp" -p "LeftEyeLidUp5CtrlPosGrp";
	rename -uid "3FC48C29-4066-21B6-B250-22AD3FFA3E8B";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp5CtrlRvsGrp" -p "LeftEyeLidUp5CtrlGrpGrp";
	rename -uid "BCFCA96F-495E-03F3-6536-4B9D0B03CAB2";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp5Ctrl" -p "LeftEyeLidUp5CtrlRvsGrp";
	rename -uid "F603B3DF-43BA-8EE6-BB70-CDB7F413DD48";
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
	rename -uid "59806027-4DA8-3AA0-3CAC-918989FB2525";
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
	rename -uid "6D327265-423A-9F3F-C2A7-45B5C78516E3";
createNode transform -n "LeftEyeLidUp6CtrlGrpGrp" -p "LeftEyeLidUp6CtrlPosGrp";
	rename -uid "B073FFFA-4844-46CA-13A6-2FAE4277DD4A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp6CtrlRvsGrp" -p "LeftEyeLidUp6CtrlGrpGrp";
	rename -uid "E848BD0A-4F0A-D251-5885-4FBE92628927";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp6Ctrl" -p "LeftEyeLidUp6CtrlRvsGrp";
	rename -uid "04AC493D-46E6-1B3C-519F-28B10EB49A42";
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
	rename -uid "A55E6C82-49B2-25BA-1A5E-8ABA8D922203";
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
	rename -uid "2995A48A-4A3A-3506-A934-45AE1662E672";
createNode transform -n "LeftEyeLidDown2CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "7318A39E-4E5A-6E35-4AE6-8FA75562285F";
createNode transform -n "LeftEyeLidDown2CtrlGrpGrp" -p "LeftEyeLidDown2CtrlPosGrp";
	rename -uid "8063D0A9-4FE3-CFC8-3C92-4C92DF0F252E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown2CtrlRvsGrp" -p "LeftEyeLidDown2CtrlGrpGrp";
	rename -uid "2A4D810D-45DF-2142-6F7C-75B6E1578656";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown2Ctrl" -p "LeftEyeLidDown2CtrlRvsGrp";
	rename -uid "C449CF4A-4BC4-7B97-A1AE-BF8444679DB3";
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
	rename -uid "276D7989-4607-1170-33FB-D692124E02D6";
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
	rename -uid "8D74C037-40F7-CBCB-3FA8-3083BEF64D98";
createNode transform -n "LeftEyeLidDown3CtrlGrpGrp" -p "LeftEyeLidDown3CtrlPosGrp";
	rename -uid "4BF1C751-4041-A5B3-9496-9DA69778915E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown3CtrlRvsGrp" -p "LeftEyeLidDown3CtrlGrpGrp";
	rename -uid "B8422692-4C17-3B5D-86A7-49B5F4083AF0";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown3Ctrl" -p "LeftEyeLidDown3CtrlRvsGrp";
	rename -uid "0DA4BE6F-4530-4EC8-6F64-8B9E2553DB8A";
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
	rename -uid "E288D1B1-4C9C-1093-D27C-6EA179F0134D";
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
	rename -uid "17424BA5-45BD-6AA2-196B-1AB09641004F";
createNode transform -n "LeftEyeLidDown4CtrlGrpGrp" -p "LeftEyeLidDown4CtrlPosGrp";
	rename -uid "424EE22A-4D8E-58AA-6E30-B7A3BFBDC29A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown4CtrlRvsGrp" -p "LeftEyeLidDown4CtrlGrpGrp";
	rename -uid "47952049-4F13-3367-86EA-A4A98FB7C231";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown4Ctrl" -p "LeftEyeLidDown4CtrlRvsGrp";
	rename -uid "2D7AD843-4157-296B-FBB2-279DB4C7818E";
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
	rename -uid "E4BC1DF4-45D6-BAC7-488D-859113C4E191";
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
	rename -uid "A8B059AC-44E4-082B-B793-98A7D9B715A4";
createNode transform -n "LeftEyeLidDown5CtrlGrpGrp" -p "LeftEyeLidDown5CtrlPosGrp";
	rename -uid "933FE598-4E1F-EAE3-0B65-9DA70CA00419";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown5CtrlRvsGrp" -p "LeftEyeLidDown5CtrlGrpGrp";
	rename -uid "0EEF9A34-4C51-16C6-6492-92801B764309";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown5Ctrl" -p "LeftEyeLidDown5CtrlRvsGrp";
	rename -uid "70134B55-4D69-EF05-8EF7-EAA966BA2D77";
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
	rename -uid "5F27660B-420E-67F3-33E4-30867AD9731E";
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
	rename -uid "82F9BEA2-4422-ABC0-1DF7-FAB7308672E2";
createNode transform -n "LeftEyeLidDown6CtrlGrpGrp" -p "LeftEyeLidDown6CtrlPosGrp";
	rename -uid "BA2362A2-4B46-21CD-C5A8-58878FEDE62F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown6CtrlRvsGrp" -p "LeftEyeLidDown6CtrlGrpGrp";
	rename -uid "019F56C6-4DE3-14C2-182A-A198A5616CE1";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown6Ctrl" -p "LeftEyeLidDown6CtrlRvsGrp";
	rename -uid "18E4AF15-4E58-C109-7202-99B29BF5C1C6";
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
	rename -uid "AB697A7C-4F86-DE1E-FFC9-50AE7AABCD9C";
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
	rename -uid "1C7F93C4-4181-3860-021B-FDB1E593DE59";
createNode transform -n "LeftEyeLidSide1CtrlGrpGrp" -p "LeftEyeLidSide1CtrlPosGrp";
	rename -uid "405A509D-4219-2C70-1CF5-A08A1528F760";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide1RvsGrp" -p "LeftEyeLidSide1CtrlGrpGrp";
	rename -uid "45BAC47D-4804-048D-0F81-C6B632F7B2F6";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide1Ctrl" -p "LeftEyeLidSide1RvsGrp";
	rename -uid "4ACDE00F-40F8-1193-A057-5DB96D96AA5B";
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
	rename -uid "798FBC73-4F03-E2B4-0838-359786F7B735";
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
	rename -uid "D1E94548-422E-39B3-F7BE-24AF75050C74";
createNode transform -n "LeftEyeLidSide2CtrlGrpGrp" -p "LeftEyeLidSide2CtrlPosGrp";
	rename -uid "F910F82D-443E-2249-BF68-50BF087C5119";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide2CtrlRvsGrp" -p "LeftEyeLidSide2CtrlGrpGrp";
	rename -uid "47CDF97B-4623-C054-D14D-EB97BB94B8DF";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide2Ctrl" -p "LeftEyeLidSide2CtrlRvsGrp";
	rename -uid "2C078A3B-4C4A-096D-7EE1-AB9C547A2AF8";
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
	rename -uid "28B43B41-4E8C-DD13-7BF4-ED86BD4E0AF2";
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
	rename -uid "6C6549F2-441E-E7CD-C5EB-7FBAAE049682";
createNode transform -n "LeftEyeLidPinUpCtrlGrp" -p "LeftEyeLidPinCtrlGrp";
	rename -uid "8495DFFB-4874-2906-373A-5ABFDC3BABED";
	setAttr ".t" -type "double3" -1.4307257320756409e-42 -7.9110081719100865e-59 2.5243548967072378e-29 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftEyeLidPinUp0CtrlGrp" -p "LeftEyeLidPinUpCtrlGrp";
	rename -uid "69747B2C-4728-F80E-2222-DFBBB99D7163";
createNode transform -n "LeftEyeLidPinUp0CtrlRvsGrp" -p "LeftEyeLidPinUp0CtrlGrp";
	rename -uid "58CED132-4E59-C720-7DB6-BFB7E32FCBDB";
createNode transform -n "LeftEyeLidPinUp0Ctrl" -p "LeftEyeLidPinUp0CtrlRvsGrp";
	rename -uid "F3D280D9-4950-351C-F8B3-5E817AACC7F3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinUp0CtrlShape" -p "LeftEyeLidPinUp0Ctrl";
	rename -uid "325055FF-4CBB-603D-F23C-BEB3D623AC99";
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
	rename -uid "A7B4921A-4520-EC99-1D91-938443E6F8E0";
createNode transform -n "LeftEyeLidPinUp1CtrlRvsGrp" -p "LeftEyeLidPinUp1CtrlGrp";
	rename -uid "50382537-4FBB-7E83-2FF1-D8A51B1281EE";
createNode transform -n "LeftEyeLidPinUp1Ctrl" -p "LeftEyeLidPinUp1CtrlRvsGrp";
	rename -uid "24416DB6-4866-BEB1-9F1C-6BB5FBB262A5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinUp1CtrlShape" -p "LeftEyeLidPinUp1Ctrl";
	rename -uid "126929A1-471F-D8D5-9B87-85920788C016";
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
	rename -uid "846226E5-4B9F-AAC0-9EB6-88B1A2CB0E71";
createNode transform -n "LeftEyeLidPinUp2CtrlRvsGrp" -p "LeftEyeLidPinUp2CtrlGrp";
	rename -uid "095C77FC-44A3-165B-D34B-A1A7F83EEA25";
createNode transform -n "LeftEyeLidPinUp2Ctrl" -p "LeftEyeLidPinUp2CtrlRvsGrp";
	rename -uid "198D4A52-4E04-67CD-F1E5-9E99E42ED833";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinUp2CtrlShape" -p "LeftEyeLidPinUp2Ctrl";
	rename -uid "48573408-42A5-14CC-09C8-BAAA98594569";
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
	rename -uid "538E14E5-4EA4-437D-C399-9FAF5932C98A";
	setAttr ".t" -type "double3" -1.4307257320756409e-42 -7.9110081719100865e-59 2.5243548967072378e-29 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftEyeLidPinDown0CtrlGrp" -p "LeftEyeLidPinDownCtrlGrp";
	rename -uid "35CFDA12-4474-6948-107E-F59AEAAA9059";
createNode transform -n "LeftEyeLidPinDown0CtrlRvsGrp" -p "LeftEyeLidPinDown0CtrlGrp";
	rename -uid "7E2AF8F1-4931-E2C0-E114-B29140567A75";
createNode transform -n "LeftEyeLidPinDown0Ctrl" -p "LeftEyeLidPinDown0CtrlRvsGrp";
	rename -uid "678F0D02-47F7-DDF1-B1D8-148C66BCD077";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinDown0CtrlShape" -p "LeftEyeLidPinDown0Ctrl";
	rename -uid "450AD2CA-44E6-4832-434E-C49135D05108";
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
	rename -uid "68B30A2A-4D50-7CF6-95F8-359988550F05";
createNode transform -n "LeftEyeLidPinDown1CtrlRvsGrp" -p "LeftEyeLidPinDown1CtrlGrp";
	rename -uid "6F7DB7C7-4C5D-AC1F-D03C-888FE1AD8F92";
createNode transform -n "LeftEyeLidPinDown1Ctrl" -p "LeftEyeLidPinDown1CtrlRvsGrp";
	rename -uid "3A7440A6-4EE5-8AE0-EBE5-B29FE0B08C82";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinDown1CtrlShape" -p "LeftEyeLidPinDown1Ctrl";
	rename -uid "0DA3A9FA-4197-9F12-1DC4-8EBAEBB735C2";
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
	rename -uid "D1D76F4F-4FBC-AECA-FA44-F3A658970753";
createNode transform -n "LeftEyeLidPinDown2CtrlRvsGrp" -p "LeftEyeLidPinDown2CtrlGrp";
	rename -uid "18120FC9-44F5-DE7C-EEF9-FD875A71EBB1";
createNode transform -n "LeftEyeLidPinDown2Ctrl" -p "LeftEyeLidPinDown2CtrlRvsGrp";
	rename -uid "568CAC00-4967-5F9D-54A8-69B4EE045B49";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidPinDown2CtrlShape" -p "LeftEyeLidPinDown2Ctrl";
	rename -uid "F207333A-4F0F-D21C-125F-3FA6191DA7F9";
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
	rename -uid "F5BDDF55-4728-B658-61F4-17B7527925D0";
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1 ;
createNode transform -n "RightEyeLidOutCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "DF3F026C-40B7-DF8F-6323-7BAAED6769E3";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUpCtrlGrp" -p "RightEyeLidOutCtrlGrp";
	rename -uid "162A5072-484A-B6D7-A98B-3DA1B0D2D12E";
createNode transform -n "RightEyeLidOutUp1CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "9AD7D4BC-45E8-F1B6-2A73-90939D17157F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1CtrlGrp" -p "RightEyeLidOutUp1CtrlPos";
	rename -uid "998DE373-45F5-4439-B129-D4B8C5D6687B";
createNode transform -n "RightEyeLidOutUp1CtrlRvs" -p "RightEyeLidOutUp1CtrlGrp";
	rename -uid "1E0ACC06-4D6E-7B1B-CD21-08921B58C8EF";
createNode transform -n "RightEyeLidOutUp1Ctrl" -p "RightEyeLidOutUp1CtrlRvs";
	rename -uid "DABF6692-4DC9-A756-236F-309748B8CD93";
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
	rename -uid "6362051B-40A6-E8DF-4D73-71B7E8692537";
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
	rename -uid "0DF70AB7-4AB5-8BBC-A3E4-75A1B0688BE7";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp2CtrlGrp" -p "RightEyeLidOutUp2CtrlPos";
	rename -uid "A3D0F278-470A-AF15-EA76-648B4D294928";
createNode transform -n "RightEyeLidOutUp2CtrlRvs" -p "RightEyeLidOutUp2CtrlGrp";
	rename -uid "B5466263-47B9-4249-F96D-3791BA6C4204";
createNode transform -n "RightEyeLidOutUp2Ctrl" -p "RightEyeLidOutUp2CtrlRvs";
	rename -uid "1E6BA00F-4396-82DB-685E-078D09F0C637";
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
	rename -uid "07CFAE60-44AF-F1D6-C8C5-F5BB48450B59";
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
	rename -uid "B8C78CB3-4F65-5D9F-A444-5F91B858B900";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp3CtrlGrp" -p "RightEyeLidOutUp3CtrlPos";
	rename -uid "B3C3F998-4D5C-32B9-90AA-5693AABB0040";
createNode transform -n "RightEyeLidOutUp3CtrlRvs" -p "RightEyeLidOutUp3CtrlGrp";
	rename -uid "A1CBD1EE-4985-5981-3724-D8AE7C3B0097";
createNode transform -n "RightEyeLidOutUp3Ctrl" -p "RightEyeLidOutUp3CtrlRvs";
	rename -uid "DC3F38AB-40C3-7901-7640-3FBA7C4BB613";
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
	rename -uid "93DF86E9-4762-BD95-B1A3-E9A0D78CEE99";
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
	rename -uid "20C21E66-461B-682C-9125-DB9588A88745";
createNode transform -n "RightEyeLidOutDown1CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "8ED0D7DD-40BF-EE81-607F-6A9B9FA6D878";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown1CtrlGrp" -p "RightEyeLidOutDown1CtrlPos";
	rename -uid "421961B9-4D2A-F211-CA54-F3861DA1F7B7";
createNode transform -n "RightEyeLidOutDown1CtrlRvs" -p "RightEyeLidOutDown1CtrlGrp";
	rename -uid "629AF0E2-4B79-719C-2C0E-29BAB093E32F";
createNode transform -n "RightEyeLidOutDown1Ctrl" -p "RightEyeLidOutDown1CtrlRvs";
	rename -uid "AC69839F-49DF-643C-B9AD-66B794895E80";
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
	rename -uid "9F5A0FBB-443C-F0EF-531C-EF82EE808319";
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
	rename -uid "D24E9C22-42EB-41FD-99E0-23A75317E891";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CtrlGrp" -p "RightEyeLidOutDown2CtrlPos";
	rename -uid "18B0AD9C-48AF-7A54-E58C-9CA218BAA638";
createNode transform -n "RightEyeLidOutDown2CtrlRvs" -p "RightEyeLidOutDown2CtrlGrp";
	rename -uid "0F8A791C-4091-CEB7-DD5F-20988335A465";
createNode transform -n "RightEyeLidOutDown2Ctrl" -p "RightEyeLidOutDown2CtrlRvs";
	rename -uid "6F084D09-4E45-70AC-ACF2-2E852D5E1E54";
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
	rename -uid "9DCE2AC3-4E04-A5FF-9A90-92867A5833EC";
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
	rename -uid "3C0FEF46-4412-57CF-063B-06B34461018F";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown3CtrlGrp" -p "RightEyeLidOutDown3CtrlPos";
	rename -uid "E8D273AA-488D-B6BC-4EE6-BAA2EB21E6DC";
createNode transform -n "RightEyeLidOutDown3CtrlRvs" -p "RightEyeLidOutDown3CtrlGrp";
	rename -uid "51E55EA0-4891-3222-20CC-8A80BE3A6780";
createNode transform -n "RightEyeLidOutDown3Ctrl" -p "RightEyeLidOutDown3CtrlRvs";
	rename -uid "8AF0CDAD-4046-6AF6-4D24-A1B9D36B3CCC";
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
	rename -uid "92D2C20B-4E02-F9FA-91EE-EA9580CD9672";
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
	rename -uid "DF4929B5-4121-AA1B-2AF1-6EB3292EE2B4";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidInCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "5D74E81F-40E1-2ED2-0CF7-CBB3260D0910";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidInMainCtrlGrp" -p "RightEyeLidInCtrlPos";
	rename -uid "29C303EA-4056-3FD4-1CC2-72952F2EBFDF";
createNode transform -n "RightEyeLidInMainCtrlRvs" -p "RightEyeLidInMainCtrlGrp";
	rename -uid "3676D10C-4471-B0E4-CCAE-F7A1744041F1";
createNode transform -n "RightEyeLidInMainCtrl" -p "RightEyeLidInMainCtrlRvs";
	rename -uid "E9DE4717-4263-CC7F-5833-0CA7A733AF45";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidInMainCtrlShape" -p "RightEyeLidInMainCtrl";
	rename -uid "6EA90238-4C92-A2D5-4A59-0FAE88F7D174";
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
	rename -uid "9D51AFB5-47C7-0222-CB74-ED9AF7E994AA";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidUpMainCtrlGrp" -p "RightEyeLidUpCtrlPos";
	rename -uid "1E08DB69-4ABC-F967-194A-4DA95A9EC3B7";
createNode transform -n "RightEyeLidUpMainCtrlRvs" -p "RightEyeLidUpMainCtrlGrp";
	rename -uid "6862B1A8-4BDB-5469-7356-1D83DB0A4C05";
createNode transform -n "RightEyeLidUpMainCtrl" -p "RightEyeLidUpMainCtrlRvs";
	rename -uid "C3E59E51-4999-9638-61CB-3DB16D63A419";
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
	rename -uid "C8C2AC13-47D1-0C42-9D76-BDA0DB8220CB";
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
	rename -uid "FA249B5D-49A6-8318-E94F-A1A6660A6232";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutMainCtrlGrp" -p "RightEyeLidOutCtrlPos";
	rename -uid "DEA7C8CC-49F9-CDE1-2D95-6BA32DB5CC93";
createNode transform -n "RightEyeLidOutMainCtrlRvs" -p "RightEyeLidOutMainCtrlGrp";
	rename -uid "A80D4E54-4AF8-0848-B33C-98A62A6B1AD0";
createNode transform -n "RightEyeLidOutMainCtrl" -p "RightEyeLidOutMainCtrlRvs";
	rename -uid "07D1A23B-41C9-14F2-65E9-AB8FAEFCCBD9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "RightEyeLidOutMainCtrl";
	rename -uid "1322D056-45E2-2917-AA02-4789C3E07DF6";
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
	rename -uid "6CBD4BC6-488A-3524-134C-5C8FF41DB998";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidDownMainCtrlGrp" -p "RightEyeLidDownCtrlPos";
	rename -uid "27750089-4F49-51CD-A1B9-3FA25BF59361";
createNode transform -n "RightEyeLidDownMainCtrlRvs" -p "RightEyeLidDownMainCtrlGrp";
	rename -uid "8CD62B1B-48EC-1EEB-04CE-1C982EBC92C0";
createNode transform -n "RightEyeLidDownMainCtrl" -p "RightEyeLidDownMainCtrlRvs";
	rename -uid "63A7FE9C-4CA5-F6AF-A430-079B1DF8044A";
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
	rename -uid "17D211BB-4A15-B067-30B1-F48BF41DA30D";
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
	rename -uid "78A83B6A-40DE-E4D4-6DE6-7AADF5B156B6";
createNode transform -n "RightEyeLidCCtrlOffGrp" -p "RightEyeLidCCtrlGrp";
	rename -uid "78B9A2B1-4708-0AD4-ED45-84B5B118F293";
createNode transform -n "RightEyeLidCCtrl" -p "RightEyeLidCCtrlOffGrp";
	rename -uid "A7880C20-40AA-8443-54D2-20AC8534B0A6";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightEyeLidCCtrlShape" -p "RightEyeLidCCtrl";
	rename -uid "2CD0C0FF-4891-D0F3-E533-22B14BD508D6";
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
	rename -uid "89FA46DC-4DF9-FC67-DB26-DF8263AB7B8F";
	setAttr ".t" -type "double3" -2.9999999722059982 1.2079227474220375e-13 -2.9999999999999964 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUpCtrlGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "490542D0-407A-02C6-1F5B-0F9E64E35A41";
createNode transform -n "RightEyeLidUp2CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "CDB1628F-41E4-CD26-F561-6096801354DF";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2CtrlGrpGrp" -p "RightEyeLidUp2CtrlPosGrp";
	rename -uid "11A844E7-4F95-ACDE-5159-8C92C072F02F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999911 ;
createNode transform -n "RightEyeLidUp2CtrlRvsGrp" -p "RightEyeLidUp2CtrlGrpGrp";
	rename -uid "5D975E7C-48BF-2338-E01E-6D8AB8B4F7E1";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000024 ;
createNode transform -n "RightEyeLidUp2Ctrl" -p "RightEyeLidUp2CtrlRvsGrp";
	rename -uid "511D0120-4BEE-97F8-DF14-AC80B5DED57E";
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
	rename -uid "2A515B38-4A97-F1C8-90B5-C49E89C674FD";
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
	rename -uid "012F26D4-42CA-DE6B-C092-B4987DCC5221";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp3CtrlGrpGrp" -p "RightEyeLidUp3CtrlPosGrp";
	rename -uid "36D9BB7A-4064-E405-D370-6F9A4EFFE01F";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp3CtrlRvsGrp" -p "RightEyeLidUp3CtrlGrpGrp";
	rename -uid "1DCFE1B6-40CD-623E-B8A9-339FDE7149EB";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 1.0000000000000011 ;
createNode transform -n "RightEyeLidUp3Ctrl" -p "RightEyeLidUp3CtrlRvsGrp";
	rename -uid "1EA3DCE5-474E-8E0C-3569-2AB25388AF0F";
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
	rename -uid "B3CF1109-4822-DA16-8127-EEAC5A47FB02";
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
	rename -uid "82B01F8A-46D9-B537-EE1A-E786F98D339D";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp4CtrlGrpGrp" -p "RightEyeLidUp4CtrlPosGrp";
	rename -uid "E2CE7EF9-450B-2C0C-56AD-D1909FA2D596";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp4CtrlRvsGrp" -p "RightEyeLidUp4CtrlGrpGrp";
	rename -uid "5C599C6D-48E2-1287-1175-46B6816CB66D";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000016 ;
createNode transform -n "RightEyeLidUp4Ctrl" -p "RightEyeLidUp4CtrlRvsGrp";
	rename -uid "0361BBDF-409C-7E15-C8B9-8C8F7AB32B15";
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
	rename -uid "A586EC35-4295-DF87-C956-62917F56A29B";
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
	rename -uid "11236F8C-46DB-B8A3-E869-B08651B267CA";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp5CtrlGrpGrp" -p "RightEyeLidUp5CtrlPosGrp";
	rename -uid "726D278F-463D-AB00-A64E-AFBDDD5233AF";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidUp5CtrlRvsGrp" -p "RightEyeLidUp5CtrlGrpGrp";
	rename -uid "69771C35-4C8B-3729-2630-BFB8511373B0";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
createNode transform -n "RightEyeLidUp5Ctrl" -p "RightEyeLidUp5CtrlRvsGrp";
	rename -uid "797085FE-42F2-1C81-5531-9FA93990371B";
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
	rename -uid "6F242D33-4058-F235-20FF-1D8DEE95034E";
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
	rename -uid "DF252D69-4580-5C79-9797-6095BC894666";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp6CtrlGrpGrp" -p "RightEyeLidUp6CtrlPosGrp";
	rename -uid "73F5C131-46F6-4DDF-619D-F68C8A822B89";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "RightEyeLidUp6CtrlRvsGrp" -p "RightEyeLidUp6CtrlGrpGrp";
	rename -uid "BB63BE4A-455C-1453-C317-928914D34766";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidUp6Ctrl" -p "RightEyeLidUp6CtrlRvsGrp";
	rename -uid "A8253913-4CB6-644F-3003-F49ABE563874";
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
	rename -uid "7A796CCB-44F8-9B69-7FD1-0B9289E8625B";
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
	rename -uid "51BEEA9F-4303-1C17-46E7-1487DD8637C6";
createNode transform -n "RightEyeLidDown2CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "E6B56A3E-4EBB-7994-C6C8-199782E5E0C3";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown2CtrlGrpGrp" -p "RightEyeLidDown2CtrlPosGrp";
	rename -uid "B2DA36B9-4690-1755-B30A-3291DB8D9BED";
	setAttr ".s" -type "double3" 0.99999999999999889 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown2CtrlRvsGrp" -p "RightEyeLidDown2CtrlGrpGrp";
	rename -uid "6FCEE954-4C48-BB10-8FF7-78A87CE00EDE";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000002 0.99999999999999911 ;
createNode transform -n "RightEyeLidDown2Ctrl" -p "RightEyeLidDown2CtrlRvsGrp";
	rename -uid "6976DCA9-41A9-057F-C50B-788614910B85";
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
	rename -uid "D7B73BF1-4B54-CF95-3A78-71BB22695DFF";
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
	rename -uid "6CF98B00-4904-3D48-9ABF-5AB0F43E0F9D";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown3CtrlGrpGrp" -p "RightEyeLidDown3CtrlPosGrp";
	rename -uid "DD55988C-45FD-5DEA-1199-C6B60C53151F";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidDown3CtrlRvsGrp" -p "RightEyeLidDown3CtrlGrpGrp";
	rename -uid "1A323583-4DA7-7A15-0B59-D28818A78728";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown3Ctrl" -p "RightEyeLidDown3CtrlRvsGrp";
	rename -uid "A7663AFA-41CD-8DDE-6992-0182E0165ED4";
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
	rename -uid "3F0BB2EF-436A-C145-3772-8480BEEDB2A4";
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
	rename -uid "60BA3F60-4A3E-1D99-5B09-43A8320E1B73";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown4CtrlGrpGrp" -p "RightEyeLidDown4CtrlPosGrp";
	rename -uid "4ED29D36-432F-1AED-916E-3099E4578FFE";
	setAttr ".s" -type "double3" 1.0000000000000009 1 0.99999999999999933 ;
createNode transform -n "RightEyeLidDown4CtrlRvsGrp" -p "RightEyeLidDown4CtrlGrpGrp";
	rename -uid "613CC4C7-4964-7652-2B9B-00859073010C";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidDown4Ctrl" -p "RightEyeLidDown4CtrlRvsGrp";
	rename -uid "0D8B8BFB-4FD9-1F3E-6D4A-BEA057EAD347";
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
	rename -uid "351F6202-4AE3-B6D3-7C75-81A0CD35A3BE";
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
	rename -uid "9FF880B6-4DBA-DC3B-6997-13B464893DE5";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown5CtrlGrpGrp" -p "RightEyeLidDown5CtrlPosGrp";
	rename -uid "444762B6-49AF-AE9C-C3E7-F289F792884C";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown5CtrlRvsGrp" -p "RightEyeLidDown5CtrlGrpGrp";
	rename -uid "8535B278-4C4A-D04C-D753-C2917DE9ED4F";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown5Ctrl" -p "RightEyeLidDown5CtrlRvsGrp";
	rename -uid "1E905902-422C-34BD-D2D8-A4B07D257B1D";
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
	rename -uid "7507765D-4E4F-70E0-7557-8690D95F839C";
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
	rename -uid "E2B9C55B-429E-E6FC-B9D0-B6A366E3C7F8";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown6CtrlGrpGrp" -p "RightEyeLidDown6CtrlPosGrp";
	rename -uid "215AAA2B-4A12-E2EE-E199-5B98D338E93F";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1 ;
createNode transform -n "RightEyeLidDown6CtrlRvsGrp" -p "RightEyeLidDown6CtrlGrpGrp";
	rename -uid "92C7AF08-4B0E-AB3C-5746-2A9F93029305";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown6Ctrl" -p "RightEyeLidDown6CtrlRvsGrp";
	rename -uid "A9B65783-4969-EE38-23D6-77BF3373EE6E";
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
	rename -uid "1C3F221A-4C14-71C0-DEA2-F0B7AA27036F";
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
	rename -uid "5123EF2C-4898-635B-9893-F4A25696CB86";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide1CtrlGrpGrp" -p "RightEyeLidSide1CtrlPosGrp";
	rename -uid "6A65C54F-4993-E803-411E-0E8BC4D45EC6";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide1CtrlRvsGrp" -p "RightEyeLidSide1CtrlGrpGrp";
	rename -uid "4F094277-40B7-95A2-8883-C6A8F0232681";
	setAttr ".s" -type "double3" 1.0000000000000011 1 0.99999999999999967 ;
createNode transform -n "RightEyeLidSide1Ctrl" -p "RightEyeLidSide1CtrlRvsGrp";
	rename -uid "8D9040F1-426E-D4B0-8074-82929054CAA1";
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
	rename -uid "FDE20842-4216-29E7-4AED-5C81092056E9";
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
	rename -uid "30C738AB-451C-5A4C-AA13-2082283E1B04";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide2CtrlGrpGrp" -p "RightEyeLidSide2CtrlPosGrp";
	rename -uid "256FF7F7-4D3C-6A9F-0A37-6BA7651995F7";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide2CtrlRvsGrp" -p "RightEyeLidSide2CtrlGrpGrp";
	rename -uid "E9EAB903-479F-6909-16B9-86AE6458160E";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "RightEyeLidSide2Ctrl" -p "RightEyeLidSide2CtrlRvsGrp";
	rename -uid "CCB2297E-494C-83A5-3166-FDA8C6FA4B17";
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
	rename -uid "612CBF05-4317-489E-22C3-9E8D5F097E40";
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
	rename -uid "2BAB6BBF-4AAC-C137-BA97-EF9CA53023DB";
	setAttr ".t" -type "double3" 3 0 0 ;
createNode transform -n "RightEyeLidPinUpCtrlGrp" -p "RightEyeLidPinCtrlGrp";
	rename -uid "7CAEBCC1-498C-59E6-463D-5E8C30366A4C";
	setAttr ".t" -type "double3" -2.9999999722059978 1.2079226507921678e-13 6.2172473490555547e-15 ;
	setAttr ".r" -type "double3" 0 180.00000000000327 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidPinUp0CtrlGrp" -p "RightEyeLidPinUpCtrlGrp";
	rename -uid "58DAF002-49ED-EC0A-DC81-1F9AF002E418";
createNode transform -n "RightEyeLidPinUp0CtrlRvsGrp" -p "RightEyeLidPinUp0CtrlGrp";
	rename -uid "EA431D6F-4204-7426-215D-A59214CD6D54";
createNode transform -n "RightEyeLidPinUp0Ctrl" -p "RightEyeLidPinUp0CtrlRvsGrp";
	rename -uid "D0A0AC23-489D-D125-0F31-2EA32A9E694A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinUp0CtrlShape" -p "RightEyeLidPinUp0Ctrl";
	rename -uid "D86EDB1D-445E-6445-373C-6298AF489D50";
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
	rename -uid "4937B31A-4044-997C-A20B-24AFB2364FE1";
createNode transform -n "RightEyeLidPinUp1CtrlRvsGrp" -p "RightEyeLidPinUp1CtrlGrp";
	rename -uid "CCBBF970-4654-2F4A-1F5A-F9B3747324E0";
createNode transform -n "RightEyeLidPinUp1Ctrl" -p "RightEyeLidPinUp1CtrlRvsGrp";
	rename -uid "EEFC98A0-4934-86CD-4607-2C982ADC8CA0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinUp1CtrlShape" -p "RightEyeLidPinUp1Ctrl";
	rename -uid "C7F09185-4B3A-7C15-C963-1C8929D860FB";
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
	rename -uid "259F4BFB-4B10-314F-E343-FF927C8AFB7C";
createNode transform -n "RightEyeLidPinUp2CtrlRvsGrp" -p "RightEyeLidPinUp2CtrlGrp";
	rename -uid "410EFAEA-425A-4018-D141-60955509F6B2";
createNode transform -n "RightEyeLidPinUp2Ctrl" -p "RightEyeLidPinUp2CtrlRvsGrp";
	rename -uid "D5CFB04B-4EA5-8F13-1E01-D4ADE8690C16";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinUp2CtrlShape" -p "RightEyeLidPinUp2Ctrl";
	rename -uid "49D79C6E-44B6-7FFA-4086-CCB11CC12319";
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
	rename -uid "C977FF50-454B-04B7-8579-BBBA6B076B64";
	setAttr ".t" -type "double3" -2.9999999722059978 1.2079226507921678e-13 6.2172473490555547e-15 ;
	setAttr ".r" -type "double3" 0 180.00000000000327 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidPinDown0CtrlGrp" -p "RightEyeLidPinDownCtrlGrp";
	rename -uid "11C1FAA6-4107-4293-2F20-7BBFF8F15869";
createNode transform -n "RightEyeLidPinDown0CtrlRvsGrp" -p "RightEyeLidPinDown0CtrlGrp";
	rename -uid "55E2A02E-4439-3656-4EE8-F69193FF47CC";
createNode transform -n "RightEyeLidPinDown0Ctrl" -p "RightEyeLidPinDown0CtrlRvsGrp";
	rename -uid "FAFB5824-4990-AEBE-0E65-F980F3CDECE5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinDown0CtrlShape" -p "RightEyeLidPinDown0Ctrl";
	rename -uid "46F80C82-46D8-0B51-39D3-CC8E22DEE1E7";
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
	rename -uid "0239DAAA-41F5-6DE8-0D6B-E3B21E18D43E";
createNode transform -n "RightEyeLidPinDown1CtrlRvsGrp" -p "RightEyeLidPinDown1CtrlGrp";
	rename -uid "26F2A5FD-448D-52CF-6335-75BEB561187C";
createNode transform -n "RightEyeLidPinDown1Ctrl" -p "RightEyeLidPinDown1CtrlRvsGrp";
	rename -uid "82D9F4D7-4730-52EC-189A-89B35571CBA0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinDown1CtrlShape" -p "RightEyeLidPinDown1Ctrl";
	rename -uid "74C9E788-4CDE-FEE3-A314-57823D425AD0";
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
	rename -uid "9726AD11-4548-5E2B-9356-5CA33744E78C";
createNode transform -n "RightEyeLidPinDown2CtrlRvsGrp" -p "RightEyeLidPinDown2CtrlGrp";
	rename -uid "4D506C43-4903-8054-0178-E396E0A4AE24";
createNode transform -n "RightEyeLidPinDown2Ctrl" -p "RightEyeLidPinDown2CtrlRvsGrp";
	rename -uid "DB989A2C-4C91-56E6-1919-0D873DB2193A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidPinDown2CtrlShape" -p "RightEyeLidPinDown2Ctrl";
	rename -uid "DBDE1903-43A5-815C-2D31-78A1EF70C1E1";
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
	rename -uid "92C26681-4108-04B9-D218-A795C3CD4E6B";
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "LeftEyeLidSysGrp" -p "EyeLidSysGrp";
	rename -uid "E6320D7B-460B-E173-F2C1-D1B39F03B329";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidCrvGrp" -p "LeftEyeLidSysGrp";
	rename -uid "1748126F-40B3-9365-8965-939425DD494B";
	setAttr ".ovdt" 2;
createNode transform -n "LeftEyeLidUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "5863C0A9-45C3-7F47-EEF0-AD895035C3DC";
	setAttr -av ".v" no;
createNode bezierCurve -n "LeftEyeLidUpCrvShape" -p "LeftEyeLidUpCrv";
	rename -uid "4E597776-4983-E31A-4BC8-609F625FC0AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277940029 2.4385355839496894e-13 2.9999999999999911
		1.0000000277940029 2.4385355839496894e-13 2.9999999999999911
		1.0000000475163144 2.0000000000002376 2.9999999387567891
		3.0000000475163136 2.0000000000009521 2.9999999387567668
		5.0000000475163127 2.0000000000016667 2.9999999387567686
		5.0000000277940009 1.6672071808600085e-12 2.9999999999999787
		5.0000000277940009 1.6672071808600085e-12 2.9999999999999787
		;
createNode transform -n "LeftEyeLidDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "CCEFAFC3-4ABA-7353-48FE-13938C8220BF";
	setAttr -av ".v" no;
createNode bezierCurve -n "LeftEyeLidDownCrvShape" -p "LeftEyeLidDownCrv";
	rename -uid "8C20BA5D-476B-F161-6167-64855FD03C98";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277940029 2.4385355839496894e-13 2.9999999999999911
		1.0000000277940029 2.4385355839496894e-13 2.9999999999999911
		1.0000000277947181 -1.9999999999997609 2.9999999909604189
		3.0000000277947172 -1.9999999999990463 2.9999999909604296
		5.0000000277947159 -1.9999999999983318 2.9999999909604225
		5.0000000277940009 1.6672071808600085e-12 2.9999999999999787
		5.0000000277940009 1.6672071808600085e-12 2.9999999999999787
		;
createNode transform -n "LeftEyeLidUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "24418FCD-4347-41A7-9F09-D290ECDF54E5";
	setAttr -av ".v";
createNode nurbsCurve -n "LeftEyeLidUpJntCrvShape" -p "LeftEyeLidUpJntCrv";
	rename -uid "0B8444F1-42E5-87F6-4A29-59B414FEAEAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.3358896319268516 1.4335014507893495e-12 2.4961416060840134
		1.3962411187840966 0.43189504969075931 2.498225838790729
		1.8367316878879161 1.2243757327299032 2.4794516314254973
		3.0000000441407533 1.6641104193897316 2.49614159040439
		4.163268388199362 1.2243757289293116 2.4794516236884245
		4.6037589428848449 0.43189504903961085 2.4982258349988387
		4.664110423661155 3.2119565166845556e-12 2.496141606084012
		;
createNode transform -n "LeftEyeLidDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "5D3CF30A-4D9B-46F6-C656-4290213C9FCF";
	setAttr -av ".v";
createNode nurbsCurve -n "LeftEyeLidDownJntCrvShape" -p "LeftEyeLidDownJntCrv";
	rename -uid "911A2DC8-4553-3A22-C0E8-1891F15C661D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.3358896319268465 1.4303928263203973e-12 2.4961416060840134
		1.3962411207622245 -0.43189504801027134 2.4982258403502091
		1.8367316878788404 -1.2243757200420755 2.4794516376859295
		3.0000000277951893 -1.6641103922955252 2.4961416084636374
		4.163268367712651 -1.2243757200387573 2.4794516376859317
		4.6037589348270078 -0.43189504800569306 2.498225840350206
		4.6641104236611515 3.2128446951042546e-12 2.496141606084012
		;
createNode transform -n "LeftEyeLidOutUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "B985DA35-4FB7-4F14-F559-7A835868F594";
	setAttr -av ".v" no;
createNode bezierCurve -n "LeftEyeLidOutUpCrvShape" -p "LeftEyeLidOutUpCrv";
	rename -uid "37F6E3F3-4230-7C52-8511-BC90AF08C347";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.75000002779355635 1.2500000000001488 2.9999999999999845
		0.75000002779355635 1.2500000000001488 2.9999999999999845
		1.5000000277931058 2.500000000000417 2.9999999999999885
		3.0000000277931047 2.5000000000009535 2.9999999999999889
		4.5000000277931047 2.5000000000014895 2.9999999999999898
		5.2500000277935568 1.2500000000017568 2.9999999999999907
		5.2500000277935568 1.2500000000017568 2.9999999999999907
		;
createNode transform -n "LeftEyeLidOutDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "EE8FFCA6-4BD2-77AB-D960-998624B47BC5";
	setAttr -av ".v" no;
createNode bezierCurve -n "LeftEyeLidOutDownCrvShape" -p "LeftEyeLidOutDownCrv";
	rename -uid "BBEE4A43-43A2-8340-5867-ACA89EF1A4A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.75000002779445107 -1.2499999999998499 2.9999999999999911
		0.75000002779445107 -1.2499999999998499 2.9999999999999911
		1.5000000277948964 -2.4999999999995799 2.9999999999999898
		3.0000000277948957 -2.4999999999990443 2.9999999999999902
		4.5000000277948953 -2.4999999999985074 2.9999999999999911
		5.2500000277944494 -1.2499999999982419 2.9999999999999907
		5.2500000277944494 -1.2499999999982419 2.9999999999999907
		;
createNode transform -n "LeftEyeLidOutUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "6ABABC68-48CA-7065-376D-5392C851E028";
	setAttr -av ".v";
createNode nurbsCurve -n "LeftEyeLidOutUpJntCrvShape" -p "LeftEyeLidOutUpJntCrv";
	rename -uid "061582EA-435D-66FC-DAF4-6F871DE64811";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.2923203371586993 0.94846663265908393 2.2768129413436045
		1.7082827786560182 1.4349412763446128 2.2961442027087098
		3.0000000277912773 1.9205435307655219 2.3046656210606167
		4.2917172769278782 1.4349412763483045 2.2961442027087102
		4.7076797184265855 0.9484666326639658 2.276812941343608
		;
createNode transform -n "LeftEyeLidOutDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "D4151CBD-4746-B764-2FA5-5A8F6C3DE01D";
	setAttr -av ".v";
createNode nurbsCurve -n "LeftEyeLidOutDownJntCrvShape" -p "LeftEyeLidOutDownJntCrv";
	rename -uid "D98A9549-4218-D985-37DF-67BEA199822A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.2923203371608287 -0.94846663265698561 2.2768129413443901
		1.708282778659449 -1.4349412763417231 2.2961442027099164
		3.0000000277953722 -1.9205435309875651 2.3046656208722061
		4.2917172769326548 -1.4349412763380363 2.296144202709915
		4.7076797184298895 -0.94846663265210474 2.2768129413443887
		;
createNode transform -n "LeftEyeLidPinUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "A515F04C-4C9B-CBEF-E516-FC899222161F";
	setAttr -av ".v" no;
createNode bezierCurve -n "LeftEyeLidPinUpCrvShape" -p "LeftEyeLidPinUpCrv";
	rename -uid "0EC472FD-44AA-7CB2-B078-B79B0A590FF7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.50000002779328812 2.0000000000000591 2.9999999999999831
		0.50000002779328812 2.0000000000000591 2.9999999999999831
		1.5000000277929277 3.0000000000004157 2.9999999999999885
		3.0000000277929271 3.0000000000009517 2.9999999999999889
		4.5000000277929262 3.0000000000014881 2.9999999999999898
		5.5000000277932868 2.0000000000018452 2.9999999999999911
		5.5000000277932868 2.0000000000018452 2.9999999999999911
		;
createNode transform -n "LeftEyeLidPinDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "A5053960-4FCF-A78A-06E8-CB90A4C49194";
	setAttr -av ".v" no;
createNode bezierCurve -n "LeftEyeLidPinDownCrvShape" -p "LeftEyeLidPinDownCrv";
	rename -uid "D00A7A1B-460E-8240-421B-99866A86BC90";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		0.50000002779471764 -1.9999999999999394 2.9999999999999911
		0.50000002779471764 -1.9999999999999394 2.9999999999999911
		1.5000000277950749 -2.9999999999995817 2.9999999999999898
		3.0000000277950742 -2.9999999999990457 2.9999999999999902
		4.5000000277950738 -2.9999999999985092 2.9999999999999911
		5.5000000277947159 -1.9999999999981535 2.9999999999999911
		5.5000000277947159 -1.9999999999981535 2.9999999999999911
		;
createNode transform -n "LeftEyeLidPinUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "FC484BE9-4787-FCB3-50F2-2AB0A5EB3DEC";
	setAttr -av ".v";
createNode nurbsCurve -n "LeftEyeLidPinUpJntCrvShape" -p "LeftEyeLidPinUpJntCrv";
	rename -uid "64AE232C-4768-6BA7-F8DB-2A824DC61C94";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.2908686355581029 1.3677172195819631 2.051293477084708
		1.7369446582593795 1.7418701937501464 2.0904605447936415
		3.0000000277909722 2.1213208764961204 2.1213197578846499
		4.2630553799055591 1.7418701986255176 2.0904605512549828
		4.7091314200259804 1.3677172195868512 2.0512934770847173
		;
createNode transform -n "LeftEyeLidPinDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "95CECCCD-425E-B438-0CB0-D1BDA1C7AD80";
	setAttr -av ".v";
createNode nurbsCurve -n "LeftEyeLidPinDownJntCrvShape" -p "LeftEyeLidPinDownJntCrv";
	rename -uid "4450838A-4C52-EEC6-2A6A-048FEEF2BF78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.2908686355612522 -1.3677172195804776 2.0512934770856259
		1.7369446599394631 -1.7418701897662181 2.0904605491259223
		3.0000000277955161 -2.1213208763930189 2.1213197579837049
		4.2630553956535193 -1.7418701897626072 2.0904605491259245
		4.709131420030654 -1.3677172195755887 2.0512934770856317
		;
createNode transform -n "LeftEyeLidSurfPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "87BC4E18-40CE-C942-A3D6-ACA4C796685C";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "C8C43235-48D4-D5B1-7B9B-54B7BC2D7009";
createNode transform -n "LeftEyeLidUp1Pos" -p "LeftEyeLidUpCtrl0PosSurfPos";
	rename -uid "718A8A41-4739-641A-1FBA-A9A9DCDA9155";
	setAttr ".t" -type "double3" 8.9364072216180461e-18 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp1PosShape" -p "LeftEyeLidUp1Pos";
	rename -uid "8D142002-4D6E-E016-AECA-73AA159233FD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "B1D6AFD1-4D4F-FACC-4EEF-2CA9F1B5D961";
createNode transform -n "LeftEyeLidUp2Pos" -p "LeftEyeLidUpCtrl1PosSurfPos";
	rename -uid "411FFCD4-4FC4-8F3D-CCC8-0EB894C47EEF";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
createNode locator -n "LeftEyeLidUp2PosShape" -p "LeftEyeLidUp2Pos";
	rename -uid "38322DE5-4D8F-D719-F74E-0B9935F7A0FB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "8ED8B85B-4936-0945-63AC-E4AB133765D4";
createNode transform -n "LeftEyeLidUp3Pos" -p "LeftEyeLidUpCtrl2PosSurfPos";
	rename -uid "55BA6B98-4353-D569-3F8F-A28408B62A8F";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 0 ;
createNode locator -n "LeftEyeLidUp3PosShape" -p "LeftEyeLidUp3Pos";
	rename -uid "A4D02B53-428C-32BE-D67E-DCA976A24EB7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3606EF81-4E85-568A-B446-AFA4C1190B54";
createNode transform -n "LeftEyeLidUp4Pos" -p "LeftEyeLidUpCtrl3PosSurfPos";
	rename -uid "C717CBD0-4FFD-B5DF-422B-3AB0CD6E3CC1";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5180192092809648e-15 0 ;
createNode locator -n "LeftEyeLidUp4PosShape" -p "LeftEyeLidUp4Pos";
	rename -uid "2B61C6AC-4576-5A1C-1829-CCB6A31AFD36";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7BF59E8B-4C1D-BBBD-8DE1-909E9FB3ADC5";
createNode transform -n "LeftEyeLidUp5Pos" -p "LeftEyeLidUpCtrl4PosSurfPos";
	rename -uid "0F9DDDE6-486D-B6DA-8E2C-E1BB3FF519C7";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -6.6613381477509392e-16 0 ;
createNode locator -n "LeftEyeLidUp5PosShape" -p "LeftEyeLidUp5Pos";
	rename -uid "ADC3AC60-4C26-1936-1C92-F98EDB2D14FC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "D551B15E-4E6D-919B-7589-BBB5EB37AB6B";
createNode transform -n "LeftEyeLidUp6Pos" -p "LeftEyeLidUpCtrl5PosSurfPos";
	rename -uid "59C412E1-48C7-701E-4C88-3F9E8AE26177";
	setAttr ".t" -type "double3" 1.4432899320127035e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp6PosShape" -p "LeftEyeLidUp6Pos";
	rename -uid "0F430821-491E-0E85-1776-49B82E4107FD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "B765F896-4367-D755-C8E7-2E9C3CAA2F2B";
createNode transform -n "LeftEyeLidUp7Pos" -p "LeftEyeLidUpCtrl6PosSurfPos";
	rename -uid "1EB26FC0-45A2-BC2F-6C8F-36A21FAA5BE6";
	setAttr ".t" -type "double3" 4.468203612828507e-18 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidUp7PosShape" -p "LeftEyeLidUp7Pos";
	rename -uid "BECF2629-4D1E-0DF1-D060-B1BB39F4478A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "2AC72CAE-4F21-114B-DB89-799A01A57CCF";
createNode transform -n "LeftEyeLidDown1Pos" -p "LeftEyeLidDownCtrl0PosSurfPos";
	rename -uid "4BDB4374-467A-3656-7EE6-45A68F5842BE";
	setAttr ".t" -type "double3" -5.0764197278579096e-15 -2.2204460492503131e-15 0 ;
createNode locator -n "LeftEyeLidDown1PosShape" -p "LeftEyeLidDown1Pos";
	rename -uid "80CBA564-4D2C-3F48-DF81-A2AD52B8732D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "95ACEF36-43F3-A3F4-F039-C68A4EAA736C";
createNode transform -n "LeftEyeLidDown2Pos" -p "LeftEyeLidDownCtrl1PosSurfPos";
	rename -uid "828F1325-4BFF-E114-CD5A-A48358F27B5D";
	setAttr ".t" -type "double3" -2.1094237467877974e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown2PosShape" -p "LeftEyeLidDown2Pos";
	rename -uid "3A925174-4B8D-36F9-949E-F387E7E27995";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "BF171269-4AFA-7095-D196-85928235FB02";
createNode transform -n "LeftEyeLidDown3Pos" -p "LeftEyeLidDownCtrl2PosSurfPos";
	rename -uid "F8A320FE-48BA-6D2A-AA5E-918B5B4EEFC0";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidDown3PosShape" -p "LeftEyeLidDown3Pos";
	rename -uid "E8F45C3C-47C9-68EC-E429-0A83B0BCA320";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "D984DEF5-48D7-E5F3-58FB-99B90C44C28C";
createNode transform -n "LeftEyeLidDown4Pos" -p "LeftEyeLidDownCtrl3PosSurfPos";
	rename -uid "FE9D5D87-4E2E-A231-8E75-3B8574C54986";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.4675760606763788e-15 0 ;
createNode locator -n "LeftEyeLidDown4PosShape" -p "LeftEyeLidDown4Pos";
	rename -uid "0E9C2779-42A7-D99C-A8FD-6DBEE8F23339";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "B964902C-44B7-AFFA-DB27-48BDF621C6BF";
createNode transform -n "LeftEyeLidDown5Pos" -p "LeftEyeLidDownCtrl4PosSurfPos";
	rename -uid "65F7EF0D-4CAC-1832-DF79-4C914CC3F7FE";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 -3.3306690738754696e-15 0 ;
createNode locator -n "LeftEyeLidDown5PosShape" -p "LeftEyeLidDown5Pos";
	rename -uid "A8E975E5-4CDB-AA87-9A79-018A44AE91F6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "AA34B2BF-4CA2-F2DE-C593-6DA870CE81C6";
createNode transform -n "LeftEyeLidDown6Pos" -p "LeftEyeLidDownCtrl5PosSurfPos";
	rename -uid "23FC1821-42E7-4F69-E679-9FB540E90223";
	setAttr ".t" -type "double3" -6.6613381477509392e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown6PosShape" -p "LeftEyeLidDown6Pos";
	rename -uid "091EF30F-458E-BBA5-1C7F-55AB5E51E624";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "B627FFB2-4C04-BE3C-DC2B-ED848B430A44";
createNode transform -n "LeftEyeLidDown7Pos" -p "LeftEyeLidDownCtrl6PosSurfPos";
	rename -uid "7FA10654-454D-2E57-C075-C3BB098665B4";
	setAttr ".t" -type "double3" -3.3597046987097301e-15 4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown7PosShape" -p "LeftEyeLidDown7Pos";
	rename -uid "6D26AA78-4D92-4058-E9FC-6782A4F76634";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "E11F97B6-4FF3-AF4D-18D7-19A9FA7F2F78";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv0Pos" -p "LeftEyeLidOutUpCrv0PosSurfPos";
	rename -uid "D56D4973-4471-EE0E-541B-D895604D4007";
createNode locator -n "LeftEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv0PosSurfPos|LeftEyeLidOutUpCrv0Pos";
	rename -uid "B2D2FEA7-44EB-A8EA-4D6B-F9933BA0F162";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "5761A824-490B-0A1C-68A4-77A6DE5C12A0";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv1Pos" -p "LeftEyeLidOutUpCrv1PosSurfPos";
	rename -uid "FA701C02-4F52-EBF0-8EF1-FA8D8C7EEB8C";
createNode locator -n "LeftEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv1PosSurfPos|LeftEyeLidOutUpCrv1Pos";
	rename -uid "FAD9C8D3-4D62-0F78-5E09-948D995B3505";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "1669C682-40D1-C939-2265-58B745CB5CE1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv2Pos" -p "LeftEyeLidOutUpCrv2PosSurfPos";
	rename -uid "E5C0FC18-45EA-8911-8DBD-7E9C6721832C";
createNode locator -n "LeftEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv2PosSurfPos|LeftEyeLidOutUpCrv2Pos";
	rename -uid "586AB87F-4085-EA5A-760B-1783BD3D699F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "A7AA7FC0-4D35-1E07-9DED-A7B8BC491368";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv3Pos" -p "LeftEyeLidOutUpCrv3PosSurfPos";
	rename -uid "D46540DF-4ECB-932A-4350-C3AC36E05B77";
createNode locator -n "LeftEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv3PosSurfPos|LeftEyeLidOutUpCrv3Pos";
	rename -uid "C91F22A1-42EF-D54A-4494-C1B2FA687E7A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "87B6A2B8-42D2-B101-3F44-94BB4AE6C5D9";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv4Pos" -p "LeftEyeLidOutUpCrv4PosSurfPos";
	rename -uid "2DE29819-4F2D-592E-27B6-3483EDA7A016";
createNode locator -n "LeftEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutUpCrv4PosSurfPos|LeftEyeLidOutUpCrv4Pos";
	rename -uid "9CDA549D-44CD-67FE-7418-3A8265EBEF1D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "5B6F1AF6-4869-162D-681C-AE9BCED9EF9A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv0Pos" -p "LeftEyeLidOutDownCrv0PosSurfPos";
	rename -uid "39DCE4D4-4CA7-1388-1070-71AC79C08546";
createNode locator -n "LeftEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv0PosSurfPos|LeftEyeLidOutDownCrv0Pos";
	rename -uid "652A0976-407D-054A-05E8-38B310DC6E75";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "60C888DC-4549-8318-F0D3-A8857A5EFAB0";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv1Pos" -p "LeftEyeLidOutDownCrv1PosSurfPos";
	rename -uid "4112D962-4615-2769-D700-C8AC49AF5650";
createNode locator -n "LeftEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv1PosSurfPos|LeftEyeLidOutDownCrv1Pos";
	rename -uid "2C611371-4D85-021E-D4C0-9799AF405B35";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "402D0AD5-46C7-2A16-D1E0-FC954D61D13D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv2Pos" -p "LeftEyeLidOutDownCrv2PosSurfPos";
	rename -uid "AE4722F1-4550-340F-BF8D-01B8FFD14B7D";
createNode locator -n "LeftEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv2PosSurfPos|LeftEyeLidOutDownCrv2Pos";
	rename -uid "5460C3A6-4065-0A18-6CEA-DAA907EE6D6B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "ABEB464C-49E1-438F-C188-EFA8410A3EE4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv3Pos" -p "LeftEyeLidOutDownCrv3PosSurfPos";
	rename -uid "2CDCC971-407A-4345-C66D-C1AF8DFBFC5B";
createNode locator -n "LeftEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv3PosSurfPos|LeftEyeLidOutDownCrv3Pos";
	rename -uid "2F97D909-4AA4-5D75-4F7B-D884B61639E0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "2995CA7C-4ED5-DA0F-0E5C-DD9FCF1534AB";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutDownCrv4Pos" -p "LeftEyeLidOutDownCrv4PosSurfPos";
	rename -uid "85E7D4E1-4634-6752-317F-B5AD41D5AAB1";
createNode locator -n "LeftEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidOutDownCrv4PosSurfPos|LeftEyeLidOutDownCrv4Pos";
	rename -uid "44655536-4F9D-58FE-8C36-34858EED4652";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "15BB29C5-4133-4549-31CD-B08576500952";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv0Pos" -p "LeftEyeLidPinUpCrv0PosSurfPos";
	rename -uid "AB0726C1-4B13-F67A-0205-2E8473A57579";
createNode locator -n "LeftEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv0PosSurfPos|LeftEyeLidPinUpCrv0Pos";
	rename -uid "E944D5AD-4814-DAFC-620F-B2A344D36FFA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3CECBFD0-46CC-4055-EA64-98865277D38E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv1Pos" -p "LeftEyeLidPinUpCrv1PosSurfPos";
	rename -uid "78E6D5D4-4943-9D80-029D-BFA61F146A1B";
createNode locator -n "LeftEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv1PosSurfPos|LeftEyeLidPinUpCrv1Pos";
	rename -uid "ED68B3B2-4523-0566-CD4C-64B990B50760";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "4505DEA9-4367-7DCD-F0E6-AEBB0D235641";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv2Pos" -p "LeftEyeLidPinUpCrv2PosSurfPos";
	rename -uid "276C715E-431C-EC53-2451-039165923153";
createNode locator -n "LeftEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv2PosSurfPos|LeftEyeLidPinUpCrv2Pos";
	rename -uid "3F60B9B0-4263-CE36-70FD-DE9698FA50D3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "769FF75A-4078-E7D6-3A54-B983B24EAFD6";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv3Pos" -p "LeftEyeLidPinUpCrv3PosSurfPos";
	rename -uid "B3852DF7-4F22-4647-EE54-4996599A8FE7";
createNode locator -n "LeftEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv3PosSurfPos|LeftEyeLidPinUpCrv3Pos";
	rename -uid "08DCB6FA-47F3-F416-4ED3-5F9B40A2B471";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "CCBD70C0-477A-B911-DDDB-3EA5536FFC06";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv4Pos" -p "LeftEyeLidPinUpCrv4PosSurfPos";
	rename -uid "FEBF412B-4DD8-DA6F-2198-FFA040E81DC3";
createNode locator -n "LeftEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinUpCrv4PosSurfPos|LeftEyeLidPinUpCrv4Pos";
	rename -uid "BCA2A0E0-4338-6639-2BC8-4A8DBDE3E89D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "EE82A0BF-4051-451F-5DBB-B3852FDB8589";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv0Pos" -p "LeftEyeLidPinDownCrv0PosSurfPos";
	rename -uid "D26FB8BB-4331-6301-2740-AA9EB66EEC39";
createNode locator -n "LeftEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv0PosSurfPos|LeftEyeLidPinDownCrv0Pos";
	rename -uid "DC48DB30-40A0-A3AC-4BAD-D49ECEC639E8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "68AE8110-4401-8E1D-900C-D59CE71E5507";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv1Pos" -p "LeftEyeLidPinDownCrv1PosSurfPos";
	rename -uid "7767BAA2-418F-6CD5-062B-03B7A78F722F";
createNode locator -n "LeftEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv1PosSurfPos|LeftEyeLidPinDownCrv1Pos";
	rename -uid "C08C0184-43CE-E741-8664-10BEFE139557";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "F375C9CA-44BC-45C2-C14E-E5975B23C02D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv2Pos" -p "LeftEyeLidPinDownCrv2PosSurfPos";
	rename -uid "4AD996EB-421B-F2B4-0DEA-DFA504907F10";
createNode locator -n "LeftEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv2PosSurfPos|LeftEyeLidPinDownCrv2Pos";
	rename -uid "5A531E8B-4473-3C9C-3065-389BFAFDFE16";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "F295A9BA-402A-BD41-732C-1EB1CD2985D1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv3Pos" -p "LeftEyeLidPinDownCrv3PosSurfPos";
	rename -uid "CBE0E058-4AC1-162C-C1DB-F483411C7574";
createNode locator -n "LeftEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv3PosSurfPos|LeftEyeLidPinDownCrv3Pos";
	rename -uid "FF8A3EDF-40B6-261F-9E5E-5998338E1EBC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "1622EC7D-40D0-5AC2-B71C-C0B73FB5C657";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinDownCrv4Pos" -p "LeftEyeLidPinDownCrv4PosSurfPos";
	rename -uid "D8869BE1-4922-A5DF-4B8D-41AF8C38DAAA";
createNode locator -n "LeftEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidSurfPosGrp|LeftEyeLidPinDownCrv4PosSurfPos|LeftEyeLidPinDownCrv4Pos";
	rename -uid "E54DB1F1-4C41-4A23-3CDD-9DA58F639399";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "4350535B-46C3-646C-9F41-9585E5BA5E45";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "24BDB0FB-4C3B-C9FC-7E0C-129CF4347FE8";
createNode transform -n "LeftEyeLidUpCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "782A6FBE-4F9C-54FE-D568-D8ACD83B05C0";
createNode locator -n "LeftEyeLidUpCrv0PosShape" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "1E8E6322-4083-C883-7EEE-21B4C3E28DAA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl0Pos" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "76D6C1B0-4FBA-CBD9-DB12-A8B278ED11F0";
createNode locator -n "LeftEyeLidUpCtrl0PosShape" -p "LeftEyeLidUpCtrl0Pos";
	rename -uid "2A4C0604-435C-22D1-726C-11A4DF3976E2";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "3CF84157-4E14-B315-7897-1282F8E70694";
createNode locator -n "LeftEyeLidUpCrv1PosShape" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "68848A90-4C26-C392-4714-14B52816C09D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1Pos" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "E1D63F86-47B5-3F0A-AFAA-EC837E9B348A";
createNode locator -n "LeftEyeLidUpCtrl1PosShape" -p "LeftEyeLidUpCtrl1Pos";
	rename -uid "7F478393-4EFB-F548-F7EF-3E8A41526C84";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "6A1D881C-45A1-06C5-3F8D-F8A1568C1480";
createNode locator -n "LeftEyeLidUpCrv2PosShape" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "EAAB8A93-46B4-8DA7-9C26-6D8035A6D40F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2Pos" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "1F731A18-4C4C-5774-23A8-D5B5632B0B8C";
createNode locator -n "LeftEyeLidUpCtrl2PosShape" -p "LeftEyeLidUpCtrl2Pos";
	rename -uid "9A77384E-4FFB-2ABB-AA4A-4F881333BD4A";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "3C1DB05A-4064-4AA5-3122-7DB9AC9D09FF";
createNode locator -n "LeftEyeLidUpCrv3PosShape" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "2689B847-42AE-A5CE-6AF4-3486FBE35CE3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3Pos" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "09358A52-4281-7F53-0891-CA9E3A94EA07";
createNode locator -n "LeftEyeLidUpCtrl3PosShape" -p "LeftEyeLidUpCtrl3Pos";
	rename -uid "CFF79F50-41E5-9E78-FFE8-65B8992756ED";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "92577A0A-4264-3C0A-C754-4CBCF7A62512";
createNode locator -n "LeftEyeLidUpCrv4PosShape" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "33535A7E-4009-EC06-E47B-38BEFEE8DB7E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4Pos" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "5043B682-444A-0E52-98D7-8F8EC0FA108F";
createNode locator -n "LeftEyeLidUpCtrl4PosShape" -p "LeftEyeLidUpCtrl4Pos";
	rename -uid "0B00C582-4BB6-2056-AED0-BA9442A569BA";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "80B0A015-4272-D1AA-1EAF-0B95DB187ACE";
createNode locator -n "LeftEyeLidUpCrv5PosShape" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "43F2A45D-402D-6F3E-E2C3-ADBCAF2BC9FB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5Pos" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "53E83D86-4562-36D1-4890-6C9C2A718FD6";
createNode locator -n "LeftEyeLidUpCtrl5PosShape" -p "LeftEyeLidUpCtrl5Pos";
	rename -uid "76E8B905-496E-7A87-3D8B-AF8ED67B2346";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "881EB54E-426C-913D-E146-EFA7E0E8B893";
createNode locator -n "LeftEyeLidUpCrv6PosShape" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "274DDE78-41C5-ABCF-D87D-D18B2047FAD3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6Pos" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "2CF08146-4DE5-0298-399C-46B952B2DF0E";
createNode locator -n "LeftEyeLidUpCtrl6PosShape" -p "LeftEyeLidUpCtrl6Pos";
	rename -uid "3FEF0A31-4986-258B-3F05-E288F6AD0ECF";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "41BB9D53-42D0-0DE8-7D2D-98A2CB3D6F93";
createNode locator -n "LeftEyeLidDownCrv0PosShape" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "78843A28-4B90-C136-17C0-F58B76BA400E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0Pos" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "19566692-4500-2FB2-16A1-2D8719CCBA4B";
createNode locator -n "LeftEyeLidDownCtrl0PosShape" -p "LeftEyeLidDownCtrl0Pos";
	rename -uid "76E8F47D-47A9-3A19-0BFC-A39A3D3F2C8C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "5C573E7E-41F1-73A7-B1A4-CDBB1C578DBB";
createNode locator -n "LeftEyeLidDownCrv1PosShape" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "F6356FC3-49A1-7749-5AAF-3F8F3F375B9B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1Pos" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "BF697BAA-4153-C697-6FB0-6C980A0B67F4";
createNode locator -n "LeftEyeLidDownCtrl1PosShape" -p "LeftEyeLidDownCtrl1Pos";
	rename -uid "9019D3F1-4FD8-DB50-0C9B-4F9D60DA4612";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "6A5501F7-4F93-966E-60A7-40814C1A4C4D";
createNode locator -n "LeftEyeLidDownCrv2PosShape" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "FB1C12D4-40DB-B770-4DFE-2CBAA1817211";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2Pos" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "805E43F1-4943-2FF0-A28F-549140D3985C";
createNode locator -n "LeftEyeLidDownCtrl2PosShape" -p "LeftEyeLidDownCtrl2Pos";
	rename -uid "AE516960-4371-5C6F-5308-209ECD284D7B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "7DEB7419-47FB-DC2B-B760-F586151930D7";
createNode locator -n "LeftEyeLidDownCrv3PosShape" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "DCA45A0A-4A3A-B459-7075-C49B1EFE4056";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3Pos" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "41207B8C-4C58-25FD-10DC-4CAE5C63D265";
createNode locator -n "LeftEyeLidDownCtrl3PosShape" -p "LeftEyeLidDownCtrl3Pos";
	rename -uid "111D1342-41DC-72B5-00DC-D18E95514D46";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "0524AE63-475E-A77B-36F6-F8AB0EDAF22E";
createNode locator -n "LeftEyeLidDownCrv4PosShape" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "6EB7AFD6-4BB0-A5EF-435A-738601669A68";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4Pos" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "F695166A-4880-7B5B-37E6-2D8003B53DBA";
createNode locator -n "LeftEyeLidDownCtrl4PosShape" -p "LeftEyeLidDownCtrl4Pos";
	rename -uid "C741D5D0-47D7-F42F-C229-FAA2D4C91EE9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "33F57F15-4BA9-763C-4F9D-99A773DEF53C";
createNode locator -n "LeftEyeLidDownCrv5PosShape" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "1558C917-466A-19DC-F865-52A6CD87BF71";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5Pos" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "D33AF4E7-46E5-101B-A44C-69A6EA09CC56";
createNode locator -n "LeftEyeLidDownCtrl5PosShape" -p "LeftEyeLidDownCtrl5Pos";
	rename -uid "4BA75C35-4C93-EB55-BA78-70AE25FBD2E7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidCrvPosGrp";
	rename -uid "13D11354-4088-C445-2C4E-C287792B27D7";
createNode locator -n "LeftEyeLidDownCrv6PosShape" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "D5FE416E-41D1-DAA6-C1A3-05A92E23E2C6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6Pos" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "718F280E-4F7A-41F1-4101-748E4E973F79";
createNode locator -n "LeftEyeLidDownCtrl6PosShape" -p "LeftEyeLidDownCtrl6Pos";
	rename -uid "6BC1A4D8-4EE2-BA82-AAE0-6F9BB21CA30D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "38AFBDDA-4B04-43E4-A835-7FABB77B737B";
createNode transform -n "LeftEyeLidOutUpCrv0Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "7B5033AD-4690-FCB7-2498-C1BB23BAE7EB";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv0Pos";
	rename -uid "88DA8E8E-4033-1DD4-212D-008B81E61FC2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv1Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "AF94B774-4092-5324-C06A-8BBFA63206C2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv1Pos";
	rename -uid "D8EE1B8F-4C3D-A129-AD44-88B107858E82";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv2Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "EC9F2664-4734-0B41-6D81-4682640FCFE2";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv2Pos";
	rename -uid "F5A7E919-425E-8E25-3C24-BAB34576FF5F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv3Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "B68B4556-456A-855C-F52B-CAAEA4CE396F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv3Pos";
	rename -uid "A327B803-4907-166D-D1FE-1EBD6D53E8A8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv4Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "8C1FBBB0-4726-E541-1CDA-CE8C5C4B6445";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutUpCrv4Pos";
	rename -uid "E3D89C0F-41F7-9356-3EDD-4DB9700BA457";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv0Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "CB61E42E-4936-5A11-72DD-CCA4789087B4";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv0Pos";
	rename -uid "1BDFCDEC-474C-73EE-52D6-6186058B038C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv1Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "3D48E1D2-454D-595B-D771-FF95DEF02D75";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv1Pos";
	rename -uid "72CB1734-401F-7F9D-0029-EE823F834686";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv2Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "616D834F-4F24-E85D-274E-04A21686B476";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv2Pos";
	rename -uid "28650D6A-4342-70FF-CD01-E1AC53A49F15";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv3Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "47979B7B-4284-DCD0-5890-A8BF693C5C9F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv3Pos";
	rename -uid "D2E8F115-4A99-5F96-5E3B-D295CFF7099F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv4Pos" -p "LeftEyeLidOutCrvPosGrp";
	rename -uid "5DBC847D-4C00-78D9-6FF1-BCAD9CEF208A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidOutCrvPosGrp|LeftEyeLidOutDownCrv4Pos";
	rename -uid "D5AA7A18-4B1B-1646-5AD6-82A591D0D2AA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "83130B0F-4E7D-BE4C-F092-77A3AE0573AA";
createNode transform -n "LeftEyeLidPinUpCrv0Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "99549419-4095-8547-39CA-3DA6982C4848";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv0Pos";
	rename -uid "279D4CFD-408C-D06F-706E-759BB84A7184";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv1Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "2E4EBF2F-4038-F635-97BF-CC8FDF57635F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv1Pos";
	rename -uid "B6D65CEF-4227-74A7-38D3-1CA3F64AB5C7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv2Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "FEAFC982-4757-BC9C-1E6D-1FB4D1004937";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv2Pos";
	rename -uid "FBFCB3D4-41BA-4822-DC92-C088B4F97443";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv3Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "6C1D511F-4EF3-98AC-45B7-E7A8DAA51417";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv3Pos";
	rename -uid "B516F3F0-4308-DBB2-013F-9BBFF8237510";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv4Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "A993885A-4DA1-567F-149D-0F8DB02B01DC";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinUpCrv4Pos";
	rename -uid "C6F7D0C4-4C98-533D-DD9B-BB8AE413013B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv0Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "CA8D2A78-4374-CA30-2441-B782AF12BA7D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv0Pos";
	rename -uid "B6754B32-4326-9EE4-A05F-2181AE669E53";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv1Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "5E9FD6BC-49FE-8FDF-1CE4-A7994D8E6259";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv1Pos";
	rename -uid "DF10A0FA-4884-67D2-43F7-F0B9928A17A7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv2Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "D4B29DDB-41D0-A8A7-CFC6-759FF0D25E0D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv2Pos";
	rename -uid "322BEB93-4BF4-0F4F-2A9B-E390C6A43848";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv3Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "7E547F9E-487F-FADE-C482-26903EF5DB35";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv3Pos";
	rename -uid "4EAD02ED-4257-ED10-5D02-87B1ABD35F5E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv4Pos" -p "LeftEyeLidPinCrvPosGrp";
	rename -uid "5A98AA0F-4F6D-151C-368F-988EBE58A499";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode locator -n "LeftEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp|LeftEyeLidPinCrvPosGrp|LeftEyeLidPinDownCrv4Pos";
	rename -uid "261B29E0-49C6-98E5-4A86-A6BF2CF7A91B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "8DC6246F-46C4-949F-02BD-2391F948184F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidOutUpCrv0AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "430D5F61-4C69-2CE7-5B7C-7B8F6A948031";
createNode locator -n "LeftEyeLidOutUpCrv0AimPosShape" -p "LeftEyeLidOutUpCrv0AimPos";
	rename -uid "FB42819A-4075-F475-00B8-60915CF937A2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv1AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "B950FA9B-4F7D-5324-5342-EC85F947B66D";
createNode locator -n "LeftEyeLidOutUpCrv1AimPosShape" -p "LeftEyeLidOutUpCrv1AimPos";
	rename -uid "8CC2BE8F-4726-9C2B-C461-E2B5003EA742";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUpCrv2AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "BEAB204F-42A7-6FCD-E738-37B6C0DB1BC8";
createNode locator -n "LeftEyeLidOutUpCrv2AimPosShape" -p "LeftEyeLidOutUpCrv2AimPos";
	rename -uid "332A509E-49A6-8AD7-BA2E-BC960B3EC176";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv0AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "019117B2-473F-CF09-8FF8-7E9ADAC08FA6";
createNode locator -n "LeftEyeLidOutDownCrv0AimPosShape" -p "LeftEyeLidOutDownCrv0AimPos";
	rename -uid "9DCE7D5C-45CA-3C85-EF44-85B66338A74D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv1AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "B3AFEAC1-4488-5276-4202-ABA9E78F77C3";
createNode locator -n "LeftEyeLidOutDownCrv1AimPosShape" -p "LeftEyeLidOutDownCrv1AimPos";
	rename -uid "86F47A7E-4FFF-7168-3CEA-69AD4B540465";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDownCrv2AimPos" -p "LeftEyeLidOutCrvAimPosGrp";
	rename -uid "6F77DAE4-4A84-F158-42E4-689DC0A5E98A";
createNode locator -n "LeftEyeLidOutDownCrv2AimPosShape" -p "LeftEyeLidOutDownCrv2AimPos";
	rename -uid "C79E55CB-4690-1CE4-8309-68A5D76BA25E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|LeftEyeLidSysGrp|LeftEyeLidCrvPosGrp";
	rename -uid "723BE642-42D5-847D-AF25-2CA975FFBF3D";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidPinUpCrv0AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "136B4A81-4951-1BAE-9134-C7857F76E92C";
createNode locator -n "LeftEyeLidPinUpCrv0AimPosShape" -p "LeftEyeLidPinUpCrv0AimPos";
	rename -uid "4316AD38-4984-9C6F-445F-9DA557D7940F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv1AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "65132412-4415-B1B3-1436-8EA516EFCFA0";
createNode locator -n "LeftEyeLidPinUpCrv1AimPosShape" -p "LeftEyeLidPinUpCrv1AimPos";
	rename -uid "5B681D62-4D1E-E097-A0B1-2D813D0CD88F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUpCrv2AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "66317ADD-48D2-788A-8783-FCA5E7AE2773";
createNode locator -n "LeftEyeLidPinUpCrv2AimPosShape" -p "LeftEyeLidPinUpCrv2AimPos";
	rename -uid "4C6006D6-4B4F-03C8-1948-25B22E26EFA7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv0AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "73BCF1EF-4E54-59EC-606F-E1837F35B03D";
createNode locator -n "LeftEyeLidPinDownCrv0AimPosShape" -p "LeftEyeLidPinDownCrv0AimPos";
	rename -uid "07EEB10B-4B65-D58E-2009-6D867B18A891";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv1AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "496DD642-4F99-34FA-6903-7BAD4611C66A";
createNode locator -n "LeftEyeLidPinDownCrv1AimPosShape" -p "LeftEyeLidPinDownCrv1AimPos";
	rename -uid "63DCCBAF-4A78-0CA4-F23D-6CA9A3303F5A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDownCrv2AimPos" -p "LeftEyeLidPinCrvAimPosGrp";
	rename -uid "730FA9EC-4072-F620-329D-5F9D7D58542C";
createNode locator -n "LeftEyeLidPinDownCrv2AimPosShape" -p "LeftEyeLidPinDownCrv2AimPos";
	rename -uid "99B503CD-4AA0-5229-127F-288188148521";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "44049016-403B-B3F4-76F9-16B16113884D";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidCtrl0Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "3A4B7459-49A5-D973-19E0-F2B3112E85E9";
createNode locator -n "LeftEyeLidCtrl0PosShape" -p "LeftEyeLidCtrl0Pos";
	rename -uid "6E7B0DF9-42F7-BB5E-0BB8-3B867539C900";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl1Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "5257D385-4970-0C0F-C4FC-0283B3E97605";
createNode locator -n "LeftEyeLidCtrl1PosShape" -p "LeftEyeLidCtrl1Pos";
	rename -uid "F36841B6-41BC-B088-4032-1CB9BFCB9477";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl2Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "A15B81F9-4939-2ABF-8163-2393F7FD064D";
createNode locator -n "LeftEyeLidCtrl2PosShape" -p "LeftEyeLidCtrl2Pos";
	rename -uid "179B2559-4CBC-54E6-6744-C29526C3B47B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl3Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "03776B6A-48B1-DC0D-8EA0-08B6C0C88383";
createNode locator -n "LeftEyeLidCtrl3PosShape" -p "LeftEyeLidCtrl3Pos";
	rename -uid "48FAB9F3-41E4-9CC3-BC29-0EBE5A8446AF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl4Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "B531CDC5-4C7D-1EDE-4BCD-698BA50C4268";
createNode locator -n "LeftEyeLidCtrl4PosShape" -p "LeftEyeLidCtrl4Pos";
	rename -uid "1A572074-4DE1-F78B-5280-F19985F6C5D9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl5Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "C419438E-4A46-8B33-4A7E-5A8A97A46015";
createNode locator -n "LeftEyeLidCtrl5PosShape" -p "LeftEyeLidCtrl5Pos";
	rename -uid "464BA9DA-471F-9177-9E32-A6802C3729DE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl6Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "F6177F63-4ECC-E814-28EA-D1A3F2E116C6";
createNode locator -n "LeftEyeLidCtrl6PosShape" -p "LeftEyeLidCtrl6Pos";
	rename -uid "6E4BE9E7-4F4E-7BEE-A4A8-0E90AD48DE3C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl7Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "D4D22657-4484-6B66-E507-58893D1161AE";
createNode locator -n "LeftEyeLidCtrl7PosShape" -p "LeftEyeLidCtrl7Pos";
	rename -uid "1469E214-4D05-D5A1-BB1A-9893B83C80FB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl8Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "471A53E2-4C9F-B179-5956-24BEDC601B92";
createNode locator -n "LeftEyeLidCtrl8PosShape" -p "LeftEyeLidCtrl8Pos";
	rename -uid "FED6057A-4298-55FC-CEFB-BC81C9FA10C0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl9Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "80B5259C-45F6-95FC-CEA4-F08E38F1CA1C";
createNode locator -n "LeftEyeLidCtrl9PosShape" -p "LeftEyeLidCtrl9Pos";
	rename -uid "A5B1C233-46F3-A733-886A-5FAFBDE189A1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl10Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "F63E76A2-48BD-0346-0B49-ECB2AE4CBE9E";
createNode locator -n "LeftEyeLidCtrl10PosShape" -p "LeftEyeLidCtrl10Pos";
	rename -uid "DFC85388-4E52-5C1A-4D44-E5AFA1DDAEC8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl11Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "9A8FB3D2-4A83-A320-8696-E4B1411E923A";
createNode locator -n "LeftEyeLidCtrl11PosShape" -p "LeftEyeLidCtrl11Pos";
	rename -uid "A6BC21E5-4F88-3CF3-E6B3-68BDC07C8DE2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidRootPoserGrp" -p "LeftEyeLidSysGrp";
	rename -uid "3EFC055F-44C8-041F-6FB2-D7B2897DF478";
	setAttr ".t" -type "double3" 2.7794001988259347e-08 -1.2079226507921701e-13 -3.5527136788005009e-15 ;
createNode transform -n "LeftEyeLidRootPoser" -p "LeftEyeLidRootPoserGrp";
	rename -uid "80376280-4EF4-FBCF-5CC7-538CA21F451C";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode" 1;
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "LeftEyeLidRootPoserShape" -p "LeftEyeLidRootPoser";
	rename -uid "410E95CB-4501-C300-EA26-9C8DAAC97D3A";
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
	rename -uid "A76DE689-4632-7946-7EC9-B2A516069793";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "LeftEyeBallSurfShape" -p "LeftEyeBallSurf";
	rename -uid "E8A3B358-442F-CBD3-6B50-05B88F0A72A1";
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
	rename -uid "5603E20F-42B8-EF37-C622-C594975FD68F";
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
	rename -uid "0E5AE4C4-408A-D5CA-99FF-1388049C00FB";
createNode transform -n "LeftEyeBallffd1Lattice" -p "LeftEyeBallFFDGrp";
	rename -uid "86DBD4E0-4940-AC5E-A42A-78AEEDDB2EA7";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "LeftEyeBallffd1LatticeShape" -p "LeftEyeBallffd1Lattice";
	rename -uid "FFEE5489-4E12-B52C-D122-1C8663C537B0";
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
	rename -uid "A51A2EE5-4303-8F4D-2D6E-5EB699A017B3";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "LeftEyeBallffd1BaseShape" -p "LeftEyeBallffd1Base";
	rename -uid "6A7EA333-44E8-29CD-351D-10A94220312F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidLocGrpOffGrp" -p "LeftEyeLidRootPoser";
	rename -uid "D1EB0310-4640-FAE1-7FF1-C698ECAFA83C";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode transform -n "LeftEyeLidLocGrp" -p "LeftEyeLidLocGrpOffGrp";
	rename -uid "CDE55359-4C70-F581-6F57-6B804F4F044B";
createNode transform -n "LeftEyeLidUpCenterGrp" -p "LeftEyeLidLocGrp";
	rename -uid "CD83C7F2-4F43-CECB-48BD-CA811B255641";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.7763568394005029e-15 7.105427357601005e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "LeftEyeLidUpPos" -p "LeftEyeLidUpCenterGrp";
	rename -uid "D914384C-4E6F-7B38-476D-7AB703843824";
	setAttr ".t" -type "double3" 1.9723026767337615e-08 2.0000000000000004 2.9999999387567695 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode locator -n "LeftEyeLidUpPosShape" -p "LeftEyeLidUpPos";
	rename -uid "58185952-40F9-6545-5BD6-8B97CA3DC372";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidUpLocOffGrp" -p "LeftEyeLidUpPos";
	rename -uid "EF7D1BB4-46EA-B4E0-82A7-C28EAA3BBEC2";
createNode transform -n "LeftEyeLidUpLoc" -p "LeftEyeLidUpLocOffGrp";
	rename -uid "BFCF67D1-4857-AEBC-54AF-4DB3B3185EE2";
createNode locator -n "LeftEyeLidUpLocShape" -p "LeftEyeLidUpLoc";
	rename -uid "E6F418A7-4CD8-AD7E-3AC7-D28F9353E38F";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos2" -p "LeftEyeLidUpLoc";
	rename -uid "A1C0F59D-421E-FCED-7DF1-F3A935317050";
	setAttr ".t" -type "double3" -2 0 2.2439515523497988e-14 ;
createNode locator -n "LeftEyeLidUpCvPos2Shape" -p "LeftEyeLidUpCvPos2";
	rename -uid "EF913D54-4461-202E-1D23-E3B60B0E2EE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos1" -p "LeftEyeLidUpLoc";
	rename -uid "D9D22F25-4226-C0FD-5440-3AA700C018D8";
	setAttr ".t" -type "double3" 2 0 1.1171619185290638e-15 ;
createNode locator -n "LeftEyeLidUpCvPos1Shape" -p "LeftEyeLidUpCvPos1";
	rename -uid "DD0AAA77-4D6B-EBE8-50AB-DA8EB92426AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCenterGrp" -p "LeftEyeLidLocGrp";
	rename -uid "79250C5C-4B9F-3B73-15A1-E9BD222B92BF";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.7763568394005029e-15 7.105427357601005e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "LeftEyeLidDownPos" -p "LeftEyeLidDownCenterGrp";
	rename -uid "EDF38662-4772-5250-AD9D-7AA7153E093E";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.9999999999999969 2.9999999909604322 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode locator -n "LeftEyeLidDownPosShape" -p "LeftEyeLidDownPos";
	rename -uid "339B2EE0-4529-4B97-5A3D-439DD75666C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidDownLocOffGrp" -p "LeftEyeLidDownPos";
	rename -uid "AA0FB290-449E-D947-EF13-499CBDD8B268";
createNode transform -n "LeftEyeLidDownLoc" -p "LeftEyeLidDownLocOffGrp";
	rename -uid "26BFA8AD-42B8-E804-9BE3-90B6CA9A1C7B";
createNode locator -n "LeftEyeLidDownLocShape" -p "LeftEyeLidDownLoc";
	rename -uid "21B97008-460D-5808-063F-D59B6FE46BF5";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos2" -p "LeftEyeLidDownLoc";
	rename -uid "BFFB7ACF-4FA1-3A0F-AEB3-EF9A2B7833DF";
	setAttr ".t" -type "double3" -2 0 -1.017588791007995e-14 ;
createNode locator -n "LeftEyeLidDownCvPos2Shape" -p "LeftEyeLidDownCvPos2";
	rename -uid "333E36B7-4E41-DA3F-C97E-89AB712033AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos1" -p "LeftEyeLidDownLoc";
	rename -uid "1184C1DA-469B-44B4-C495-E19A8F9BD7B3";
	setAttr ".t" -type "double3" 2 0 -7.5911499308745078e-15 ;
createNode locator -n "LeftEyeLidDownCvPos1Shape" -p "LeftEyeLidDownCvPos1";
	rename -uid "63F5160D-4D87-78D3-18A2-018F3E12314A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidInPos" -p "LeftEyeLidLocGrp";
	rename -uid "962765DF-4483-1CAC-9554-E2918FBF253C";
	setAttr ".t" -type "double3" -2 5.5996873804531333e-15 3.0000000000000027 ;
createNode locator -n "LeftEyeLidInPosShape" -p "LeftEyeLidInPos";
	rename -uid "FE4BE6D8-4FF7-372C-66CA-878C10A33A1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidInLocOffGrp" -p "LeftEyeLidInPos";
	rename -uid "BA38B327-406A-010B-246D-16B284944DA8";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidInLoc" -p "LeftEyeLidInLocOffGrp";
	rename -uid "76C305C8-4BD5-B099-82CC-1981613862A4";
createNode locator -n "LeftEyeLidInLocShape" -p "LeftEyeLidInLoc";
	rename -uid "B7E4ABC5-4F2A-646A-5EE5-558C16CBB514";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "LefteyeLidInEPPosShape" -p "LeftEyeLidInLoc";
	rename -uid "B4DDE231-4B44-1D03-AFE5-CF8AE9636C18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutPos" -p "LeftEyeLidLocGrp";
	rename -uid "B7044735-4061-9FFA-ED51-CBA4EB5BB835";
	setAttr ".t" -type "double3" 2 -1.2576745200831851e-16 2.9999999999999893 ;
createNode locator -n "LeftEyeLidOutPosShape" -p "LeftEyeLidOutPos";
	rename -uid "96D797B1-4DC3-F7E6-20F8-3A87768E0E77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutLocOffGrp" -p "LeftEyeLidOutPos";
	rename -uid "25197960-42B7-4886-4501-C68823CC1877";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidOutLoc" -p "LeftEyeLidOutLocOffGrp";
	rename -uid "1304E4AD-4181-572B-0641-CFA7600BB470";
createNode locator -n "LeftEyeLidOutLocShape" -p "LeftEyeLidOutLoc";
	rename -uid "629D5F1A-48B8-1CC2-1478-96A5CC330C0B";
	setAttr -k off ".v";
createNode locator -n "LefteyeLidOutEPPosShape" -p "LeftEyeLidOutLoc";
	rename -uid "42725FF4-41A9-5D36-4D58-C088137BF7FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "5C7B3F7D-459A-D148-BEFB-1DB6983FED4F";
createNode transform -n "LeftEyeLidOutUp1LocGrp" -p "LeftEyeLidOutUp1LocOffGrp";
	rename -uid "A5BB23F0-43A9-9A06-09F2-90817B3E1DDD";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidOutUp1ZGrp" -p "LeftEyeLidOutUp1LocGrp";
	rename -uid "CB3A998C-4315-FF04-54B7-AAAE8DD7EB59";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "LeftEyeLidOutUp1Pos" -p "LeftEyeLidOutUp1ZGrp";
	rename -uid "31E13271-4639-A233-B581-E787B5787B8C";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -4.4408920985006262e-16 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp1PosShape" -p "LeftEyeLidOutUp1Pos";
	rename -uid "7BC13F1D-4DE9-08B6-8728-408B7DF56316";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "96E47E27-477C-1E0F-E3BA-B3B2B04004A6";
createNode transform -n "LeftEyeLidOutUp2LocGrp" -p "LeftEyeLidOutUp2LocOffGrp";
	rename -uid "FE5BB14F-424B-9D9C-FB57-E2A9F415A473";
createNode transform -n "LeftEyeLidOutUp2ZGrp" -p "LeftEyeLidOutUp2LocGrp";
	rename -uid "6311D14F-43E7-28B6-27C3-FD9EB492588B";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode transform -n "LeftEyeLidOutUp2Pos" -p "LeftEyeLidOutUp2ZGrp";
	rename -uid "F1371077-45A7-8A46-7D3B-F695983BBA18";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp2PosShape" -p "LeftEyeLidOutUp2Pos";
	rename -uid "8D8109FD-4E0E-BF90-8D21-7C8BF21DDF12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1" -p "LeftEyeLidOutUp2Pos";
	rename -uid "BCFD957C-4540-A836-5D7C-CC8176BE1D9D";
	setAttr ".t" -type "double3" -1.4999999999999996 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1Shape" -p "LeftEyeLidOutUp2CvPos1";
	rename -uid "7AF88B35-4D19-18A6-C370-EB904115D6E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2" -p "LeftEyeLidOutUp2Pos";
	rename -uid "E10E6999-4B79-929D-329F-CF9CB5A1FD26";
	setAttr ".t" -type "double3" 1.5000000000000009 0 4.4408920985006262e-16 ;
createNode locator -n "LeftEyeLidOutUp2CvPos2Shape" -p "LeftEyeLidOutUp2CvPos2";
	rename -uid "D909A726-4097-E97D-2CCD-0BBDEE60E50A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "4C9FC056-4D57-F773-AB88-EA9CCD0ADA30";
createNode transform -n "LeftEyeLidOutUp3LocGrp" -p "LeftEyeLidOutUp3LocOffGrp";
	rename -uid "4187B645-4CE5-8A7A-D084-39BD3154A523";
createNode transform -n "LeftEyeLidOutUp3ZGrp" -p "LeftEyeLidOutUp3LocGrp";
	rename -uid "D7E6F585-40DA-8E9E-5599-6DBBCE0C27C4";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 4.4408920985006262e-16 0 ;
createNode transform -n "LeftEyeLidOutUp3Pos" -p "LeftEyeLidOutUp3ZGrp";
	rename -uid "B27C39CA-4A92-6DC3-5211-10A82FDE52B8";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp3PosShape" -p "LeftEyeLidOutUp3Pos";
	rename -uid "B8D9AFAE-4EFC-EE44-E73E-5E8EC092B22A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "BC792059-4577-DAF9-197F-7CB097C48659";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown1LocGrp" -p "LeftEyeLidOutDown1LocOffGrp";
	rename -uid "255407FE-431D-0B8E-3A08-69B779688397";
createNode transform -n "LeftEyeLidOutDown1ZGrp" -p "LeftEyeLidOutDown1LocGrp";
	rename -uid "7E8E11E6-4431-2E98-7F7D-0ABA05194FDF";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "LeftEyeLidOutDown1Pos" -p "LeftEyeLidOutDown1ZGrp";
	rename -uid "A5908108-402A-7C3B-BC70-358C68723CB0";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown1PosShape" -p "LeftEyeLidOutDown1Pos";
	rename -uid "5E73C19F-4F81-8ABB-75DD-A18ED316BACA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "F5B18D3D-45C2-4C3D-4824-81A6EDD62EDB";
createNode transform -n "LeftEyeLidOutDown2LocGrp" -p "LeftEyeLidOutDown2LocOffGrp";
	rename -uid "C5C5599F-4412-1DF7-F052-BCB09CFF228C";
createNode transform -n "LeftEyeLidOutDown2ZGrp" -p "LeftEyeLidOutDown2LocGrp";
	rename -uid "FD00D686-4839-CEFE-2925-71AE2C1A19C3";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 0 ;
createNode transform -n "LeftEyeLidOutDown2Pos" -p "LeftEyeLidOutDown2ZGrp";
	rename -uid "8E6789EA-46C5-69B8-0328-B4B417AECF5A";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown2PosShape" -p "LeftEyeLidOutDown2Pos";
	rename -uid "C331016E-4D59-9329-3B4E-FEA1A31F88E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1" -p "LeftEyeLidOutDown2Pos";
	rename -uid "129B910E-4808-FEC3-CC55-5CB47120CB15";
	setAttr ".t" -type "double3" -1.5 4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1Shape" -p "LeftEyeLidOutDown2CvPos1";
	rename -uid "5790C80F-4EA8-4C4C-A4F2-08A35AE1A56B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2" -p "LeftEyeLidOutDown2Pos";
	rename -uid "3E8DB460-4135-52B9-2333-C8816FE8FE17";
	setAttr ".t" -type "double3" 1.5 8.8817841970012523e-16 4.4408920985006262e-16 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2Shape" -p "LeftEyeLidOutDown2CvPos2";
	rename -uid "B940B50A-4FED-033C-929D-C0B0F32FEA22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "CE47F074-41AC-A151-8ADC-E1BCDA1F3AF0";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftEyeLidOutDown3LocGrp" -p "LeftEyeLidOutDown3LocOffGrp";
	rename -uid "CE0647FE-4F69-D80C-44C0-94999598D80D";
createNode transform -n "LeftEyeLidOutDown3ZGrp" -p "LeftEyeLidOutDown3LocGrp";
	rename -uid "F983AE31-4ED4-0A07-B167-CEA5E958C3CA";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "LeftEyeLidOutDown3Pos" -p "LeftEyeLidOutDown3ZGrp";
	rename -uid "11349587-4E85-71D5-2D33-9586328766D8";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 6.6613381477509392e-16 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown3PosShape" -p "LeftEyeLidOutDown3Pos";
	rename -uid "BC456681-4515-4AD4-9382-A7BDED376CF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "1579E982-47E3-B98D-26A0-958A7AD90AD3";
	setAttr ".t" -type "double3" -2.5 2 2.9999999999999947 ;
createNode transform -n "LeftEyeLidPinUp1LocGrp" -p "LeftEyeLidPinUp1LocOffGrp";
	rename -uid "9EA75B2E-481F-579E-6F23-6AA46129798C";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidPinUp1Pos" -p "LeftEyeLidPinUp1LocGrp";
	rename -uid "72E4884E-4B55-F380-37FF-32881FF2AAA3";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidPinUp1PosShape" -p "LeftEyeLidPinUp1Pos";
	rename -uid "D18E527A-47D4-45C2-3665-D1A388FD3D29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "E769B56A-4209-6A70-7975-6E81835713C2";
	setAttr ".t" -type "double3" -2.9309887850104131e-15 3 3 ;
createNode transform -n "LeftEyeLidPinUp2LocGrp" -p "LeftEyeLidPinUp2LocOffGrp";
	rename -uid "A84025BA-44B6-D14A-EBF7-4F8C1B952A77";
createNode transform -n "LeftEyeLidPinUp2Pos" -p "LeftEyeLidPinUp2LocGrp";
	rename -uid "47D50272-41EB-B570-83CB-A5A903B639B2";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -7.4446255129772491e-24 0 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidPinUp2PosShape" -p "LeftEyeLidPinUp2Pos";
	rename -uid "8924536F-4F5A-5B9F-7A6D-088A2E9A0090";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinUp2CvPos1" -p "LeftEyeLidPinUp2Pos";
	rename -uid "4B8F805D-417D-71B0-6FB9-F2BEE6128DDE";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidPinUp2CvPos1Shape" -p "LeftEyeLidPinUp2CvPos1";
	rename -uid "C55B7662-474F-7D7A-771D-7C913B6650B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUp2CvPos2" -p "LeftEyeLidPinUp2Pos";
	rename -uid "8DF96344-4990-4747-044F-5189A8C883AA";
	setAttr ".t" -type "double3" 1.5 4.4408920985006262e-16 4.4408920985006262e-16 ;
createNode locator -n "LeftEyeLidPinUp2CvPos2Shape" -p "LeftEyeLidPinUp2CvPos2";
	rename -uid "0635626A-4EDC-96D3-8DC4-9A8AE0B8B74D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinUp3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "6408161C-48B4-3063-2CC0-0CBABE0A28AC";
	setAttr ".t" -type "double3" 2.5 2 3.0000000000000018 ;
createNode transform -n "LeftEyeLidPinUp3LocGrp" -p "LeftEyeLidPinUp3LocOffGrp";
	rename -uid "0CACAC6F-4391-D76C-695B-458F4650904C";
createNode transform -n "LeftEyeLidPinUp3Pos" -p "LeftEyeLidPinUp3LocGrp";
	rename -uid "4D26CA40-438F-A3E7-D296-739A76641470";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidPinUp3PosShape" -p "LeftEyeLidPinUp3Pos";
	rename -uid "A6ADB5F5-4326-1E44-B77E-388CE36E9CA8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "5E1B6343-4415-1CD7-3683-80890393E73C";
	setAttr ".t" -type "double3" -2.5 -2 3.0000000000000027 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidPinDown1LocGrp" -p "LeftEyeLidPinDown1LocOffGrp";
	rename -uid "6BA0A29D-42FB-D5B1-906C-679090890C30";
createNode transform -n "LeftEyeLidPinDown1Pos" -p "LeftEyeLidPinDown1LocGrp";
	rename -uid "4D6ED3E1-4636-A384-D9E0-D7844BCED679";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidPinDown1PosShape" -p "LeftEyeLidPinDown1Pos";
	rename -uid "9965E918-4E32-4DAC-D2B7-F4BAFFAA18B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "E31A4D3E-48B1-A64B-8B1A-A091A883E19B";
	setAttr ".t" -type "double3" 5.7731597280508132e-16 -3 3.0000000000000013 ;
createNode transform -n "LeftEyeLidPinDown2LocGrp" -p "LeftEyeLidPinDown2LocOffGrp";
	rename -uid "129F349F-4A31-A7AB-1CAD-61909A0E6086";
createNode transform -n "LeftEyeLidPinDown2Pos" -p "LeftEyeLidPinDown2LocGrp";
	rename -uid "D0C40826-4AB9-BD82-B5AF-13ABF358D05C";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidPinDown2PosShape" -p "LeftEyeLidPinDown2Pos";
	rename -uid "64338974-4609-4AD7-EAC8-1BB7B1D2E18E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidPinDown2CvPos1" -p "LeftEyeLidPinDown2Pos";
	rename -uid "92A7CCF3-45C6-9244-5D1A-AB9759A49363";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidPinDown2CvPos1Shape" -p "LeftEyeLidPinDown2CvPos1";
	rename -uid "3EEE153B-4DBE-5674-93A9-43BC6880A621";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDown2CvPos2" -p "LeftEyeLidPinDown2Pos";
	rename -uid "F58A4A3D-4FC8-A9A3-CEF9-5FB68E52B001";
	setAttr ".t" -type "double3" 1.5 4.4408920985006262e-16 4.4408920985006262e-16 ;
createNode locator -n "LeftEyeLidPinDown2CvPos2Shape" -p "LeftEyeLidPinDown2CvPos2";
	rename -uid "B476C36E-4AEC-BBEA-00A8-7BB33BE4368B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidPinDown3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "638015C7-4B0B-B829-ABEC-1D99C64D7F67";
	setAttr ".t" -type "double3" 2.5 -2 3.0000000000000013 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftEyeLidPinDown3LocGrp" -p "LeftEyeLidPinDown3LocOffGrp";
	rename -uid "F43BF5C8-4A4E-1B73-3298-28A9A2AD1EE8";
createNode transform -n "LeftEyeLidPinDown3Pos" -p "LeftEyeLidPinDown3LocGrp";
	rename -uid "257B8255-4253-DC19-2084-24ADCB9F0FD5";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidPinDown3PosShape" -p "LeftEyeLidPinDown3Pos";
	rename -uid "AE9A1D9B-417F-C5DB-BB85-92909DE96013";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeCorneaCtrlGrp" -p "LeftEyeLidRootPoser";
	rename -uid "529E2423-4BF9-732E-7715-F0AA07ECB61B";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.0724754417879002e-12 2.9876376390457162 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeCorneaCtrl" -p "LeftEyeCorneaCtrlGrp";
	rename -uid "E2937EC2-4B0E-587F-71A1-21A1E92A0D0E";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -4.0389678347315804e-28 0 ;
createNode nurbsCurve -n "LeftEyeCorneaCtrlShape" -p "LeftEyeCorneaCtrl";
	rename -uid "6FAE696A-4B0C-2A19-FDD1-1FAFF319A8E0";
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
	rename -uid "5D5A5D23-4150-11CD-EF69-23A75B9D99E4";
	setAttr ".t" -type "double3" 0 1.2079226507921701e-13 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShape" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "7DB7A470-4EE6-D1D7-486D-6290B83945BB";
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
	rename -uid "4C76B009-4028-AB5D-66B0-C5935E6161AE";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeCorneaCls" -p "LeftEyeCorneaClsGrp";
	rename -uid "A132F331-4E18-98FB-C1AB-E3B266B459BF";
	setAttr ".rp" -type "double3" 3.0000000277940009 9.5168317670868419e-13 2.9876376390457127 ;
	setAttr ".sp" -type "double3" 3.0000000277940009 9.5168317670868419e-13 2.9876376390457127 ;
createNode clusterHandle -n "LeftEyeCorneaClsShape" -p "LeftEyeCorneaCls";
	rename -uid "8729575E-4993-0D1B-BC27-B6AAD60EB9D0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 3.0000000277940009 9.5168317670868419e-13 2.9876376390457127 ;
createNode transform -n "RightEyeLidSysGrp" -p "EyeLidSysGrp";
	rename -uid "6D79C2AC-43FC-EF88-FF27-84A04DB591F6";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidCrvGrp" -p "RightEyeLidSysGrp";
	rename -uid "7CF791E9-419F-4A9F-A0E8-B09F6DEAD8A8";
	setAttr ".ovdt" 2;
createNode transform -n "RightEyeLidUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "01594DDD-4EB4-23D1-77F3-5EA741CD5373";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidUpCrvShape" -p "RightEyeLidUpCrv";
	rename -uid "FD8292BD-415D-ADD0-B9E5-8F9D86183CBD";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.99999997220582992 -4.7246233709312248e-13 3.000000000000044
		-0.99999997220582992 -4.7246233709312248e-13 3.000000000000044
		-0.99999999192957034 1.9999999999995219 2.9999999387568441
		-2.9999999919295703 1.9999999999988074 2.9999999387569338
		-4.9999999919295703 1.9999999999980929 2.9999999387570471
		-4.9999999722058304 -1.9072668692230853e-12 3.0000000000002549
		-4.9999999722058304 -1.9072668692230853e-12 3.0000000000002549
		;
createNode transform -n "RightEyeLidDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "66061756-41B8-09A5-1E8E-46AC11EF7012";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidDownCrvShape" -p "RightEyeLidDownCrv";
	rename -uid "C85A540C-45C7-5DD3-0F2C-64AA0E76DCDD";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.99999997220582992 -4.7246233709312248e-13 3.000000000000044
		-0.99999997220582992 -4.7246233709312248e-13 3.000000000000044
		-0.99999997220511583 -2.0000000000004747 2.9999999909604744
		-2.9999999722051158 -2.0000000000011893 2.9999999909605966
		-4.9999999722051154 -2.0000000000019038 2.9999999909607009
		-4.9999999722058304 -1.9072668692230853e-12 3.0000000000002549
		-4.9999999722058304 -1.9072668692230853e-12 3.0000000000002549
		;
createNode transform -n "RightEyeLidUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "37410B61-4F97-B5E5-79C9-4B8589822714";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidUpJntCrvShape" -p "RightEyeLidUpJntCrv";
	rename -uid "1D9D6ED9-4887-B2AC-2274-CF8D84C00846";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-1.3358895833785689 -1.0747811173619488e-12 2.4961416107771037
		-1.3962410631967361 0.43189504968815934 2.4982258387910172
		-1.8367316323021172 1.2243757327266309 2.4794516314261954
		-2.9999999885561723 1.6641104193842069 2.4961415904053799
		-4.163268332614126 1.2243757289210564 2.4794516236892519
		-4.6037588872977659 0.43189504903013276 2.4982258349993063
		-4.6641103610331536 -3.4538047024362452e-12 2.4961416107772867
		;
createNode transform -n "RightEyeLidDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "8C2C03BF-4726-EC9C-8B44-C593C2064FC2";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidDownJntCrvShape" -p "RightEyeLidDownJntCrv";
	rename -uid "42B94872-4556-B8B6-AF1A-9DB152D0023A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-1.3358895833785689 -1.0747811173619488e-12 2.4961416107771037
		-1.3962410651732919 -0.43189504801286788 2.4982258403500714
		-1.8367316322883576 -1.2243757200453458 2.4794516376854339
		-2.9999999722046682 -1.6641103923010523 2.4961416084629753
		-4.1632683121216134 -1.224375720047008 2.4794516376855626
		-4.6037588792378079 -0.43189504801516515 2.4982258403502464
		-4.6641103610331536 -3.4538047024362452e-12 2.4961416107772867
		;
createNode transform -n "RightEyeLidOutUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "4D5C836A-4538-FBF1-69BF-F9AC276F21D8";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutUpCrvShape" -p "RightEyeLidOutUpCrv";
	rename -uid "0B28951A-4AA2-723A-D921-74A040F7DD2A";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.74999997220627679 1.249999999999611 3.0000000000000266
		-0.74999997220627679 1.249999999999611 3.0000000000000266
		-1.4999999722067239 2.4999999999993423 3.0000000000000702
		-2.9999999722067234 2.4999999999988067 3.0000000000001541
		-4.4999999722067248 2.4999999999982707 3.0000000000002385
		-5.2499999722062745 1.2499999999980038 3.0000000000002855
		-5.2499999722062745 1.2499999999980038 3.0000000000002855
		;
createNode transform -n "RightEyeLidOutDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "251167A1-4D13-48E6-D522-C0975637AAE3";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutDownCrvShape" -p "RightEyeLidOutDownCrv";
	rename -uid "878D3342-4E7C-B4BA-79FF-9B875B424576";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.74999997220538328 -1.2500000000003879 3.0000000000000249
		-0.74999997220538328 -1.2500000000003879 3.0000000000000249
		-1.4999999722049357 -2.5000000000006546 3.0000000000000817
		-2.9999999722049355 -2.500000000001191 3.0000000000001656
		-4.4999999722049351 -2.5000000000017262 3.00000000000025
		-5.2499999722053854 -1.2500000000019946 3.0000000000002904
		-5.2499999722053854 -1.2500000000019946 3.0000000000002904
		;
createNode transform -n "RightEyeLidOutUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "89200B24-4F5C-6EC0-2BAE-93B37BF0951C";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutUpJntCrvShape" -p "RightEyeLidOutUpJntCrv";
	rename -uid "53BA47FA-4AF6-3454-6528-2191B4830369";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.2923202946454748 0.94846662539010085 2.2768129514738598
		-1.708282730626294 1.4349412679426752 2.2961442103867178
		-2.9999999722072404 1.9205435209112032 2.3046656277674091
		-4.2917172137874946 1.4349412679408273 2.2961442103868639
		-4.7076796497676154 0.94846662538765913 2.2768129514740565
		;
createNode transform -n "RightEyeLidOutDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "3B490E90-4513-C5CE-79FE-32BF9FDEDDFB";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutDownJntCrvShape" -p "RightEyeLidOutDownJntCrv";
	rename -uid "9666F1BF-4CAC-7DA3-9F18-559F2463E271";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.2923202946441217 -0.94846662539218718 2.2768129514738615
		-1.7082827306242436 -1.4349412679453555 2.2961442103867196
		-2.9999999722044941 -1.9205435209156805 2.3046656277674518
		-4.2917172137854429 -1.4349412679471996 2.2961442103868661
		-4.7076796497662583 -0.94846662539462367 2.2768129514740578
		;
createNode transform -n "RightEyeLidPinUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "74DEA08F-45DC-5FA8-959C-C183F53708F5";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidPinUpCrvShape" -p "RightEyeLidPinUpCrv";
	rename -uid "2490AD7B-4653-3C92-708A-FF839C815CF6";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.49999997220654402 1.9999999999997005 3.0000000000000129
		-0.49999997220654402 1.9999999999997005 3.0000000000000129
		-1.499999972206902 2.9999999999993432 3.0000000000000675
		-2.999999972206902 2.9999999999988072 3.0000000000001514
		-4.4999999722069024 2.9999999999982716 3.0000000000002358
		-5.4999999722065445 1.9999999999979141 3.0000000000002989
		-5.4999999722065445 1.9999999999979141 3.0000000000002989
		;
createNode transform -n "RightEyeLidPinDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "3960AE69-4AD0-5B38-5C66-5787C1327475";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidPinDownCrvShape" -p "RightEyeLidPinDownCrv";
	rename -uid "2480504B-4826-DBB7-8C6D-0B8028B5ADD3";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.49999997220511538 -2.0000000000002989 3.0000000000000089
		-0.49999997220511538 -2.0000000000002989 3.0000000000000089
		-1.4999999722047574 -3.0000000000006559 3.0000000000000808
		-2.9999999722047574 -3.0000000000011919 3.0000000000001648
		-4.4999999722047574 -3.0000000000017275 3.0000000000002491
		-5.4999999722051154 -2.0000000000020854 3.0000000000003029
		-5.4999999722051154 -2.0000000000020854 3.0000000000003029
		;
createNode transform -n "RightEyeLidPinUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "6CCB8C47-4BE1-7D29-4935-A49E15F8E10D";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidPinUpJntCrvShape" -p "RightEyeLidPinUpJntCrv";
	rename -uid "427B8110-47CB-23AD-9A7B-F88F1ACB9C40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.2908686454013718 1.3677171672554511 2.0512935322828532
		-1.7369446633329362 1.7418701389656546 2.0904606012934588
		-2.9999999722073949 2.1213208138469226 2.1213198006613303
		-4.26305529849955 1.7418701340920362 2.0904605948322121
		-4.7091312990123528 1.3677171672530051 2.0512935322830441
		;
createNode transform -n "RightEyeLidPinDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "85210519-459C-7B8C-2170-BB84A7C784CF";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidPinDownJntCrvShape" -p "RightEyeLidPinDownJntCrv";
	rename -uid "00A094C6-4280-93EB-2245-408628E91F82";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.2908686453994094 -1.3677171672575379 2.0512935322828465
		-1.7369446475880574 -1.7418701301150203 2.0904605991631753
		-2.9999999722043622 -2.1213208138514497 2.1213198006613312
		-4.263055298497056 -1.7418701340983656 2.0904605948322166
		-4.7091312990103962 -1.3677171672599817 2.051293532283041
		;
createNode transform -n "RightEyeLidSurfPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "4707C667-430C-62CB-5AE1-3CAABEE08D6F";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidUpCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "E9C76750-44F6-E8B8-BA58-778B5E4C1DDE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp1Pos" -p "RightEyeLidUpCtrl0PosSurfPos";
	rename -uid "9F3CCF40-4971-1AB9-5CB3-97B53D506341";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidUp1PosShape" -p "RightEyeLidUp1Pos";
	rename -uid "6043C52B-4BEB-6AAE-D863-C6A835E08EEB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9F1262DC-4D1A-F902-F704-1080C22A7279";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2Pos" -p "RightEyeLidUpCtrl1PosSurfPos";
	rename -uid "01E5DBCE-4B8D-5030-88D5-529307667F75";
	setAttr ".t" -type "double3" -1.8873791418627661e-15 0 0 ;
createNode locator -n "RightEyeLidUp2PosShape" -p "RightEyeLidUp2Pos";
	rename -uid "9196D541-4764-4875-B4F2-2E876298D251";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "83F5480B-4CE6-CF06-C05E-45842D0FD77D";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp3Pos" -p "RightEyeLidUpCtrl2PosSurfPos";
	rename -uid "4700A584-4C55-03AF-5ADC-5EB86C5322F6";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode locator -n "RightEyeLidUp3PosShape" -p "RightEyeLidUp3Pos";
	rename -uid "E288AE30-4127-E225-CE7C-11ADEB525E53";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "CE88E8CF-4CD4-FE76-8E4A-BDB21ED7FF12";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp4Pos" -p "RightEyeLidUpCtrl3PosSurfPos";
	rename -uid "C06A99CE-46BC-31C0-C528-70BD010B9777";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 2.5673907444456745e-15 0 ;
createNode locator -n "RightEyeLidUp4PosShape" -p "RightEyeLidUp4Pos";
	rename -uid "39E439A4-4347-4555-6E5F-09AD34DA8C2F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A400B1CB-46D8-1999-75E9-8C82B731F964";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp5Pos" -p "RightEyeLidUpCtrl4PosSurfPos";
	rename -uid "A158E7F3-4982-237D-37AD-8D9600CF91EC";
	setAttr ".t" -type "double3" -1.3322676295501878e-15 6.6613381477509392e-16 0 ;
createNode locator -n "RightEyeLidUp5PosShape" -p "RightEyeLidUp5Pos";
	rename -uid "18B6EFF4-4529-9A80-0432-BD9CEACEF91F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "EE759D04-440E-B7A4-D72D-F299BB696E27";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp6Pos" -p "RightEyeLidUpCtrl5PosSurfPos";
	rename -uid "AF2D09D1-4E79-8C9B-0CEA-BB8BEDD40F39";
	setAttr ".t" -type "double3" 3.3306690738754696e-16 1.3322676295501878e-15 0 ;
createNode locator -n "RightEyeLidUp6PosShape" -p "RightEyeLidUp6Pos";
	rename -uid "F5A2193C-48D2-F61F-C859-528300421BB5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "32BB1950-4DB1-9EF8-EB6F-759690B9790F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidUp7Pos" -p "RightEyeLidUpCtrl6PosSurfPos";
	rename -uid "E3CF5ADD-4E43-1566-57AE-6B93492553AC";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidUp7PosShape" -p "RightEyeLidUp7Pos";
	rename -uid "6ADAF58F-4970-1EF3-ACD6-4FB7ED2455BE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "4506406A-45A8-6AB4-8A1C-62830B0F8BAE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown1Pos" -p "RightEyeLidDownCtrl0PosSurfPos";
	rename -uid "57A5C52B-43B1-18FC-5C80-FD80DA55545D";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidDown1PosShape" -p "RightEyeLidDown1Pos";
	rename -uid "C91E583F-408E-6E91-1900-F58497AF5C53";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "4D1C06F4-4583-15CF-C1C8-E7BA65E8F80C";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 -0.99999999999999956 ;
createNode transform -n "RightEyeLidDown2Pos" -p "RightEyeLidDownCtrl1PosSurfPos";
	rename -uid "F322F0BB-4AB5-FB23-5D80-DCA0DFD899F9";
	setAttr ".t" -type "double3" -1.4432899320127035e-15 4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown2PosShape" -p "RightEyeLidDown2Pos";
	rename -uid "F5088470-487C-963F-5457-7DBDA5D1B7BA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "D08B5021-4522-E202-A261-71A3587554B2";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown3Pos" -p "RightEyeLidDownCtrl2PosSurfPos";
	rename -uid "DFA21169-4120-9BCF-2E33-2DB04745CF49";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.5543122344752192e-15 0 ;
createNode locator -n "RightEyeLidDown3PosShape" -p "RightEyeLidDown3Pos";
	rename -uid "04E8D3FE-4166-6980-D4A2-58B613233AB4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A464AE4E-4DB7-D2BB-5B0D-D9909BEAE41A";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown4Pos" -p "RightEyeLidDownCtrl3PosSurfPos";
	rename -uid "585134CA-4B8A-D31B-8F65-C7AB7BB7661F";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -1.3704315460216776e-15 0 ;
createNode locator -n "RightEyeLidDown4PosShape" -p "RightEyeLidDown4Pos";
	rename -uid "A7CAF7CE-4826-BEF9-3252-CC9B0DD06540";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9959C6E4-464F-D2BD-A441-F590E27C75DE";
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown5Pos" -p "RightEyeLidDownCtrl4PosSurfPos";
	rename -uid "1C517C4F-4EA3-F567-8B3D-B4BB47352C2C";
createNode locator -n "RightEyeLidDown5PosShape" -p "RightEyeLidDown5Pos";
	rename -uid "C805F98D-43BD-8E39-4DD6-D797187647B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1EBEE972-403B-C8E5-8BFB-69BE78B355E6";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown6Pos" -p "RightEyeLidDownCtrl5PosSurfPos";
	rename -uid "7E3EA2FF-402F-9E8F-665A-3AA19B4780C5";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown6PosShape" -p "RightEyeLidDown6Pos";
	rename -uid "4BEDBFE4-40AC-092B-2DF3-34AD56126748";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "747ED184-45A2-F1D5-F858-7CAA895CBBB1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidDown7Pos" -p "RightEyeLidDownCtrl6PosSurfPos";
	rename -uid "84080474-4F2C-0CAA-84E6-24B350D29B45";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidDown7PosShape" -p "RightEyeLidDown7Pos";
	rename -uid "B74B30FD-41F2-E03C-8CE3-02943681F390";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "FF42E96B-4540-BB9C-3E82-72B93E6C0BF0";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "RightEyeLidOutUpCrv0Pos" -p "RightEyeLidOutUpCrv0PosSurfPos";
	rename -uid "4CAC6CA1-47E6-B54D-CE2D-4D88A924998C";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode locator -n "RightEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv0PosSurfPos|RightEyeLidOutUpCrv0Pos";
	rename -uid "3ADCD1A0-4A66-1F12-F0E4-E09F7BE3FCB6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "AD58C009-4326-51C3-6DFA-72A14CE25E1E";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUpCrv1Pos" -p "RightEyeLidOutUpCrv1PosSurfPos";
	rename -uid "5A771F3C-42F6-C97D-A1DA-CCBBABE8A8F5";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 2.2204460492503131e-16 0 ;
createNode locator -n "RightEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv1PosSurfPos|RightEyeLidOutUpCrv1Pos";
	rename -uid "9AAD6AC7-4B7C-3987-AA3F-93BD95532AE8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "D1AF59E4-4460-5C3D-79ED-38AD30A83B7D";
createNode transform -n "RightEyeLidOutUpCrv2Pos" -p "RightEyeLidOutUpCrv2PosSurfPos";
	rename -uid "189EC1EA-4555-CB92-D969-E4B7910C0C5C";
	setAttr ".t" -type "double3" 0 5.6446275605026575e-17 0 ;
createNode locator -n "RightEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv2PosSurfPos|RightEyeLidOutUpCrv2Pos";
	rename -uid "9C3DCD0E-4A22-231C-B9C0-2181E0DD554E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "0D6DB10D-474A-7040-7266-F6BF14D98FCA";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutUpCrv3Pos" -p "RightEyeLidOutUpCrv3PosSurfPos";
	rename -uid "3E4C341C-4948-E30D-7EA1-60A870683FE0";
	setAttr ".t" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv3PosSurfPos|RightEyeLidOutUpCrv3Pos";
	rename -uid "1C52C2A8-4185-7362-9E3D-AEAFFBBBC833";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "53999597-42BD-90C2-3031-B6B78851E24A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "RightEyeLidOutUpCrv4Pos" -p "RightEyeLidOutUpCrv4PosSurfPos";
	rename -uid "32240A6B-46B0-94F1-1CEB-2998AA909568";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 8.8817841970012523e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutUpCrv4PosSurfPos|RightEyeLidOutUpCrv4Pos";
	rename -uid "8B08BC09-4D79-0F38-19FA-3DAFDC2F4390";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "CC3ED393-4365-5E39-3561-0095E7D345DE";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDownCrv0Pos" -p "RightEyeLidOutDownCrv0PosSurfPos";
	rename -uid "44B1D166-4383-319F-E352-D8B4718BBA6D";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv0PosSurfPos|RightEyeLidOutDownCrv0Pos";
	rename -uid "BBE5259B-430E-245E-9998-219CF968CB8B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "FC9C1BEE-4B9B-9D0D-66C7-A497CAE77DBE";
createNode transform -n "RightEyeLidOutDownCrv1Pos" -p "RightEyeLidOutDownCrv1PosSurfPos";
	rename -uid "C956434F-46F7-EC0E-3CC0-8BA576320BFB";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv1PosSurfPos|RightEyeLidOutDownCrv1Pos";
	rename -uid "0AB8C48E-4377-BB24-ABB3-6FAFFC9F1D06";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "45789E81-4790-A0B7-5E25-888EC4D67915";
createNode transform -n "RightEyeLidOutDownCrv2Pos" -p "RightEyeLidOutDownCrv2PosSurfPos";
	rename -uid "23F1D4B7-4DE5-0C09-78C1-46AED980F829";
	setAttr ".t" -type "double3" 0 -1.7354011023346105e-17 0 ;
createNode locator -n "RightEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv2PosSurfPos|RightEyeLidOutDownCrv2Pos";
	rename -uid "3360B98D-4A06-DD34-3697-40A9BD4C35E3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "C1E6F49C-46BD-D24C-0856-BDA78BFE06FA";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDownCrv3Pos" -p "RightEyeLidOutDownCrv3PosSurfPos";
	rename -uid "07D8077E-4EC0-10F2-F99F-DFB2452106FE";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv3PosSurfPos|RightEyeLidOutDownCrv3Pos";
	rename -uid "E00CF2A8-4DE0-4BCF-E03E-259F6AC503B5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "522F5B19-421F-BE7E-BA13-D4B8A0B1F5D4";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDownCrv4Pos" -p "RightEyeLidOutDownCrv4PosSurfPos";
	rename -uid "46A85649-4A1F-D1C5-350D-039C9E4C32BD";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidOutDownCrv4PosSurfPos|RightEyeLidOutDownCrv4Pos";
	rename -uid "E53BE9AF-4A0A-98E3-91AE-77978D83F7C1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F3E55314-4400-383D-1770-C28B4523343B";
createNode transform -n "RightEyeLidPinUpCrv0Pos" -p "RightEyeLidPinUpCrv0PosSurfPos";
	rename -uid "F67E6957-4284-F420-B3DA-C1B0E5B10007";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 4.4408920985006262e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "RightEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv0PosSurfPos|RightEyeLidPinUpCrv0Pos";
	rename -uid "FA78E1C6-42D8-71BF-84D2-78AB6A533C55";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "B9091093-45E4-2B25-43D9-1FA72B2F77FD";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidPinUpCrv1Pos" -p "RightEyeLidPinUpCrv1PosSurfPos";
	rename -uid "3819A3E2-40EC-375E-3563-22B8DD4EE18D";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode locator -n "RightEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv1PosSurfPos|RightEyeLidPinUpCrv1Pos";
	rename -uid "F71ABFF2-4E4A-1FFD-C7DD-48964EFE1A23";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "48E61FA8-491B-CE57-240F-4BB21DD3903F";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidPinUpCrv2Pos" -p "RightEyeLidPinUpCrv2PosSurfPos";
	rename -uid "3A53DA39-4553-3C89-CF62-D0899E0F3808";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.8883329009613745e-17 0 ;
createNode locator -n "RightEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv2PosSurfPos|RightEyeLidPinUpCrv2Pos";
	rename -uid "91CEBBB3-4165-362A-CAE8-A8937F6649F7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "9C90E989-4F90-3C7C-66AA-A0A420CA91FD";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidPinUpCrv3Pos" -p "RightEyeLidPinUpCrv3PosSurfPos";
	rename -uid "773E2312-4DD5-7AB7-40D4-2ABB1826C375";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv3PosSurfPos|RightEyeLidPinUpCrv3Pos";
	rename -uid "A4FE93E1-4BC4-E754-50D7-9DAFDB343A05";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "F80A1CB4-446E-7503-130A-64B7DF68ED30";
createNode transform -n "RightEyeLidPinUpCrv4Pos" -p "RightEyeLidPinUpCrv4PosSurfPos";
	rename -uid "7A05454E-4080-A03E-06D6-9A8A070F2603";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
createNode locator -n "RightEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinUpCrv4PosSurfPos|RightEyeLidPinUpCrv4Pos";
	rename -uid "17D17FBD-4D66-86C1-A187-C4A5CCDE5F39";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "FF6E28ED-4090-7817-A586-F2A9B0730484";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidPinDownCrv0Pos" -p "RightEyeLidPinDownCrv0PosSurfPos";
	rename -uid "F386698F-4195-95C0-53B7-16901FF6F338";
	setAttr ".t" -type "double3" 0 6.6613381477509392e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv0PosSurfPos|RightEyeLidPinDownCrv0Pos";
	rename -uid "7B40C3DB-4DB7-995E-4210-C0BE2FBD5E3C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "1D44BEF6-4DCC-5EF8-837A-069C50968095";
createNode transform -n "RightEyeLidPinDownCrv1Pos" -p "RightEyeLidPinDownCrv1PosSurfPos";
	rename -uid "8DC84349-4D1B-1C58-788F-26B9BB395207";
	setAttr ".t" -type "double3" 0 0 -2.2204460492503131e-16 ;
createNode locator -n "RightEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv1PosSurfPos|RightEyeLidPinDownCrv1Pos";
	rename -uid "8B70B6F2-4D2B-7559-A712-AE85BF5ACDB4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "0006D2A6-4D09-D7C2-66D2-20B7A556AF8B";
createNode transform -n "RightEyeLidPinDownCrv2Pos" -p "RightEyeLidPinDownCrv2PosSurfPos";
	rename -uid "3E5F2ACD-48C8-CD0D-10F5-C3BD265CCC1B";
	setAttr ".t" -type "double3" 0 -1.0337147736644119e-16 0 ;
createNode locator -n "RightEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv2PosSurfPos|RightEyeLidPinDownCrv2Pos";
	rename -uid "DFD6B169-43FB-8F87-588F-2A99C4768CC8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "666C8949-41D2-5386-733C-B6AABBAB3466";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "RightEyeLidPinDownCrv3Pos" -p "RightEyeLidPinDownCrv3PosSurfPos";
	rename -uid "D854D562-4C14-37DF-1716-6E95467BCD8B";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv3PosSurfPos|RightEyeLidPinDownCrv3Pos";
	rename -uid "71E31DC6-43D9-526F-E62A-8CAE1635E8E1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "C13E9A29-4A6C-2083-55DE-4EB699810249";
createNode transform -n "RightEyeLidPinDownCrv4Pos" -p "RightEyeLidPinDownCrv4PosSurfPos";
	rename -uid "B2F9D0FB-4401-4F0D-54E4-C9A27F070210";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 -2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "RightEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidSurfPosGrp|RightEyeLidPinDownCrv4PosSurfPos|RightEyeLidPinDownCrv4Pos";
	rename -uid "EA85B888-40FC-1A5B-4D76-1995F1C8D683";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCrvPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "D44510B4-4898-F12E-E4A3-CD9249B55ADE";
	setAttr ".v" no;
createNode transform -n "RightEyeLidCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "A8E50195-47ED-51E5-216E-C8A5E3C1A551";
createNode transform -n "RightEyeLidUpCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "9EEE9AF2-4671-7931-6168-04B6F753973A";
createNode locator -n "RightEyeLidUpCrv0PosShape" -p "RightEyeLidUpCrv0Pos";
	rename -uid "1228A4CB-4A76-2BD4-A55B-2D902D950902";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl0Pos" -p "RightEyeLidUpCrv0Pos";
	rename -uid "FE920298-4554-64EB-52CE-209C9C4E2E49";
createNode locator -n "RightEyeLidUpCtrl0PosShape" -p "RightEyeLidUpCtrl0Pos";
	rename -uid "223E2ACB-49E9-DC86-0BB0-F29181C9B8B4";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "5F7ACD84-4FFF-DC8E-B7E2-D28E28E64992";
createNode locator -n "RightEyeLidUpCrv1PosShape" -p "RightEyeLidUpCrv1Pos";
	rename -uid "A3667C9D-4317-EEE5-BE9A-FBBA7B8A1B46";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1Pos" -p "RightEyeLidUpCrv1Pos";
	rename -uid "588E91D7-41B8-45A6-206E-BAACC5868427";
createNode locator -n "RightEyeLidUpCtrl1PosShape" -p "RightEyeLidUpCtrl1Pos";
	rename -uid "B3E15D85-44CF-441A-62F4-6EAAFB79A7C6";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "7F524862-41CD-375C-AA04-FBA269DF3F1A";
createNode locator -n "RightEyeLidUpCrv2PosShape" -p "RightEyeLidUpCrv2Pos";
	rename -uid "7F3F196B-4744-21BD-0480-5D9B4C98B53F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2Pos" -p "RightEyeLidUpCrv2Pos";
	rename -uid "30C5A288-4A02-A123-5960-F29A19B58FBA";
createNode locator -n "RightEyeLidUpCtrl2PosShape" -p "RightEyeLidUpCtrl2Pos";
	rename -uid "587672BC-47CA-64F7-5A00-0B8678ACC0AA";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "AA302947-4E22-976D-AD60-A18A713D00EA";
createNode locator -n "RightEyeLidUpCrv3PosShape" -p "RightEyeLidUpCrv3Pos";
	rename -uid "4912E5D8-420D-5E2E-8DD5-5B9BED087325";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3Pos" -p "RightEyeLidUpCrv3Pos";
	rename -uid "5CEB724B-4A77-DA05-77E5-53BE394A7C32";
createNode locator -n "RightEyeLidUpCtrl3PosShape" -p "RightEyeLidUpCtrl3Pos";
	rename -uid "0DF98D8D-49A7-1602-B777-C0B65EBA6634";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "E39C74C5-4120-E47E-60BC-77A9CD5B37DD";
createNode locator -n "RightEyeLidUpCrv4PosShape" -p "RightEyeLidUpCrv4Pos";
	rename -uid "4B256BFD-46B4-EB4F-2AC2-E3A6248EC4AB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4Pos" -p "RightEyeLidUpCrv4Pos";
	rename -uid "D18E5196-4078-7A90-2F1F-AD978F01AE01";
createNode locator -n "RightEyeLidUpCtrl4PosShape" -p "RightEyeLidUpCtrl4Pos";
	rename -uid "F5E4A268-456B-1961-4DD6-B48247EEBC9E";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "4452AEB9-45E2-B1DD-598E-458FF19FB4DC";
createNode locator -n "RightEyeLidUpCrv5PosShape" -p "RightEyeLidUpCrv5Pos";
	rename -uid "262ADAB1-4E8D-9AE8-5B0D-DCB476F04958";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5Pos" -p "RightEyeLidUpCrv5Pos";
	rename -uid "15A109AC-49E6-9FB5-3094-DFB874111AC2";
createNode locator -n "RightEyeLidUpCtrl5PosShape" -p "RightEyeLidUpCtrl5Pos";
	rename -uid "8AACFB72-4F63-23A2-D8F9-B1BC9CCDB314";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "7CBFFED9-43D0-4892-BFFA-F48F3DBEF8C0";
createNode locator -n "RightEyeLidUpCrv6PosShape" -p "RightEyeLidUpCrv6Pos";
	rename -uid "7DF41E94-41CF-9C4A-9CC4-20AC824492E5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6Pos" -p "RightEyeLidUpCrv6Pos";
	rename -uid "02928330-4672-1569-AD3F-C3B22C495D21";
createNode locator -n "RightEyeLidUpCtrl6PosShape" -p "RightEyeLidUpCtrl6Pos";
	rename -uid "36F919D1-410D-3CDA-2ABE-DDAE51183D64";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv0Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "6FDFB739-4888-7F3F-91AD-74846A835015";
createNode locator -n "RightEyeLidDownCrv0PosShape" -p "RightEyeLidDownCrv0Pos";
	rename -uid "1A25A63D-49E6-BA2F-E7C7-6D9435A996D1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0Pos" -p "RightEyeLidDownCrv0Pos";
	rename -uid "14F7A349-41AB-34EB-8206-B2997DEA6DC3";
createNode locator -n "RightEyeLidDownCtrl0PosShape" -p "RightEyeLidDownCtrl0Pos";
	rename -uid "9D142778-4BC2-A7BB-EC6B-EDA029AAD069";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv1Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "BA975D17-4F19-4B86-7234-2D86388899E0";
createNode locator -n "RightEyeLidDownCrv1PosShape" -p "RightEyeLidDownCrv1Pos";
	rename -uid "1FD47081-44ED-4119-3E1C-63B4BDB77ED2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1Pos" -p "RightEyeLidDownCrv1Pos";
	rename -uid "7DF2E872-49DE-2D14-325D-F0A5AD181F79";
createNode locator -n "RightEyeLidDownCtrl1PosShape" -p "RightEyeLidDownCtrl1Pos";
	rename -uid "AF4F73ED-4B1E-B66B-33EB-E289933EB318";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv2Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "17CF028E-49EA-B106-0B3E-82B6FD201FB0";
createNode locator -n "RightEyeLidDownCrv2PosShape" -p "RightEyeLidDownCrv2Pos";
	rename -uid "E2F2E80D-4131-AC98-A492-1AA549759E3D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2Pos" -p "RightEyeLidDownCrv2Pos";
	rename -uid "9528BBB4-4104-7D7F-3DC6-9C901CE4AF37";
createNode locator -n "RightEyeLidDownCtrl2PosShape" -p "RightEyeLidDownCtrl2Pos";
	rename -uid "C0213F60-4D45-7480-5982-2B843268AE7C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv3Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "FAD09E98-46D4-9D3C-64C5-6AA8C057A162";
createNode locator -n "RightEyeLidDownCrv3PosShape" -p "RightEyeLidDownCrv3Pos";
	rename -uid "A2CC1F6F-4DF3-CF10-A0FB-00AB09E88AF7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3Pos" -p "RightEyeLidDownCrv3Pos";
	rename -uid "2E36F53D-42C9-14A7-3A2C-61A77E24BDB7";
createNode locator -n "RightEyeLidDownCtrl3PosShape" -p "RightEyeLidDownCtrl3Pos";
	rename -uid "B399006D-4245-2D99-7127-66909DBAD31C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv4Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "C26EB8EE-466B-3ABE-FAB7-F3A9B64E4906";
createNode locator -n "RightEyeLidDownCrv4PosShape" -p "RightEyeLidDownCrv4Pos";
	rename -uid "2EFD0991-4118-A2C0-CFE6-E8922BD8EA4A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4Pos" -p "RightEyeLidDownCrv4Pos";
	rename -uid "450E7699-4D09-A7CF-1FAF-ACA09AF5AF56";
createNode locator -n "RightEyeLidDownCtrl4PosShape" -p "RightEyeLidDownCtrl4Pos";
	rename -uid "DC343317-437E-8FC1-5359-95BEBDB98880";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv5Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "ECB6E29E-4E57-2D13-7A07-6892FBCE4976";
createNode locator -n "RightEyeLidDownCrv5PosShape" -p "RightEyeLidDownCrv5Pos";
	rename -uid "F7252A4B-425B-6C20-CF5E-22A381B8E847";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5Pos" -p "RightEyeLidDownCrv5Pos";
	rename -uid "FB594317-40E3-CC37-A01E-4F808222B951";
createNode locator -n "RightEyeLidDownCtrl5PosShape" -p "RightEyeLidDownCtrl5Pos";
	rename -uid "6FC1A42F-407C-25F1-7542-24AE461B3E52";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv6Pos" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidCrvPosGrp";
	rename -uid "7A3511F1-477E-E849-BDCF-DAA09D3A798B";
createNode locator -n "RightEyeLidDownCrv6PosShape" -p "RightEyeLidDownCrv6Pos";
	rename -uid "38B11E52-44EF-73F5-3F44-1ABED21DBCBC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6Pos" -p "RightEyeLidDownCrv6Pos";
	rename -uid "82D15159-4E5D-C090-CC74-0BBCDDF95AF4";
createNode locator -n "RightEyeLidDownCtrl6PosShape" -p "RightEyeLidDownCtrl6Pos";
	rename -uid "27EEAEF4-4D45-CAFB-04D5-11823BA86ADB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "E6C41C89-41DB-46B4-7C0F-BDAF5806CFA8";
createNode transform -n "RightEyeLidOutUpCrv0Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "6CA32111-4540-74D1-556C-FE8473FEFAAF";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv0Pos";
	rename -uid "70463EE4-4052-39E9-13FA-52A786D6DB42";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv1Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "16B200AF-474A-BA30-CDDF-0FB0C8264341";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv1Pos";
	rename -uid "90B9D186-4537-3110-B132-92BC5C182CB3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv2Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "ABF8BD38-4659-BCB5-9694-D78D8AF67F69";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv2Pos";
	rename -uid "243F6045-4625-0EDD-85F0-0CBDA00531C7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv3Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "D380541E-41E9-BD02-6988-90BAAE5FEA08";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv3Pos";
	rename -uid "811D67C7-4BBB-90A4-2A62-7CB8EF7D2601";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv4Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "219DD15F-4BEB-B805-B937-3E928351E476";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutUpCrv4Pos";
	rename -uid "5F9C2258-479C-35AC-D1ED-5398577AB368";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv0Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "F64CB4A3-43FA-9FA8-644F-F4BCCD097FCC";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv0Pos";
	rename -uid "6D9AB12E-4F91-95CF-B773-569DE5528A60";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv1Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "082D3D4B-4360-16AA-3276-F49C05863929";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv1Pos";
	rename -uid "6EDE1D13-4A5E-E664-0F80-D7B2016D95F2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv2Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "96B90591-4BEC-5C22-6E7C-EABE38BB4B97";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv2Pos";
	rename -uid "6249CB38-4148-860E-F84D-1ABA6677DD49";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv3Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "8A3B76F0-478D-63BF-94D2-079BDF857993";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv3Pos";
	rename -uid "6777CB4D-4D7F-5EFA-F191-C0875150FEE6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv4Pos" -p "RightEyeLidOutCrvPosGrp";
	rename -uid "99B2D2FC-4610-42A8-ED7D-B4AEEDB5B9D0";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidOutCrvPosGrp|RightEyeLidOutDownCrv4Pos";
	rename -uid "75EEE6F3-4E54-B957-8C30-75A0436AD7E9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinCrvPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "A53DF086-45FA-BB35-5280-71B0A020C024";
createNode transform -n "RightEyeLidPinUpCrv0Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "5B20D1DD-4458-6913-879B-7E80262ADFDD";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv0Pos";
	rename -uid "A2546D98-4ED5-8C29-59FC-F6BB23715BCC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv1Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "ED386525-4B63-F994-F347-859D8531D988";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv1Pos";
	rename -uid "81B512CE-481A-12F5-126F-7CB599BBDB3F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv2Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "8B337B47-44CE-E2A1-7950-9BA193DC406E";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv2Pos";
	rename -uid "D393BF0A-4498-3C8A-3A0C-A38971E75C3B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv3Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "A8CA88F6-414A-141D-959C-A9907CC840E7";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv3Pos";
	rename -uid "0A8FD92D-4F8B-42A3-5EDF-53886B4FACEA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv4Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "0C326BB9-49FA-3B00-2C36-24A6231040E7";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUpCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinUpCrv4Pos";
	rename -uid "3E205C70-463F-3287-2ADF-F39BF80A18A8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv0Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "DA9BD590-4D41-63CB-42A7-608E90AEBBE1";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv0PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv0Pos";
	rename -uid "CD3870D8-47D8-2CDB-00CA-CDA19CFC4BA2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv1Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "52D7A1EF-4909-4A77-52FB-34B877845B97";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv1PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv1Pos";
	rename -uid "95EC8988-460F-564C-AD6E-0F8F45F8086D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv2Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "977189A5-45E7-008D-CBBE-81995F957C8E";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv2PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv2Pos";
	rename -uid "B071EF8E-4ECB-8788-9489-46BD48A85209";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv3Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "A58A83C0-41AC-2C66-33D4-F88D9AF4C208";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv3PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv3Pos";
	rename -uid "93CDE6BD-4D58-325F-7DD3-4D84EF9CB284";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv4Pos" -p "RightEyeLidPinCrvPosGrp";
	rename -uid "1DC40CF2-4277-5A05-C5FD-4C9F941512F7";
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDownCrv4PosShape" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp|RightEyeLidPinCrvPosGrp|RightEyeLidPinDownCrv4Pos";
	rename -uid "90195C29-4524-F701-BCBB-9085D6C149BD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "B3D1F64A-4797-A646-8FD5-FA9D868B109E";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUpCrv0AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "83458811-47C1-61EE-EC4A-60A98C1545EF";
createNode locator -n "RightEyeLidOutUpCrv0AimPosShape" -p "RightEyeLidOutUpCrv0AimPos";
	rename -uid "7D91C2AA-4630-FD5E-019D-7797E101B068";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv1AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "158F6E0E-4AFF-1CEC-2350-87B163740BC6";
createNode locator -n "RightEyeLidOutUpCrv1AimPosShape" -p "RightEyeLidOutUpCrv1AimPos";
	rename -uid "1C152EC6-4EC1-DBDF-C54F-5C81DD8DECDC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUpCrv2AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "9CB5EB6A-4929-F0B7-4178-4D96CE76ADE9";
createNode locator -n "RightEyeLidOutUpCrv2AimPosShape" -p "RightEyeLidOutUpCrv2AimPos";
	rename -uid "F646DA6C-426B-F59D-73A6-C3A7D99B528B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv0AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "EFC0934F-4A27-6E95-3E1A-FE9BCC8E6F2F";
createNode locator -n "RightEyeLidOutDownCrv0AimPosShape" -p "RightEyeLidOutDownCrv0AimPos";
	rename -uid "0972BBC3-4232-18B6-EEA7-7D89A3275013";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv1AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "FCE7F664-48EA-FC15-90C5-A58BE035FF8F";
createNode locator -n "RightEyeLidOutDownCrv1AimPosShape" -p "RightEyeLidOutDownCrv1AimPos";
	rename -uid "7B7A8766-4B46-A43C-3322-D4992DF83810";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDownCrv2AimPos" -p "RightEyeLidOutCrvAimPosGrp";
	rename -uid "BE425F48-40A2-4F3F-71C6-20A29B6F26F9";
createNode locator -n "RightEyeLidOutDownCrv2AimPosShape" -p "RightEyeLidOutDownCrv2AimPos";
	rename -uid "6E072EAD-4AA6-4284-3B41-5C86F35BC220";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinCrvAimPosGrp" -p "|EyeLidGrp|EyeLidSysGrp|RightEyeLidSysGrp|RightEyeLidCrvPosGrp";
	rename -uid "27331A63-4BFF-1CA6-B010-3E8E152CCBA4";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidPinUpCrv0AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "B5CD737D-4820-EC2D-E50F-6392462257BA";
createNode locator -n "RightEyeLidPinUpCrv0AimPosShape" -p "RightEyeLidPinUpCrv0AimPos";
	rename -uid "D52D77C1-4053-0CBE-01DF-06B3032810EE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv1AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "A8E3BF40-4C52-BE45-A352-9EA52E5F6D6A";
createNode locator -n "RightEyeLidPinUpCrv1AimPosShape" -p "RightEyeLidPinUpCrv1AimPos";
	rename -uid "B687EE45-4314-CA35-EFEA-F58CF078872F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUpCrv2AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "B2E50420-4526-2F3C-02DD-7EA0B663C210";
createNode locator -n "RightEyeLidPinUpCrv2AimPosShape" -p "RightEyeLidPinUpCrv2AimPos";
	rename -uid "0CACAD74-450E-1E13-51E2-359F2A6FB30F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv0AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "6F962122-44EC-AB11-E304-ED93EF5F4C2C";
createNode locator -n "RightEyeLidPinDownCrv0AimPosShape" -p "RightEyeLidPinDownCrv0AimPos";
	rename -uid "103721E7-4FAB-6830-7F4C-949F624B220D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv1AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "7E6F8E08-46C9-960B-29C0-78AFF905DB98";
createNode locator -n "RightEyeLidPinDownCrv1AimPosShape" -p "RightEyeLidPinDownCrv1AimPos";
	rename -uid "CB348B89-4147-4819-027C-399C1D500176";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDownCrv2AimPos" -p "RightEyeLidPinCrvAimPosGrp";
	rename -uid "BE228C88-4A8A-653F-BFAE-7A9C546A5C07";
createNode locator -n "RightEyeLidPinDownCrv2AimPosShape" -p "RightEyeLidPinDownCrv2AimPos";
	rename -uid "C5F0A483-46E7-563D-0675-889AEEF397F1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "3FC21BBB-48BE-00CC-FA6D-C09FBF1A4842";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidCtrl0Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "837C6D18-4BBB-FA00-1FA5-14A370FF3E2C";
createNode locator -n "RightEyeLidCtrl0PosShape" -p "RightEyeLidCtrl0Pos";
	rename -uid "4FC42DEB-4820-9623-6CCF-259418C4B370";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl1Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "D554A8AF-4084-742F-D14D-86A1C5AFFDBC";
createNode locator -n "RightEyeLidCtrl1PosShape" -p "RightEyeLidCtrl1Pos";
	rename -uid "A540B5F1-4AE2-9100-4E97-709090CB7542";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl2Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "A6D031C8-4D50-7A6C-9209-3E91228160EC";
createNode locator -n "RightEyeLidCtrl2PosShape" -p "RightEyeLidCtrl2Pos";
	rename -uid "CAD20D8D-4564-F07E-7442-3AB23EA1B412";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl3Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "0BEF2C80-4FD2-3BC5-7C98-8F9020F1BCA5";
createNode locator -n "RightEyeLidCtrl3PosShape" -p "RightEyeLidCtrl3Pos";
	rename -uid "A5005B43-4C1C-F072-85A2-A386E7FE7BE1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl4Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "3098CAC9-467B-97F8-FA3F-E1BA468C576A";
createNode locator -n "RightEyeLidCtrl4PosShape" -p "RightEyeLidCtrl4Pos";
	rename -uid "787C178C-4131-D187-62A3-D7A3C90EE8B9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl5Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "B0F709D0-4749-39AB-2BCA-DF8E3C1EC3DE";
createNode locator -n "RightEyeLidCtrl5PosShape" -p "RightEyeLidCtrl5Pos";
	rename -uid "5357059A-4DDC-3E7D-6AB7-4A8C1C795603";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl6Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "0BFD9EC2-4234-0FE5-C0A7-54A2A1B59E92";
createNode locator -n "RightEyeLidCtrl6PosShape" -p "RightEyeLidCtrl6Pos";
	rename -uid "7167C274-41B4-9EC6-B4A7-23BAFDAAAA6A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl7Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "E8124597-4C49-7F01-FEEE-8CA495FCA881";
createNode locator -n "RightEyeLidCtrl7PosShape" -p "RightEyeLidCtrl7Pos";
	rename -uid "44D3F9AB-48FD-FC5B-D09F-AEBDABA8230E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl8Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "C9D82ED2-4B5E-52F5-8F95-A39A1EB983C6";
createNode locator -n "RightEyeLidCtrl8PosShape" -p "RightEyeLidCtrl8Pos";
	rename -uid "F5666B46-4C6D-7170-5A5F-508A7843F27D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl9Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "EBEB2EC7-40DF-F09A-9B2D-D1BB19D17E49";
createNode locator -n "RightEyeLidCtrl9PosShape" -p "RightEyeLidCtrl9Pos";
	rename -uid "0548A62A-4714-FDEF-4BBA-D4B02EF097E5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl10Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "EC8F8931-44E0-DBFA-E651-9280305497D1";
createNode locator -n "RightEyeLidCtrl10PosShape" -p "RightEyeLidCtrl10Pos";
	rename -uid "86C939C2-48F2-F2F6-3BE8-A99FAB7BE3C4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl11Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "A4D6CE24-4973-30CF-7FE6-96A9276F4560";
createNode locator -n "RightEyeLidCtrl11PosShape" -p "RightEyeLidCtrl11Pos";
	rename -uid "FC3D1738-4BC0-1C63-856B-A78B793AC232";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidRootPoserGrp" -p "RightEyeLidSysGrp";
	rename -uid "34E7D5C8-4434-BB17-42D4-C2B84040C720";
	setAttr ".t" -type "double3" -2.7794001988259354e-08 -1.2079226507921703e-13 -3.5527121146412049e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "RightEyeLidRootPoser" -p "RightEyeLidRootPoserGrp";
	rename -uid "8D4A92EC-4DAE-E259-AAD2-78B62C7AB26A";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode";
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "RightEyeLidRootPoserShape" -p "RightEyeLidRootPoser";
	rename -uid "2DEFD4E6-4E4B-F5EC-FB97-42AC86932053";
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
	rename -uid "1017DD0C-4309-CBA2-0BF3-20A6B4194C84";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "RightEyeBallSurfShape" -p "RightEyeBallSurf";
	rename -uid "A54AE595-4614-1698-F48E-9F95AF18CE9B";
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
	rename -uid "169519C0-4D3D-6A9B-A610-6AB5E6B82934";
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
	rename -uid "5AE315B0-45C6-1180-25D3-8385283CEF34";
createNode transform -n "RightEyeBallffd1Lattice" -p "RightEyeBallFFDGrp";
	rename -uid "3012A82E-41F9-D9B3-CB00-A4A2DFED5743";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "RightEyeBallffd1LatticeShape" -p "RightEyeBallffd1Lattice";
	rename -uid "D9FA626B-4E56-B364-BDCF-A5A1034AEE4A";
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
	rename -uid "D57E143A-499F-F170-E408-63BC3F44A9D5";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "RightEyeBallffd1BaseShape" -p "RightEyeBallffd1Base";
	rename -uid "42405CFF-400C-CD07-D01D-45816E20BDBA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "RightEyeLidLocGrpOffGrp" -p "RightEyeLidRootPoser";
	rename -uid "3309AB93-45D0-078B-056D-D494BDC0BDFF";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightEyeLidLocGrp" -p "RightEyeLidLocGrpOffGrp";
	rename -uid "A1514494-4BC9-C8CB-04C0-E99E83AB4FD6";
createNode transform -n "RightEyeLidUpPosCenterGrp" -p "RightEyeLidLocGrp";
	rename -uid "AF06C090-4470-FDC3-87F3-7992CB4174CC";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.0097419586828951e-28 1.0658141036401481e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidUpPos" -p "RightEyeLidUpPosCenterGrp";
	rename -uid "CE5E01F6-41D9-F44C-C06A-DE9C28931766";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "RightEyeLidUpPosShape" -p "RightEyeLidUpPos";
	rename -uid "DF1476E8-4B9D-044C-6080-FD8B2CB24971";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidUpLocOffGrp" -p "RightEyeLidUpPos";
	rename -uid "D94298EF-4542-5FF3-EF90-4DA99EDA6ED0";
createNode transform -n "RightEyeLidUpLoc" -p "RightEyeLidUpLocOffGrp";
	rename -uid "7D7C1AA9-4928-66C4-7A66-32B79DF6C03A";
createNode locator -n "RightEyeLidUpLocShape" -p "RightEyeLidUpLoc";
	rename -uid "21693A2C-483A-196C-8BC6-04B49349BDFE";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos2" -p "RightEyeLidUpLoc";
	rename -uid "53476B31-4541-ED79-074B-5593F2EFCC74";
createNode locator -n "RightEyeLidUpCvPos2Shape" -p "RightEyeLidUpCvPos2";
	rename -uid "D333F1B8-4985-D7F8-552C-0BB3097BACDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos1" -p "RightEyeLidUpLoc";
	rename -uid "25F8DFB9-4797-9C5C-F258-25A234CB7A7E";
createNode locator -n "RightEyeLidUpCvPos1Shape" -p "RightEyeLidUpCvPos1";
	rename -uid "B6C7A698-4BD4-5D2A-22DE-0E85DE9D364F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCenterGrp" -p "RightEyeLidLocGrp";
	rename -uid "5C5D3722-44B0-A785-E059-D3B4519D6711";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 1.0097419586828951e-28 1.0658141036401481e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidDownPos" -p "RightEyeLidDownCenterGrp";
	rename -uid "62649F19-4A69-05EA-69C6-E5AC7A8DCC32";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "RightEyeLidDownPosShape" -p "RightEyeLidDownPos";
	rename -uid "4D558223-4630-C826-4547-AB88DC0E1BBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidDownLocOffGrp" -p "RightEyeLidDownPos";
	rename -uid "EC2A5494-4B28-F7BB-B281-64B10978BD84";
createNode transform -n "RightEyeLidDownLoc" -p "RightEyeLidDownLocOffGrp";
	rename -uid "4C036614-4F74-945D-2443-0486A6431DAF";
createNode locator -n "RightEyeLidDownLocShape" -p "RightEyeLidDownLoc";
	rename -uid "67727FF5-493D-5AA1-3312-AB9618E05111";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos2" -p "RightEyeLidDownLoc";
	rename -uid "F07898F5-4313-E1BF-4EAD-9FB1AAB12A00";
createNode locator -n "RightEyeLidDownCvPos2Shape" -p "RightEyeLidDownCvPos2";
	rename -uid "8EE65185-4BCA-CEE5-4EB4-4DA5D691C651";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos1" -p "RightEyeLidDownLoc";
	rename -uid "806F7335-4736-D82E-5EE8-04A5014175AE";
createNode locator -n "RightEyeLidDownCvPos1Shape" -p "RightEyeLidDownCvPos1";
	rename -uid "34AB956D-466C-DB09-A513-7AA859456A9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidInPos" -p "RightEyeLidLocGrp";
	rename -uid "79602E58-45CC-E5A4-8490-B0957636E719";
createNode locator -n "RightEyeLidInPosShape" -p "RightEyeLidInPos";
	rename -uid "97BD2A71-4A7B-7857-06E2-7ABFB964870A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidInLocOffGrp" -p "RightEyeLidInPos";
	rename -uid "4F94DE5F-4EFE-0571-323A-2CBB96C4B5ED";
	setAttr ".v" no;
createNode transform -n "RightEyeLidInLoc" -p "RightEyeLidInLocOffGrp";
	rename -uid "B06E06C1-49BC-59D9-D65B-1F87CFFB9FD1";
createNode locator -n "RightEyeLidInLocShape" -p "RightEyeLidInLoc";
	rename -uid "4E8719FB-4584-36D3-30C4-E2AF4B8E8705";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "RighteyeLidInEPPosShape" -p "RightEyeLidInLoc";
	rename -uid "DE0092EC-4A2B-1B61-D554-14B5461FBFB6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutPos" -p "RightEyeLidLocGrp";
	rename -uid "E1C7458C-40B7-8E8E-54DB-CFBB798EB6BB";
createNode locator -n "RightEyeLidOutPosShape" -p "RightEyeLidOutPos";
	rename -uid "C3B1A4B3-4131-06D7-0125-A797BA192285";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutLocOffGrp" -p "RightEyeLidOutPos";
	rename -uid "53340249-472D-C716-1DF5-CE9FF7474F88";
	setAttr ".v" no;
createNode transform -n "RightEyeLidOutLoc" -p "RightEyeLidOutLocOffGrp";
	rename -uid "47A0792C-40D1-62AB-8632-D3AE86B9C9EA";
createNode locator -n "RightEyeLidOutLocShape" -p "RightEyeLidOutLoc";
	rename -uid "946E0485-4AF2-647D-4E0E-2FA47445829D";
	setAttr -k off ".v";
createNode locator -n "RighteyeLidOutEPPosShape" -p "RightEyeLidOutLoc";
	rename -uid "7517F6E3-426D-70FF-528B-20B46EC711B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "8443705C-4704-C598-E12C-0EA8689C2CCF";
createNode transform -n "RightEyeLidOutUp1LocGrp" -p "RightEyeLidOutUp1LocOffGrp";
	rename -uid "B25E1EB1-47A7-6FD1-16E5-80852023EC6F";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp1ZGrp" -p "RightEyeLidOutUp1LocGrp";
	rename -uid "8E8DEAC0-4898-1740-741C-D48AB22EA467";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUp1Pos" -p "RightEyeLidOutUp1ZGrp";
	rename -uid "A4C130F6-420E-287D-1355-B5A95F250F30";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp1PosShape" -p "RightEyeLidOutUp1Pos";
	rename -uid "E4CEEF66-4F5F-4C42-E3E4-859E3DD4508F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "0EF53C32-4DB2-696B-2D4B-7BBC4DDDC59F";
createNode transform -n "RightEyeLidOutUp2LocGrp" -p "RightEyeLidOutUp2LocOffGrp";
	rename -uid "7D479F7F-404C-013E-1295-3EA768C4C569";
createNode transform -n "RightEyeLidOutUp2ZGrp" -p "RightEyeLidOutUp2LocGrp";
	rename -uid "8EE3F292-48AD-4239-AFA0-259E4604A8BC";
createNode transform -n "RightEyeLidOutUp2Pos" -p "RightEyeLidOutUp2ZGrp";
	rename -uid "0B1DC004-4481-E4B3-D433-E1B1969BBD32";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp2PosShape" -p "RightEyeLidOutUp2Pos";
	rename -uid "D0B0756F-4965-A928-22A7-C299123A87FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2CvPos1" -p "RightEyeLidOutUp2Pos";
	rename -uid "0FDCF238-43C5-8F45-2C84-53A656EE505B";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUp2CvPos1Shape" -p "RightEyeLidOutUp2CvPos1";
	rename -uid "F1632915-4EB9-26E2-B6E2-5483F7A0E99F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos2" -p "RightEyeLidOutUp2Pos";
	rename -uid "4DE8135A-46C2-E62E-D8C5-1F865BE92502";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutUp2CvPos2Shape" -p "RightEyeLidOutUp2CvPos2";
	rename -uid "1C5B114D-472B-59EE-F78C-68B610C36A97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "9E270D31-49E5-65B4-A903-9FBA9DA759B3";
createNode transform -n "RightEyeLidOutUp3LocGrp" -p "RightEyeLidOutUp3LocOffGrp";
	rename -uid "A96CC99B-43A4-4724-4A3F-5084403D1DD3";
createNode transform -n "RightEyeLidOutUp3ZGrp" -p "RightEyeLidOutUp3LocGrp";
	rename -uid "B2EE3348-4BC8-DFF2-9661-78B82B4D3B22";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp3Pos" -p "RightEyeLidOutUp3ZGrp";
	rename -uid "28386188-4238-EA23-CAEC-0D8565EF616F";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp3PosShape" -p "RightEyeLidOutUp3Pos";
	rename -uid "2F4847E4-43D4-E2DE-F2EB-3C865CF2D61B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "59574759-4B50-AA5A-CAC8-999E616D13ED";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocGrp" -p "RightEyeLidOutDown1LocOffGrp";
	rename -uid "CB8E73BB-4DB6-A67B-CB2A-209DC3CA70CC";
createNode transform -n "RightEyeLidOutDown1ZGrp" -p "RightEyeLidOutDown1LocGrp";
	rename -uid "F1FDA646-49AD-A571-8963-96839EAF523D";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 -2.2204460492503131e-16 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown1Pos" -p "RightEyeLidOutDown1ZGrp";
	rename -uid "87932DC1-4D16-5B50-A743-75BA2EC3459A";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown1PosShape" -p "RightEyeLidOutDown1Pos";
	rename -uid "6BA7152A-44DC-D79E-C2F6-9597011C5156";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "355C3D48-45FE-138A-1155-629DCBD5733F";
createNode transform -n "RightEyeLidOutDown2LocGrp" -p "RightEyeLidOutDown2LocOffGrp";
	rename -uid "570D099C-4C19-8AF1-BC12-2DADE9A4C259";
createNode transform -n "RightEyeLidOutDown2ZGrp" -p "RightEyeLidOutDown2LocGrp";
	rename -uid "3EE452D8-4DFF-22B2-55EA-6488B543808A";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 4.4408920985006262e-16 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutDown2Pos" -p "RightEyeLidOutDown2ZGrp";
	rename -uid "02D1F1D9-4C74-8CF8-3945-808A9EADB805";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown2PosShape" -p "RightEyeLidOutDown2Pos";
	rename -uid "5025EFE6-4A74-0A75-F01A-75845925806E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown2CvPos1" -p "RightEyeLidOutDown2Pos";
	rename -uid "ABD0B059-4438-24E6-9E3F-4399FE4329C2";
createNode locator -n "RightEyeLidOutDown2CvPos1Shape" -p "RightEyeLidOutDown2CvPos1";
	rename -uid "9E7DED14-471B-0509-9EA3-72AAEF9A7DBF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2" -p "RightEyeLidOutDown2Pos";
	rename -uid "00B6849C-4350-5AD7-4CF2-BAAD4EF3471F";
createNode locator -n "RightEyeLidOutDown2CvPos2Shape" -p "RightEyeLidOutDown2CvPos2";
	rename -uid "79A88382-448B-28B7-9D04-68900AD62A54";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "E3B87BA9-416F-FF7C-29EC-679739C19C91";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown3LocGrp" -p "RightEyeLidOutDown3LocOffGrp";
	rename -uid "65D05B84-44DC-8090-4AB0-B693FD68B59E";
createNode transform -n "RightEyeLidOutDown3ZGrp" -p "RightEyeLidOutDown3LocGrp";
	rename -uid "19B6CC14-444B-56E3-E36C-04BB3C5138BE";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown3Pos" -p "RightEyeLidOutDown3ZGrp";
	rename -uid "CF279DAC-410A-65F2-8622-1FA07A970035";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown3PosShape" -p "RightEyeLidOutDown3Pos";
	rename -uid "73DD3E7F-45C9-19FA-4ACC-B2AEE0B94ED9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "57CFA895-4F82-CB91-53E7-50A21306630B";
	setAttr ".t" -type "double3" -2.5 2 3 ;
createNode transform -n "RightEyeLidPinUp1LocGrp" -p "RightEyeLidPinUp1LocOffGrp";
	rename -uid "1E3F826C-4EA6-64C5-BC58-15B77BCE23C3";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidPinUp1Pos" -p "RightEyeLidPinUp1LocGrp";
	rename -uid "559AB251-48F4-7521-C64B-0590AC204FEF";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidPinUp1PosShape" -p "RightEyeLidPinUp1Pos";
	rename -uid "232BCDD6-4725-E154-81E8-5EB06C9F520B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "EA9EEF38-464E-119F-5B58-E9961C467DDA";
	setAttr ".t" -type "double3" 0 3 2.9999999999999978 ;
createNode transform -n "RightEyeLidPinUp2LocGrp" -p "RightEyeLidPinUp2LocOffGrp";
	rename -uid "A11664CC-4348-BD63-9AD2-1FA2DC608FA9";
createNode transform -n "RightEyeLidPinUp2Pos" -p "RightEyeLidPinUp2LocGrp";
	rename -uid "CE06410F-4F8D-645E-66AC-55AB87829BE4";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidPinUp2PosShape" -p "RightEyeLidPinUp2Pos";
	rename -uid "46349070-49F3-BCB3-DE6A-60B0CAA0F243";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinUp2CvPos1" -p "RightEyeLidPinUp2Pos";
	rename -uid "B85A85EE-4C5C-329A-9C25-049661A1BA4B";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUp2CvPos1Shape" -p "RightEyeLidPinUp2CvPos1";
	rename -uid "47697756-4C46-98B9-19EC-A98BD021F954";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUp2CvPos2" -p "RightEyeLidPinUp2Pos";
	rename -uid "DBBE678D-4076-C45C-3755-CD8F02042407";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinUp2CvPos2Shape" -p "RightEyeLidPinUp2CvPos2";
	rename -uid "F00AE2F3-4772-1685-01B5-93B431B85AEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinUp3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "16241F19-4255-637A-86D7-0C9C22F9AB10";
	setAttr ".t" -type "double3" 2.5 2 3.0000000000000053 ;
createNode transform -n "RightEyeLidPinUp3LocGrp" -p "RightEyeLidPinUp3LocOffGrp";
	rename -uid "8A62BF45-4925-593B-DA9B-6BA325B1E5B2";
createNode transform -n "RightEyeLidPinUp3Pos" -p "RightEyeLidPinUp3LocGrp";
	rename -uid "E4656995-49BC-51CF-FF4F-51AE70B620AC";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidPinUp3PosShape" -p "RightEyeLidPinUp3Pos";
	rename -uid "2689AEFD-47C7-62B1-59F1-F8BEE431A07F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "4C332DCA-41BA-3411-BB8B-46A80D5A1DDF";
	setAttr ".t" -type "double3" -2.5 -2 2.9999999999999956 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidPinDown1LocGrp" -p "RightEyeLidPinDown1LocOffGrp";
	rename -uid "585420DD-461E-0FAB-BB1E-50B2ED4941BF";
createNode transform -n "RightEyeLidPinDown1Pos" -p "RightEyeLidPinDown1LocGrp";
	rename -uid "34F83601-4955-89B1-5D0A-44A6DBDC732D";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidPinDown1PosShape" -p "RightEyeLidPinDown1Pos";
	rename -uid "51A789B5-47EC-0A52-2D57-0C87846BA4B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "225AFBA0-4575-C6CD-25B5-C9A900336933";
	setAttr ".t" -type "double3" -9.3258734068513134e-16 -3 3.0000000000000115 ;
createNode transform -n "RightEyeLidPinDown2LocGrp" -p "RightEyeLidPinDown2LocOffGrp";
	rename -uid "296988CE-4696-0E37-BE67-C08926296F2B";
createNode transform -n "RightEyeLidPinDown2Pos" -p "RightEyeLidPinDown2LocGrp";
	rename -uid "01664F78-4D91-A05F-C1D9-1D8DC2A3AB68";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidPinDown2PosShape" -p "RightEyeLidPinDown2Pos";
	rename -uid "50FE39A6-456F-B760-9D72-C2848492FBCB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidPinDown2CvPos1" -p "RightEyeLidPinDown2Pos";
	rename -uid "6A344813-41F6-C9E1-EE11-9A9691454625";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDown2CvPos1Shape" -p "RightEyeLidPinDown2CvPos1";
	rename -uid "A4BA374E-40C7-826F-36E2-11AD9A361160";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDown2CvPos2" -p "RightEyeLidPinDown2Pos";
	rename -uid "50C7FFC3-4345-AF90-8DF7-CFBDA4946AF9";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
createNode locator -n "RightEyeLidPinDown2CvPos2Shape" -p "RightEyeLidPinDown2CvPos2";
	rename -uid "9B42B05F-4056-F728-E769-22B9E71C855E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidPinDown3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "F9D048FB-4FC9-361F-CFAF-A09CFBE875C4";
	setAttr ".t" -type "double3" 2.5 -2 3.0000000000000089 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RightEyeLidPinDown3LocGrp" -p "RightEyeLidPinDown3LocOffGrp";
	rename -uid "41273366-4DF9-B8D4-7B32-D9A1074F0E8B";
createNode transform -n "RightEyeLidPinDown3Pos" -p "RightEyeLidPinDown3LocGrp";
	rename -uid "86393912-46C5-0815-74B2-C4B1014B1EC1";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidPinDown3PosShape" -p "RightEyeLidPinDown3Pos";
	rename -uid "6C5C6B1D-47F0-827A-707C-B9A976486933";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeCorneaCtrlGrp" -p "RightEyeLidRootPoser";
	rename -uid "392FA191-4C5A-23A0-6D1A-819BA7EEFC2D";
	setAttr ".t" -type "double3" 0 -1.071143174158351e-12 2.9876376390457065 ;
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1.0000000000000002 ;
createNode transform -n "RightEyeCorneaCtrl" -p "RightEyeCorneaCtrlGrp";
	rename -uid "97BB93EA-4804-7606-7CF2-159CBC2F426C";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -4.0389678347315804e-28 0 ;
createNode nurbsCurve -n "RightEyeCorneaCtrlShape" -p "RightEyeCorneaCtrl";
	rename -uid "E8598637-44C6-FF81-6A77-E999E16371C4";
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
	rename -uid "DA9E59EC-48D2-3C7C-1A3A-E79150107100";
	setAttr ".t" -type "double3" 0 1.2079226507921706e-13 3.5527121146411737e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShape" -p "RightEyeLidCtrlPosCrv";
	rename -uid "A5DB2955-4538-B8FB-EA87-7982A3C1A8EF";
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
	rename -uid "7F1E2AE0-43C7-7E9A-7B73-71BCDF824A62";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000321 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeCorneaCls" -p "RightEyeCorneaClsGrp";
	rename -uid "6EB9B39D-4D4A-03DE-D2FF-5D8B989FCA92";
	setAttr ".rp" -type "double3" -2.9999999722058304 -1.1919354392375681e-12 2.9876376390458703 ;
	setAttr ".sp" -type "double3" -2.9999999722058304 -1.1919354392375681e-12 2.9876376390458703 ;
createNode clusterHandle -n "RightEyeCorneaClsShape" -p "RightEyeCorneaCls";
	rename -uid "6761AD12-4625-63FF-B526-3FB39741CE0C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -2.9999999722058304 -1.1919354392375681e-12 2.9876376390458703 ;
createNode transform -n "LeftEyeLidJntGrp" -p "EyeLidGrp";
	rename -uid "A1ACD62D-4ED6-B1CE-1E33-8DAEF3691A8D";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "LeftEyeLidOutUp0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "62C2225F-4038-2275-515F-AD990A80764F";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutUpCrv0Jnt" -p "LeftEyeLidOutUp0AimPos";
	rename -uid "C285358A-4305-3859-8234-B2A2291DBDE8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".sd" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "LeftEyeLidOutUpCrv0Jnt";
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutUp0AimPos_aimConstraint1" -p "LeftEyeLidOutUp0AimPos";
	rename -uid "705CD521-406C-7AA1-6B4B-1EB3FDAA4A30";
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
	rename -uid "6006A994-4601-AABE-1856-44B0D94624E0";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutUpCrv1Jnt" -p "LeftEyeLidOutUp1AimPos";
	rename -uid "E1C9F995-454F-A3D1-A1B2-07B5D1CCA5B7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutUp1AimPos_aimConstraint1" -p "LeftEyeLidOutUp1AimPos";
	rename -uid "18D602DC-4C59-68AD-D4D4-F890287320CE";
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
	rename -uid "C42A4B81-4FA3-10B0-E0C8-0B98260BFC1D";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutUpCrv2Jnt" -p "LeftEyeLidOutUp2AimPos";
	rename -uid "65876774-4A31-AF0A-B80D-AD96931104B2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutUp2AimPos_aimConstraint1" -p "LeftEyeLidOutUp2AimPos";
	rename -uid "CE2FE7E5-40E1-CB26-2A7F-0197DEA38362";
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
	setAttr ".rsrr" -type "double3" 3.5781240166464568e-15 -1.9083328088781101e-14 7.951386703658788e-16 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidOutDown0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "5344401B-4ED0-4D3F-94A2-C589660D93C0";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutDownCrv0Jnt" -p "LeftEyeLidOutDown0AimPos";
	rename -uid "D6CCBC37-42A1-61BD-10CB-EDA5417988D3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutDown0AimPos_aimConstraint1" -p "LeftEyeLidOutDown0AimPos";
	rename -uid "1B6B1353-45A7-D3B2-84B7-C2893A5A3DB3";
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
	rename -uid "4C9CF907-4595-3EC7-45C0-49A9A50F8517";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutDownCrv1Jnt" -p "LeftEyeLidOutDown1AimPos";
	rename -uid "A4ED5CE2-4F15-1B1A-ADBC-059B9DB02A27";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutDown1AimPos_aimConstraint1" -p "LeftEyeLidOutDown1AimPos";
	rename -uid "918BB473-4A17-FA08-CF1B-5C9306758228";
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
	rename -uid "30406377-4266-E294-91DB-22A29DC3609A";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidOutDownCrv2Jnt" -p "LeftEyeLidOutDown2AimPos";
	rename -uid "1352C4F7-42F1-6E0E-24B9-16B1443317E5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidOutDown2AimPos_aimConstraint1" -p "LeftEyeLidOutDown2AimPos";
	rename -uid "F18AC45E-4BB6-502D-5190-908FC9FCDE2C";
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
	setAttr ".o" -type "double3" -22.615459998871238 -34.69711136758707 13.340212784834538 ;
	setAttr ".rsrr" -type "double3" 3.180554681463516e-15 -6.460501696722767e-15 -7.9513867036587919e-16 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinUp0AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "F29B90A0-4EC8-7A3F-DBAD-B980E0579F90";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinUpCrv0Jnt" -p "LeftEyeLidPinUp0AimPos";
	rename -uid "A22EECB7-434D-FECF-4F99-E2B22799E837";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinUp0AimPos_aimConstraint1" -p "LeftEyeLidPinUp0AimPos";
	rename -uid "42B74FFE-461F-557B-4779-A6B1D8AB2C39";
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
	rename -uid "A091CFC3-4038-00D5-48A6-F188DCAF572E";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinUpCrv1Jnt" -p "LeftEyeLidPinUp1AimPos";
	rename -uid "D7323D91-4225-3CF7-A799-C2881CA4F52A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinUp1AimPos_aimConstraint1" -p "LeftEyeLidPinUp1AimPos";
	rename -uid "F503FA35-480A-4034-6201-A6B9F207D4E9";
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
	rename -uid "5E02B4A4-46AF-EC26-5E95-458748A96330";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinUpCrv2Jnt" -p "LeftEyeLidPinUp2AimPos";
	rename -uid "34B298BB-4C8F-3CF0-4936-F1B8E8C7E433";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinUp2AimPos_aimConstraint1" -p "LeftEyeLidPinUp2AimPos";
	rename -uid "A95BE0FF-452F-5B97-100C-2D977616A75C";
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
	rename -uid "C5AE73DC-4673-B845-22F0-A29EAFDB701C";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinDownCrv0Jnt" -p "LeftEyeLidPinDown0AimPos";
	rename -uid "71BEE3D4-413D-9B7B-2D0A-9E9A6E4520C8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinDown0AimPos_aimConstraint1" -p "LeftEyeLidPinDown0AimPos";
	rename -uid "81A0D1B3-4895-D9BB-D734-1AB0B1246BDA";
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
	setAttr ".o" -type "double3" -33.693707310266383 34.730952791110766 -20.800182176697795 ;
	setAttr ".rsrr" -type "double3" -5.1684013573782151e-15 -2.8690390937326033e-31 
		-6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LeftEyeLidPinDown1AimPos" -p "LeftEyeLidJntGrp";
	rename -uid "22BB6C33-44C6-2A40-6CD0-34AEC74DB04F";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinDownCrv1Jnt" -p "LeftEyeLidPinDown1AimPos";
	rename -uid "C06A03C9-4066-8D0A-68DE-61BC4DA2F76D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinDown1AimPos_aimConstraint1" -p "LeftEyeLidPinDown1AimPos";
	rename -uid "042BF506-46B1-9731-1D16-21A1C716ECDF";
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
	rename -uid "033A3589-4CB8-DECF-DBF9-D9ADA3D159F1";
	setAttr ".t" -type "double3" 3.0000000277940018 9.510170528238658e-13 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode joint -n "LeftEyeLidPinDownCrv2Jnt" -p "LeftEyeLidPinDown2AimPos";
	rename -uid "12ACC408-4BD1-B6AB-72E0-8D80BFB3AF35";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "LeftEyeLidPinDown2AimPos_aimConstraint1" -p "LeftEyeLidPinDown2AimPos";
	rename -uid "6FC4B1FA-417F-9292-2B7D-138342FE7743";
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
	rename -uid "B187BC04-474D-0C43-B5E0-379046099BBB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "RightEyeLidOutUp0AimPos" -p "RightEyeLidJntGrp";
	rename -uid "E6C92C94-4994-A92F-9822-C7840D7BB0C1";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutUpCrv0Jnt" -p "RightEyeLidOutUp0AimPos";
	rename -uid "A91E240A-4065-28DA-1B3D-DEAD8DF37217";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutUp0AimPos_aimConstraint1" -p "RightEyeLidOutUp0AimPos";
	rename -uid "8CB5B13A-487F-941F-CBD1-80B0F8D295A6";
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
	rename -uid "48E522D9-4141-A5B9-1DE3-E8A5F33156A5";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutUpCrv1Jnt" -p "RightEyeLidOutUp1AimPos";
	rename -uid "CB0E0A08-4760-EA59-B94E-B99340EEFEEB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutUp1AimPos_aimConstraint1" -p "RightEyeLidOutUp1AimPos";
	rename -uid "E2961BC2-4EC0-6AAB-D0D8-E9BDCD740FB8";
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
	rename -uid "F2C3A000-4B8E-D90D-2E93-268C9052444C";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutUpCrv2Jnt" -p "RightEyeLidOutUp2AimPos";
	rename -uid "12E390AE-498E-FA8F-6333-9AB5F89023C1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutUp2AimPos_aimConstraint1" -p "RightEyeLidOutUp2AimPos";
	rename -uid "45E81EC6-402E-6846-55AA-5B95C6A66238";
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
	rename -uid "23EA0D4F-4102-DA5E-5084-B7A801643E1B";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutDownCrv0Jnt" -p "RightEyeLidOutDown0AimPos";
	rename -uid "5A2E280F-4F0E-7E3B-DD1E-FE81BE50FE1A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutDown0AimPos_aimConstraint1" -p "RightEyeLidOutDown0AimPos";
	rename -uid "AB88B690-4C31-3E64-AB0B-918214A01B91";
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
	rename -uid "E92C4CFA-4BDD-6B9D-3834-F1825223CD4D";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutDownCrv1Jnt" -p "RightEyeLidOutDown1AimPos";
	rename -uid "2627FD26-43B5-B147-408F-8AB7E0C39C27";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutDown1AimPos_aimConstraint1" -p "RightEyeLidOutDown1AimPos";
	rename -uid "84D3BE52-4E1E-D2F3-021A-42A91EDCE67F";
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
	rename -uid "3080ABAF-49E5-6706-DA63-7DA115480883";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidOutDownCrv2Jnt" -p "RightEyeLidOutDown2AimPos";
	rename -uid "146408B6-4748-ECBA-E651-429B57AFA9F7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidOutDown2AimPos_aimConstraint1" -p "RightEyeLidOutDown2AimPos";
	rename -uid "092B3F3F-4DB0-94A3-8DD1-1D903E0B2DAF";
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
	rename -uid "9A9B74CA-4E81-36BC-6A28-7BB233EF4D51";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinUpCrv0Jnt" -p "RightEyeLidPinUp0AimPos";
	rename -uid "07219183-4E3E-4D61-2A6A-F68C7B4FCD3F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinUp0AimPos_aimConstraint1" -p "RightEyeLidPinUp0AimPos";
	rename -uid "A909EB29-45E6-7289-14F2-558683C4D8DA";
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
	setAttr ".o" -type "double3" 33.693707310250737 -34.730952791134968 -20.800182176698129 ;
	setAttr ".rsrr" -type "double3" 3.975693351829396e-15 -5.5659706925611543e-15 -1.9310840053969443e-31 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinUp1AimPos" -p "RightEyeLidJntGrp";
	rename -uid "151820A4-40C1-F41E-0070-3FA954E2D33F";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinUpCrv1Jnt" -p "RightEyeLidPinUp1AimPos";
	rename -uid "569BAA57-4646-352C-902B-909B32EE955B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinUp1AimPos_aimConstraint1" -p "RightEyeLidPinUp1AimPos";
	rename -uid "4D6DF73C-40A2-341F-D726-7ABBE0F4EBC4";
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
	rename -uid "4725A3D3-4F81-AAF2-FDB2-C1B303C735E2";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinUpCrv2Jnt" -p "RightEyeLidPinUp2AimPos";
	rename -uid "DEE6A749-4B26-DE35-57E9-E0A9B5F4799C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinUp2AimPos_aimConstraint1" -p "RightEyeLidPinUp2AimPos";
	rename -uid "49602B1B-493A-D6CB-044E-16919D8FBA7A";
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
	setAttr ".o" -type "double3" 33.693707310174737 34.730952791192287 20.800182176670919 ;
	setAttr ".rsrr" -type "double3" -1.1529510720305249e-14 -4.3732626870123352e-15 
		3.1805546814635176e-15 ;
	setAttr -k on ".w0";
createNode transform -n "RightEyeLidPinDown0AimPos" -p "RightEyeLidJntGrp";
	rename -uid "59066FC5-4E83-5651-6920-90BDB2FF3B7F";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinDownCrv0Jnt" -p "RightEyeLidPinDown0AimPos";
	rename -uid "C930B4EB-4DFD-7441-5FC3-0583A2E2D1D4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".sd" 2;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "RightEyeLidPinDownCrv0Jnt";
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinDown0AimPos_aimConstraint1" -p "RightEyeLidPinDown0AimPos";
	rename -uid "092512AF-46D4-11E2-3749-F692575EA4E0";
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
	rename -uid "A45A2F4C-48FE-3511-F762-8D9F204D939B";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinDownCrv1Jnt" -p "RightEyeLidPinDown1AimPos";
	rename -uid "1E10CF4E-4A5E-2D75-1052-B58158E858E6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinDown1AimPos_aimConstraint1" -p "RightEyeLidPinDown1AimPos";
	rename -uid "1D595967-4376-2769-29C3-F5AB4505E966";
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
	rename -uid "94E7B25E-4716-EF52-5E37-D1A9D9D23A3F";
	setAttr ".t" -type "double3" -2.9999999722059973 -1.2079226507921683e-13 1.6527788123432913e-13 ;
createNode joint -n "RightEyeLidPinDownCrv2Jnt" -p "RightEyeLidPinDown2AimPos";
	rename -uid "33F6DECA-449B-228B-1ED6-B08F29063064";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -2.0470049929899194e-11 ;
	setAttr ".radi" 0.1;
createNode aimConstraint -n "RightEyeLidPinDown2AimPos_aimConstraint1" -p "RightEyeLidPinDown2AimPos";
	rename -uid "A2BA4DCD-4BC4-04AD-84E6-09A4D1065F9E";
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
	rename -uid "9DCACBF0-4D04-3399-8949-089A61C923B2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5622634E-453B-4082-8A2A-479D7C058D24";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5470E776-40FB-6A18-8789-F6A6F1FC7342";
createNode displayLayerManager -n "layerManager";
	rename -uid "5016BF5B-4AFA-687A-7AEE-30B7BEB23FF1";
createNode displayLayer -n "defaultLayer";
	rename -uid "A10D204B-470E-293A-CDC1-09B835D4F513";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "32057407-4174-84F8-4B7B-2EBB79A67A24";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C6BFFC4A-403D-545D-FB51-FAB47350E922";
	setAttr ".g" yes;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS";
	rename -uid "0065620E-49A6-6C50-D863-BB829F533FED";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS";
	rename -uid "90BE0015-4E90-7F12-D1AA-128AEF2320FF";
createNode multiplyDivide -n "LeftEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "348CEB3E-4022-6C8A-6263-FDBD79560DE5";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "83303F56-4B2B-CE30-7CB3-BC8610C739C2";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS";
	rename -uid "7EA9C412-4716-2A50-66EC-D3BBD202C2BC";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS";
	rename -uid "63F0C49C-49D7-5E37-3F5D-83A926918926";
createNode multiplyDivide -n "LeftEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "3DC34695-4735-237D-9C86-14883EE0A24D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS";
	rename -uid "599686AF-4117-B73A-9FAF-3B817183AC36";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS";
	rename -uid "AC5875A0-428B-C143-DC3B-13A72326AD56";
createNode multiplyDivide -n "LeftEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "3E2718F8-490C-DF51-A829-9293ACAE2F16";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS";
	rename -uid "931F61EE-4198-182B-300D-E9B33869A3DC";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS";
	rename -uid "FEFDB219-4F06-03D8-9DA4-93B011C9BD61";
createNode multiplyDivide -n "LeftEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "13D193E9-483A-F2DD-724D-5E812C2F6FD8";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS";
	rename -uid "30BDA35F-4DB1-396F-CAAE-5592A2C41FE9";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS";
	rename -uid "83D31437-4892-9A2F-E082-2F83BE2EC1FA";
createNode multiplyDivide -n "LeftEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "41F0F579-42D6-03B2-EE94-049931D3D661";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS";
	rename -uid "B65570B8-445E-E4D8-CF69-74BFBA345E2A";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS";
	rename -uid "476AC554-4A62-71D8-C88D-C9939FC655CA";
createNode multiplyDivide -n "LeftEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "EFA994A1-443E-4565-57A3-EC914AD552A9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidInLocPS";
	rename -uid "FE09829D-4CBB-AE98-303E-07AF47789A8F";
createNode closestPointOnSurface -n "LeftEyeLidInLocCS";
	rename -uid "FC6C9039-4937-D2D0-5A43-13B1A961BD9C";
createNode multiplyDivide -n "LefteyeLidInCtrlRvsMultMD";
	rename -uid "252789C2-41C8-729B-077F-BC90705ABC39";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "D8D673AB-4B60-2B63-B043-1CAFF264E4B3";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpLocPS";
	rename -uid "158C692C-4357-7A77-6692-2F8A761A0CE3";
createNode closestPointOnSurface -n "LeftEyeLidUpLocCS";
	rename -uid "097A7A23-4DB3-CA91-EF0D-38909F037867";
createNode multiplyDivide -n "LeftEyeLidUpCtrlRvsMultMD";
	rename -uid "315603BC-4231-E689-4736-FAB240F25E53";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "D75D5CD9-403E-ACAC-0374-D3A45BB4B586";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutLocPS";
	rename -uid "7D34CFAE-461D-C628-9AC8-0DAF85C1D28E";
createNode closestPointOnSurface -n "LeftEyeLidOutLocCS";
	rename -uid "78C54C09-441D-DCD3-7BD0-4AAACDF33294";
createNode multiplyDivide -n "LefteyeLidOutCtrlRvsMultMD";
	rename -uid "3D7B6918-476A-1945-95CE-2CB220D2DD03";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownLocPS";
	rename -uid "DBB8E643-4F0C-1022-03BC-4881A5D44E08";
createNode closestPointOnSurface -n "LeftEyeLidDownLocCS";
	rename -uid "9C712410-429C-AA37-0555-64BC195E963C";
createNode multiplyDivide -n "LefteyeLidDownCtrlRvsMultMD";
	rename -uid "551AA34C-479A-B3F0-EEB3-9F8D67FD5FC2";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "B26E8890-4314-D1F4-E235-B2B38802C5FB";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode decomposeMatrix -n "LeftEyeLidUp2CtrlPosGrpDM";
	rename -uid "DD2D8092-4458-6951-8D4F-16ADB4DBE5C3";
createNode multMatrix -n "LeftEyeLidUp2CtrlPosGrpMM";
	rename -uid "E3C09BF3-4F8E-7AD5-28FD-1586A7915192";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0716148614883423 15.266393661499023 25.083902359008789 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999989 0 0 0 0 1 0 -1.0716148614883423 -15.266393661499023 -25.083902359008789 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp2CtrlRvsMultMD";
	rename -uid "7FD2F25B-4CC6-DC31-9F13-52AA76EF23EB";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp3CtrlPosGrpDM";
	rename -uid "D36D2438-4C52-381D-0671-7DBA9C149A77";
createNode multMatrix -n "LeftEyeLidUp3CtrlPosGrpMM";
	rename -uid "AC0F95C9-4D16-7695-0907-0BBD6E650AEF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.562730073928833 16.041145324707031 24.903356552124023 1;
	setAttr ".i[2]" -type "matrix" 1 0 1.7763568394002505e-15 0 -1.3877787807814457e-17 1 0 0
		 0 0 1 0 -1.562730073928833 -16.041145324707031 -24.903356552124027 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp3CtrlRvsMultMD";
	rename -uid "3FAB083B-4204-2B36-1A13-2DB2C64DC4DE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp4CtrlPosGrpDM";
	rename -uid "EA4C62A0-4D3C-3AA4-65E2-C782E9BEE2DB";
createNode multMatrix -n "LeftEyeLidUp4CtrlPosGrpMM";
	rename -uid "4EA50115-42CB-250E-949B-B98A03CC85DC";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4166932106018066 16.323806762695313 24.66486930847168 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.6769177786658861e-17 0.99999999999999989 -1.7114691128522261e-16 0
		 -1.3877787807814457e-17 0 1 0 -2.4166932106018062 -16.323806762695313 -24.664869308471676 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp4CtrlRvsMultMD";
	rename -uid "6992DF5F-4C89-F11F-05DA-669B7A9EF827";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp5CtrlPosGrpDM";
	rename -uid "7B9598CD-4208-F76B-6330-3CA584BD57A0";
createNode multMatrix -n "LeftEyeLidUp5CtrlPosGrpMM";
	rename -uid "B9240E75-465A-D12D-3B46-378B7BF10D49";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.2652444839477539 16.033849716186523 24.470087051391602 1;
	setAttr ".i[2]" -type "matrix" 1 -9.8607613152626476e-32 -8.8817841970012523e-16 0
		 2.2657185044431773e-17 1.0000000000000002 1.6979533786898039e-16 0 0 1.1102230246251565e-16 1 0
		 -3.2652444839477539 -16.033849716186527 -24.470087051391602 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp5CtrlRvsMultMD";
	rename -uid "EE10DB17-4A1C-25FD-B69A-BBA7BE5D05EE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp6CtrlPosGrpDM";
	rename -uid "EAF35EAB-44B4-D499-2E92-E1A37979805C";
createNode multMatrix -n "LeftEyeLidUp6CtrlPosGrpMM";
	rename -uid "ED54A89D-4A39-FC91-069F-2FBFD533A790";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.850816011428833 15.308286666870117 24.321054458618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.8508160114288321 -15.308286666870115 -24.321054458618161 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp6CtrlRvsMultMD";
	rename -uid "9A43DEFB-4622-553E-C551-03830B2F507F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown2CtrlPosGrpDM";
	rename -uid "D4AB5802-4A76-9788-B02F-11AEB704D6DA";
createNode multMatrix -n "LeftEyeLidDown2CtrlPosGrpMM";
	rename -uid "93C2745E-4144-A765-CFA3-AAAF1016C4FD";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.058457612991333 14.351093292236328 25.111383438110352 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 0.99999999999999989 0 0
		 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0584576129913328 -14.351093292236326 -25.111383438110352 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown2CtrlRvsMultMD";
	rename -uid "417F1882-4D24-78A7-327E-F8B2AE3816C6";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown3CtrlPosGrpDM";
	rename -uid "8167C693-4165-D8BB-E48E-7094026CB4F1";
createNode multMatrix -n "LeftEyeLidDown3CtrlPosGrpMM";
	rename -uid "90AA8B75-4286-B526-F065-C985C0EFFAE8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.5410475730895996 13.594337463378906 25.023866653442383 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 -1.5410475730895996 -13.594337463378906 -25.023866653442383 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown3CtrlRvsMultMD";
	rename -uid "7244DFF6-4854-3204-8537-B8856DD1DC6F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown4CtrlPosGrpDM";
	rename -uid "9A1D08A3-4840-6329-18FD-59A399C35981";
createNode multMatrix -n "LeftEyeLidDown4CtrlPosGrpMM";
	rename -uid "F18AE871-4184-16FB-783D-1DB76BCCA856";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4046261310577393 13.317789077758789 24.833391189575195 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.3928580356146194e-16 -3.9782670549075614e-16 0
		 -2.7755575615628914e-17 0.99999999999999989 0 0 0 0 1 0 -2.4046261310577393 -13.317789077758791 -24.833391189575195 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown4CtrlRvsMultMD";
	rename -uid "6E6C5A85-4628-125D-4ED5-2BA97CA4838B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown5CtrlPosGrpDM";
	rename -uid "38AC119B-4317-7989-63FE-4BBB9263D933";
createNode multMatrix -n "LeftEyeLidDown5CtrlPosGrpMM";
	rename -uid "C1F09827-4D3C-BA91-DA69-6BBE7E3E5E9C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.3368501663208008 13.541164398193359 24.554609298706055 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.5168562475543605e-16 1.3630546302049217e-15 0
		 0 0.99999999999999989 0 0 0 0 1 0 -3.3368501663208012 -13.541164398193361 -24.554609298706058 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown5CtrlRvsMultMD";
	rename -uid "E7BBB2E9-4F0C-8ED5-8E7A-808276A7A602";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown6CtrlPosGrpDM";
	rename -uid "A7FD3851-461D-C224-8B49-50A9CA968C4B";
createNode multMatrix -n "LeftEyeLidDown6CtrlPosGrpMM";
	rename -uid "8FEFB924-49E9-D778-308D-3599B741AA2A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9238643646240234 14.33940315246582 24.320398330688477 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.9238643646240243 -14.339403152465822 -24.32039833068848 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown6CtrlRvsMultMD";
	rename -uid "FFD4F495-49E7-6EB6-380C-E188F9ADF076";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp1CtrlPosGrpDM";
	rename -uid "AAA85D88-4DF3-487B-1279-9F8FBC51254C";
createNode multMatrix -n "LeftEyeLidUp1CtrlPosGrpMM";
	rename -uid "220E1294-409D-767D-8B21-1E84BF95BE96";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0082783699035645 14.820045471191406 25.113191604614258 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 -1.6453555708108474e-15 -2.7881243541265926e-15 -1.2325951644078309e-32
		 0 1 0 0 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0082783699035642 -14.820045471191404 -25.113191604614254 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide1RvsMultMD";
	rename -uid "27336B77-479A-1F62-2BDB-AFA0289F7717";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown7CtrlPosGrpDM";
	rename -uid "E06FF97A-4508-C377-FB78-EEA4E4A33CD8";
createNode multMatrix -n "LeftEyeLidDown7CtrlPosGrpMM";
	rename -uid "27612020-43E1-C980-5155-91B5D560ECB0";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9740087985992432 14.858072280883789 24.278085708618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 8.8817841970012523e-16 0 0 1 0 0 0 0 1 0 -3.9740087985992427 -14.858072280883789 -24.278085708618164 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide2RvsMultMD";
	rename -uid "A845DCDD-4013-0284-A0DE-5CAF051C3C8E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp2CtrlPosGrpDM";
	rename -uid "EAA98392-471F-8E05-E7C2-34AAA18EC781";
createNode multMatrix -n "RightEyeLidUp2CtrlPosGrpMM";
	rename -uid "DA851141-4E1B-65DD-586F-5DADB8B8357B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0716148614869307 15.266393661499023 25.083902359008849 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 1.6949101745987762e-15 -7.6784108415841052e-16 0
		 0 1 0 0 0 0 1 0 1.0716148614869307 -15.266393661499022 -25.083902359008849 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp2CtrlRvsMultMD";
	rename -uid "1B76A4D4-4510-CA93-3531-628FE98DFBBE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp3CtrlPosGrpDM";
	rename -uid "2EC57C4F-4E07-919F-A3D0-3EA6E1BBCF76";
createNode multMatrix -n "RightEyeLidUp3CtrlPosGrpMM";
	rename -uid "3F9BC94B-42A0-D3E0-3B25-D9AD7B478D7A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5627300739274315 16.041145324707031 24.903356552124112 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.0843618183427545e-17 0.99999999999999989 -1.7280174896636211e-16 0
		 0 1.1102230246251565e-16 1 0 1.5627300739274312 -16.041145324707031 -24.903356552124109 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp3CtrlRvsMultMD";
	rename -uid "CF50D6AC-4EAA-B121-E45E-89BC9EBA3ED9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp4CtrlPosGrpDM";
	rename -uid "4621A3FE-4FEB-BA5E-F3F0-6492C175AE25";
createNode multMatrix -n "RightEyeLidUp4CtrlPosGrpMM";
	rename -uid "ED9BFC33-48F8-9B70-7AA4-22B103BF39AF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4166932106004184 16.323806762695313 24.664869308471815 1;
	setAttr ".i[2]" -type "matrix" 1 -9.0615330587380894e-16 -1.3691752902817888e-15 0
		 0 1 0 0 0 0 1 0 2.4166932106004184 -16.323806762695316 -24.664869308471818 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp4CtrlRvsMultMD";
	rename -uid "C06ED066-429D-3733-2300-42B62509C6AA";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp5CtrlPosGrpDM";
	rename -uid "55F3264A-49BA-34F6-126F-D18FF776A9A5";
createNode multMatrix -n "RightEyeLidUp5CtrlPosGrpMM";
	rename -uid "929F4215-49D6-2D28-CEBD-0897D994BC4A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.2652444839463768 16.033849716186523 24.470087051391786 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 2.2657185044422218e-17 0.99999999999999989 -1.6979533786898167e-16 0
		 0 0 1 0 3.2652444839463768 -16.03384971618652 -24.470087051391786 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp5CtrlRvsMultMD";
	rename -uid "52C83928-4277-17CF-150E-D0A162468531";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp6CtrlPosGrpDM";
	rename -uid "6F753AD8-4A72-81E0-4A93-809DE9EA1AA1";
createNode multMatrix -n "RightEyeLidUp6CtrlPosGrpMM";
	rename -uid "8C4AAD6F-4B16-8B7D-3D7E-CF87E9191441";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.8508160114274643 15.308286666870117 24.321054458618381 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999978 8.4978061625607498e-16 1.3500897321560226e-15 0
		 -5.344080749352476e-17 1 3.3752243303900565e-16 0 0 1.1102230246251565e-16 1 0 3.8508160114274643 -15.308286666870119 -24.321054458618384 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp6CtrlRvsMultMD";
	rename -uid "94E86C06-47A5-232B-2DAE-EFBA59C02855";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown2CtrlPosGrpDM";
	rename -uid "5FF1AD48-425D-046A-F88E-3F861F1E5138";
createNode multMatrix -n "RightEyeLidDown2CtrlPosGrpMM";
	rename -uid "10BF2897-4170-34F2-8222-7295EB448025";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0584576129899199 14.351093292236328 25.111383438110412 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.3877787807814457e-17 1 0 0 0 0 1 0 1.0584576129899199 -14.35109329223633 -25.111383438110419 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown2CtrlRvsMultMD";
	rename -uid "C451D5A4-4514-F60B-AD00-3899D83110DE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown3CtrlPosGrpDM";
	rename -uid "3B7D8B28-449E-F68C-C15F-7B86BD3337BE";
createNode multMatrix -n "RightEyeLidDown3CtrlPosGrpMM";
	rename -uid "F1FDE2DC-48B2-411B-434B-D29B02BB0066";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5410475730881914 13.594337463378906 25.023866653442468 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 1.5410475730881914 -13.594337463378906 -25.023866653442465 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown3CtrlRvsMultMD";
	rename -uid "42E4C7AB-4E17-AC2C-CEE4-059F517C8AF4";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown4CtrlPosGrpDM";
	rename -uid "EF7A60EE-400D-CBFD-7C7D-0E845DB751A0";
createNode multMatrix -n "RightEyeLidDown4CtrlPosGrpMM";
	rename -uid "71C97257-46A2-315E-C931-74AC5E6CB51D";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4046261310563417 13.317789077758789 24.83339118957533 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.99999999999999989 6.9388939039072284e-18
		 2.4046261310563422 -13.317789077758789 -24.83339118957533 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown4CtrlRvsMultMD";
	rename -uid "B9EA437B-4294-463A-B56C-0F990AF3E88E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown5CtrlPosGrpDM";
	rename -uid "2311B158-4274-86B9-B9A8-BA8233EC438D";
createNode multMatrix -n "RightEyeLidDown5CtrlPosGrpMM";
	rename -uid "09AEBDBE-41EC-971C-722B-C7B40EFD5C3B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.3368501663194188 13.541164398193359 24.554609298706243 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3368501663194188 -13.541164398193359 -24.554609298706243 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown5CtrlRvsMultMD";
	rename -uid "B1B04167-4A21-94F2-6C98-2B9F1E793C01";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown6CtrlPosGrpDM";
	rename -uid "467F1EC2-46BB-F9D7-F4DA-ADA2811C0C00";
createNode multMatrix -n "RightEyeLidDown6CtrlPosGrpMM";
	rename -uid "9C226B8D-4D2C-2DCF-81E4-4FB11FAA0B5C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9238643646226548 14.33940315246582 24.320398330688697 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9238643646226548 -14.33940315246582 -24.320398330688697 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown6CtrlRvsMultMD";
	rename -uid "053968B9-4B0F-681A-EE4F-5DA366F9CC0F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp1CtrlPosGrpDM";
	rename -uid "B5B94B61-4011-D933-564D-84A44223F295";
createNode multMatrix -n "RightEyeLidUp1CtrlPosGrpMM";
	rename -uid "3A61EE2E-4D69-520B-5E3E-E88064D24D88";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0082783699021511 14.820045471191406 25.113191604614315 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 -1.6453555708108478e-15 -2.7881243541265997e-15 0
		 1.3877787807814457e-17 0.99999999999999989 0 0 0 0 1 0 1.0082783699021511 -14.820045471191408 -25.113191604614318 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp1CtrlRvsMultMD";
	rename -uid "B9A02D64-40F8-4B86-115A-BCA523C25E23";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown7CtrlPosGrpDM";
	rename -uid "72ACC53B-4A11-8E20-5C95-FC9DE5DA6187";
createNode multMatrix -n "RightEyeLidDown7CtrlPosGrpMM";
	rename -uid "F434FF7A-41AF-B259-C8D0-FB9E5EBD172A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9740087985978767 14.858072280883789 24.278085708618388 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9740087985978771 -14.858072280883789 -24.278085708618388 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidSide2CtrlRvsMultMD";
	rename -uid "7FD8EA9A-4E88-2686-A096-0A9056A6186F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS";
	rename -uid "025CD4C1-4DE3-E53C-F16C-638B1C3156F4";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS";
	rename -uid "00E2C426-45A4-28EB-1219-BFBA408F5DDD";
createNode multiplyDivide -n "RightEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "314EB43B-4061-593B-B805-918EF1098A9B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "3719161F-41DE-CBE7-7617-669131D51A0A";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS";
	rename -uid "B12CCDBC-4DB7-158A-A836-C08D873AAAA9";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS";
	rename -uid "0B93BB47-452F-3B19-D34B-13909C00D86C";
createNode multiplyDivide -n "RightEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "210BF0EA-4D78-850F-3DB5-5DAC7606C513";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS";
	rename -uid "173EDBA9-476A-715E-7A66-4DACF7ACEAD6";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS";
	rename -uid "6BFC871D-4F68-7F81-B5F2-E5B32168CE30";
createNode multiplyDivide -n "RightEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "BE6368FF-417C-135F-FBC7-68AB1D659298";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS";
	rename -uid "794E95F3-45D9-127B-42CC-DDA4D2604B8C";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS";
	rename -uid "C4353B58-4AB1-C626-89C9-7293BF48FC00";
createNode multiplyDivide -n "RightEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "B19494BC-40FF-7FC5-7936-1F9149AABD2C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS";
	rename -uid "F06E4D61-43AB-7C33-7AEC-29B163C4603D";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS";
	rename -uid "7D820970-4208-0428-F219-468B504994A1";
createNode multiplyDivide -n "RightEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "235CD9A7-499C-C1BE-8114-D097C482C885";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS";
	rename -uid "3A0AF539-4C0A-E9B7-D14E-13B2380C72B2";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS";
	rename -uid "E62B4CE3-4432-1C53-13FC-57A6E52FDEE4";
createNode multiplyDivide -n "RightEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "A1F42971-4E0C-3E28-BB31-3DA24B9E3654";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidInLocPS";
	rename -uid "6768CA65-419E-222F-80F1-A7B35DDC05CE";
createNode closestPointOnSurface -n "RightEyeLidInLocCS";
	rename -uid "A367393C-4672-3EE6-4727-888F8C30B430";
createNode multiplyDivide -n "RighteyeLidInCtrlRvsMultMD";
	rename -uid "74C8B9DA-492E-BB78-1ABB-2FBB5D9EB705";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "06B838DF-48C5-6FBB-CFAA-58ADD6944428";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidUpLocPS";
	rename -uid "3A2F9BAD-4BB5-100D-79EF-1BA933C575EF";
createNode closestPointOnSurface -n "RightEyeLidUpLocCS";
	rename -uid "7D93AC85-4B1E-893A-C369-2494664FB52B";
createNode multiplyDivide -n "RightEyeLidUpCtrlRvsMultMD";
	rename -uid "76D24DCC-483F-7350-0717-97A4F0662F8D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "E063FFEE-45AE-EA91-01AF-48BCCD459194";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutLocPS";
	rename -uid "C3067944-4011-563F-70EE-AFA7A6591F88";
createNode closestPointOnSurface -n "RightEyeLidOutLocCS";
	rename -uid "A00BAE42-40C5-16C3-F3F9-418DFA1854C1";
createNode multiplyDivide -n "RighteyeLidOutCtrlRvsMultMD";
	rename -uid "0153A27A-4A96-F852-56D5-47BBB7DD8EED";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidDownLocPS";
	rename -uid "367F135D-4F44-8D2F-B8BA-19BC82166E14";
createNode closestPointOnSurface -n "RightEyeLidDownLocCS";
	rename -uid "F7E3E65C-4464-C7C8-D387-0CB842D0783E";
createNode multiplyDivide -n "RighteyeLidDownCtrlRvsMultMD";
	rename -uid "536BFA4A-439E-05D9-8D3B-F5BD69E43BBB";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "E9B46E03-42E9-87EC-282C-67A28CD4B2FA";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "LeftEyeLidRootModeRvs";
	rename -uid "468E61AE-4770-55CC-CF54-1E8D023E4FCE";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl0PosPS";
	rename -uid "AC0159A4-4EE3-0919-B2E4-33AADF881A77";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl0PosCS";
	rename -uid "211C89FE-4CCC-FA0E-C90F-7693CFEA286D";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "09884D21-4690-2BEA-E8B0-0C9D9B2EE435";
createNode multMatrix -n "LeftEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "D1826B60-451F-19AF-3584-7990EA27763D";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp1ZAL";
	rename -uid "C6EB7861-45ED-9174-E5CF-ABA3DC1B151E";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp1ZML";
	rename -uid "A52EF0E0-42C9-E5E9-C5D2-FCAC33818A33";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl1PosPS";
	rename -uid "834B1F3E-475A-7D62-CB9E-AE882F385792";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl1PosCS";
	rename -uid "9BDADFF9-43ED-E007-EAAA-058F4AF92543";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "2EE2A8BA-4C65-D254-01CA-308A44290032";
createNode multMatrix -n "LeftEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "48BD6107-49C8-0990-3F3E-BF9447018036";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.587043409970982 0.48797602631460396 2.5934855848001748 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp2ZAL";
	rename -uid "28231512-474C-5B4B-DF1D-53A4A11B0153";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp2ZML";
	rename -uid "6C26870B-4C6C-5CD6-2E0A-7BA1DCAA6964";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl2PosPS";
	rename -uid "15B563B5-4DA1-39F0-DBD3-56B64FA5526B";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl2PosCS";
	rename -uid "FC3C0179-40FB-6EAE-E809-70AD66EDD38D";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "7F2CE8A7-4478-5877-51A8-EBB0D47F3B78";
createNode multMatrix -n "LeftEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "3498E1AB-4312-590C-B994-F08536380D5F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9031894509306093 1.3252189480909276 2.4528664790148569 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp3ZAL";
	rename -uid "5CA3D5F8-49AC-2202-4AAC-A89BBB1F1CEC";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp3ZML";
	rename -uid "0601D28A-42BB-95E1-E521-BD9485E38D93";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl3PosPS";
	rename -uid "B5B73896-46F8-5EE6-39A7-3899B98A59F5";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl3PosCS";
	rename -uid "4C6F275F-41BC-D478-468B-81B51ADA7B60";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "B50971FE-49D5-8B6C-FE7A-E9ACE9B999E8";
createNode multMatrix -n "LeftEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "21EBDADD-4C5E-7FD3-D07B-59860B2A1DA9";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000445700983 1.7755272619269271 2.4140850883153409 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp4ZAL";
	rename -uid "FE787703-4864-8E94-35F4-0A901C0B4019";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp4ZML";
	rename -uid "6EFCEEE7-40FF-FD41-8A16-FFBF24FD5D1D";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl4PosPS";
	rename -uid "3344C257-4184-29CB-ECF1-2F9600E9D082";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl4PosCS";
	rename -uid "BC214E5B-4926-31B1-7A8A-109E2FE10BE4";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "FD795D56-41E6-3C5C-F190-BABF65E59FDD";
createNode multMatrix -n "LeftEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "5D87A0C9-4579-85C0-5E7D-13894A882DBF";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.273982986082383 1.2921419141502111 2.3853931082740627 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp5ZAL";
	rename -uid "3C63F6D6-465A-F6FF-4A8B-F4B743E3D9C8";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp5ZML";
	rename -uid "A2F850D6-474A-DED5-0B18-A1B86C1C6FBC";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl5PosPS";
	rename -uid "FB7FDDA4-4483-C739-54F5-BCB6EC30EF0F";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl5PosCS";
	rename -uid "6FB00BDC-4E7C-C68C-883E-A0AFACF050F7";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "FA9A55AF-48C5-775C-DEAB-4FBB90880A77";
createNode multMatrix -n "LeftEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "324D62FD-45FB-5D12-4308-59880C12E43F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7634543609654862 0.44871324698002157 2.3804159618505771 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp6ZAL";
	rename -uid "7ACAF651-4D54-E72A-7616-159389AF143C";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp6ZML";
	rename -uid "98B4AB2A-44FA-875C-9268-D999A6468407";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl6PosPS";
	rename -uid "0D5C1DD3-469F-6C71-029D-0BB4F039F642";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl6PosCS";
	rename -uid "98D11C61-43FF-7A49-FC43-91BC799DEF10";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "51C67655-4887-2626-66E0-1EA62F66DD32";
createNode multMatrix -n "LeftEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "A3D77979-42D6-9710-C759-EB92B4BEB434";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp7ZAL";
	rename -uid "9B2692A2-463B-6745-CEB2-DE9A6DCE5A77";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp7ZML";
	rename -uid "CDFFF0E9-4E3E-3725-08A6-AD8B44EBAE32";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl0PosPS";
	rename -uid "75AF93B3-4A6B-7428-4F49-148FCF5EE6AB";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl0PosCS";
	rename -uid "D93F43BB-4909-7AEE-DCA4-DDA4524AE386";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "4A9D4770-4012-FC29-9C19-51AB63FABC5B";
createNode multMatrix -n "LeftEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "A124AB20-4B20-4781-CBB9-F28350A2744A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown1ZAL";
	rename -uid "C7D18FB9-4AF8-515E-7B92-168013C6FB65";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown1ZML";
	rename -uid "9BFCFE33-4167-6DD4-6998-F4B1EA77F217";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl1PosPS";
	rename -uid "90F201B6-4054-2403-7423-8BAD3B35CBF5";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl1PosCS";
	rename -uid "94D8D108-4BA5-1EE3-8A49-5395F18A101D";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "0BED3821-4088-9A9C-A42B-F2A40012430D";
createNode multMatrix -n "LeftEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "2ECA2332-49CB-B266-CABD-238019DA3778";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.5910121019054044 -0.46835993238400825 2.5992124607449685 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown2ZAL";
	rename -uid "B83343C5-44D8-A258-7445-07B07C277B19";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown2ZML";
	rename -uid "DB627DC0-4758-36AB-B128-3FAF9486A641";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl2PosPS";
	rename -uid "022A2AEC-41E8-46D2-995F-4C9D27321DAD";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl2PosCS";
	rename -uid "2E3AEDEA-4CFE-EE26-0AFD-4EBE0F1410C9";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "7D12B839-418A-A2FA-132C-0BBC8A01AB3B";
createNode multMatrix -n "LeftEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "27E69721-4F52-96D4-9E66-55818FB71D22";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9054410584200565 -1.2774549718480275 2.4787015409260404 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown3ZAL";
	rename -uid "5D2DDC2C-48C0-E0A8-1E9E-A2B3A38C60F0";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown3ZML";
	rename -uid "4233A295-4A0F-C4F6-0F93-5997C58A1327";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl3PosPS";
	rename -uid "1A27D810-4FA7-8400-0E65-6A84923028FD";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl3PosCS";
	rename -uid "0581A5BC-4E48-3092-72C3-9387E7CC5BC1";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "C2E4830F-4610-15D1-8CEA-68A3F58199BE";
createNode multMatrix -n "LeftEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "87D9A2E8-4825-7546-9F30-0E9FC0DED2C9";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000277964594 -1.7096859157890627 2.4603377129103148 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown4ZAL";
	rename -uid "93147E2E-4D41-6795-6250-5FB0584361A6";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown4ZML";
	rename -uid "17CBE5B9-41F7-A5E1-517A-AC901B9C917F";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl4PosPS";
	rename -uid "0CAF4333-43FD-EE47-9709-FAA54549B86C";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl4PosCS";
	rename -uid "C21B3E0E-4F23-16ED-3C70-BFBA4F591947";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "5A908F8C-45E1-DC20-F14B-B1AF7ADDBDFB";
createNode multMatrix -n "LeftEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "6C700922-4A74-23BE-DCE0-D980BF93EC70";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.3472019913733959 -1.214548023404677 2.3858353840180135 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown5ZAL";
	rename -uid "8527EA2C-46A8-464C-93F7-38B89A5B4C25";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown5ZML";
	rename -uid "2545DA1D-4E3E-626D-DCC9-549F694CDF73";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl5PosPS";
	rename -uid "A43815FA-4A83-12C6-A33D-A1BE0C033D3C";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl5PosCS";
	rename -uid "EC53413D-460A-7A14-ABF5-CEB6A5AC1510";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "E5012A18-4CBA-FA71-E6AB-2C9BC3C76BE2";
createNode multMatrix -n "LeftEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "BE2C9082-4CA1-FCDB-B1C5-C19660967335";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7899324080594177 -0.41762382241756674 2.3666027814698745 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown6ZAL";
	rename -uid "3CCC2246-4BD4-04E7-4E90-D79A6168AA31";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown6ZML";
	rename -uid "BF3284D9-4ADB-FF48-F102-D683A845C133";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl6PosPS";
	rename -uid "3D0E677C-4078-C600-B12C-929E271A133C";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl6PosCS";
	rename -uid "60AE14D5-42F4-2FE1-6174-A6AF91AE9B8E";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "66E3C54C-48DB-3A65-DD30-8095374AE37C";
createNode multMatrix -n "LeftEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "88818CB1-4FF8-F35A-042C-8DA0425DD9C1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.8288059023159726e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown7ZAL";
	rename -uid "079521E7-40DE-B027-E919-64BBB4ED0F76";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown7ZML";
	rename -uid "EF8AA657-49CB-DEB6-8C37-3C981C2B2676";
createNode multDoubleLinear -n "LeftEyeLidOutUp1CtrlZML";
	rename -uid "42B2C305-4398-9F76-0FCD-6EB67C0780A0";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutUp2CtrlZML";
	rename -uid "0488D55E-43D9-AC76-064C-1DAAC7D8A0EC";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutUp3CtrlZML";
	rename -uid "13C38BB9-4065-4432-39EA-B4A291288A5A";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutDown1CtrlZML";
	rename -uid "25E7EA33-4BBA-F9AD-D071-73B721168380";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutDown2CtrlZML";
	rename -uid "FABB886C-4CC7-A150-06A2-958B40E08FC8";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "LeftEyeLidOutDown3CtrlZML";
	rename -uid "56C49916-4476-6F9B-2B45-8697295D0244";
	setAttr ".i2" 0.1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC";
	rename -uid "ED958384-4CD9-B3F8-36DC-20BD5A1A72E9";
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC1";
	rename -uid "DF626B20-4BDC-2FCB-0ECB-F79332633A3A";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC2";
	rename -uid "041B5D1E-47E4-DC82-CDDC-5AB305CCDD3E";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC3";
	rename -uid "020DD2FC-40F9-33F7-AADE-4B9EC7794F2A";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC4";
	rename -uid "1F010387-48F3-2D84-0494-3C81A3E12349";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC5";
	rename -uid "7B64E9EE-41F6-A94D-1166-B1BECD751E6F";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC6";
	rename -uid "CED01971-41E6-3DD0-F241-45935E038F22";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC";
	rename -uid "7EFE2A59-4F43-1284-EE31-3EA4BECC6843";
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC1";
	rename -uid "E9A3F05E-4AFF-9582-9F27-7F9DBAF379A2";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC2";
	rename -uid "EB46EDAC-458F-C6C4-697A-DBB7F5294581";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC3";
	rename -uid "28665E9E-40E1-0AA2-2DBB-758DCE484CE6";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC4";
	rename -uid "BA733FF7-4E31-1B3E-455B-C2A53534C8AC";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC5";
	rename -uid "70437502-4A38-3A10-09FD-CFA79B2C1D67";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC6";
	rename -uid "452AEFFB-4C80-D23F-47F2-E984C098B583";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC";
	rename -uid "89E85EED-4324-C12B-69FF-FFB206340A7D";
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC1";
	rename -uid "81158182-4A2C-49F6-DA70-10AE8FC9056F";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC2";
	rename -uid "FF2FA262-4AD1-58FE-9838-D2981BA99A4C";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC3";
	rename -uid "107842FC-4E84-78D8-5180-8489B8BEA10A";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC4";
	rename -uid "2AE3400E-42F7-8BA1-72B6-8B9AC9B84F47";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC5";
	rename -uid "AA3A07F0-4973-7D90-EF46-E2A83A926EBA";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC6";
	rename -uid "0CF92AB6-460D-8B47-E680-66BA82405643";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC7";
	rename -uid "8A44A39A-41F4-79AE-F477-31AE6E75CBAE";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC8";
	rename -uid "DF14ACCA-474A-36DF-7FC1-2C9749E51A42";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC9";
	rename -uid "C7C3F274-4A8C-BA26-0164-698BE96EF476";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC10";
	rename -uid "AFAE0D32-4B8E-D5A2-2140-70A0931877C2";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC11";
	rename -uid "6517BD00-497C-3AEF-14D8-95A2FD145BD6";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "FD7F9057-43CE-6474-2371-73A9BA653D83";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "LeftEyeBallffd";
	rename -uid "B56AE941-4B8C-272C-8FA2-EA8EAE64477D";
	setAttr ".lo" yes;
createNode objectSet -n "LeftEyeBallffdSet";
	rename -uid "E09CED8E-45B5-8885-B398-FA8C819E744C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId4";
	rename -uid "E7C90AD1-4EAD-DF29-FBDA-0F9DF6AB2015";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts4";
	rename -uid "3BED6716-4CB3-5255-AD90-8E8ECBD42ED8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "C98F1B22-4CD0-E378-70F0-0FB009DA94C9";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
	setAttr ".s" 16;
	setAttr ".nsp" 20;
createNode pairBlend -n "LeftEyeLidOutUp1LocOffGrpPB";
	rename -uid "FF876BB8-4700-DC0A-CE4B-1E9998926898";
createNode pairBlend -n "LeftEyeLidOutUp3LocOffGrpPB";
	rename -uid "23D12B59-4385-6AAC-2FF8-C4A3CA04D9C6";
createNode pairBlend -n "LeftEyeLidOutDown1LocOffGrpPB";
	rename -uid "209C61D2-4DA6-0689-BEC6-C29B28DC648B";
createNode pairBlend -n "LeftEyeLidOutDown2LocOffGrpPB";
	rename -uid "5BEE3D51-46DB-2500-9BB0-E18ADCD11FAC";
createNode pairBlend -n "LeftEyeLidOutDown3LocOffGrpPB";
	rename -uid "4FF06934-4AD7-F4AE-0627-0B97DD1B7434";
createNode reverse -n "RightEyeLidRootModeRvs";
	rename -uid "1B5B9A62-4650-ECD7-8B5C-A0A75ABA0BA4";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl0PosPS";
	rename -uid "7AA5750A-423E-2AA6-305C-AF9DAF6502BA";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl0PosCS";
	rename -uid "127BEA35-451D-8E42-AD9A-7FAE8372A9EC";
createNode decomposeMatrix -n "RightEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "188322D6-4CA2-E554-5E0A-709C6C3AFBC0";
createNode multMatrix -n "RightEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "3756D0A1-4A1B-AE15-3FCB-9C9AED41752E";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp1ZAL";
	rename -uid "5B5518E1-49B6-A9F2-1C60-BC9105F4183F";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp1ZML";
	rename -uid "F99B9003-43D8-7163-465A-1DACEA510CE6";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl1PosPS";
	rename -uid "52148283-4BD1-D0F3-85FA-45B30D4B726C";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl1PosCS";
	rename -uid "0A7422E7-43A0-04F1-D12C-3D9DA7393344";
createNode decomposeMatrix -n "RightEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "2D840841-44A0-D0C1-D900-85A226FC78D9";
createNode multMatrix -n "RightEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "F2829E7D-4B78-7AD3-3C63-6BA124FB093F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -1.5870433543837399 0.48797602631153841 2.5934855848005234 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp2ZAL";
	rename -uid "68EAB594-4540-DFC4-4846-6EB59005F734";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp2ZML";
	rename -uid "8963DE7A-4828-3581-E3C0-D2B7F34E5002";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl2PosPS";
	rename -uid "333DB7FB-4795-1514-C31F-CFB9F240AEDC";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl2PosCS";
	rename -uid "D74801DC-4E72-B16A-C355-FABA500817D6";
createNode decomposeMatrix -n "RightEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "CEA8C34F-42D7-963D-5EB4-B69332144D88";
createNode multMatrix -n "RightEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "4947EDAC-4D25-005E-3275-CDADFA7999E3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999967 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -1.9031893953450296 1.3252189480875742 2.4528664790155923 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp3ZAL";
	rename -uid "5707EF02-4072-C708-6D69-06A38A365FBA";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp3ZML";
	rename -uid "97108FBF-4A88-9EB6-E0DD-E59E83AB38B0";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl3PosPS";
	rename -uid "40A7923C-4121-3AE3-7DCC-12B684EAF949";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl3PosCS";
	rename -uid "7D54E527-4FC5-8E75-2BB8-5196AB7C13C3";
createNode decomposeMatrix -n "RightEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "9724EF9F-48DE-C770-B4BF-7B8D82B77CB6";
createNode multMatrix -n "RightEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "42E7913B-42FF-F38B-288D-8DACDAB02425";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -2.9999999722071293 1.7755272613334676 2.4140850887411993 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp4ZAL";
	rename -uid "3553A457-4E2E-A2BB-4794-C3B420B1AAA4";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp4ZML";
	rename -uid "4490482B-43EB-247D-CE8A-68BC4D5BDA8C";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl4PosPS";
	rename -uid "1F542199-4003-DF72-F2C6-FAA8E7B279E0";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl4PosCS";
	rename -uid "9E6A1C96-4E22-CFD7-65C7-A2BA6CA59881";
createNode decomposeMatrix -n "RightEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "E1696D2C-4326-BEA7-6B3D-D0B144EC41BE";
createNode multMatrix -n "RightEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "7C6620B9-4A68-72E7-08E8-20A6104E66FE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.2739829304973034 1.2921419141418244 2.3853931082748776 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp5ZAL";
	rename -uid "3181C1B3-428F-E9F5-16E0-E8B523402615";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp5ZML";
	rename -uid "092A246A-45E8-ED51-74E4-5E8B736E7C76";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl5PosPS";
	rename -uid "153FAA3B-47C1-2F7C-F113-6CBD34D58D98";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl5PosCS";
	rename -uid "CBDD1BAC-4DEE-10E2-161D-25A0072C8172";
createNode decomposeMatrix -n "RightEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "7C1A9223-4200-AC52-CE78-34BC37C508DF";
createNode multMatrix -n "RightEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "B1A9EBDA-4E78-7A0C-6B25-1C84176B8B66";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -4.7634543053784713 0.44871324697028847 2.3804159618510421 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp6ZAL";
	rename -uid "91BD4D74-4D21-EF96-A323-3495AE0CA1BD";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp6ZML";
	rename -uid "EE18628A-48CA-80E9-6187-7DBDE26DDF63";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl6PosPS";
	rename -uid "11C0AE28-4A0C-4354-A498-06B13177CA83";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl6PosCS";
	rename -uid "AB24C915-471B-3137-8BE9-B4B36C2A9334";
createNode decomposeMatrix -n "RightEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "287991D6-4895-3B33-C6B7-FA973A97C6AA";
createNode multMatrix -n "RightEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "0B2968BA-4EEF-30FD-62EA-8C8F661EEBD6";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp7ZAL";
	rename -uid "27C028A2-4397-1C13-29EE-FCA38EE64DF5";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp7ZML";
	rename -uid "C5BBE142-40ED-BDD6-85F0-2C90D7CC98A9";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl0PosPS";
	rename -uid "8B72A46D-498C-2AAF-5B00-F6A64F1C6A1E";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl0PosCS";
	rename -uid "A9FE3EC1-43F7-4AB6-BCCE-E08B706BEB37";
createNode decomposeMatrix -n "RightEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "5B9DAB82-4EFB-E471-2F11-4884F6C75C1C";
createNode multMatrix -n "RightEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "3D88C98E-483E-CED3-C7A2-6686D384C04F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidSide1ZAL";
	rename -uid "145AE2F7-4D66-CA8F-709B-468008CF6E13";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown1ZML";
	rename -uid "A5CA54E2-4FAA-3EA6-573E-80A7703D3C23";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl1PosPS";
	rename -uid "7DFD42A3-4033-9432-8EFF-64BEF8E1F18F";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl1PosCS";
	rename -uid "B6D49B66-4901-3D33-98E1-46BA8345040B";
createNode decomposeMatrix -n "RightEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "3AA7031E-480E-083F-D120-2D88302E7C4A";
createNode multMatrix -n "RightEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "4A6A7867-4FA9-A738-556C-D1A9878B2658";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575642e-13 0.99999999999999956 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999956 0
		 -1.5910120463163866 -0.46835993238709095 2.5992124607448015 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown2ZAL";
	rename -uid "EB1543FC-4D2D-A570-36EA-50AB91496D6E";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown2ZML";
	rename -uid "2CB55395-4EDF-6F8F-E227-53B6C0C4A1BC";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl2PosPS";
	rename -uid "29F52C44-4424-8BB4-641B-B49CFA1BFABB";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl2PosCS";
	rename -uid "53C6AB47-40FB-1839-3D1C-289BA279A236";
createNode decomposeMatrix -n "RightEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "F9B2E98C-4842-8EF0-7FEF-6E99D5A14BDE";
createNode multMatrix -n "RightEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "D43B6546-46A1-23F4-C0EF-EA8972B1B487";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999956 -3.5682568011452521e-13 -4.0002043607102428e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -1.9054410028294466 -1.2774549718514276 2.4787015409255191 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown3ZAL";
	rename -uid "178542F2-4702-9422-7F38-38A54E5E8B84";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown3ZML";
	rename -uid "342950A0-40A6-3226-58F8-90A703299698";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl3PosPS";
	rename -uid "2A154E3A-45B2-FC12-91F4-ACAB64649125";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl3PosCS";
	rename -uid "62DC378C-41CA-EAFC-D714-04BA28C1B2F8";
createNode decomposeMatrix -n "RightEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "F6D2680E-4E63-603E-D239-4C98A10C68C9";
createNode multMatrix -n "RightEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "FCEA634B-469F-F748-E6F7-85B70B2D4B33";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -2.9999999722046384 -1.7096859142164216 2.4603377139873359 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown4ZAL";
	rename -uid "7AF83F8F-4E15-1FCF-D34C-7A96AC4BAFAC";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown4ZML";
	rename -uid "293B22AE-48B8-5916-CE63-968BEFA397D2";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl4PosPS";
	rename -uid "610DB842-463F-E19E-0964-32BC070F95B3";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl4PosCS";
	rename -uid "A477C291-4BF3-FD94-DC62-50887621B36C";
createNode decomposeMatrix -n "RightEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "7DB057D6-4FB3-4499-C35E-76A4B1009C63";
createNode multMatrix -n "RightEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "DD2A18EC-460F-2623-82C1-FF810B024831";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -4.3472019357823726 -1.2145480234132673 2.385835384017704 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown5ZAL";
	rename -uid "A7234D50-4575-FDCA-38CB-2D8894DAA93B";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown5ZML";
	rename -uid "B6849FCD-4FC2-B4FE-4575-77A782B74962";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl5PosPS";
	rename -uid "BB370C6D-4DBA-E475-6A38-C8934D1A505C";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl5PosCS";
	rename -uid "3260551C-458D-0577-6EAF-B995F79951FB";
createNode decomposeMatrix -n "RightEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "54B12A5A-40E4-7A02-5C15-9EB54E0CE851";
createNode multMatrix -n "RightEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "4F7D070A-43F2-2F6E-A3C6-B1A5433DF19B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.7899323524702435 -0.41762382242735163 2.3666027814699473 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown6ZAL";
	rename -uid "B7A41831-4B2A-D39A-AAF6-3AB76515CC77";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown6ZML";
	rename -uid "8BB61143-42BC-6E8B-D019-9DAB18DA880A";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl6PosPS";
	rename -uid "E22E8AFD-413A-D84D-D6E1-BE9686564552";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl6PosCS";
	rename -uid "16910CA0-4BF8-2AAD-E760-E3A7ED335E32";
createNode decomposeMatrix -n "RightEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "432DBB05-4B24-1606-0E99-5BAA98FB75FD";
createNode multMatrix -n "RightEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "22A96C97-4E19-0899-A1E0-6A8B7B1181F3";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown7ZAL";
	rename -uid "546ABC66-44F2-D31B-47B8-A19286208BE6";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown7ZML";
	rename -uid "0A961F4D-456F-422F-D4BE-A18134F1EF1C";
createNode multDoubleLinear -n "RightEyeLidOutUp1ZRvs";
	rename -uid "33DDAF1A-47C9-69C8-4864-FD9BB880BA9F";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutUp2ZRvs";
	rename -uid "BA6911DB-474E-256C-B4A5-7B99A2583403";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutUp3ZRvs";
	rename -uid "F3E71610-46E8-1200-F7A3-23BA567522A5";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutDown1ZRvs";
	rename -uid "BDF9B557-4D65-EBC3-97F6-7483E9F17A8D";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutDown2ZRvs";
	rename -uid "76A5F8CA-44FA-8F09-126B-6A9A25A29AA5";
	setAttr ".i2" 0.1;
createNode multDoubleLinear -n "RightEyeLidOutDown3ZRvs";
	rename -uid "DB8CF968-4413-7FAD-4C9B-2A83DB30C117";
	setAttr ".i2" 0.1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC";
	rename -uid "A336666F-4DF6-5FBD-AB30-CFBF20D2B959";
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC1";
	rename -uid "B550E7F4-4FBC-7A5E-9EE7-4787D57491D1";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC2";
	rename -uid "BF42AE0D-467A-2A79-5389-50A7FA9E0897";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC3";
	rename -uid "697CA497-4B69-2262-E7F7-419E0C3A5B73";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC4";
	rename -uid "5E9A68B6-4950-B943-9EA8-249783A825F8";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC5";
	rename -uid "15FE331E-4AE5-B079-A848-2CA100A0B27E";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC6";
	rename -uid "0654FD67-4166-4412-F424-DE9B759FE72F";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC";
	rename -uid "A20D15F5-42B1-D105-27EB-6D859248D8DC";
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC1";
	rename -uid "9CC71709-42B4-EA78-3A51-71A1E2B42A9A";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC2";
	rename -uid "2CA0A5E3-4A9F-9F26-CAC2-988EF20176C2";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC3";
	rename -uid "A1401998-4783-64BB-A45D-4EB42B84AC2D";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC4";
	rename -uid "26810740-4AD2-464C-3256-AEA4014DD2C8";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC5";
	rename -uid "C35C86D9-45EB-3B63-D051-E793E81C22AA";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC6";
	rename -uid "7A0281AC-4FFD-4C99-2459-D589E0B3F754";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC";
	rename -uid "2AD1B5D5-44B7-BE18-81A1-DD8BC30950B1";
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC1";
	rename -uid "315AC51C-4D6E-C8DB-7C4E-9B910B596597";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC2";
	rename -uid "13316260-456C-6A46-7AF4-19826D407141";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC3";
	rename -uid "341F45FB-458C-D3C2-D819-A79D6296D443";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC4";
	rename -uid "6BEC2E04-4F67-AAB9-7113-38BD7E54C070";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC5";
	rename -uid "BB354960-472B-394B-63CB-19BC207BF859";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC6";
	rename -uid "49E212E2-49AA-802C-6F63-339D8700907F";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC7";
	rename -uid "05B36DDA-45E5-B0C1-061D-7484837AB9BF";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC8";
	rename -uid "B46377B9-4F22-C611-02D6-1FACCA301A39";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC9";
	rename -uid "7275AF59-4BC7-FEB4-9299-9897DB84F8EC";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC10";
	rename -uid "DAF05B34-4A36-564F-BB71-A0BB15DDBA9D";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC11";
	rename -uid "38C38853-44D2-4F0E-DEC5-6B991EA4D8ED";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "3B9AFE09-44F4-4896-4890-A5949A5563D3";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "RightEyeBallffd";
	rename -uid "0A035E97-4F5D-D0D4-3C19-C7AB9AA757E0";
	setAttr ".lo" yes;
createNode objectSet -n "RightEyeBallffdSet";
	rename -uid "471DFACE-4939-2830-162B-F4BF24F2F738";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId5";
	rename -uid "655584D7-48AE-03E4-244D-F79C90C58BE7";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts5";
	rename -uid "85EB1E3D-490C-9B4B-4A66-FD8C19497A24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "7F2A6695-46FB-696E-8B18-168D7A647E48";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
	setAttr ".s" 16;
	setAttr ".nsp" 20;
createNode pairBlend -n "RightEyeLidOutUp1LocOffGrpPB";
	rename -uid "2EEEDC59-43D5-29C9-1FC3-8F8F5A5D59E4";
createNode pairBlend -n "RightEyeLidOutDown1LocOffGrpPB";
	rename -uid "1BDE191E-49AA-CF51-5154-4FB6B759F9B9";
createNode pairBlend -n "RightEyeLidOutDown2LocOffGrpPB";
	rename -uid "D0236944-411C-EBC0-30E2-26A7A5B09445";
createNode pairBlend -n "RightEyeLidOutDown3LocOffGrpPB";
	rename -uid "E164DB7C-46B1-74EF-AA1C-29A93943F020";
createNode cluster -n "LeftEyeCorneaClsCluster";
	rename -uid "3461355D-44CF-B2B2-C86E-369948FA0EC7";
	setAttr ".gm[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -2.2204460492503131e-16 2.2204460492495203e-16 1 0 3.5726976932437548e-13 -1.0000000000000002 2.2204460492503131e-16 0
		 3.0000000277940018 9.510170528238658e-13 -2.8865798578538989e-15 1;
createNode objectSet -n "cluster1Set";
	rename -uid "74A5B740-4F7D-DDAE-AD35-C8B7496F2597";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "BA627DBC-47B4-CE00-7064-289D76EF1428";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "A4C34249-457D-E71F-3E69-5E92407C4546";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[20:22][0:15]";
createNode cluster -n "RightEyeCorneaClsCluster";
	rename -uid "2EB6037E-43CE-A871-B118-D699025F1D21";
	setAttr ".gm[0]" -type "matrix" -0.99999999999999978 -3.5726976932437527e-13 5.6054820366118173e-14 0
		 5.6054820366118173e-14 2.2204460494505797e-16 0.99999999999999978 0 3.5726976932437532e-13 -0.99999999999999989 2.2204460492503126e-16 0
		 -2.9999999722059973 -1.192601563122386e-12 1.6461174742572555e-13 1;
createNode objectSet -n "cluster2Set";
	rename -uid "0DB60BD3-4A7F-4170-8624-DCAA746F497C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "C86923AA-4E17-9679-1590-1E83EC7641E2";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "84732E28-43C8-B8E1-41D7-CB90F0705AAB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[20:22][0:15]";
createNode pairBlend -n "LeftEyeLidOutUp2LocOffGrpPB";
	rename -uid "FBEAB3E8-4BFA-C5C3-7144-99A90150E39D";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM";
	rename -uid "58861397-42AC-5720-3BF0-77A5B6340000";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.000000027793106 2.5000000000009521 2.9999999999999889 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437548e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495208e-16 0 1.0000000000000004 0
		 -3.0000000475170303 -1.9999999999998812 -2.9999999387567673 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM";
	rename -uid "8E0BD7A8-490A-B1D1-ABA4-1A993EE858EB";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM1";
	rename -uid "2C682D5D-4852-D11B-4BCE-AA85AC31C25A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.0000000277931056 2.5000000000009521 2.9999999999999889 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -3.3306690738754696e-16 0
		 3.5726976932437553e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 0 1.0000000000000004 0
		 -3.0000000277940004 -2.999999999999881 -2.9999999999999889 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM1";
	rename -uid "5AD7792E-4EE5-A71E-5169-4FA726460E67";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM";
	rename -uid "E7E44EE6-468F-CBD4-2E9C-B79DB23BE893";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 0.75000002779355635 1.2500000000001485 2.9999999999999836 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437553e-13 1.0000000000000004 -1.0097419586828951e-28 0 2.2204460492495208e-16 0 1.0000000000000004 0
		 -3.0000000475170299 -1.9999999999998812 -2.9999999387567673 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM";
	rename -uid "2723F784-4832-4D1D-FC52-3AB8F12DC0A3";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM1";
	rename -uid "612E9564-4393-32BE-B282-F7B4E8578CE5";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 0.75000002779355635 1.2500000000001485 2.9999999999999845 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437563e-13 -2.2204460492505542e-16 0
		 3.5726976932437537e-13 1.0000000000000004 0 0 2.4980018054066022e-16 0 1.0000000000000007 0
		 -0.50000002779400365 -1.9999999999998812 -2.9999999999999849 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM1";
	rename -uid "78913C93-49AE-9DF3-0D87-08B0C5DB159A";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM";
	rename -uid "98052399-432D-142A-28EC-F1A087E9ACEA";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 5.2500000277935541 1.2500000000017562 2.9999999999999911 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437553e-13 1.0000000000000004 -1.0097419586828951e-28 0 2.2204460492495208e-16 0 1.0000000000000004 0
		 -3.0000000475170299 -1.9999999999998812 -2.9999999387567673 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM";
	rename -uid "B6D47733-4E63-97B5-5B7C-CF8F3DB3738A";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM1";
	rename -uid "6AF37F8A-44D3-E803-4318-D6B7B1DA7276";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 5.2500000277935559 1.2500000000017564 2.9999999999999911 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5721425817314412e-13 -3.3306690738754696e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.0097419586828951e-28 0 2.2204460492495213e-16 1.2325951644078309e-32 1.0000000000000007 0
		 -5.5000000277940053 -1.9999999999998814 -2.9999999999999916 1;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM1";
	rename -uid "66EF247A-486D-A056-E359-E28FB890F1AD";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM";
	rename -uid "8D299D86-4FD2-A783-230F-028E687AFB15";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495186e-16 -7.9329824781287955e-29 0.99999999999999944 0
		 0.75000002779444985 -1.2499999999998506 2.9999999999999902 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 2.4651903288156619e-32 1.0000000000000004 0
		 -3.0000000277940044 2.000000000000119 -2.99999999096043 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM";
	rename -uid "1E393558-4ABE-770E-0756-7C99085F8C37";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM1";
	rename -uid "89E6037C-4D57-ED20-030E-7E8D9F31471F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495186e-16 -7.9329824781287955e-29 0.99999999999999944 0
		 0.75000002779445074 -1.2499999999998503 2.9999999999999911 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437553e-13 -2.2204460492505596e-16 -1.2325951644078309e-32
		 3.5732528047560663e-13 1.0000000000000004 0 0 1.9428902930940239e-16 1.1102230246251565e-16 1.0000000000000002 5.5511151231257827e-17
		 -0.50000002779400388 2.0000000000001186 -2.999999999999992 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM1";
	rename -uid "02FA8782-40E1-5F25-34E1-158781DC53FD";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM";
	rename -uid "A22EC749-45F9-D665-5679-EABE90FA571D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.0000000277948957 -2.4999999999990461 2.9999999999999902 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 2.4651903288156619e-32 1.0000000000000004 0
		 -3.0000000277940044 2.000000000000119 -2.99999999096043 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM";
	rename -uid "C0AB020F-42FC-89E2-ACEB-4184D3348E43";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM1";
	rename -uid "7328DCF0-49A5-F591-8EB6-3FAF79DCB71A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999956 3.5726976932437522e-13 2.2204460492503121e-16 0
		 -3.5726976932437522e-13 0.99999999999999956 0 0 -2.2204460492495188e-16 -7.9329824781287966e-29 0.99999999999999956 0
		 3.0000000277948957 -2.4999999999990457 2.9999999999999902 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -3.3306690738754696e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -5.0487097934144756e-29 0 2.2204460492495205e-16 4.9303806576313238e-32 1.0000000000000004 0
		 -3.0000000277940044 3.0000000000001186 -2.9999999999999907 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM1";
	rename -uid "AAC13C7F-4380-AE06-A6A6-728510123947";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM";
	rename -uid "8B7946BA-4A28-D848-BEC6-AAA0230054A3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999933 3.5726976932437512e-13 2.2204460492503116e-16 0
		 -3.5726976932437517e-13 0.99999999999999944 0 0 -2.2204460492495183e-16 -7.9329824781287944e-29 0.99999999999999933 0
		 5.2500000277944476 -1.249999999998243 2.9999999999999907 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5715874702191286e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -1.5146129380243427e-28 0 2.2204460492495205e-16 2.4651903288156619e-32 1.0000000000000004 0
		 -3.0000000277940044 2.000000000000119 -2.99999999096043 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM";
	rename -uid "77FCC48D-465D-E49F-E83E-59BC5F5541DD";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM1";
	rename -uid "4CBC2E9F-4B1A-86D2-030C-AC8F0117C437";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999933 3.5726976932437512e-13 2.2204460492503116e-16 0
		 -3.5726976932437517e-13 0.99999999999999944 0 0 -2.2204460492495183e-16 -7.9329824781287944e-29 0.99999999999999933 0
		 5.2500000277944494 -1.2499999999982423 2.9999999999999907 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000004 -3.5726976932437537e-13 -2.2204460492503131e-16 0
		 3.5726976932437558e-13 1.0000000000000004 -7.5730646901217133e-29 0 2.2204460492495213e-16 0 1.0000000000000007 0
		 -5.5000000277940053 2.0000000000001195 -2.9999999999999916 1;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM1";
	rename -uid "CE848B9C-4EE0-7A78-6C4F-7EB6F1038275";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM";
	rename -uid "6D5785EB-4675-5663-9541-39BBD07561B3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -0.74999997220627668 1.249999999999611 3.0000000000000271 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5715874702191286e-13 5.6177285046032921e-14 -5.5511151231257827e-17
		 -3.5726976932437543e-13 1 2.0043377879855468e-26 -2.5243548967072378e-29 5.6054820366118268e-14 0 1.0000000000000002 3.1554436208840472e-30
		 -2.9999999919290241 -1.9999999999998792 -2.9999999387567642 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM";
	rename -uid "458F034E-4DF4-C8FF-4B08-F7966C894FA3";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM1";
	rename -uid "5888DEE4-4344-4D25-ABB9-AEA58A2F99EC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -0.74999997220627668 1.2499999999996105 3.0000000000000271 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437548e-13 5.6054820366118167e-14 0
		 -3.57297524899991e-13 1.0000000000000002 0 0 5.6094018319186034e-14 0 1.0000000000000002 0
		 -0.49999997220599812 -1.9999999999998792 -2.9999999999999853 1;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM1";
	rename -uid "ABA31B99-4F54-3AA2-9BA7-1FB305406A09";
createNode pairBlend -n "RightEyeLidOutUp2LocOffGrpPB";
	rename -uid "AC6EC7BD-4623-2EA9-BDC9-658451CCF66D";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM";
	rename -uid "3F6F775A-4C63-6490-405C-3E9956761595";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.9999999722067234 2.4999999999988072 3.0000000000001523 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5715874702191286e-13 5.6177285046032921e-14 -5.5511151231257827e-17
		 -3.5726976932437543e-13 1 2.0043377879855468e-26 -2.5243548967072378e-29 5.6054820366118268e-14 0 1.0000000000000002 3.1554436208840472e-30
		 -2.9999999919290241 -1.9999999999998792 -2.9999999387567642 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM";
	rename -uid "A6DC636E-4F65-00CE-B715-28B9529B96E2";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM1";
	rename -uid "6087F57D-4711-1CE0-F9F4-A98C22CD7775";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.9999999722067234 2.4999999999988067 3.0000000000001528 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.573807916268236e-13 5.5844218138647248e-14 0
		 -3.57214258174687e-13 1.0000000000000002 1.6653345369377267e-16 0 5.6177285046032921e-14 0 1.0000000000000004 0
		 -2.9999999722059991 -2.9999999999998797 -2.9999999999999853 1;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM1";
	rename -uid "00BF463B-4069-EDFD-8795-799873A56D1B";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM";
	rename -uid "1411AD5E-410B-D307-024F-FFA97F537335";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118249e-14 2.0026692741722337e-26 0.99999999999999967 0
		 -0.74999997220538317 -1.2500000000003886 3.0000000000000231 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437765e-13 5.595524027250408e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0068621368351957e-26 0 5.6288307348495437e-14 -1.1102230246251565e-16 1.0000000000000007 0
		 -2.9999999722059991 2.0000000000001212 -2.9999999909604278 1;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM";
	rename -uid "D61BF4F0-4E8F-4F30-7566-5CADE696ACB7";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM1";
	rename -uid "C405C423-4BFB-80B5-0F8F-0A97023EF796";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118249e-14 2.0026692741722337e-26 0.99999999999999967 0
		 -0.74999997220538317 -1.2500000000003886 3.0000000000000244 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437543e-13 5.6054820366118173e-14 0
		 -3.5726976932437537e-13 1 0 0 5.6066262743570405e-14 -1.1102230246251565e-16 1.0000000000000002 0
		 -0.49999997220599818 2.0000000000001208 -2.9999999999999818 1;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM1";
	rename -uid "8CED7981-4693-8132-361C-348B78968808";
createNode pairBlend -n "RightEyeLidOutUp3LocOffGrpPB";
	rename -uid "8802BF96-4810-BF00-52F2-D79286B67327";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM";
	rename -uid "50725A27-48FD-57D3-1A30-C9AEA9D60E5A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -5.2499999722062771 1.2499999999980034 3.0000000000002847 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5715874702191286e-13 5.6177285046032921e-14 -5.5511151231257827e-17
		 -3.5726976932437543e-13 1 2.0043377879855468e-26 -2.5243548967072378e-29 5.6054820366118268e-14 0 1.0000000000000002 3.1554436208840472e-30
		 -2.9999999919290241 -1.9999999999998792 -2.9999999387567642 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM";
	rename -uid "7066FEB9-4704-0BFD-D95E-F487C98583E5";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM1";
	rename -uid "6BB7BA7E-4F15-4A72-9695-779095DF37B4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -5.2499999722062753 1.2499999999980034 3.0000000000002847 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437537e-13 5.6066262743570405e-14 0
		 -3.5726976932437543e-13 1.0000000000000002 1.9967647232954251e-26 0 5.6054820366118255e-14 -6.3108872417680944e-30 1.0000000000000002 0
		 -5.4999999722059973 -1.999999999999879 -2.9999999999999911 1;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM1";
	rename -uid "7319F19D-445B-D803-B30B-03931265F673";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM";
	rename -uid "30808F0B-47DA-ED59-3795-5EBDF4798F67";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.999999972204936 -2.5000000000011919 3.0000000000001648 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437765e-13 5.595524027250408e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0068621368351957e-26 0 5.6288307348495437e-14 -1.1102230246251565e-16 1.0000000000000007 0
		 -2.9999999722059991 2.0000000000001212 -2.9999999909604278 1;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM";
	rename -uid "AA5B3FA1-4C63-931E-6A1B-D0973F0AD5A0";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM1";
	rename -uid "911D5A29-4C2A-161E-DE53-DCB032F547B4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -1 -3.5726976932437537e-13 5.6054820366118186e-14 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 5.6054820366118255e-14 2.002669274172234e-26 0.99999999999999978 0
		 -2.9999999722049364 -2.5000000000011924 3.0000000000001656 1;
	setAttr ".i[1]" -type "matrix" -1 -3.572142581731584e-13 5.5899729289876228e-14 2.5243548967072378e-29
		 -3.5704772471945034e-13 0.99999999999999978 3.3306690738754696e-16 -5.5511151231257827e-17
		 5.6054820366118274e-14 0 1.0000000000000004 0 -2.9999999722059969 3.0000000000001199 -2.9999999999999978 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM1";
	rename -uid "D6E041B2-4A21-8276-7CD5-959D296B6CE2";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM";
	rename -uid "853747FA-462D-6652-8D42-09ACD4DD26CE";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.99999999999999978 -3.5726976932437527e-13 5.6054820366118173e-14 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 5.6054820366118243e-14 2.0026692741722334e-26 0.99999999999999956 0
		 -5.2499999722053836 -1.2500000000019962 3.0000000000002882 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5726976932437765e-13 5.595524027250408e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0068621368351957e-26 0 5.6288307348495437e-14 -1.1102230246251565e-16 1.0000000000000007 0
		 -2.9999999722059991 2.0000000000001212 -2.9999999909604278 1;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM";
	rename -uid "E0D682CE-42F9-6FB5-4093-178A5018AA72";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM1";
	rename -uid "C837B429-4F13-7D17-F459-C1B8FEDB6EC0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.99999999999999978 -3.5726976932437527e-13 5.6054820366118173e-14 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 5.6054820366118243e-14 2.0026692741722334e-26 0.99999999999999956 0
		 -5.2499999722053836 -1.2500000000019964 3.0000000000002895 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5732528047560663e-13 5.6066262743570405e-14 0
		 -3.5726976932437537e-13 1 2.0018134330888396e-26 0 5.6054820366118262e-14 0 1.0000000000000002 0
		 -5.4999999722059973 2.0000000000001203 -2.9999999999999951 1;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM1";
	rename -uid "05D57D0B-477D-1EC8-0626-CD99A76DF95F";
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC";
	rename -uid "B9D322E5-4864-0607-41B9-A49F76DABBA4";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC1";
	rename -uid "0ED131B8-43D2-32BD-35F5-18AA1FF511FA";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC2";
	rename -uid "4BA2D601-421E-5E7A-0D5E-488D76B105B9";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC3";
	rename -uid "08D30AF7-41B4-2C0C-EAD3-FBA2DBCC8995";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpCrvPC4";
	rename -uid "58A2F358-4010-A796-ACFA-9899E55438A5";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC";
	rename -uid "70648758-44A6-FDE8-2C8B-2F91DD997ABA";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC1";
	rename -uid "93F7611E-411D-9132-42AF-7FB389530823";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC2";
	rename -uid "21ED5844-49D7-8F7C-9AD1-DB8B908420BF";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC3";
	rename -uid "2A24BB25-4E78-16A7-FE07-65AC46CE5713";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownCrvPC4";
	rename -uid "FF8AD5E8-4F5D-C40B-8F07-FA83A96B2436";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC";
	rename -uid "4595F2DC-498C-D6BA-32F8-C6A928532860";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC1";
	rename -uid "60C1D8CC-4E5A-75B9-5B81-8A896CB882BA";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC2";
	rename -uid "2D61EC66-49EB-6D53-7478-F1916EF9259E";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC3";
	rename -uid "AFE3F2EF-44AD-264B-D9A4-8BA45A19273A";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpCrvPC4";
	rename -uid "240D788E-4E54-1CB9-0D76-5892A738A812";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC";
	rename -uid "8EA559C1-4334-5220-61DD-EDA66FDD92C3";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC1";
	rename -uid "1D176F04-4A3C-FC04-0834-B7AF42D00225";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC2";
	rename -uid "12F11B48-4ADD-4D96-31A6-6A9960A240EA";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC3";
	rename -uid "D2348914-4276-FFBD-08EF-778098321906";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownCrvPC4";
	rename -uid "C3406C7D-4DA5-4D7E-46E3-889A9499B0CD";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv0PosCS";
	rename -uid "A3A50D04-420F-9447-9132-5183E82AB4E7";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv0PosPS";
	rename -uid "C840D18D-4260-96E0-8020-1AB688153636";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv1PosCS";
	rename -uid "9C77F9DF-4C3C-9C79-EE62-41A080B65C64";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv1PosPS";
	rename -uid "3C19D5D1-4210-CD2C-540D-2EA004D46232";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv2PosCS";
	rename -uid "8D42940C-4B3B-A5AF-3466-759A73276AA0";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv2PosPS";
	rename -uid "CDBE8BF5-4B0F-AC59-409A-79B43AC5E7D1";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv3PosCS";
	rename -uid "593D69AB-4C44-8E60-B25D-EA8181804243";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv3PosPS";
	rename -uid "EE5A63A0-4DBA-B3B4-7E50-AF8282DAF6C4";
createNode closestPointOnSurface -n "LeftEyeLidOutUpCrv4PosCS";
	rename -uid "3DA342CB-4ABB-9360-34BE-45A4C9A89AD0";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUpCrv4PosPS";
	rename -uid "999C61B4-4B42-EE41-8916-E89DBFCA5098";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv0PosCS";
	rename -uid "0765FC7E-46CA-1818-19EA-BA935F09C592";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv0PosPS";
	rename -uid "B141637D-4953-A908-7A43-A49A17533DA2";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv1PosCS";
	rename -uid "28C47EE0-42EF-DCDE-35E0-B4BA472A77AA";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv1PosPS";
	rename -uid "803C40DF-4B76-1068-E065-D68A11F735C1";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv2PosCS";
	rename -uid "16F00FA4-4C4F-9877-5B4E-119A0F75B1EA";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv2PosPS";
	rename -uid "68B0E68F-4BF0-1FA0-8591-5CB88E80AFD5";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv3PosCS";
	rename -uid "1CE1A808-4B17-44ED-AC8F-97A08AC9E935";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv3PosPS";
	rename -uid "3D4AF0F2-49EA-22BD-5B85-1397A5127AC2";
createNode closestPointOnSurface -n "LeftEyeLidOutDownCrv4PosCS";
	rename -uid "4D9CDEDA-4ECC-33A9-ACA4-049132669FA4";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDownCrv4PosPS";
	rename -uid "47EBFB07-4912-AA65-7EF2-AE83D7A06A47";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv0PosCS";
	rename -uid "CE38E257-4F78-3F42-AF7A-9DAF27B605DE";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv0PosPS";
	rename -uid "C4E79A6F-4FC7-8AE2-AE65-62B7CA22A4BB";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv1PosCS";
	rename -uid "86214599-4ECF-1471-550B-AFA4B98C6961";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv1PosPS";
	rename -uid "9ABB33D7-4C31-CC34-DDC2-D79F47DA118F";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv2PosCS";
	rename -uid "3674E950-4543-AFC5-2C6B-06821C1671A1";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv2PosPS";
	rename -uid "9389BC40-4449-6BD1-8275-7681EA97E8FB";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv3PosCS";
	rename -uid "A479ED87-41BB-FF70-A67A-6E848AB42D06";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv3PosPS";
	rename -uid "0DF3EE60-4155-9D1C-2A3C-90872DCFAC7F";
createNode closestPointOnSurface -n "LeftEyeLidPinUpCrv4PosCS";
	rename -uid "1D245608-470B-27E1-99A3-108FBC273983";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinUpCrv4PosPS";
	rename -uid "6799842B-4DA5-7BD2-6D45-668BC4D347AB";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv0PosCS";
	rename -uid "6D1B22D5-4AE4-15AD-2AAD-FDA7B3BA1456";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv0PosPS";
	rename -uid "18B5BADE-4B62-ABFC-FF31-5CA7BB11DF74";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv1PosCS";
	rename -uid "5E1FC33F-41C3-263F-FD45-838628F36355";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv1PosPS";
	rename -uid "496BBCC3-40CC-F9B3-4B2B-E4A6FE7277E5";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv2PosCS";
	rename -uid "F4A877FE-430F-4848-DFF3-199914F3B7BB";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv2PosPS";
	rename -uid "D77A1CF1-40F4-9AD6-8A2C-96AFAD020D57";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv3PosCS";
	rename -uid "10FA210C-45BF-4C62-261B-C1AFEDD5DFEF";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv3PosPS";
	rename -uid "6753C16A-446F-1493-6474-78BEBF9129E9";
createNode closestPointOnSurface -n "LeftEyeLidPinDownCrv4PosCS";
	rename -uid "221F1796-40CE-FC5D-D5EE-079C8421F304";
createNode pointOnSurfaceInfo -n "LeftEyeLidPinDownCrv4PosPS";
	rename -uid "CA7FE673-4119-6DAC-D17A-9B9269214FD7";
createNode multMatrix -n "LeftEyeLidOutUpCrv0PosSurfPosMM";
	rename -uid "4EDB56EA-417C-8343-CC05-43BA05A087C9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2923203371587006 0.94846663265908338 2.2768129413436053 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv0PosSurfPosDM";
	rename -uid "1BADE989-4E42-B9DC-F0D3-05BF6C9EEA10";
createNode multMatrix -n "LeftEyeLidOutUpCrv1PosSurfPosMM";
	rename -uid "8879CD1F-4DD8-9696-26BF-D8B447BBB832";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.7082827786560182 1.4349412763446128 2.2961442027087098 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv1PosSurfPosDM";
	rename -uid "D7ADCDFA-4A15-4D7C-45CF-148130273773";
createNode multMatrix -n "LeftEyeLidOutUpCrv2PosSurfPosMM";
	rename -uid "A912D28C-42D9-A130-625D-0B9CEDB0D1A8";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277912768 1.9205435307655081 2.3046656210606278 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv2PosSurfPosDM";
	rename -uid "A49E45F1-467B-240B-6FD1-47B4F4A2A543";
createNode multMatrix -n "LeftEyeLidOutUpCrv3PosSurfPosMM";
	rename -uid "F7A94ECB-4285-7F9B-42F3-34970EC0373A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2917172769278817 1.4349412763483047 2.2961442027087098 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv3PosSurfPosDM";
	rename -uid "A4AF45D9-455C-A8A6-D107-A8A4D7261057";
createNode multMatrix -n "LeftEyeLidOutUpCrv4PosSurfPosMM";
	rename -uid "F36E2E52-48E1-A5F2-CF75-4CA3850E9192";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.7076797184265837 0.94846663266396292 2.2768129413436107 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv4PosSurfPosDM";
	rename -uid "F328A080-4177-517B-4736-51A3F8EE9E2C";
createNode multMatrix -n "LeftEyeLidOutDownCrv0PosSurfPosMM";
	rename -uid "CFAC9FD1-42DD-5BEF-0ACE-7E8563D30392";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2923203371608274 -0.94846663265698694 2.2768129413443883 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv0PosSurfPosDM";
	rename -uid "E06CA8CA-4879-F83E-1423-C198A0DA3CDA";
createNode multMatrix -n "LeftEyeLidOutDownCrv1PosSurfPosMM";
	rename -uid "49670709-45BE-81FA-ADF4-CD84725D92A0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.708282778659447 -1.4349412763417262 2.2961442027099137 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv1PosSurfPosDM";
	rename -uid "3FF1727B-4ADE-D375-653B-59A3069DA331";
createNode multMatrix -n "LeftEyeLidOutDownCrv2PosSurfPosMM";
	rename -uid "D18D81CA-42B0-5C77-C555-5AAC42B2C10A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277967218 -1.9205435307595209 2.304665621062246 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv2PosSurfPosDM";
	rename -uid "C5075BE0-4A3F-B979-8857-1BA933000B3C";
createNode multMatrix -n "LeftEyeLidOutDownCrv3PosSurfPosMM";
	rename -uid "0E84B6A9-41AA-C385-6E7B-478685109279";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2917172769326548 -1.4349412763380369 2.2961442027099146 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv3PosSurfPosDM";
	rename -uid "882E1E97-408B-D6BB-B5DD-409378EFC60F";
createNode multMatrix -n "LeftEyeLidOutDownCrv4PosSurfPosMM";
	rename -uid "56A40F38-4ADA-2FFE-3E3E-2AA5A1502181";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.7076797184298913 -0.94846663265210363 2.2768129413443887 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv4PosSurfPosDM";
	rename -uid "6BC4FD98-4670-4B7C-2B44-CB90C8C14E54";
createNode multMatrix -n "LeftEyeLidPinUpCrv0PosSurfPosMM";
	rename -uid "4FE02D9E-4C44-627F-52AE-668946BA8530";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2908686355581029 1.3677172195819631 2.051293477084708 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv0PosSurfPosDM";
	rename -uid "0260C5F3-4A6A-23FB-9A4E-74BDBD7AE617";
createNode multMatrix -n "LeftEyeLidPinUpCrv1PosSurfPosMM";
	rename -uid "CA769A89-4532-B9EF-FA90-90914E83E355";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.7369446582593795 1.7418701937501464 2.0904605447936415 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv1PosSurfPosDM";
	rename -uid "2B6F4766-4935-F377-542E-99B843145587";
createNode multMatrix -n "LeftEyeLidPinUpCrv2PosSurfPosMM";
	rename -uid "EDA944F0-43F2-940C-0939-B88E4A5F9AA7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277909722 2.1213208764961204 2.1213197578846499 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv2PosSurfPosDM";
	rename -uid "25CB384F-4065-A1A2-F31C-70854AEE65CF";
createNode multMatrix -n "LeftEyeLidPinUpCrv3PosSurfPosMM";
	rename -uid "95CFA31D-44B2-B674-F290-FAACC2169AC5";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2630553799055591 1.7418701986255176 2.0904605512549828 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv3PosSurfPosDM";
	rename -uid "932749F0-45FF-8971-6AB5-01AE39CCA0E5";
createNode multMatrix -n "LeftEyeLidPinUpCrv4PosSurfPosMM";
	rename -uid "4AAE8959-4F0F-9111-9714-B481A6C17BD0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.7091314200259804 1.3677172195868512 2.0512934770847173 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv4PosSurfPosDM";
	rename -uid "03272B17-4D29-C96E-AFBE-AAA9FDCE02B7";
createNode multMatrix -n "LeftEyeLidPinDownCrv0PosSurfPosMM";
	rename -uid "6C801A6D-4B91-9C24-3DCF-9AB438F94B62";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.2908686355612522 -1.3677172195804776 2.0512934770856259 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv0PosSurfPosDM";
	rename -uid "D0690003-442C-8B39-5AA9-A9A5C79816AD";
createNode multMatrix -n "LeftEyeLidPinDownCrv1PosSurfPosMM";
	rename -uid "065C309C-469F-CE53-7471-0A9D191071BB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 1.7369446599394631 -1.7418701897662181 2.0904605491259223 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv1PosSurfPosDM";
	rename -uid "7541EFF8-48C7-45FB-64B7-C09AA92FC3B9";
createNode multMatrix -n "LeftEyeLidPinDownCrv2PosSurfPosMM";
	rename -uid "5B431D07-4728-8076-0500-00A8D875404E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 3.0000000277955161 -2.1213208763930189 2.1213197579837049 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv2PosSurfPosDM";
	rename -uid "B57EB8CF-4F4F-83A1-9A02-4988C70B1CDF";
createNode multMatrix -n "LeftEyeLidPinDownCrv3PosSurfPosMM";
	rename -uid "E5C6FE28-46DE-EE2C-8BF0-04A366FF9AFC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.2630553956535193 -1.7418701897626072 2.0904605491259245 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv3PosSurfPosDM";
	rename -uid "8AE1142E-4A76-E39F-99AE-CABED7FE08CB";
createNode multMatrix -n "LeftEyeLidPinDownCrv4PosSurfPosMM";
	rename -uid "99F09F90-46C5-33A4-152C-B195D4C61BC7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492495198e-16 -7.9329824781288e-29 1 0 4.709131420030654 -1.3677172195755887 2.0512934770856317 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5721425817314412e-13 5.6621374255882984e-14 0
		 3.5726976932437537e-13 1 1.1102230248266001e-16 0 -5.667688540711433e-14 -3.1338732054753417e-30 0.99999999999999989 0
		 -3 9.4016196164260238e-30 -2.9999999999999996 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv4PosSurfPosDM";
	rename -uid "DB7FFEB1-497B-86C1-12A9-42919042DA02";
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC";
	rename -uid "4C83F81F-4DBD-575D-C611-0BAE2D2686A9";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC1";
	rename -uid "2F5B020B-4882-1EC4-E0E3-57A75868B4E5";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC2";
	rename -uid "EE748D01-4C52-FA6E-E3B8-80B5016E1177";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC3";
	rename -uid "06C2913C-4EB8-25EF-D857-DBB435294976";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpCrvPC4";
	rename -uid "68115E7F-4418-D5DE-843B-D6924EC2A0E3";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC";
	rename -uid "C4C7C5D0-4299-0AE3-B157-F8AC9DDF14D8";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC1";
	rename -uid "82022E66-48F2-F382-44FE-90BB1983EB86";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC2";
	rename -uid "8641C8DA-4961-D8F6-D6D5-70B075A3B0C1";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC3";
	rename -uid "E1C2E928-4C73-7858-B04C-FDAA4605D904";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownCrvPC4";
	rename -uid "27E48139-4326-3B80-8BD7-499F3AAF1672";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC";
	rename -uid "77CBAC00-4385-4F36-C6D1-7EBDB5EDC9F6";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC1";
	rename -uid "23FFF51F-422F-DF51-A7DD-A9ACF4570A3C";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC2";
	rename -uid "056CD332-4C08-07BF-27ED-2EB7C03B9109";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC3";
	rename -uid "253AD45E-4A11-E3D3-DA23-A1AE80566378";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpCrvPC4";
	rename -uid "A5F28B5C-454C-52D6-FD93-76BF032BF0FD";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC";
	rename -uid "E4EFBA2D-45D2-7287-4453-E683C92CAAA9";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC1";
	rename -uid "55FCDFA6-46DC-2F95-04A4-C39CE302C5D5";
	setAttr ".pr" 0.25;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC2";
	rename -uid "F0D53159-45BF-A557-3A9F-9E8AE5F75668";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC3";
	rename -uid "1BFF9394-4BD9-F46F-1FF5-FB965314CEB2";
	setAttr ".pr" 0.75;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownCrvPC4";
	rename -uid "08A51816-49B4-5CD4-8774-CCAB70E68C60";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv0PosCS";
	rename -uid "B450EE4D-45DF-C63A-C4A7-F78BC8E766F2";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv0PosPS";
	rename -uid "7433D4D2-44DD-CCC6-DCFE-E99233B65C61";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv1PosCS";
	rename -uid "0796D420-47CB-2292-F086-39B8C5BF2DD0";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv1PosPS";
	rename -uid "EDF0F8BB-4DCB-A824-B7EE-7487EE524053";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv2PosCS";
	rename -uid "216E31B3-4DB4-5F05-14A8-0ABE98B8198E";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv2PosPS";
	rename -uid "518E313B-4D6C-4298-49D7-AB9B9FB627BD";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv3PosCS";
	rename -uid "A75AE0F6-4776-EF78-6A15-42A9EA880AA6";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv3PosPS";
	rename -uid "F2BA35B1-44E8-84A9-32A2-4C898227CC81";
createNode closestPointOnSurface -n "RightEyeLidOutUpCrv4PosCS";
	rename -uid "54BCD02A-492A-15CF-FD5D-91941ED3E239";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUpCrv4PosPS";
	rename -uid "4432057D-4282-EC44-12C4-268EBE115333";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv0PosCS";
	rename -uid "67CD60E8-4357-2B66-255E-C69A8A0AAF21";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv0PosPS";
	rename -uid "81039D1C-49D2-F091-A240-5F80E26B3E86";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv1PosCS";
	rename -uid "F56CA737-4832-D148-E01A-78A273704BA4";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv1PosPS";
	rename -uid "A065C07A-4273-CA51-8FB7-8A981B5B1FC1";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv2PosCS";
	rename -uid "490D163E-4099-7191-785D-869CD57DCEE1";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv2PosPS";
	rename -uid "BB6DA5E3-4EF4-789A-23DD-A68D8F7652D3";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv3PosCS";
	rename -uid "0A78E4C7-428D-B27E-F032-86ACC7253485";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv3PosPS";
	rename -uid "7D110BDC-479D-77B4-9DD9-D696FE553117";
createNode closestPointOnSurface -n "RightEyeLidOutDownCrv4PosCS";
	rename -uid "68436186-4C12-B351-2698-559613FDA997";
createNode pointOnSurfaceInfo -n "RightEyeLidOutDownCrv4PosPS";
	rename -uid "F1715450-4720-2B5E-3FDA-7486EE634F7B";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv0PosCS";
	rename -uid "63BD91C7-4B29-37FE-F725-0AA7C0F805E0";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv0PosPS";
	rename -uid "2DD2886A-447B-E221-1138-B2B818D3F2B8";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv1PosCS";
	rename -uid "E49BD699-48E8-2B24-51FB-B8B4ABAB7389";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv1PosPS";
	rename -uid "183CFDA7-4589-E773-239B-B488475D8FB6";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv2PosCS";
	rename -uid "79CBFD60-477D-E590-DF4B-4EA4B36EB781";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv2PosPS";
	rename -uid "39EAFBD5-49A8-7002-FB86-FABC8260B963";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv3PosCS";
	rename -uid "EFCCF3D6-42EC-CC01-FDB1-3CACD107739F";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv3PosPS";
	rename -uid "A10A16F4-4511-1764-091B-0A85560BE03D";
createNode closestPointOnSurface -n "RightEyeLidPinUpCrv4PosCS";
	rename -uid "266EF445-471B-93AA-D90E-C4B32C234495";
createNode pointOnSurfaceInfo -n "RightEyeLidPinUpCrv4PosPS";
	rename -uid "5B488A60-401E-F439-E257-CBBFBEA8F8AA";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv0PosCS";
	rename -uid "7201B9D6-449F-1C2A-B07F-EAAA3CE704CD";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv0PosPS";
	rename -uid "DACEC337-4043-D141-C6C7-5097706B0720";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv1PosCS";
	rename -uid "1D32248C-45F6-A509-8335-F69B5F0245F6";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv1PosPS";
	rename -uid "FFEC8D65-42C5-0477-3C27-C4A7AF88CBBD";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv2PosCS";
	rename -uid "FEBA3E06-4656-EC83-699C-4084E3F4052C";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv2PosPS";
	rename -uid "99B90D7F-4224-66B5-4619-B19DEFCFB1BB";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv3PosCS";
	rename -uid "59BA3DFB-4A51-CEA0-BD35-CB8E859FE479";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv3PosPS";
	rename -uid "108E5365-442B-D763-776A-3BBBC529FDF7";
createNode closestPointOnSurface -n "RightEyeLidPinDownCrv4PosCS";
	rename -uid "0EF3AD9D-4F97-D20B-312F-A19A88AE875B";
createNode pointOnSurfaceInfo -n "RightEyeLidPinDownCrv4PosPS";
	rename -uid "830BCA3D-49E4-D0E5-C22E-018F206E777B";
createNode multMatrix -n "RightEyeLidOutUpCrv0PosSurfPosMM";
	rename -uid "F6B9F16C-41A4-8455-F18C-1599CBFD137A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494937e-16 -7.9329824781285163e-29 1.0000000000000004 0
		 -1.2923202946454739 0.94846662539009974 2.2768129514738602 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv0PosSurfPosDM";
	rename -uid "6809895A-42CF-5F74-9639-E38D03AFFE47";
createNode multMatrix -n "RightEyeLidOutUpCrv1PosSurfPosMM";
	rename -uid "4EBE237F-401A-C102-185D-B39F6C16CD32";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 3.5726976932437532e-13 2.2204460492503128e-16 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 -2.2204460492494924e-16 -7.9329824781285119e-29 0.99999999999999989 0
		 -1.708282730626292 1.4349412679426776 2.2961442103867151 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv1PosSurfPosDM";
	rename -uid "E4C582DB-4C7E-14B1-F3D2-448096C339A5";
createNode multMatrix -n "RightEyeLidOutUpCrv2PosSurfPosMM";
	rename -uid "C0818CD2-4AFE-C7CD-5120-01BC4AAF0624";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -2.9999999722072399 1.9205435209111452 2.3046656277674571 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv2PosSurfPosDM";
	rename -uid "B0CA3EE8-42AA-52E6-80CC-DDAE89F1E34A";
createNode multMatrix -n "RightEyeLidOutUpCrv3PosSurfPosMM";
	rename -uid "E092D4C5-440A-DF7B-C208-CDA14F8813C9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437527e-13 0.99999999999999967 0 0 -2.2204460492494922e-16 -7.9329824781285107e-29 0.99999999999999978 0
		 -4.2917172137874946 1.4349412679408284 2.296144210386863 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv3PosSurfPosDM";
	rename -uid "0259AC5B-4898-930C-1535-D98658D0E48F";
createNode multMatrix -n "RightEyeLidOutUpCrv4PosSurfPosMM";
	rename -uid "B48C5DA0-4248-F6CF-D62E-6A84A56834F0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.7076796497676163 0.94846662538765891 2.2768129514740552 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv4PosSurfPosDM";
	rename -uid "F0F0CF67-43D1-F871-34A7-EE996100ABBC";
createNode multMatrix -n "RightEyeLidOutDownCrv0PosSurfPosMM";
	rename -uid "BD6E2E4E-4602-DF97-8A57-74B6C13D50B2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -1.2923202946441155 -0.94846662539219107 2.2768129514738562 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv0PosSurfPosDM";
	rename -uid "815164E3-43A3-E0EA-99F2-D9B56DB83A75";
createNode multMatrix -n "RightEyeLidOutDownCrv1PosSurfPosMM";
	rename -uid "A26C56A6-4C44-BE2B-DCFF-0FBE04C18365";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -1.708282730624245 -1.4349412679453573 2.2961442103867191 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv1PosSurfPosDM";
	rename -uid "352FDBA5-4244-8653-5AAD-94B65F14FA40";
createNode multMatrix -n "RightEyeLidOutDownCrv2PosSurfPosMM";
	rename -uid "6DA13208-421B-B659-B650-C8BB58599C29";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -2.9999999722044959 -1.9205435211437034 2.3046656275774295 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv2PosSurfPosDM";
	rename -uid "8476D1A3-420E-F396-9FBB-078DB17DB495";
createNode multMatrix -n "RightEyeLidOutDownCrv3PosSurfPosMM";
	rename -uid "BEF40BCE-4471-F729-5701-9683AE88BE00";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -4.2917172137854367 -1.4349412679471956 2.2961442103868714 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv3PosSurfPosDM";
	rename -uid "ED34F8F5-44FD-8AFD-BB12-21A9EC3CF1C5";
createNode multMatrix -n "RightEyeLidOutDownCrv4PosSurfPosMM";
	rename -uid "252DF2C7-4885-1B0C-BF47-2F86FBDA814F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -4.7076796497662601 -0.94846662539462578 2.2768129514740565 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv4PosSurfPosDM";
	rename -uid "8FFFF452-4B29-F988-467B-E1ACECFF8F21";
createNode multMatrix -n "RightEyeLidPinUpCrv0PosSurfPosMM";
	rename -uid "6CE4434D-43F8-D6B5-B0B3-5AB97829133C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -1.2908686454013716 1.3677171672554507 2.0512935322828532 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv0PosSurfPosDM";
	rename -uid "093C6610-47F6-35B1-FF6A-A98AE37FAC44";
createNode multMatrix -n "RightEyeLidPinUpCrv1PosSurfPosMM";
	rename -uid "72F7A10E-43EB-8F1B-31AA-378E32733823";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437527e-13 0.99999999999999978 0 0 -2.2204460492494924e-16 -7.9329824781285119e-29 0.99999999999999989 0
		 -1.7369446633329362 1.7418701389656543 2.0904606012934592 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv1PosSurfPosDM";
	rename -uid "E7AFB125-4E88-BE47-8D05-CC8E30F11521";
createNode multMatrix -n "RightEyeLidPinUpCrv2PosSurfPosMM";
	rename -uid "40456C70-41C5-F16B-9139-4589F53670C4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437548e-13 1.0000000000000002 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -2.9999999722073953 2.1213208138469226 2.1213198006613303 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv2PosSurfPosDM";
	rename -uid "6DE4B82D-4142-2949-518B-B88823C284A9";
createNode multMatrix -n "RightEyeLidPinUpCrv3PosSurfPosMM";
	rename -uid "C833BAE1-47A6-38E5-96E1-9F823A4D4112";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437548e-13 1.0000000000000002 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -4.26305529849955 1.7418701340920364 2.0904605948322112 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv3PosSurfPosDM";
	rename -uid "9B961D93-4A4F-B8A0-601C-C896C2455C7D";
createNode multMatrix -n "RightEyeLidPinUpCrv4PosSurfPosMM";
	rename -uid "A8722837-46E6-C7DA-5E87-6CABDC00C125";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.7091312990123528 1.3677171672530051 2.0512935322830432 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv4PosSurfPosDM";
	rename -uid "C1C7920F-4EB3-4309-C6B4-9DBF7FA2B51B";
createNode multMatrix -n "RightEyeLidPinDownCrv0PosSurfPosMM";
	rename -uid "00E97405-408C-4B7C-0FCB-3A97889A7DBE";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494932e-16 -7.9329824781285152e-29 1.0000000000000002 0
		 -1.2908686453994094 -1.3677171672575386 2.0512935322828461 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv0PosSurfPosDM";
	rename -uid "4361A3D3-498B-074C-DA6D-0F84DA70327E";
createNode multMatrix -n "RightEyeLidPinDownCrv1PosSurfPosMM";
	rename -uid "AB70DAEF-44CB-45B1-DEED-AEAEE7F0D8D2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -1.7369446475880574 -1.7418701301150203 2.0904605991631753 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv1PosSurfPosDM";
	rename -uid "408A5E24-4EDB-3D03-3643-25A37A1AA17E";
createNode multMatrix -n "RightEyeLidPinDownCrv2PosSurfPosMM";
	rename -uid "E5594BD1-41FB-31D3-9E83-738B167778FC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -2.9999999722043622 -2.1213208138514497 2.1213198006613312 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv2PosSurfPosDM";
	rename -uid "4BAB56A4-4EF4-BA7F-E13C-D5B909A2E0A2";
createNode multMatrix -n "RightEyeLidPinDownCrv3PosSurfPosMM";
	rename -uid "E5448C11-49B4-CDF7-B75A-7BB563A5D135";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 3.5726976932437532e-13 2.2204460492503128e-16 0
		 -3.5726976932437532e-13 0.99999999999999989 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.263055298497056 -1.7418701340983656 2.0904605948322166 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv3PosSurfPosDM";
	rename -uid "F329A68E-45C7-81AD-4FFB-0EB5CDD0AFFE";
createNode multMatrix -n "RightEyeLidPinDownCrv4PosSurfPosMM";
	rename -uid "45D736FF-4432-40A8-024C-98B7EF6E3C69";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 2.2204460492503131e-16 0
		 -3.5726976932437537e-13 1 0 0 -2.2204460492494927e-16 -7.932982478128513e-29 1 0
		 -4.7091312990103962 -1.3677171672599815 2.0512935322830401 1;
	setAttr ".i[1]" -type "matrix" -1 -3.5721425817314422e-13 5.7065463465733046e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 1.1102230248291244e-16 0 5.6998509937049645e-14 -3.1338732054781965e-30 0.99999999999999989 0
		 -3 -2.9352096798841677e-28 -3 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv4PosSurfPosDM";
	rename -uid "63DD9FC7-4D22-FDCC-1E2D-5A80F3DC678F";
createNode multiplyDivide -n "LeftEyeLidPinUp0CtrlRvsMultMD";
	rename -uid "FDF8AC38-49F3-8B42-30D9-F4B02F887288";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinUp1CtrlRvsMultMD";
	rename -uid "953D3388-46DD-A486-83DA-6EB6EF8DB143";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinUp2CtrlRvsMultMD";
	rename -uid "92A3B37B-42DC-84AF-CABC-3FAD594DD1AF";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinDown0CtrlRvsMultMD";
	rename -uid "C8BD7E15-407F-0359-EB36-4ABE490962A5";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinDown1CtrlRvsMultMD";
	rename -uid "0A0AD17F-48FB-7C68-F73C-AAA3B544D6D5";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "LeftEyeLidPinDown2CtrlRvsMultMD";
	rename -uid "F9EE4340-47B1-31CA-FAC6-EABACCD694C8";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinUp0CtrlRvsMultMD";
	rename -uid "2075A47E-434E-55D5-F0DC-C9A01472910A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinUp1CtrlRvsMultMD";
	rename -uid "94B9753F-42B8-F535-917F-4CA1E368264E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinUp2CtrlRvsMultMD";
	rename -uid "A6A14AEA-407C-3076-7749-39B8369938D1";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinDown0CtrlRvsMultMD";
	rename -uid "E94A561D-4A49-F049-C172-A6AD26D988E4";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinDown1CtrlRvsMultMD";
	rename -uid "1D4A8607-4774-2BC7-B933-FCB799DE2448";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "RightEyeLidPinDown2CtrlRvsMultMD";
	rename -uid "7B543927-4D38-6E73-8191-39978A6C538D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1D61B544-4D5B-3025-F886-1193FAC8FF8A";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1650\n            -height 1060\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"look\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n"
		+ "                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1650\\n    -height 1060\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1650\\n    -height 1060\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "960EF9AE-41A4-48A2-2BFD-FAB0D5B98327";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode setRange -n "LeftEyeLidUpBlinkCenterSR";
	rename -uid "C6F15ED6-45C4-C10B-6F10-FB9F3D30CB6A";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "BDEB7B69-4023-1262-EF80-85A90C7103F4";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "LeftEyeLidDownBlinkCenterSR";
	rename -uid "69F9E213-4361-AB20-52B8-4C9BAEC76CD2";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion2";
	rename -uid "E4854EEE-41A9-A177-2C21-7889DF2C55B4";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "RightEyeLidUpBlinkCenterSR";
	rename -uid "9119BC0C-44B1-A2A7-CCDF-E99C12AF3D35";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "RightEyeLidDownBlinkCenterSR";
	rename -uid "9B65DBB7-4213-9F2F-EAFF-578E81CBCF2F";
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "973E4C7C-4B29-3A1F-C27D-F8838D4BE87B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	rename -uid "C3A58964-4BD2-85EA-AB8C-2FA5C229157D";
	setAttr ".cf" 0.017453292519943295;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrvPC";
	rename -uid "4AFD6634-4BEF-A36F-74B4-B78FAB5671EA";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrvPC1";
	rename -uid "FF42F13A-481C-7CB2-DF24-478CD1C966BC";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutUpJntCrvPC2";
	rename -uid "263BE801-4653-D2AC-BC96-229201B3C8FC";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrvPC";
	rename -uid "60B7957E-4D56-FC19-0849-8686B8444B00";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrvPC1";
	rename -uid "0BBDA1C9-4FD8-4A02-426E-BAB5FE7C9ECC";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidOutDownJntCrvPC2";
	rename -uid "9DE9CE1C-4C10-CDA8-CF3B-1D82455CF0EB";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpJntCrvPC";
	rename -uid "C67A87EA-4D56-FCEF-2278-F9AA75A9827C";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpJntCrvPC1";
	rename -uid "49925893-4C21-C74D-284E-11B5B3399374";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinUpJntCrvPC2";
	rename -uid "72D296AE-4438-98EE-8426-7B93D2B1AA0C";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownJntCrvPC";
	rename -uid "A7E13C6C-4264-031D-39A8-8D907E65D213";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownJntCrvPC1";
	rename -uid "BA56A48B-4A33-0885-F30B-118876F480AF";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "LeftEyeLidPinDownJntCrvPC2";
	rename -uid "BBEA9D97-45C6-EA4E-F169-85B94378037B";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrvPC";
	rename -uid "D7F0890F-4C91-03AD-F142-1B980FB74BFF";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrvPC1";
	rename -uid "652CE277-44B9-B92E-892F-6E9152591B7B";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutUpJntCrvPC2";
	rename -uid "8830E382-47FF-631B-2A36-E5B1717300BC";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrvPC";
	rename -uid "DBEADCFD-478B-674A-8E90-4DB10F4627DC";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrvPC1";
	rename -uid "63F078DB-4F27-FE60-107B-9C93A6CD2204";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidOutDownJntCrvPC2";
	rename -uid "18C8F524-42A2-D3C6-7B61-CFAD38A419E2";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpJntCrvPC";
	rename -uid "0FD89A3D-4DC4-708F-FC2C-189D167F8966";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpJntCrvPC1";
	rename -uid "16419C8C-45A3-B5F3-D908-499F30EF3FA3";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinUpJntCrvPC2";
	rename -uid "4A3419DD-4864-09C9-7854-05AC33249FB4";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownJntCrvPC";
	rename -uid "E30D57D8-49F8-87DB-5552-AA922B1D7004";
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownJntCrvPC1";
	rename -uid "3AD2A0BD-47D4-0D73-ABD7-099F06541DBD";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode pointOnCurveInfo -n "RightEyeLidPinDownJntCrvPC2";
	rename -uid "7A237CBF-448F-AB64-9A78-0FB42D8E109C";
	setAttr ".pr" 1;
	setAttr ".top" yes;
createNode multMatrix -n "RightEyeLidPinUp2CtrlGrpMM";
	rename -uid "611D3B6C-4718-0FC4-9B99-E48691B3CA35";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.9664912390641136e-29 0.99999999999999978 0
		 -4.7091313922351778 1.3677172195778529 2.0512934770854421 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinUp2CtrlGrpDM";
	rename -uid "45F0990C-462F-D9D2-C915-5C8C13AB0C12";
createNode multMatrix -n "RightEyeLidPinDown1CtrlGrpMM";
	rename -uid "E5D0D26B-4784-33A7-C584-CAB03FFEB97C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.9664912390641136e-29 0.99999999999999978 0
		 -2.9999999999983631 -2.1213208763979452 2.121319757983116 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinDown1CtrlGrpDM";
	rename -uid "461BC3FB-4BC8-C219-F350-8280B3081D1D";
createNode multMatrix -n "RightEyeLidPinUp1CtrlGrpMM";
	rename -uid "0A9F8C0C-42CC-B63A-CCBE-9BBE8CA190EF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.9664912390641136e-29 0.99999999999999978 0
		 -3.0000000000013953 2.1213208347867711 2.1213197863444058 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinUp1CtrlGrpDM";
	rename -uid "63B5FDC9-4D97-14E8-3D17-848179F87E12";
createNode multMatrix -n "RightEyeLidPinUp0CtrlGrpMM";
	rename -uid "3112B6AF-404A-88B2-4CB7-D7BE939F5F2E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.9664912390641136e-29 0.99999999999999978 0
		 -1.290868607766539 1.3677172195802991 2.051293477085244 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinUp0CtrlGrpDM";
	rename -uid "950E3FF3-4EDB-0BED-D21C-F5920288175A";
createNode multMatrix -n "RightEyeLidPinDown0CtrlGrpMM";
	rename -uid "3A484E53-4A74-BE61-8677-B1B575CE603E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.9664912390641136e-29 0.99999999999999978 0
		 -1.2908686077645843 -1.3677172195821425 2.0512934770852445 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinDown0CtrlGrpDM";
	rename -uid "A9797E1A-4847-D0A9-9126-66AF51192AB1";
createNode multMatrix -n "RightEyeLidPinDown2CtrlGrpMM";
	rename -uid "F272B779-4C0F-6885-084E-A59EFDA6E48D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 -1.2621774483536189e-29 0
		 -3.5726976932437532e-13 1 0 0 1.1102230246250303e-16 3.9664912390641136e-29 0.99999999999999978 0
		 -4.7091313922332283 -1.3677172195845833 2.0512934770854385 1;
	setAttr ".i[1]" -type "matrix" -1.0000000000000002 -3.5726976932437548e-13 5.6276864971043223e-14 0
		 -3.5726976932437537e-13 1.0000000000000002 2.0106022566503633e-26 0 5.627686497104323e-14 -3.5873240686715317e-43 1.0000000000000002 0
		 -2.9999999722059978 1.2079226507921693e-13 3.5527121146411737e-15 1;
createNode decomposeMatrix -n "RightEyeLidPinDown2CtrlGrpDM";
	rename -uid "7563918C-40C0-045D-2014-0FB446C5B428";
createNode multMatrix -n "LeftEyeLidOutUpCrv0JntMM";
	rename -uid "A49A511F-4B9C-4FC6-DAFC-5EB90F727D50";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2923203371576883 0.9484666326604666 2.276812941343608 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 1.1494967794734294e-28 0
		 0 5.5511151231257827e-17 1 0 -1.2923203371583663 -0.94846663265954323 -2.2768129413436085 1;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv0JntDM";
	rename -uid "FD907BD5-4431-73CB-40F6-4DA0545A3A63";
createNode multMatrix -n "LeftEyeLidOutUpCrv1JntMM";
	rename -uid "24A762CD-4972-BF7E-9044-65B048806A17";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277904921 1.6777424003846582 2.3004049140264544 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5738079162683789e-13 -1.1102230246251565e-16 5.5511151231257827e-17
		 3.5726976932437522e-13 1 0 2.5243548967072378e-29 0 0 1 0 -3.0000000277916912 -1.6777424003825141 -2.3004049140264544 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv1JntDM";
	rename -uid "99A2F5C7-4FDE-F3CF-E983-BEADA73C4B8B";
createNode multMatrix -n "LeftEyeLidOutUpCrv2JntMM";
	rename -uid "261D87EA-49AA-C756-2601-DAA27A203508";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7076797184255721 0.94846663266900766 2.2768129413436053 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.57297524899991e-13 0 2.7755575615628914e-17
		 3.5726976932437522e-13 1 -2.5243548967072378e-29 1.2621774483536189e-29 0 0 1 0 -4.7076797184262498 -0.94846663266564379 -2.2768129413436053 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutUpCrv2JntDM";
	rename -uid "A4A5BF05-44FA-9064-9D30-028049BE13B6";
createNode multMatrix -n "LeftEyeLidOutDownCrv0JntMM";
	rename -uid "A7E921A9-4076-C9C3-6286-179260869899";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2923203371618461 -0.94846663265560116 2.2768129413443896 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5738079162683789e-13 0 0 3.5726976932437527e-13 1 -1.1494967794738235e-28 0
		 0 0 1 0 -1.2923203371611685 0.94846663265652464 -2.2768129413443892 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv0JntDM";
	rename -uid "64E7A3F7-4D1B-E9BE-B362-16A81CB7927D";
createNode multMatrix -n "LeftEyeLidOutDownCrv1JntMM";
	rename -uid "14149E28-4372-8EF9-EFA6-A3886EFE60AF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277981869 -1.6777424035465072 2.3004049118860612 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 5.0487097934144756e-29 0
		 0 0 1 0 -3.0000000277969878 1.677742403548651 -2.3004049118860612 1;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv1JntDM";
	rename -uid "3B534A44-46AB-EB4C-DE9D-919EFB732AFC";
createNode multMatrix -n "LeftEyeLidOutDownCrv2JntMM";
	rename -uid "A328F20B-423A-91DE-1C6F-9DA0F3B4AD22";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7076797184309065 -0.94846663264705722 2.2768129413443896 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5724201374875975e-13 0 2.7755575615628914e-17
		 3.5726976932437527e-13 1 2.5243548967072378e-29 1.2621774483536189e-29 0 0 1 0 -4.7076797184302279 0.94846663265042086 -2.2768129413443896 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidOutDownCrv2JntDM";
	rename -uid "CFC6EABD-43FF-824F-B669-27A0C6145B33";
createNode multMatrix -n "LeftEyeLidPinUpCrv0JntMM";
	rename -uid "D1BBA77B-451B-08D7-D103-2CB3A3F52359";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2908686355566388 1.3677172195833478 2.0512934770847076 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000002 -3.5729626120833381e-13 -7.6999693323350249e-17 0
		 3.5726976932437537e-13 1 0 0 0 0 1 0 -1.2908686355576162 -1.3677172195824254 -2.0512934770847076 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv0JntDM";
	rename -uid "F4EA3303-4BB7-9B58-4C0D-79AE74ECFAF7";
createNode multMatrix -n "LeftEyeLidPinUpCrv1JntMM";
	rename -uid "0967763F-408A-A246-9706-26B956900055";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277899268 1.9315955114543157 2.1058901680512729 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 5.0487097934144756e-29 0
		 0 0 1 0 -3.0000000277913066 -1.9315955114521721 -2.1058901680512729 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv1JntDM";
	rename -uid "C6DFD74A-4903-B07A-A88E-7793FB876F2F";
createNode multMatrix -n "LeftEyeLidPinUpCrv2JntMM";
	rename -uid "E2970B1E-4193-938B-28AA-B5A78E375A26";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7091314200245211 1.3677172195918952 2.051293477084712 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437537e-13 1 0 0
		 0 0 1 0 -4.709131420025499 -1.3677172195885305 -2.051293477084712 1;
createNode decomposeMatrix -n "LeftEyeLidPinUpCrv2JntDM";
	rename -uid "EDFBE492-4B74-0712-00F8-6CADB732723F";
createNode multMatrix -n "LeftEyeLidPinDownCrv0JntMM";
	rename -uid "73FC4D2E-4CA0-F7C3-CE36-42BCA0D295BE";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 1.2908686355627199 -1.3677172195790954 2.0512934770856246 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5729626120770484e-13 7.6999693562927861e-17 0
		 3.5738079162683789e-13 1 0 0 0 0 1 0 -1.2908686355617425 1.3677172195800176 -2.0512934770856246 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv0JntDM";
	rename -uid "72A0F6B8-4713-530D-D2B9-D18C9C9E0896";
createNode multMatrix -n "LeftEyeLidPinDownCrv1JntMM";
	rename -uid "AB67038A-4DAD-8349-9DC4-8BAA626C816E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 3.0000000277988308 -1.931595537550904 2.1058901545711777 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5726976932437537e-13 0 5.5511151231257827e-17
		 3.5726976932437527e-13 1 -5.0487097934144756e-29 2.5243548967072378e-29 0 0 1 0 -3.0000000277974506 1.9315955375530476 -2.1058901545711777 0.99999999999999989;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv1JntDM";
	rename -uid "F3373772-423F-AD09-C860-BF8C9F5A84CC";
createNode multMatrix -n "LeftEyeLidPinDownCrv2JntMM";
	rename -uid "40B18416-4658-9480-2AE7-0CAE953F43F6";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437537e-13 1.0000000000000002 0 0
		 0 0 1 0 4.7091314200321275 -1.3677172195705449 2.051293477085621 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437532e-13 1.0000000000000002 0 0
		 0 0 1 0 -4.7091314200311505 1.3677172195739102 -2.051293477085621 1;
createNode decomposeMatrix -n "LeftEyeLidPinDownCrv2JntDM";
	rename -uid "7F5AD86E-4093-4AE7-8225-0DA70231655F";
createNode multMatrix -n "RightEyeLidOutUpCrv0JntMM";
	rename -uid "63064A15-427D-2D4A-CE57-6E80BAEDB2B9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.2923202815731973 0.94846663265560438 2.27681294134414 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726404797127927e-13 -2.5277701502447903e-16 0
		 3.5726976932437527e-13 1 0 0 0 0 1 0 1.2923202815725197 -0.94846663265652797 -2.27681294134414 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv0JntDM";
	rename -uid "024C7608-4DBB-568B-F91A-569E01FCAFE9";
createNode multMatrix -n "RightEyeLidOutUpCrv1JntMM";
	rename -uid "436E59DC-46A8-0C76-E513-32A612724B2C";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999722087347 1.6777424002587886 2.3004049141225242 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437532e-13 1 -5.0487097934144756e-29 0
		 -1.0253139540048461e-54 -2.8698592549372254e-42 1 0 2.9999999722075357 -1.6777424002609322 -2.3004049141225242 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv1JntDM";
	rename -uid "F9CE7C1B-4483-CB05-1233-53A72BF38330";
createNode multMatrix -n "RightEyeLidOutUpCrv2JntMM";
	rename -uid "44FE8E1A-42A1-70E4-BB03-26896CD75FB9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7076796628416719 0.9484666326495057 2.2768129413445264 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5724201374875975e-13 0 0 3.5726976932437527e-13 1 -2.5243548967072378e-29 0
		 -1.0253139540048459e-54 -2.8698592549372254e-42 1 0 4.7076796628409943 -0.94846663265286935 -2.2768129413445264 1;
createNode decomposeMatrix -n "RightEyeLidOutUpCrv2JntDM";
	rename -uid "D0CFB564-4FCC-09D9-EAA2-C6945DE63A18";
createNode multMatrix -n "RightEyeLidOutDownCrv0JntMM";
	rename -uid "39BF318C-43F3-D09F-9FCE-8E97021EC396";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.2923202815698074 -0.94846663266046405 2.2768129413441387 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437522e-13 1 -1.1494967794736971e-28 -5.6051938572992683e-45
		 0 5.5511151231257827e-17 0.99999999999999989 5.5511151231257827e-17 1.2923202815704851 0.94846663265954045 -2.2768129413441387 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv0JntDM";
	rename -uid "614A070C-467B-CEA1-8329-0ABA3395921A";
createNode multMatrix -n "RightEyeLidOutDownCrv1JntMM";
	rename -uid "7BC1E05E-4ED2-841D-7EEA-A290AC26ED3A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999722027395 -1.6777424036723432 2.3004049117906895 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 5.0487097934144756e-29 0
		 -1.0253139540048459e-54 -2.8698592549372254e-42 1 0 2.9999999722039385 1.6777424036701996 -2.3004049117906895 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv1JntDM";
	rename -uid "F5BF2122-4923-5E0F-1286-8488FBDE1D65";
createNode multMatrix -n "RightEyeLidOutDownCrv2JntMM";
	rename -uid "4BEC8C7A-4C50-8298-C382-26A087396EFB";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7076796628382738 -0.94846663266655984 2.2768129413445335 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5724201374875975e-13 0 0 3.5726976932437532e-13 1 2.5243548967072378e-29 0
		 -1.0253139540048461e-54 -2.8698592549372254e-42 1 0 4.7076796628389515 0.9484666326631962 -2.2768129413445335 1;
createNode decomposeMatrix -n "RightEyeLidOutDownCrv2JntDM";
	rename -uid "75EC0C86-4CF2-1979-C0BA-5DBAAE6A6266";
createNode multMatrix -n "RightEyeLidPinUpCrv0JntMM";
	rename -uid "DF22971B-4D6B-DA95-B06D-429B70CCB877";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.2908685799738882 1.3677172195787952 2.0512934770853106 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -3.5714441409279105e-13 1.5073963137156081e-16 0
		 3.5715874702191286e-13 1 0 0 1.1102230246251565e-16 0 1 0 1.2908685799729107 -1.3677172195797174 -2.0512934770853102 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv0JntDM";
	rename -uid "635340AB-40B0-20A6-1117-3E9DC944C2AB";
createNode multMatrix -n "RightEyeLidPinUpCrv1JntMM";
	rename -uid "3BF1696C-4B0E-CC1C-7B99-CEB19C6CB2A7";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999682736478 1.9315955137014664 2.1058901685394309 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437522e-13 1 0 0
		 -1.0253139540048459e-54 -2.8698592549372254e-42 1 0 2.9999999682722676 -1.9315955137036103 -2.1058901685394309 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv1JntDM";
	rename -uid "74557D08-4771-52B7-F4CE-3EA8A7160666";
createNode multMatrix -n "RightEyeLidPinUpCrv2JntMM";
	rename -uid "E3BBF71E-446E-A6C2-3FDD-54BF5CB3ADAF";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7091313644425252 1.3677172195726848 2.0512934770857019 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437532e-13 1.0000000000000002 0 0
		 -1.0253139540048461e-54 -2.869859254937226e-42 1 0 4.7091313644415482 -1.3677172195760499 -2.0512934770857019 1;
createNode decomposeMatrix -n "RightEyeLidPinUpCrv2JntDM";
	rename -uid "EF0C266D-4A08-9D23-DB29-A4918B9FFE81";
createNode multMatrix -n "RightEyeLidPinDownCrv0JntMM";
	rename -uid "1938C142-4959-3582-7754-908A3A25503A";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -1.290868579969001 -1.3677172195836462 2.0512934770853115 1;
	setAttr ".i[1]" -type "matrix" 1.0000000000000002 -3.5729626120841176e-13 7.6999693481100675e-17 6.1629758220391547e-33
		 3.5726976932437537e-13 0.99999999999999989 0 0 0 1.1102230246251565e-16 0.99999999999999989 5.5511151231257827e-17
		 1.2908685799699784 1.3677172195827236 -2.0512934770853115 0.99999999999999989;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv0JntDM";
	rename -uid "442F7C36-4E6E-8854-E5BC-1CACBE14CE0F";
createNode multMatrix -n "RightEyeLidPinDownCrv1JntMM";
	rename -uid "DC9E95EA-4848-411A-6B13-2188E3D62B76";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -2.9999999722023083 -1.9315955375137268 2.1058901546196003 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 0 0 3.5726976932437527e-13 1 -5.0487097934144756e-29 0
		 -1.0253139540048459e-54 -2.8698592549372254e-42 1 0 2.9999999722036881 1.931595537511583 -2.1058901546196003 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv1JntDM";
	rename -uid "2106FDD0-4374-836E-3AF9-609573B0A596";
createNode multMatrix -n "RightEyeLidPinDownCrv2JntMM";
	rename -uid "79450843-42F4-E1ED-AC38-AE810CACAC61";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 3.5726976932437537e-13 0 0 -3.5726976932437527e-13 1 0 0
		 0 0 1 0 -4.7091313644376447 -1.3677172195897516 2.0512934770856983 1;
	setAttr ".i[1]" -type "matrix" 1 -3.5726976932437537e-13 5.5511151231257827e-17 0
		 3.5726976932437532e-13 1 0 0 -1.0253139540048461e-54 -2.8698592549372254e-42 1 0
		 4.7091313644386217 1.3677172195863867 -2.0512934770856983 1;
createNode decomposeMatrix -n "RightEyeLidPinDownCrv2JntDM";
	rename -uid "219152B7-4B7E-F4DE-71D6-FB9F61A0D2D9";
createNode blendTwoAttr -n "LeftEyeLidOutUp1ZBA";
	rename -uid "DAEA37D8-4724-9236-2CDF-45A08E796160";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "LeftEyeLidOutUp2ZBA";
	rename -uid "2FBE3371-4306-DB7B-5DC6-4BB4262937F0";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "LeftEyeLidOutDown1ZBA";
	rename -uid "17E8B3CE-483D-CD88-ADD0-AC815F734C72";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "LeftEyeLidOutDown2ZBA";
	rename -uid "D697223E-4DB1-9702-4486-30ABB3E50CA9";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "RightEyeLidOutUp1ZBA";
	rename -uid "40342CE3-4306-3494-2843-6DAF64C5163A";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "RightEyeLidOutUp2ZBA";
	rename -uid "6214AE1F-48D4-749E-C81A-538C87248ABF";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "blendTwoAttr1";
	rename -uid "D9EDB9BD-47DA-F2EA-9338-F9B6863B5EAB";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "blendTwoAttr2";
	rename -uid "73B45FB3-4AC3-FEC2-06D9-E183A07F78FF";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "A1C6AC8A-48E0-B781-9206-53B4450B36E4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -977.38091354332437 -252.3809423522348 ;
	setAttr ".tgi[0].vh" -type "double2" 977.38091354332437 252.3809423522348 ;
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
	setAttr -s 138 ".u";
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
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "LeftEyeLidOutUp1PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[0]";
connectAttr "LeftEyeLidOutUp1PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[1]";
connectAttr "LeftEyeLidOutUp2CvPos1Shape.wp" "LeftEyeLidOutUpCrvShape.cp[2]";
connectAttr "LeftEyeLidOutUp2PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[3]";
connectAttr "LeftEyeLidOutUp2CvPos2Shape.wp" "LeftEyeLidOutUpCrvShape.cp[4]";
connectAttr "LeftEyeLidOutUp3PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[5]";
connectAttr "LeftEyeLidOutUp3PosShape.wp" "LeftEyeLidOutUpCrvShape.cp[6]";
connectAttr "LeftEyeLidOutDown1PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[0]";
connectAttr "LeftEyeLidOutDown1PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[1]";
connectAttr "LeftEyeLidOutDown2CvPos1Shape.wp" "LeftEyeLidOutDownCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidOutDown2PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[3]";
connectAttr "LeftEyeLidOutDown2CvPos2Shape.wp" "LeftEyeLidOutDownCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidOutDown3PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[5]";
connectAttr "LeftEyeLidOutDown3PosShape.wp" "LeftEyeLidOutDownCrvShape.cp[6]";
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
connectAttr "LeftEyeLidPinUp1PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[0]";
connectAttr "LeftEyeLidPinUp1PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[1]";
connectAttr "LeftEyeLidPinUp2CvPos1Shape.wp" "LeftEyeLidPinUpCrvShape.cp[2]";
connectAttr "LeftEyeLidPinUp2PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[3]";
connectAttr "LeftEyeLidPinUp2CvPos2Shape.wp" "LeftEyeLidPinUpCrvShape.cp[4]";
connectAttr "LeftEyeLidPinUp3PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[5]";
connectAttr "LeftEyeLidPinUp3PosShape.wp" "LeftEyeLidPinUpCrvShape.cp[6]";
connectAttr "LeftEyeLidPinDown1PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[0]";
connectAttr "LeftEyeLidPinDown1PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[1]";
connectAttr "LeftEyeLidPinDown2CvPos1Shape.wp" "LeftEyeLidPinDownCrvShape.cp[2]"
		;
connectAttr "LeftEyeLidPinDown2PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[3]";
connectAttr "LeftEyeLidPinDown2CvPos2Shape.wp" "LeftEyeLidPinDownCrvShape.cp[4]"
		;
connectAttr "LeftEyeLidPinDown3PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[5]";
connectAttr "LeftEyeLidPinDown3PosShape.wp" "LeftEyeLidPinDownCrvShape.cp[6]";
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
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidLocGrp.r";
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
connectAttr "LeftEyeLidRootModeRvs.ox" "LeftEyeCorneaCtrlGrp.v";
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
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidLocGrp.r";
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
connectAttr "RightEyeLidRootModeRvs.ox" "RightEyeCorneaCtrlGrp.v";
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
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of eyeLidCtrl.ma
