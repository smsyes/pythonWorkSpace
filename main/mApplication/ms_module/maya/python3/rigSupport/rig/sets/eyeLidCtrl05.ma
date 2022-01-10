//Maya ASCII 2018ff09 scene
//Name: eyeLidCtrl05.ma
//Last modified: Mon, Jan 10, 2022 11:33:40 AM
//Codeset: 949
requires maya "2018ff09";
requires "mtoa" "3.1.2.1";
requires -nodeType "rotateHelper" "rotateHelper" "1.0";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "EyeLidGrp";
	rename -uid "3D38305A-42C2-1834-278D-0BAABF6FE5B8";
	setAttr ".r" -type "double3" 0 -90 90.000000000020464 ;
createNode transform -n "EyeLidCtrlGrp" -p "EyeLidGrp";
	rename -uid "F92F6BC1-454D-22B7-E880-13AB9093AF86";
	setAttr ".r" -type "double3" -90 3.1805546814635168e-15 -90.000000000003254 ;
createNode transform -n "LeftEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "8CC1812F-4583-4FE3-6F43-19B9990877E0";
createNode transform -n "LeftEyeLidSegmentCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "890BB1D2-46EC-5F2E-F624-8FBCC508960B";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidUpCtrlGrp" -p "LeftEyeLidSegmentCtrlGrp";
	rename -uid "93866115-4153-5FDF-64C4-1FA710A110D6";
createNode transform -n "LeftEyeLidUp2CtrlPosGrp" -p "LeftEyeLidUpCtrlGrp";
	rename -uid "7A728762-44FC-2439-F257-FCA4C0250D27";
createNode transform -n "LeftEyeLidUp2CtrlGrpGrp" -p "LeftEyeLidUp2CtrlPosGrp";
	rename -uid "8C4CC8AE-4832-5F8C-EE59-2C8917923BF8";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp2CtrlRvsGrp" -p "LeftEyeLidUp2CtrlGrpGrp";
	rename -uid "18947DC6-48F0-0CDD-27C7-C8A4CB03CAD6";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp2Ctrl" -p "LeftEyeLidUp2CtrlRvsGrp";
	rename -uid "2D36FB25-40B0-B943-581A-0B9DD15C4009";
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
	rename -uid "E922F0A0-4639-326D-A46F-7EAF8E0DEB51";
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
	rename -uid "01D5153C-4C46-8660-C40E-BD938BDD63A2";
createNode transform -n "LeftEyeLidUp3CtrlGrpGrp" -p "LeftEyeLidUp3CtrlPosGrp";
	rename -uid "0E039538-4506-ECD5-50F2-1C813EA85431";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp3CtrlRvsGrp" -p "LeftEyeLidUp3CtrlGrpGrp";
	rename -uid "367055DC-4827-EE3D-1F64-51876FF64B71";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp3Ctrl" -p "LeftEyeLidUp3CtrlRvsGrp";
	rename -uid "53CEE829-4107-0EE7-82A8-B095B458A165";
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
	rename -uid "DF960777-45A9-5B3D-50F3-F1851FB3F67B";
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
	rename -uid "C8CEDF32-41C3-F4C4-AE8A-73A0D5E8547D";
createNode transform -n "LeftEyeLidUp4CtrlGrpGrp" -p "LeftEyeLidUp4CtrlPosGrp";
	rename -uid "2E13170E-4636-F850-9070-B1A5E8E29740";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp4CtrlRvsGrp" -p "LeftEyeLidUp4CtrlGrpGrp";
	rename -uid "20CFC303-4D83-6550-72C5-7ABC0B34DB9D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp4Ctrl" -p "LeftEyeLidUp4CtrlRvsGrp";
	rename -uid "F82172D1-4A23-D92A-DE04-89A5E3D93370";
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
	rename -uid "9BC5621C-4206-A795-59B7-708458155C97";
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
	rename -uid "6AEE412F-406E-1B63-D777-7FA1831D8FBA";
createNode transform -n "LeftEyeLidUp5CtrlGrpGrp" -p "LeftEyeLidUp5CtrlPosGrp";
	rename -uid "84915F7C-408E-72D7-C8C9-B69F2A0EFE7F";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp5CtrlRvsGrp" -p "LeftEyeLidUp5CtrlGrpGrp";
	rename -uid "9F78784D-4127-66D5-5DE5-F78D4FBEB90B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp5Ctrl" -p "LeftEyeLidUp5CtrlRvsGrp";
	rename -uid "4778899B-4FD4-38D2-2566-C98C91BD04CD";
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
	rename -uid "484D9C99-44B1-6C37-6CFE-8F9461014C7E";
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
	rename -uid "DF2EE753-4AD3-3BF2-CE9D-1193850B0700";
createNode transform -n "LeftEyeLidUp6CtrlGrpGrp" -p "LeftEyeLidUp6CtrlPosGrp";
	rename -uid "D3F06E7D-4669-A4FF-3921-C288A1B66E89";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidUp6CtrlRvsGrp" -p "LeftEyeLidUp6CtrlGrpGrp";
	rename -uid "35864594-4174-3705-E7FA-CBB2172983B4";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidUp6Ctrl" -p "LeftEyeLidUp6CtrlRvsGrp";
	rename -uid "781427DA-449E-8C9A-B581-12B36A08746A";
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
	rename -uid "29DAA87E-42C4-226C-322D-F2B184609D13";
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
	rename -uid "0D5C1A6A-406D-9A5C-EDD7-F8B960BCD2DB";
createNode transform -n "LeftEyeLidDown2CtrlPosGrp" -p "LeftEyeLidDownCtrlGrp";
	rename -uid "A28DEC8D-4E0C-74E3-C462-CA8D80E55262";
createNode transform -n "LeftEyeLidDown2CtrlGrpGrp" -p "LeftEyeLidDown2CtrlPosGrp";
	rename -uid "48A7D93C-4451-72E4-2C45-E2939332598A";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown2CtrlRvsGrp" -p "LeftEyeLidDown2CtrlGrpGrp";
	rename -uid "FB35EDA2-4B84-6C85-DB1E-77B9459AC056";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown2Ctrl" -p "LeftEyeLidDown2CtrlRvsGrp";
	rename -uid "7183B304-41F2-8068-BAC8-90858BB6C35C";
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
	rename -uid "2B874E12-44E1-52E7-8E52-05868CE42330";
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
	rename -uid "DD70F391-45A7-B426-50BF-77BD689F53C1";
createNode transform -n "LeftEyeLidDown3CtrlGrpGrp" -p "LeftEyeLidDown3CtrlPosGrp";
	rename -uid "956FE7BD-48BA-F1A6-C3B7-F5B92063F011";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown3CtrlRvsGrp" -p "LeftEyeLidDown3CtrlGrpGrp";
	rename -uid "53AA2EE5-4840-FC3E-E517-E08F7C7D742C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown3Ctrl" -p "LeftEyeLidDown3CtrlRvsGrp";
	rename -uid "D699C5C1-486D-82C6-4C14-83BB00F7CA30";
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
	rename -uid "5BBA722D-413E-64BD-45AA-3D92BB15F347";
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
	rename -uid "6E7631C5-4633-9BDF-5A65-D79228473FFB";
createNode transform -n "LeftEyeLidDown4CtrlGrpGrp" -p "LeftEyeLidDown4CtrlPosGrp";
	rename -uid "B353511F-42B0-D406-D421-35BD3EB733DE";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown4CtrlRvsGrp" -p "LeftEyeLidDown4CtrlGrpGrp";
	rename -uid "4BB589F4-43CA-225A-07E9-24A7513AFA5E";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown4Ctrl" -p "LeftEyeLidDown4CtrlRvsGrp";
	rename -uid "6A4604AD-4CF2-36EB-2272-DDA1D74FAD50";
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
	rename -uid "39E14CDF-4E3F-8C2E-580F-D5964117DD74";
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
	rename -uid "28419F2F-4F6B-7F6D-E19D-339F82D2F319";
createNode transform -n "LeftEyeLidDown5CtrlGrpGrp" -p "LeftEyeLidDown5CtrlPosGrp";
	rename -uid "2B11DBC4-445C-85EB-B1AE-EEADA7DD49A1";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown5CtrlRvsGrp" -p "LeftEyeLidDown5CtrlGrpGrp";
	rename -uid "433B5E90-47BD-0467-0D2C-53A381D75B8D";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown5Ctrl" -p "LeftEyeLidDown5CtrlRvsGrp";
	rename -uid "0A1E9F7E-40E0-9E42-7D9B-859C74CA1C0A";
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
	rename -uid "E070C871-4FDE-887D-0DDC-99B27A5977AE";
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
	rename -uid "D7472ECD-4FB6-A10A-DFD9-D1BA7AA96389";
createNode transform -n "LeftEyeLidDown6CtrlGrpGrp" -p "LeftEyeLidDown6CtrlPosGrp";
	rename -uid "1DD4CF3F-4E91-F215-E863-27BD15A69E0E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidDown6CtrlRvsGrp" -p "LeftEyeLidDown6CtrlGrpGrp";
	rename -uid "747CEE86-4A46-37E6-D910-C9A31C8DD5AA";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDown6Ctrl" -p "LeftEyeLidDown6CtrlRvsGrp";
	rename -uid "BE7E0B67-4B76-F5DA-D6B8-03B006F381D5";
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
	rename -uid "DB23AF65-476A-A065-5444-BE8F9664905F";
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
	rename -uid "818F2AEA-4F91-6E61-1542-AA858EEA4017";
createNode transform -n "LeftEyeLidSide1CtrlGrpGrp" -p "LeftEyeLidSide1CtrlPosGrp";
	rename -uid "CB9AF112-41B8-AA76-1684-16B9FEC64F29";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide1RvsGrp" -p "LeftEyeLidSide1CtrlGrpGrp";
	rename -uid "BCFCAF06-4880-3569-A0A8-FDB2FB13822B";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide1Ctrl" -p "LeftEyeLidSide1RvsGrp";
	rename -uid "6D0365AC-44CA-DC9F-80FD-A7A61D247995";
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
	rename -uid "3289656E-4409-ABF6-2CCA-47ABCDCC4960";
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
	rename -uid "E2EEFB6F-42F1-3210-92E0-76B0B084EFEA";
createNode transform -n "LeftEyeLidSide2CtrlGrpGrp" -p "LeftEyeLidSide2CtrlPosGrp";
	rename -uid "5E66587B-43C6-5683-61A9-B38F06ADC161";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidSide2CtrlRvsGrp" -p "LeftEyeLidSide2CtrlGrpGrp";
	rename -uid "95AADB34-4BF9-D770-220D-3F9CA7297BD3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidSide2Ctrl" -p "LeftEyeLidSide2CtrlRvsGrp";
	rename -uid "BA0FA133-4347-D9A9-A737-79A1C06A3968";
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
	rename -uid "A10D5997-4335-139A-DB1C-73AC09359ED8";
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
createNode transform -n "LeftEyeLidOutCtrlGrp" -p "LeftEyeLidCtrlGrp";
	rename -uid "5A5D09B8-4E5E-F399-1E88-22A499E41BB5";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidOutUpCtrlGrp" -p "LeftEyeLidOutCtrlGrp";
	rename -uid "71EE507F-44AF-E8DD-9224-71A3F758A569";
createNode transform -n "LeftEyeLidOutUp1CtrlPos" -p "LeftEyeLidOutUpCtrlGrp";
	rename -uid "72CCFD3B-4EF9-87A7-A511-988A6F092A07";
createNode transform -n "LeftEyeLidOutUp1CtrlGrp" -p "LeftEyeLidOutUp1CtrlPos";
	rename -uid "C584BB26-415A-7A2D-38FB-7B9E8008EBA8";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp1CtrlRvs" -p "LeftEyeLidOutUp1CtrlGrp";
	rename -uid "3C08CBA9-4BF0-1321-E665-B98BD34E5F2B";
createNode transform -n "LeftEyeLidOutUp1Ctrl" -p "LeftEyeLidOutUp1CtrlRvs";
	rename -uid "A8E954BC-4465-1057-E6DD-05B094EA7C68";
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
	rename -uid "E8164320-4FD0-372C-A229-5B9E8382A2ED";
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
	rename -uid "359C594B-4D58-DDDD-A381-8F8363AC7EF6";
createNode transform -n "LeftEyeLidOutUp2CtrlGrp" -p "LeftEyeLidOutUp2CtrlPos";
	rename -uid "39874F2D-4E35-0D9E-6058-70B308DA31D5";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp2CtrlRvs" -p "LeftEyeLidOutUp2CtrlGrp";
	rename -uid "21C6BD01-4DDC-C09B-9323-618DC30142C5";
createNode transform -n "LeftEyeLidOutUp2Ctrl" -p "LeftEyeLidOutUp2CtrlRvs";
	rename -uid "1A98F576-45F2-2360-D4D8-73BAE90EB704";
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
	rename -uid "FA5C8AF0-46F1-8409-6EE0-5B9C0FC21637";
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
	rename -uid "BEE86DED-45F6-CC0C-5ECA-D991FCD0625B";
createNode transform -n "LeftEyeLidOutUp3CtrlGrp" -p "LeftEyeLidOutUp3CtrlPos";
	rename -uid "1A687ADA-4FF9-8ECD-561C-FB9A37FD93E3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutUp3CtrlRvs" -p "LeftEyeLidOutUp3CtrlGrp";
	rename -uid "0291749C-404D-6840-3391-6680E087F2EB";
createNode transform -n "LeftEyeLidOutUp3Ctrl" -p "LeftEyeLidOutUp3CtrlRvs";
	rename -uid "2C13FE4F-420D-B67D-0614-C68BD25B926A";
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
	rename -uid "339180B9-4B1A-F7DD-99DD-FDB2B693B804";
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
	rename -uid "DDE1AD83-4436-59EF-C654-5B9C86821C73";
createNode transform -n "LeftEyeLidOutDown1CtrlPos" -p "LeftEyeLidOutDownCtrlGrp";
	rename -uid "DE09BAFD-48DD-4F56-3729-E3A5215177A8";
createNode transform -n "LeftEyeLidOutDown1CtrlGrp" -p "LeftEyeLidOutDown1CtrlPos";
	rename -uid "07552D76-4A0D-4E2F-0CB3-72AE0CDAF991";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown1CtrlRvs" -p "LeftEyeLidOutDown1CtrlGrp";
	rename -uid "AAD7AEE6-4F45-F62D-63C6-C6A3BF09AE8B";
createNode transform -n "LeftEyeLidOutDown1Ctrl" -p "LeftEyeLidOutDown1CtrlRvs";
	rename -uid "62370456-4BE8-37C8-1FCD-3A8AB9D438B3";
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
	rename -uid "A0258E33-4342-3CF3-5D17-8EB3CA00D47E";
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
	rename -uid "B6287962-4024-294F-B8DD-9F85C2BA0BF6";
createNode transform -n "LeftEyeLidOutDown2CtrlGrp" -p "LeftEyeLidOutDown2CtrlPos";
	rename -uid "84BE7731-484F-B74C-82E9-119790608CF4";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutDown2CtrlRvs" -p "LeftEyeLidOutDown2CtrlGrp";
	rename -uid "A90776E7-4FE8-918F-B27A-2BB51D751F17";
createNode transform -n "LeftEyeLidOutDown2Ctrl" -p "LeftEyeLidOutDown2CtrlRvs";
	rename -uid "3358E977-4E04-7FF0-4312-C991573DF22D";
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
	rename -uid "B0646059-4868-2194-2E79-05B93C1D1AF6";
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
	rename -uid "5D948D1F-40F2-EF09-0143-A781413DAA2A";
createNode transform -n "LeftEyeLidOutDown3CtrlGrp" -p "LeftEyeLidOutDown3CtrlPos";
	rename -uid "174D1887-449D-FF5D-6D97-05804B3C19EE";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown3CtrlRvs" -p "LeftEyeLidOutDown3CtrlGrp";
	rename -uid "1BFB61B2-466D-00C5-BDA9-9BA495E59740";
createNode transform -n "LeftEyeLidOutDown3Ctrl" -p "LeftEyeLidOutDown3CtrlRvs";
	rename -uid "E2546F64-4B71-EF8B-A5F3-4FB1BCF8EF97";
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
	rename -uid "1313B5E5-454D-D87A-3DFF-3D8A5CB8D2BC";
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
	rename -uid "809CD9C2-4E94-45D1-0E97-0FA22F93E3A4";
	setAttr ".t" -type "double3" -2.7794001988259347e-08 1.2079227474570086e-13 3.5527121189801521e-15 ;
	setAttr ".r" -type "double3" 0 0 8.0322806413020668e-28 ;
createNode transform -n "LeftEyeLidInCtrlPos" -p "LeftEyeLidMainCtrlGrp";
	rename -uid "DC636C55-4922-8B2B-4B1D-48A78FB22436";
createNode transform -n "LeftEyeLidInMainCtrlGrp" -p "LeftEyeLidInCtrlPos";
	rename -uid "DDB34759-4633-B480-A838-8D9111D75DD3";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidInMainCtrlRvs" -p "LeftEyeLidInMainCtrlGrp";
	rename -uid "B164519D-4BE1-039C-DED2-89A9EE9603DA";
createNode transform -n "LeftEyeLidInMainCtrl" -p "LeftEyeLidInMainCtrlRvs";
	rename -uid "1738F88C-4DAE-5ADC-CFC1-97AD5412FC87";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrlShape" -p "LeftEyeLidInMainCtrl";
	rename -uid "F536DCD4-46F1-7584-13BB-B4920AC69945";
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
	rename -uid "8283BB60-4DAC-C5C5-E435-59A2228AB44E";
createNode transform -n "LeftEyeLidUpMainCtrlGrp" -p "LeftEyeLidUpCtrlPos";
	rename -uid "92754110-4CEC-60E8-EE54-108A79590386";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LeftEyeLidUpMainCtrlRvs" -p "LeftEyeLidUpMainCtrlGrp";
	rename -uid "32CE236A-4459-3AE7-8F1D-4F940D808A98";
createNode transform -n "LeftEyeLidUpMainCtrl" -p "LeftEyeLidUpMainCtrlRvs";
	rename -uid "F2CF43D2-467B-18E9-44CA-1CB92A3C7647";
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
	rename -uid "A2D83007-4E65-F1CE-5687-0F818833702A";
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
	rename -uid "685DCAB7-4D38-FB49-0B0B-94B426D843DD";
createNode transform -n "LeftEyeLidOutMainCtrlGrp" -p "LeftEyeLidOutCtrlPos";
	rename -uid "2710CAD5-4BC0-F597-2F0C-C69168989A2C";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidOutMainCtrlRvs" -p "LeftEyeLidOutMainCtrlGrp";
	rename -uid "D3269A65-4F26-CEE9-01A1-5C8E8435EC59";
createNode transform -n "LeftEyeLidOutMainCtrl" -p "LeftEyeLidOutMainCtrlRvs";
	rename -uid "5D6C18F5-4F73-1E96-F654-889465B1A03C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "LeftEyeLidOutMainCtrl";
	rename -uid "7F6C2A01-429A-1604-74E5-7792058B3072";
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
	rename -uid "35EBFFDA-4A55-B355-084B-78AE71735AF2";
createNode transform -n "LeftEyeLidDownMainCtrlGrp" -p "LeftEyeLidDownCtrlPos";
	rename -uid "D8696578-4657-6E4B-2330-39BF22D2F863";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidDownMainCtrlRvs" -p "LeftEyeLidDownMainCtrlGrp";
	rename -uid "F601FDA9-4703-5FD9-D2FE-D3A402421AFF";
createNode transform -n "LeftEyeLidDownMainCtrl" -p "LeftEyeLidDownMainCtrlRvs";
	rename -uid "D6449CA8-4984-D3E7-CF44-959F8DB4006D";
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
	rename -uid "84F2D8EF-4616-F6DD-8529-B782C073E4A8";
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
	rename -uid "6A0B7470-4A07-7AA3-985C-94AA66645A6E";
createNode transform -n "LeftEyeLidCCtrlOffGrp" -p "LeftEyeLidCCtrlGrp";
	rename -uid "674984BD-4B93-0512-F87E-379800482B3A";
	setAttr ".t" -type "double3" 0 0 3 ;
createNode transform -n "LeftEyeLidCCtrl" -p "LeftEyeLidCCtrlOffGrp";
	rename -uid "39C5450B-40E0-4B15-A3BA-E38C6DDD226C";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "LeftEyeLidCCtrlShape" -p "LeftEyeLidCCtrl";
	rename -uid "7085A034-44EA-1485-09C4-5095F6688F45";
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
createNode transform -n "RightEyeLidCtrlGrp" -p "EyeLidCtrlGrp";
	rename -uid "D30DE7EC-4690-5B2D-1D70-92BEF5BCC717";
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 -1 ;
createNode transform -n "RightEyeLidSegmentCtrlGrp" -p "RightEyeLidCtrlGrp";
	rename -uid "4FF530FC-4483-B7E5-FD18-22B5530BAF5F";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidUpCtrlGrp" -p "RightEyeLidSegmentCtrlGrp";
	rename -uid "25DA4B28-473A-2ADF-389B-42A828C90187";
createNode transform -n "RightEyeLidUp2CtrlPosGrp" -p "RightEyeLidUpCtrlGrp";
	rename -uid "52768774-44FF-5FCC-1F73-CC85BF031D4E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2CtrlGrpGrp" -p "RightEyeLidUp2CtrlPosGrp";
	rename -uid "B4F16DBA-4FE6-9F65-CD94-67B4C9AFF41E";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999911 ;
createNode transform -n "RightEyeLidUp2CtrlRvsGrp" -p "RightEyeLidUp2CtrlGrpGrp";
	rename -uid "33D67C23-4720-4513-EDF3-54AF6BD28BEE";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000024 ;
createNode transform -n "RightEyeLidUp2Ctrl" -p "RightEyeLidUp2CtrlRvsGrp";
	rename -uid "84F4DBAA-44CA-2D89-8912-31A8566E23E8";
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
	rename -uid "73EEAEB9-451A-9B8D-7E0F-1C9D40BAB1A5";
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
	rename -uid "95F6712F-4D4A-98C0-B794-2285BCE4EAF9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp3CtrlGrpGrp" -p "RightEyeLidUp3CtrlPosGrp";
	rename -uid "D45F2CA1-4E89-1FB9-9262-F3B7328BB093";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp3CtrlRvsGrp" -p "RightEyeLidUp3CtrlGrpGrp";
	rename -uid "455F689B-4C36-E3C6-C594-62BF59D89D2C";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 1.0000000000000011 ;
createNode transform -n "RightEyeLidUp3Ctrl" -p "RightEyeLidUp3CtrlRvsGrp";
	rename -uid "36EE0FE4-4D59-EF7A-8151-4B8D9FD857C7";
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
	rename -uid "60616ED4-4E33-77A3-84E1-0792F4185E68";
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
	rename -uid "C9FDD2A1-48F5-062F-6564-6296E1A72AE5";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp4CtrlGrpGrp" -p "RightEyeLidUp4CtrlPosGrp";
	rename -uid "1ACA9675-44BF-3FB3-51BA-51A0A6888F93";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999944 ;
createNode transform -n "RightEyeLidUp4CtrlRvsGrp" -p "RightEyeLidUp4CtrlGrpGrp";
	rename -uid "EDDF8883-4503-E049-D65B-2CB618B2F79A";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000016 ;
createNode transform -n "RightEyeLidUp4Ctrl" -p "RightEyeLidUp4CtrlRvsGrp";
	rename -uid "9118D5A9-4C61-BA14-1816-61949E81BE00";
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
	rename -uid "601253AB-49EF-5B26-66F8-11A41A49FDD3";
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
	rename -uid "E4ADAA4F-4E07-2BC5-DADB-01B2AE40E945";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp5CtrlGrpGrp" -p "RightEyeLidUp5CtrlPosGrp";
	rename -uid "E1D97262-4550-18EB-710E-F591DD2B8D0A";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "RightEyeLidUp5CtrlRvsGrp" -p "RightEyeLidUp5CtrlGrpGrp";
	rename -uid "EA86D13E-454E-9657-2745-B3BF4AD2169B";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
createNode transform -n "RightEyeLidUp5Ctrl" -p "RightEyeLidUp5CtrlRvsGrp";
	rename -uid "DAB5DAFA-456B-29BC-B9CA-578FF33EC3C1";
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
	rename -uid "12039262-4DE2-A621-563D-B8B1E2AB5044";
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
	rename -uid "9A518C92-4CB6-A420-8954-53A9AFD60E19";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp6CtrlGrpGrp" -p "RightEyeLidUp6CtrlPosGrp";
	rename -uid "DB5206E2-4D05-3575-E617-6FA9975B0180";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "RightEyeLidUp6CtrlRvsGrp" -p "RightEyeLidUp6CtrlGrpGrp";
	rename -uid "298B21B0-4B5C-6908-8330-DF88305325F0";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidUp6Ctrl" -p "RightEyeLidUp6CtrlRvsGrp";
	rename -uid "AFEE29FB-4959-76DE-DB4D-B98AF4583AEB";
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
	rename -uid "C308653C-40C0-8E67-3135-46907A1BD5CC";
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
	rename -uid "4F35D973-4AC4-AD8F-28ED-4C90641DF57E";
createNode transform -n "RightEyeLidDown2CtrlPosGrp" -p "RightEyeLidDownCtrlGrp";
	rename -uid "6FFF2009-4DB4-0B4F-5FE4-E9B2C42BD349";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown2CtrlGrpGrp" -p "RightEyeLidDown2CtrlPosGrp";
	rename -uid "44C3CCB7-4C5A-3DB9-D1AF-86892BD09284";
	setAttr ".s" -type "double3" 0.99999999999999889 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown2CtrlRvsGrp" -p "RightEyeLidDown2CtrlGrpGrp";
	rename -uid "D201ABC6-4039-43E4-4726-97A4D2D5549B";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000002 0.99999999999999911 ;
createNode transform -n "RightEyeLidDown2Ctrl" -p "RightEyeLidDown2CtrlRvsGrp";
	rename -uid "2DBAB4C6-451D-46AE-012B-05BEE293538C";
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
	rename -uid "576BE1E2-4E8C-2454-D3A4-1EBD3A21B3EA";
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
	rename -uid "854531D5-47C5-03AB-9F2F-909A7596E811";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown3CtrlGrpGrp" -p "RightEyeLidDown3CtrlPosGrp";
	rename -uid "355FAD68-41DB-646E-A426-D6BB0709424F";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "RightEyeLidDown3CtrlRvsGrp" -p "RightEyeLidDown3CtrlGrpGrp";
	rename -uid "1DC7D866-4E91-045C-5C91-A6813D66CC52";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown3Ctrl" -p "RightEyeLidDown3CtrlRvsGrp";
	rename -uid "850F6C0A-41F1-248F-4817-50A471E30B59";
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
	rename -uid "75530A3A-4743-25DA-39D7-2997E96702B4";
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
	rename -uid "70C11DDC-4006-08EA-35CC-F6ABBB1DC2C9";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown4CtrlGrpGrp" -p "RightEyeLidDown4CtrlPosGrp";
	rename -uid "7A26CE0F-4944-4670-0DE9-6A82F545DF5F";
	setAttr ".s" -type "double3" 1.0000000000000009 1 0.99999999999999933 ;
createNode transform -n "RightEyeLidDown4CtrlRvsGrp" -p "RightEyeLidDown4CtrlGrpGrp";
	rename -uid "3D68F80E-44C4-0E2B-9547-AF8955CCFC0C";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidDown4Ctrl" -p "RightEyeLidDown4CtrlRvsGrp";
	rename -uid "4F6DD6F0-4119-1ED1-4D2D-25A93B1287F2";
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
	rename -uid "065678E3-4C41-67B0-EEEF-7A8BE8CA21DC";
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
	rename -uid "143978A0-43F2-CE14-07CA-7F891E7A8E9C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown5CtrlGrpGrp" -p "RightEyeLidDown5CtrlPosGrp";
	rename -uid "F9EFC9D9-4143-2D36-9C3D-57A7F3EAA99A";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown5CtrlRvsGrp" -p "RightEyeLidDown5CtrlGrpGrp";
	rename -uid "83368A76-440E-0EE4-DE58-A9AD87CF8092";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
createNode transform -n "RightEyeLidDown5Ctrl" -p "RightEyeLidDown5CtrlRvsGrp";
	rename -uid "1C46A36D-4471-6326-B953-FEBB686200D3";
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
	rename -uid "856D78EB-4D28-6B08-4E4A-1A8BFC8E226D";
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
	rename -uid "B1D442F7-4D75-EB0C-0ADD-28A6867AD10D";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidDown6CtrlGrpGrp" -p "RightEyeLidDown6CtrlPosGrp";
	rename -uid "F770A8F1-4678-87EE-FC14-6FAD7B8211C8";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1 ;
createNode transform -n "RightEyeLidDown6CtrlRvsGrp" -p "RightEyeLidDown6CtrlGrpGrp";
	rename -uid "5CB1BFBD-4EB0-759D-608A-EBB27ADDE416";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidDown6Ctrl" -p "RightEyeLidDown6CtrlRvsGrp";
	rename -uid "8541BF66-4EDD-8F57-546B-EA9EF98BA88C";
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
	rename -uid "80527670-456F-5912-45AC-8A8ED50D1F22";
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
	rename -uid "E265FFBD-48F0-35EB-23B8-10B2B0B8C1DA";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide1CtrlGrpGrp" -p "RightEyeLidSide1CtrlPosGrp";
	rename -uid "313D9D81-423A-2878-B002-5DA6FC92FA05";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide1CtrlRvsGrp" -p "RightEyeLidSide1CtrlGrpGrp";
	rename -uid "8774C227-4651-52C3-C0DA-81B8CE7407AF";
	setAttr ".s" -type "double3" 1.0000000000000011 1 0.99999999999999967 ;
createNode transform -n "RightEyeLidSide1Ctrl" -p "RightEyeLidSide1CtrlRvsGrp";
	rename -uid "19BC43B8-4626-DC8A-AABF-64AA489B63AB";
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
	rename -uid "7C3889EA-48C2-6809-0CAA-ACB32BA73557";
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
	rename -uid "A7BC6C9A-4D53-B6F6-20F1-779088E214E8";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidSide2CtrlGrpGrp" -p "RightEyeLidSide2CtrlPosGrp";
	rename -uid "C0DFAE41-487E-793A-3B87-FAA67A9472D0";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidSide2CtrlRvsGrp" -p "RightEyeLidSide2CtrlGrpGrp";
	rename -uid "80047C21-4091-3124-0EE9-7E946755D8D3";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
createNode transform -n "RightEyeLidSide2Ctrl" -p "RightEyeLidSide2CtrlRvsGrp";
	rename -uid "EDEC25C3-45A0-CF9A-2CF4-9D9D437AED74";
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
	rename -uid "BF8DA010-438C-0978-673C-FC82102A39FB";
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
	rename -uid "53F3B777-4D13-9373-898C-97B28B43601E";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUpCtrlGrp" -p "RightEyeLidOutCtrlGrp";
	rename -uid "BF662824-454D-D998-E282-448ECA8816A0";
createNode transform -n "RightEyeLidOutUp1CtrlPos" -p "RightEyeLidOutUpCtrlGrp";
	rename -uid "9A66B743-4AFD-AD29-D624-9891D3757CF7";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1CtrlGrp" -p "RightEyeLidOutUp1CtrlPos";
	rename -uid "19B08657-44D0-C72F-64C9-C4AB9AD135B0";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutUp1CtrlRvs" -p "RightEyeLidOutUp1CtrlGrp";
	rename -uid "9C164D17-4905-DD95-39A5-D0A31E2C6B27";
createNode transform -n "RightEyeLidOutUp1Ctrl" -p "RightEyeLidOutUp1CtrlRvs";
	rename -uid "CBBB19B4-4D7C-2259-7B75-50950E64A68A";
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
	rename -uid "FCAA3AB8-42C5-89C5-A813-D2815EC812BB";
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
	rename -uid "05537858-400C-A4E3-8823-D59F3BA1811C";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp2CtrlGrp" -p "RightEyeLidOutUp2CtrlPos";
	rename -uid "17AC1406-4DA0-46FF-0366-04A4E555CFAA";
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp2CtrlRvs" -p "RightEyeLidOutUp2CtrlGrp";
	rename -uid "B42B1867-4A5E-84A1-0DA7-CFBD9D6CFF5A";
createNode transform -n "RightEyeLidOutUp2Ctrl" -p "RightEyeLidOutUp2CtrlRvs";
	rename -uid "40FDEF84-4F44-4CCB-EB93-A2BB3D875A52";
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
	rename -uid "099A2B2C-42E3-95FE-8435-DFAA3BB24507";
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
	rename -uid "5FDE1CC0-4161-CE56-6157-D1A3E324DCB7";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp3CtrlGrp" -p "RightEyeLidOutUp3CtrlPos";
	rename -uid "48017609-4DA5-9222-1BC7-3E89D1A9A9E0";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp3CtrlRvs" -p "RightEyeLidOutUp3CtrlGrp";
	rename -uid "5AC83151-4386-F7FB-94E9-D7A762A1ED21";
createNode transform -n "RightEyeLidOutUp3Ctrl" -p "RightEyeLidOutUp3CtrlRvs";
	rename -uid "B2C36B30-4FB7-A06E-9C54-D580DB319E5D";
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
	rename -uid "CE6D0999-4E02-8962-E491-DD9C2D169B60";
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
	rename -uid "98ABBB17-4C76-7D04-FDAD-5E88A4E06778";
createNode transform -n "RightEyeLidOutDown1CtrlPos" -p "RightEyeLidOutDownCtrlGrp";
	rename -uid "D30B2422-40AD-FF49-22EB-C7B0EDAB4970";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown1CtrlGrp" -p "RightEyeLidOutDown1CtrlPos";
	rename -uid "6C81863A-48D7-A3A9-476D-A09452D43CEE";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightEyeLidOutDown1CtrlRvs" -p "RightEyeLidOutDown1CtrlGrp";
	rename -uid "1EC55BC1-4D6C-BDFB-4BC1-83AA00B30560";
createNode transform -n "RightEyeLidOutDown1Ctrl" -p "RightEyeLidOutDown1CtrlRvs";
	rename -uid "180F4558-455F-4DB8-DE72-06AE988B13A7";
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
	rename -uid "E202917B-4B0B-23BF-D4A2-C28BE6DC5160";
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
	rename -uid "85FBABC2-4C6E-91B6-F3DB-9CA021C7B262";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CtrlGrp" -p "RightEyeLidOutDown2CtrlPos";
	rename -uid "E5F89887-4C5C-34CB-2D5D-D596E99A12A6";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown2CtrlRvs" -p "RightEyeLidOutDown2CtrlGrp";
	rename -uid "253DB145-455A-2599-FD03-FAA9F92E680E";
createNode transform -n "RightEyeLidOutDown2Ctrl" -p "RightEyeLidOutDown2CtrlRvs";
	rename -uid "BAA64EFC-4FB4-AD6C-F108-CB95D582C542";
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
	rename -uid "869FB9D9-4D17-8CC8-33C7-4184A95CAE60";
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
	rename -uid "B945C8DC-419F-B096-1CA5-D29F565F6230";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutDown3CtrlGrp" -p "RightEyeLidOutDown3CtrlPos";
	rename -uid "8A7B4D16-4ED8-CBD8-82E4-37B468B88C6F";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999967 ;
createNode transform -n "RightEyeLidOutDown3CtrlRvs" -p "RightEyeLidOutDown3CtrlGrp";
	rename -uid "6C5015F8-4FDA-57DB-63EB-46925A7E8989";
createNode transform -n "RightEyeLidOutDown3Ctrl" -p "RightEyeLidOutDown3CtrlRvs";
	rename -uid "8787A422-4306-7230-D3FC-068A71318566";
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
	rename -uid "1D237008-4C6E-B66C-3B0D-0DAFAE1B5951";
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
	rename -uid "61B7C7A9-4824-5205-0DA6-56B92DD2BB19";
	setAttr ".t" -type "double3" 2.7794001988259354e-08 1.2079227474220405e-13 3.5527121070426552e-15 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidInCtrlPos" -p "RightEyeLidMainCtrlGrp";
	rename -uid "DCDC6D6C-49D8-91E0-3550-0F91D868103E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidInMainCtrlGrp" -p "RightEyeLidInCtrlPos";
	rename -uid "9FF76237-417B-2BB9-B3FF-3892BD47BAC6";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "RightEyeLidInMainCtrlRvs" -p "RightEyeLidInMainCtrlGrp";
	rename -uid "A1686091-40AA-1F53-E649-00BE1351F913";
createNode transform -n "RightEyeLidInMainCtrl" -p "RightEyeLidInMainCtrlRvs";
	rename -uid "0F7AD664-4702-6693-70A3-49B4C92DDC15";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RightEyeLidInMainCtrlShape" -p "RightEyeLidInMainCtrl";
	rename -uid "9619AE42-4737-2463-764B-98BBD05F6638";
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
	rename -uid "DFD604C7-4C17-5F7A-7D90-6D82C378425A";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidUpMainCtrlGrp" -p "RightEyeLidUpCtrlPos";
	rename -uid "BA60241C-406E-3718-AB37-10853C817EFB";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "RightEyeLidUpMainCtrlRvs" -p "RightEyeLidUpMainCtrlGrp";
	rename -uid "D37639C7-4112-0623-2D33-3F8235D6EABA";
createNode transform -n "RightEyeLidUpMainCtrl" -p "RightEyeLidUpMainCtrlRvs";
	rename -uid "F36771F6-4F48-7D8A-0A38-1CB3A0800F8B";
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
	rename -uid "559E6E58-4F8A-16C6-CAE2-F79C6365C241";
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
	rename -uid "6E3245DC-4990-D025-04DF-BF9DF8C2D6DC";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutMainCtrlGrp" -p "RightEyeLidOutCtrlPos";
	rename -uid "CD5482D6-4DF8-6D9E-A9E4-1FB763E424B4";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "RightEyeLidOutMainCtrlRvs" -p "RightEyeLidOutMainCtrlGrp";
	rename -uid "1D25989E-463E-8851-0C16-DA8A90545A43";
createNode transform -n "RightEyeLidOutMainCtrl" -p "RightEyeLidOutMainCtrlRvs";
	rename -uid "926C2B87-40FC-819E-9D1F-F48178865EE3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LeftEyeLidInMainCtrl1Shape" -p "RightEyeLidOutMainCtrl";
	rename -uid "CCECE53A-4CA3-B1C0-02A3-94A389FE82E7";
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
	rename -uid "24F3BABD-4519-8FB8-7CDF-C3BAA463A479";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidDownMainCtrlGrp" -p "RightEyeLidDownCtrlPos";
	rename -uid "AF65FFF5-4639-92D0-8C5D-5C815237D146";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "RightEyeLidDownMainCtrlRvs" -p "RightEyeLidDownMainCtrlGrp";
	rename -uid "87B0A4FE-4CF9-3DEF-A466-33B92780F331";
createNode transform -n "RightEyeLidDownMainCtrl" -p "RightEyeLidDownMainCtrlRvs";
	rename -uid "799D4941-4592-1AE6-9659-CF9104625275";
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
	rename -uid "50166F67-43BA-D2E3-96C4-A8B1A2747BA5";
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
	rename -uid "CE698529-48B8-9697-B34E-75AE7ADE6225";
createNode transform -n "RightEyeLidCCtrlOffGrp" -p "RightEyeLidCCtrlGrp";
	rename -uid "B914C687-4172-AB70-4B21-51887445EDA0";
	setAttr ".t" -type "double3" 0 0 3 ;
createNode transform -n "RightEyeLidCCtrl" -p "RightEyeLidCCtrlOffGrp";
	rename -uid "7E66FEE3-4744-6244-C1F6-438CE7261F08";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "RightEyeLidCCtrlShape" -p "RightEyeLidCCtrl";
	rename -uid "437F7B15-45A9-E909-D039-549B50A6D7C9";
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
	rename -uid "0D9428BA-40EB-F129-1957-05B754393388";
	setAttr ".r" -type "double3" -90 0 -90 ;
createNode transform -n "LeftEyeLidSysGrp" -p "EyeLidSysGrp";
	rename -uid "3CCABC8A-4749-A441-543B-BDA34E287890";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LeftEyeLidCrvGrp" -p "LeftEyeLidSysGrp";
	rename -uid "8EAD80CE-4668-FF14-4BBA-31AE1C6CE523";
	setAttr ".ovdt" 2;
createNode transform -n "LeftEyeLidUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "B322A8FC-49C7-D605-4BD5-318182E711E3";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidUpCrvShape" -p "LeftEyeLidUpCrv";
	rename -uid "95AF6511-475B-F2BE-316F-B48D73894DCB";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.4229062286566352 3.9398019501284712e-13 2.9999999999999911
		1.4229062286566352 3.9398019501284712e-13 2.9999999999999911
		0.91345199371686103 2.1716438503816433 2.9999999387567886
		3.0000000475162434 2.1988641372974422 2.9999999387567668
		5.2395649341865802 2.1776223673096529 2.9999999387567686
		5.3180398997728648 1.7781384615134224e-12 2.9999999999999787
		5.3180398997728648 1.7781384615134224e-12 2.9999999999999787
		;
createNode transform -n "LeftEyeLidDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "2A185F1A-496C-C1D8-ABD5-0385C7439B0C";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidDownCrvShape" -p "LeftEyeLidDownCrv";
	rename -uid "7E79D2DE-423E-E851-CBA5-77939EEC12C8";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.4229062286566352 3.9398019501284712e-13 2.9999999999999911
		1.4229062286566352 3.9398019501284712e-13 2.9999999999999911
		0.94987557844686732 -2.0848451828449694 2.9999999909604189
		3.0000000277947438 -2.0782131034139866 2.9999999909604296
		5.4473922412611273 -2.0365828998522755 2.9999999909604225
		5.3180398997728648 1.7781384615134224e-12 2.9999999999999787
		5.3180398997728648 1.7781384615134224e-12 2.9999999999999787
		;
createNode transform -n "LeftEyeLidUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "50CAC733-4C78-F35F-399F-1E8EA0164291";
createNode nurbsCurve -n "LeftEyeLidUpJntCrvShape" -p "LeftEyeLidUpJntCrv";
	rename -uid "FFBA7D7F-4F38-6196-F949-96A9959DBEBA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.6057619006184951 2.112790602545273e-12 2.6492255351027283
		1.587043409970982 0.48797602631460396 2.5934855848001748
		1.9031894509306098 1.3252189480909293 2.4528664790148569
		3.0000000445700987 1.7755272619269307 2.4140850883153409
		4.2739829860823821 1.2921419141502104 2.3853931082740627
		4.763454360965488 0.44871324698002069 2.3804159618505771
		4.8368806683775887 3.3300990753617219e-12 2.3685583538122317
		;
createNode transform -n "LeftEyeLidDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "DED7DB9C-40CA-82E5-B8C0-54B61CFF8CF7";
createNode nurbsCurve -n "LeftEyeLidDownJntCrvShape" -p "LeftEyeLidDownJntCrv";
	rename -uid "C0A7254F-4AC3-4BA1-130B-4BA71BCA1246";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.60576190061849 2.1096819780763209e-12 2.6492255351027283
		1.5910121019054024 -0.46835993238400869 2.5992124607449685
		1.9054410584200556 -1.2774549718480266 2.4787015409260404
		3.0000000277964585 -1.7096859157890643 2.4603377129103148
		4.3472019913733915 -1.2145480234046804 2.3858353840180135
		4.7899324080594115 -0.41762382241756718 2.3666027814698745
		4.8368806683775851 3.3309872537814208e-12 2.3685583538122317
		;
createNode transform -n "LeftEyeLidOutUpCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "AE2F04B2-45E2-5958-037E-2B99178E2C0C";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidOutUpCrvShape" -p "LeftEyeLidOutUpCrv";
	rename -uid "00BEC978-4C55-3EE6-1BD4-069D8A2EDA6B";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277934662 1.5000000000002376 2.9999999999999831
		1.0000000277934662 1.5000000000002376 2.9999999999999831
		1.5000000277931074 2.5000000000004157 2.9999999999999885
		3.0000000277931065 2.5000000000009508 2.9999999999999889
		4.5000000277931056 2.5000000000014859 2.9999999999999893
		5.0000000277934635 1.5000000000016587 2.9999999999999911
		5.0000000277934635 1.5000000000016587 2.9999999999999911
		;
createNode transform -n "LeftEyeLidOutDownCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "088BCAC2-4257-4D49-31A2-A49CCCD2B362";
	setAttr ".v" no;
createNode bezierCurve -n "LeftEyeLidOutDownCrvShape" -p "LeftEyeLidOutDownCrv";
	rename -uid "F580E020-463A-0434-1079-F6B17329FAB6";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		1.0000000277945371 -1.4999999999997591 2.9999999999999911
		1.0000000277945371 -1.4999999999997591 2.9999999999999911
		1.5000000277948953 -2.4999999999995817 2.9999999999999898
		3.0000000277948944 -2.4999999999990465 2.9999999999999902
		4.5000000277948935 -2.4999999999985114 2.9999999999999907
		5.0000000277945365 -1.4999999999983269 2.9999999999999911
		5.0000000277945365 -1.4999999999983269 2.9999999999999911
		;
createNode transform -n "LeftEyeLidOutUpJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "FB45431B-49A4-5974-0323-D4A4213C0020";
createNode nurbsCurve -n "LeftEyeLidOutUpJntCrvShape" -p "LeftEyeLidOutUpJntCrv";
	rename -uid "DA85A946-491F-6004-05CF-CF88E9A87138";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.4625819765459334 1.1555102416209166 2.2995613350221649
		1.9215632495930877 1.7929690625657531 2.1479848246261453
		3.0000000277926255 1.9237565432932289 2.2997590973116724
		4.0784368059923519 1.7929690625672927 2.1479848246261466
		4.5374180790404157 1.1555102416231049 2.2995613350221711
		;
createNode transform -n "LeftEyeLidOutDownJntCrv" -p "LeftEyeLidCrvGrp";
	rename -uid "AC1A7D3A-4882-D5B9-4AB4-848573CB257D";
createNode nurbsCurve -n "LeftEyeLidOutDownJntCrvShape" -p "LeftEyeLidOutDownJntCrv";
	rename -uid "0912D738-4613-57DE-D57C-2FAF43AB6863";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.4625819765475843 -1.1555102416190657 2.2995613350221689
		1.9215632495956469 -1.7929690625632502 2.1479848246261475
		3.0000000277953731 -1.923756543289229 2.2997590973116395
		4.0784368059949117 -1.7929690625617105 2.1479848246261493
		4.5374180790420677 -1.1555102416168674 2.2995613350221702
		;
createNode transform -n "LeftEyeLidSurfPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "2D6141BC-439A-24FE-2B4F-0ABEB6390CAA";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "4224A089-463C-9F0C-0952-D0AB60C26CD6";
createNode transform -n "LeftEyeLidUp1Pos" -p "LeftEyeLidUpCtrl0PosSurfPos";
	rename -uid "3DD7A32C-48A1-31C5-72AD-47BE0FA62397";
	setAttr ".t" -type "double3" 8.9364072216180461e-18 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp1PosShape" -p "LeftEyeLidUp1Pos";
	rename -uid "2B780AA6-4D91-6B35-B810-0DB595E56D45";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "1901CD78-428A-9252-A0BF-F080BDDF9AE9";
createNode transform -n "LeftEyeLidUp2Pos" -p "LeftEyeLidUpCtrl1PosSurfPos";
	rename -uid "A1263262-4166-3B81-725F-5CA5FB785FBF";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
createNode locator -n "LeftEyeLidUp2PosShape" -p "LeftEyeLidUp2Pos";
	rename -uid "99FE1D5B-4630-2FA3-8B7F-548FC084D944";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "D6BE7FBB-4A9A-527C-6BE6-C2996DDB13B3";
createNode transform -n "LeftEyeLidUp3Pos" -p "LeftEyeLidUpCtrl2PosSurfPos";
	rename -uid "3B9761B0-432F-8CAF-4BD3-C18D4464C611";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.7763568394002505e-15 0 ;
createNode locator -n "LeftEyeLidUp3PosShape" -p "LeftEyeLidUp3Pos";
	rename -uid "00C60419-4348-B8C2-EE70-5598423090EE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "A3456873-44A3-088F-C55D-08AA348C3B87";
createNode transform -n "LeftEyeLidUp4Pos" -p "LeftEyeLidUpCtrl3PosSurfPos";
	rename -uid "02C176D5-41D9-47EA-7E46-C78924565821";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 3.5180192092809648e-15 0 ;
createNode locator -n "LeftEyeLidUp4PosShape" -p "LeftEyeLidUp4Pos";
	rename -uid "47654EB5-4D29-E19F-A46E-1586965CFF63";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "E5772273-41A0-4A45-DCAC-F1A614BF299E";
createNode transform -n "LeftEyeLidUp5Pos" -p "LeftEyeLidUpCtrl4PosSurfPos";
	rename -uid "D60907DC-4838-1BE8-BF76-9FAF942FA2C9";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -6.6613381477509392e-16 0 ;
createNode locator -n "LeftEyeLidUp5PosShape" -p "LeftEyeLidUp5Pos";
	rename -uid "C9DC4160-41AF-CB89-ED34-5E8D8675EEE9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "E83CCE5D-4D95-59A8-D7B4-A28CFCDB9097";
createNode transform -n "LeftEyeLidUp6Pos" -p "LeftEyeLidUpCtrl5PosSurfPos";
	rename -uid "3AE351EF-49DB-B2B6-B85A-699ECDD6FCD9";
	setAttr ".t" -type "double3" 1.4432899320127035e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidUp6PosShape" -p "LeftEyeLidUp6Pos";
	rename -uid "5DEEE763-45D2-F61C-6C73-9FB5CB5B57D4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "C10D0C25-4149-2224-2B5A-0B8D573EC1F9";
createNode transform -n "LeftEyeLidUp7Pos" -p "LeftEyeLidUpCtrl6PosSurfPos";
	rename -uid "BD325CBD-4850-00A1-334A-4AAB61C0B71B";
	setAttr ".t" -type "double3" 4.468203612828507e-18 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidUp7PosShape" -p "LeftEyeLidUp7Pos";
	rename -uid "4B6D52FF-4AF8-A6FE-8419-58B050B7568F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "51411797-4821-04C5-F588-46B077C5C5DE";
createNode transform -n "LeftEyeLidDown1Pos" -p "LeftEyeLidDownCtrl0PosSurfPos";
	rename -uid "E41E5A2E-450D-89BC-8F4A-6893B5E431D9";
	setAttr ".t" -type "double3" -5.0764197278579096e-15 -2.2204460492503131e-15 0 ;
createNode locator -n "LeftEyeLidDown1PosShape" -p "LeftEyeLidDown1Pos";
	rename -uid "AEA9FF84-4894-5516-0A48-099050CDF9E1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "1E25587A-4FD8-2D80-625F-22A463BE288A";
createNode transform -n "LeftEyeLidDown2Pos" -p "LeftEyeLidDownCtrl1PosSurfPos";
	rename -uid "3AFB1E1B-4069-E0FE-6EBE-CFAB6D8961B0";
	setAttr ".t" -type "double3" -2.1094237467877974e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown2PosShape" -p "LeftEyeLidDown2Pos";
	rename -uid "76B2654A-4F40-E5D7-4787-9282EA2C0E73";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "A1959F90-481D-E24B-C8CD-7382E7B0C3AD";
createNode transform -n "LeftEyeLidDown3Pos" -p "LeftEyeLidDownCtrl2PosSurfPos";
	rename -uid "365FF491-4D65-D664-C5AE-249879A6705F";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 8.8817841970012523e-16 0 ;
createNode locator -n "LeftEyeLidDown3PosShape" -p "LeftEyeLidDown3Pos";
	rename -uid "E6F238A6-4FC2-FD58-7799-1B9D0648E5FD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "8B137C87-43BB-9F36-EC03-A4BE19CFE93F";
createNode transform -n "LeftEyeLidDown4Pos" -p "LeftEyeLidDownCtrl3PosSurfPos";
	rename -uid "95712C1F-447D-E6CD-F098-918F89BB0CC1";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -1.4675760606763788e-15 0 ;
createNode locator -n "LeftEyeLidDown4PosShape" -p "LeftEyeLidDown4Pos";
	rename -uid "CBA86012-435D-E91C-D95C-6A9CA56C35D8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "FF45F46E-47EF-1F65-7CE6-E2B36ED2CD87";
createNode transform -n "LeftEyeLidDown5Pos" -p "LeftEyeLidDownCtrl4PosSurfPos";
	rename -uid "20FD0701-446C-C610-CF0E-A2AFA4D615AF";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 -3.3306690738754696e-15 0 ;
createNode locator -n "LeftEyeLidDown5PosShape" -p "LeftEyeLidDown5Pos";
	rename -uid "99C7C7D5-4035-EA59-EFA9-86B2148B6207";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "D4D758D3-42AF-22CA-9104-1FA483D29EE2";
createNode transform -n "LeftEyeLidDown6Pos" -p "LeftEyeLidDownCtrl5PosSurfPos";
	rename -uid "0E65D344-4E9F-9CCC-8EDB-3B951140C6AB";
	setAttr ".t" -type "double3" -6.6613381477509392e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown6PosShape" -p "LeftEyeLidDown6Pos";
	rename -uid "49DA5A8F-4342-5893-6068-A990B5FC9F83";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6PosSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "0C393E63-49C6-818C-A942-D9BEC7B4F105";
createNode transform -n "LeftEyeLidDown7Pos" -p "LeftEyeLidDownCtrl6PosSurfPos";
	rename -uid "CB4DCB09-4A59-ABB7-C743-A1943A19F19F";
	setAttr ".t" -type "double3" -3.3597046987097301e-15 4.4408920985006262e-16 0 ;
createNode locator -n "LeftEyeLidDown7PosShape" -p "LeftEyeLidDown7Pos";
	rename -uid "216F1BD8-4BAC-5298-4FCD-AB9CF2B9A586";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "7B518A93-4F3B-CD29-735A-92827D6BB1EB";
createNode transform -n "LeftLeftEyeLidOutUp1LocSurfPosLoc" -p "LeftEyeLidOutUp1LocSurfPos";
	rename -uid "67F95787-4357-6A4D-6810-E0886BA05D5A";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "LeftLeftEyeLidOutUp1LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp1LocSurfPosLoc";
	rename -uid "3822357F-4954-AB83-7698-E4ACCE166519";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "23180DCD-433F-30EF-5E9F-7B825D6E6A86";
createNode transform -n "LeftEyeLidOutUp2CvPos1SurfPosLoc" -p "LeftEyeLidOutUp2CvPos1SurfPos";
	rename -uid "BAB7D977-4863-F32E-E556-A3B0B9A5FDE0";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1SurfPosLocShape" -p "LeftEyeLidOutUp2CvPos1SurfPosLoc";
	rename -uid "FC0AF0D5-4A0B-C6E3-A0FF-F49E34FAF6D5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "3614F799-420A-659E-C454-3E95BC2E94A1";
createNode transform -n "LeftLeftEyeLidOutUp2LocSurfPosLoc" -p "LeftEyeLidOutUp2LocSurfPos";
	rename -uid "DDCDA759-4C9C-00FE-7046-28AFC8FE7EDF";
createNode locator -n "LeftLeftEyeLidOutUp2LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp2LocSurfPosLoc";
	rename -uid "BE3526C7-4E85-F8D9-0626-F89D7C0D3CAE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "5FFCA61F-4D62-C2F7-C45D-A784668FDA1F";
createNode transform -n "LeftEyeLidOutUp2CvPos2SurfPosLoc" -p "LeftEyeLidOutUp2CvPos2SurfPos";
	rename -uid "454FBA49-4CF1-FE20-2960-EC8C2EBFAD31";
createNode locator -n "LeftEyeLidOutUp2CvPos2SurfPosLocShape" -p "LeftEyeLidOutUp2CvPos2SurfPosLoc";
	rename -uid "F016A800-46BD-8F15-C035-619B9FA52F65";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "F9E9E7C9-47F5-BDD8-F3A6-C1B19E048670";
createNode transform -n "LeftLeftEyeLidOutUp3LocSurfPosLoc" -p "LeftEyeLidOutUp3LocSurfPos";
	rename -uid "9C7823B8-4541-F498-22AB-E7A7BD766376";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftLeftEyeLidOutUp3LocSurfPosLocShape" -p "LeftLeftEyeLidOutUp3LocSurfPosLoc";
	rename -uid "69D6B28D-473D-19ED-E272-E5B47E01592D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown1LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "4CCEBC4F-4BC4-065C-CFD5-82985148292A";
createNode transform -n "LeftLeftEyeLidOutDown1LocSurfPosLoc" -p "LeftEyeLidOutDown1LocSurfPos";
	rename -uid "7D010BE1-4CCB-0EE1-286D-70B6E54D98C9";
createNode locator -n "LeftLeftEyeLidOutDown1LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown1LocSurfPosLoc";
	rename -uid "10807D6E-4CD8-6789-8D14-709F35453430";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "BC403EB5-4C07-811E-B346-65A55595EB72";
createNode transform -n "LeftEyeLidOutDown2CvPos1SurfPosLoc" -p "LeftEyeLidOutDown2CvPos1SurfPos";
	rename -uid "6D9092C6-4EEB-2C01-6697-40A1CF3B1054";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1SurfPosLocShape" -p "LeftEyeLidOutDown2CvPos1SurfPosLoc";
	rename -uid "2FA725CB-496E-7DEB-9813-999A23C2F74E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "42C11FBF-4CA7-2E7F-090B-96BA0D3EE342";
createNode transform -n "LeftLeftEyeLidOutDown2LocSurfPosLoc" -p "LeftEyeLidOutDown2LocSurfPos";
	rename -uid "E05885C9-4109-07DD-B2F4-A9912EA54D09";
createNode locator -n "LeftLeftEyeLidOutDown2LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown2LocSurfPosLoc";
	rename -uid "D1E98C13-4D53-E2C0-3B3B-0882E9D757BE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2SurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "B08267B9-4FE0-B05A-5350-E3AA2256CD1B";
createNode transform -n "LeftEyeLidOutDown2CvPos2SurfPosLoc" -p "LeftEyeLidOutDown2CvPos2SurfPos";
	rename -uid "170F60DC-4947-70E4-D929-A392FD5A6440";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2SurfPosLocShape" -p "LeftEyeLidOutDown2CvPos2SurfPosLoc";
	rename -uid "8D7DAEDD-4F52-F798-C213-6AAA20E6E6B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocSurfPos" -p "LeftEyeLidSurfPosGrp";
	rename -uid "FBBE5CDF-4AC4-A64A-4F6E-5A8306F5E0C3";
createNode transform -n "LeftLeftEyeLidOutDown3LocSurfPosLoc" -p "LeftEyeLidOutDown3LocSurfPos";
	rename -uid "93E025AC-4FE4-C6B9-38EB-C7BE990F57BE";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftLeftEyeLidOutDown3LocSurfPosLocShape" -p "LeftLeftEyeLidOutDown3LocSurfPosLoc";
	rename -uid "30E7E575-43BA-8095-EDE1-7EB40D0E691D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCrvPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "E7DF2D61-46E8-1DD1-4467-3F88CAE378C8";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidUpCrv0Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "316D1DA9-4E9F-3CF3-0613-BBBF8F297567";
createNode locator -n "LeftEyeLidUpCrv0PosShape" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "3B98D02E-4A4A-14F2-5FDB-90A726834106";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl0Pos" -p "LeftEyeLidUpCrv0Pos";
	rename -uid "74128B48-4A9E-4A5F-BF37-4EAA7C7FE818";
createNode locator -n "LeftEyeLidUpCtrl0PosShape" -p "LeftEyeLidUpCtrl0Pos";
	rename -uid "430E0225-4F71-6AA2-4AED-05B1B1371F57";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv1Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "78313BD8-43F2-D6B9-D4E4-58B91DC63541";
createNode locator -n "LeftEyeLidUpCrv1PosShape" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "5FD653AC-4E19-29CC-D289-F3BC071CB502";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl1Pos" -p "LeftEyeLidUpCrv1Pos";
	rename -uid "9BB7B215-48D0-1A8D-4809-758E7632CC34";
createNode locator -n "LeftEyeLidUpCtrl1PosShape" -p "LeftEyeLidUpCtrl1Pos";
	rename -uid "6EE3D027-41A7-E2D7-5B6C-EF9E1631BF6E";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv2Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "7EB5F7F6-441C-92B6-9312-0C9BF395951A";
createNode locator -n "LeftEyeLidUpCrv2PosShape" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "531FB5C6-41E1-0ED7-DB6C-C2B05B5C09F0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl2Pos" -p "LeftEyeLidUpCrv2Pos";
	rename -uid "D4767DA1-4C5C-38BD-6EB4-E89186EFA733";
createNode locator -n "LeftEyeLidUpCtrl2PosShape" -p "LeftEyeLidUpCtrl2Pos";
	rename -uid "90E7E830-438D-D131-ABEA-039236734A1E";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv3Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "585E8727-4F54-BFC1-1F51-53A2B4123916";
createNode locator -n "LeftEyeLidUpCrv3PosShape" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "0E2420E1-43D8-2CA2-2CEC-648D6F66D43D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl3Pos" -p "LeftEyeLidUpCrv3Pos";
	rename -uid "667A454D-4E61-F13E-FD55-5596C66FC8F1";
createNode locator -n "LeftEyeLidUpCtrl3PosShape" -p "LeftEyeLidUpCtrl3Pos";
	rename -uid "CD682CA7-4378-DFF0-95AC-0E85FF5C50D0";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv4Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "E55D6640-4CA8-48FC-5239-92A3A2A5C1F8";
createNode locator -n "LeftEyeLidUpCrv4PosShape" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "57F50C84-4D1B-3F75-CE67-E2A412510D70";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl4Pos" -p "LeftEyeLidUpCrv4Pos";
	rename -uid "2D3E3A61-4944-A7CB-3AFD-3588B2F2BD1B";
createNode locator -n "LeftEyeLidUpCtrl4PosShape" -p "LeftEyeLidUpCtrl4Pos";
	rename -uid "1BC80F9E-456E-E93C-57A8-34B7DADCF5F8";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv5Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "46FBBB2F-49B9-7D50-13CC-9DACD07BC874";
createNode locator -n "LeftEyeLidUpCrv5PosShape" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "6DFBDBEF-46EB-2047-31FC-B191CD75A3AC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl5Pos" -p "LeftEyeLidUpCrv5Pos";
	rename -uid "2891B1AC-4F26-F5B3-8C14-84992589D466";
createNode locator -n "LeftEyeLidUpCtrl5PosShape" -p "LeftEyeLidUpCtrl5Pos";
	rename -uid "65CE0F84-4FC5-D4D9-F066-7D9E607643C3";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCrv6Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "51803A0C-4C63-30CF-6DCC-189108DB58E3";
createNode locator -n "LeftEyeLidUpCrv6PosShape" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "35A9B0E4-41F5-B55E-4DFA-AFB59DD0A847";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCtrl6Pos" -p "LeftEyeLidUpCrv6Pos";
	rename -uid "57DEB091-4B15-446B-4D08-D38B514FF746";
createNode locator -n "LeftEyeLidUpCtrl6PosShape" -p "LeftEyeLidUpCtrl6Pos";
	rename -uid "6E95A633-4292-1FE6-0976-D7A4AF4C1D94";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv0Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "A2CB49AA-429F-D3A0-6C77-E48C81EB0F48";
createNode locator -n "LeftEyeLidDownCrv0PosShape" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "3D033292-4EC9-8E26-38DE-37804D5E36E8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl0Pos" -p "LeftEyeLidDownCrv0Pos";
	rename -uid "AB8810FB-426A-A0B6-6056-4DA7FE1ECD8D";
createNode locator -n "LeftEyeLidDownCtrl0PosShape" -p "LeftEyeLidDownCtrl0Pos";
	rename -uid "D93E0A83-418F-A60E-4A3A-04918BF3E2EC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv1Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "7F4B5C31-4467-B900-FE2E-BFA8031899B9";
createNode locator -n "LeftEyeLidDownCrv1PosShape" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "DB0B4460-4C59-12E5-A12A-75AA25CEE0E1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl1Pos" -p "LeftEyeLidDownCrv1Pos";
	rename -uid "279A6EF7-4ABC-4043-D8F0-34830E320901";
createNode locator -n "LeftEyeLidDownCtrl1PosShape" -p "LeftEyeLidDownCtrl1Pos";
	rename -uid "0A3C2254-4632-B00D-F64D-968D8EFC3D4A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv2Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "C79CE632-43A5-07DD-324D-6897AD6DB19C";
createNode locator -n "LeftEyeLidDownCrv2PosShape" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "CB32ED78-4759-B7F2-E85C-FB86CC5FBB92";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl2Pos" -p "LeftEyeLidDownCrv2Pos";
	rename -uid "BBB48F21-46A8-D974-6FD6-099E12C01D7D";
createNode locator -n "LeftEyeLidDownCtrl2PosShape" -p "LeftEyeLidDownCtrl2Pos";
	rename -uid "73ADA951-48BF-46AC-1924-9BB4FDC110D6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv3Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "376EF40F-4AC7-DBCD-D3A2-0B9751894F92";
createNode locator -n "LeftEyeLidDownCrv3PosShape" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "1D00591C-4D7B-014F-205F-46B0613455C7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl3Pos" -p "LeftEyeLidDownCrv3Pos";
	rename -uid "35DF7067-4289-69F7-7EC5-D9914BC4B3CF";
createNode locator -n "LeftEyeLidDownCtrl3PosShape" -p "LeftEyeLidDownCtrl3Pos";
	rename -uid "9028290A-4C61-6E57-DC5D-1B8B4433129B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv4Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "22A812E0-44FE-018D-0409-43995BA7A9CE";
createNode locator -n "LeftEyeLidDownCrv4PosShape" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "3B24682D-4902-1287-680F-6891E9548CB0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl4Pos" -p "LeftEyeLidDownCrv4Pos";
	rename -uid "A22BD904-457D-5248-20A6-81B88C14891A";
createNode locator -n "LeftEyeLidDownCtrl4PosShape" -p "LeftEyeLidDownCtrl4Pos";
	rename -uid "5686D431-4AD9-C4EC-39F1-269DE92F592C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv5Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "784FBE81-4BBD-58AE-1290-62B21B7CB1EB";
createNode locator -n "LeftEyeLidDownCrv5PosShape" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "A20EB1FB-4E2F-1F4B-2D33-CEA121629674";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl5Pos" -p "LeftEyeLidDownCrv5Pos";
	rename -uid "8145D918-4011-EE44-FF09-0E857A623C7B";
createNode locator -n "LeftEyeLidDownCtrl5PosShape" -p "LeftEyeLidDownCtrl5Pos";
	rename -uid "01974ADA-406A-5138-025C-6CB6B71D240B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCrv6Pos" -p "LeftEyeLidCrvPosGrp";
	rename -uid "2925A9C8-42DE-F01C-8F53-F2A3089DB70E";
createNode locator -n "LeftEyeLidDownCrv6PosShape" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "60BE026F-4D16-BC30-6F04-AEA277072056";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCtrl6Pos" -p "LeftEyeLidDownCrv6Pos";
	rename -uid "DD7471DD-4529-5683-EBF9-1E9E98DFDEBB";
createNode locator -n "LeftEyeLidDownCtrl6PosShape" -p "LeftEyeLidDownCtrl6Pos";
	rename -uid "2CB0BAA7-4488-5BFF-06EC-039A678ED517";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosGrp" -p "LeftEyeLidSysGrp";
	rename -uid "3DFC2D43-4263-EE9E-0416-508A10F2D5BD";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "LeftEyeLidCtrl0Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "D1A581D3-4654-CFB7-47F8-A19AA24B6A3C";
createNode locator -n "LeftEyeLidCtrl0PosShape" -p "LeftEyeLidCtrl0Pos";
	rename -uid "05618136-4EC9-3B25-3A29-6CBC70E9438A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl1Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "012CBF8A-4491-BA05-3F6D-8E9DCEDB85EB";
createNode locator -n "LeftEyeLidCtrl1PosShape" -p "LeftEyeLidCtrl1Pos";
	rename -uid "4B3C791B-43F7-CB55-47AC-3EBF0FA88F77";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl2Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "A743CF66-462A-ACA8-7E2E-69A17A89C70C";
createNode locator -n "LeftEyeLidCtrl2PosShape" -p "LeftEyeLidCtrl2Pos";
	rename -uid "A9568817-49F7-FF6D-EEB4-AA9625B6E989";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl3Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "604BCE5C-4651-C8D7-46D8-4FA91235DA8E";
createNode locator -n "LeftEyeLidCtrl3PosShape" -p "LeftEyeLidCtrl3Pos";
	rename -uid "0FCBD70A-4E71-F616-3CBF-54B04D227C76";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl4Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "CF552BA7-42AC-72D7-9BD8-68BE97369CD2";
createNode locator -n "LeftEyeLidCtrl4PosShape" -p "LeftEyeLidCtrl4Pos";
	rename -uid "75F469C9-4740-E2DB-FBE1-87B5298B83A0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl5Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "3F4C1991-4E2A-C069-8F86-E9ABD6D2A641";
createNode locator -n "LeftEyeLidCtrl5PosShape" -p "LeftEyeLidCtrl5Pos";
	rename -uid "5B965BF3-4719-CC82-771C-B9A97963526E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl6Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "DD5353A2-495A-7123-26BC-32A5CB93F845";
createNode locator -n "LeftEyeLidCtrl6PosShape" -p "LeftEyeLidCtrl6Pos";
	rename -uid "CEFF35AF-4F88-7D5D-559E-38AB24F3A22E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl7Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "5CB31EDC-45DF-8AB1-D297-C49E30D3076F";
createNode locator -n "LeftEyeLidCtrl7PosShape" -p "LeftEyeLidCtrl7Pos";
	rename -uid "2F2BEFC2-4A84-E2F9-AC3D-5B96851B9374";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl8Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "519E612C-4446-D4F4-9B46-A5B1CEB59D40";
createNode locator -n "LeftEyeLidCtrl8PosShape" -p "LeftEyeLidCtrl8Pos";
	rename -uid "FD10DF68-44AB-654F-85BD-818354E64B19";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl9Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "97D302C8-4B54-A6CA-805D-29B3C076B5D9";
createNode locator -n "LeftEyeLidCtrl9PosShape" -p "LeftEyeLidCtrl9Pos";
	rename -uid "808CFC22-41A7-595C-19B5-4784A293EDE6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl10Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "7A808723-42AC-35BC-8963-9C9C1F112DF3";
createNode locator -n "LeftEyeLidCtrl10PosShape" -p "LeftEyeLidCtrl10Pos";
	rename -uid "3A644923-42CB-3CE7-0BE5-019484671EC1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrl11Pos" -p "LeftEyeLidCtrlPosGrp";
	rename -uid "30CCC057-4E19-2FEB-0534-B181D4A50A66";
createNode locator -n "LeftEyeLidCtrl11PosShape" -p "LeftEyeLidCtrl11Pos";
	rename -uid "96B7BC0A-4155-6AB4-C157-08AFDE1F92EE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidRootPoserGrp" -p "LeftEyeLidSysGrp";
	rename -uid "C54277C5-432C-36A9-43BD-B58AF0A27CA2";
	setAttr ".t" -type "double3" 2.7794001988259347e-08 -1.2079226507921701e-13 -3.5527136788005009e-15 ;
createNode transform -n "LeftEyeLidRootPoser" -p "LeftEyeLidRootPoserGrp";
	rename -uid "D1714986-41F3-92C8-3228-EFB0493A2B29";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode";
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "LeftEyeLidRootPoserShape" -p "LeftEyeLidRootPoser";
	rename -uid "9CE69264-4376-A4A9-87DD-2C8D2E7D52C3";
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
	rename -uid "F3D04F7E-4088-4C7D-F559-058F1B0B414F";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "LeftEyeBallSurfShape" -p "LeftEyeBallSurf";
	rename -uid "757582DA-40A0-9CAC-F828-92BB83A07453";
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
	rename -uid "7C43BE33-4E17-12AB-4216-0AA41271DE51";
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
	rename -uid "611255AD-4454-53E3-17DD-4A843853ECFC";
createNode transform -n "LeftEyeBallffd1Lattice" -p "LeftEyeBallFFDGrp";
	rename -uid "FC906D41-4CAC-273E-954F-B78DB1A86A4C";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "LeftEyeBallffd1LatticeShape" -p "LeftEyeBallffd1Lattice";
	rename -uid "E2DA50DF-4354-9C2B-359E-B48B3B5EC6AF";
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
	rename -uid "61104DD6-4010-59B4-20E7-C09D8D61DC69";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "LeftEyeBallffd1BaseShape" -p "LeftEyeBallffd1Base";
	rename -uid "03B18006-4061-6AC0-D6C6-F9BC7F7E9FF3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidAimGrp" -p "LeftEyeLidRootPoser";
	rename -uid "0467C53F-4CBA-68F7-EB12-0A8723631A6C";
	setAttr ".v" no;
createNode transform -n "LeftEyeBallFix" -p "LeftEyeLidAimGrp";
	rename -uid "BC633017-4975-FE50-E560-18B0571D5910";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 -1.8388068845354155e-15 1 ;
createNode locator -n "LeftEyeBallFixShape" -p "LeftEyeBallFix";
	rename -uid "66BA7DE7-45EA-E401-1AA9-1CA6D35555EC";
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidUp3AimGrp" -p "LeftEyeLidAimGrp";
	rename -uid "EC23C605-4909-29D6-D59B-6DB0313700ED";
createNode transform -n "LeftEyeLidUp3Aim" -p "LeftEyeLidUp3AimGrp";
	rename -uid "92912430-4FB4-9272-ED26-52B03A697766";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp3AimShape" -p "LeftEyeLidUp3Aim";
	rename -uid "442D2067-44CE-F730-A594-CAB7593D9DA7";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp3AimGrp_aimConstraint1" -p "LeftEyeLidUp3AimGrp";
	rename -uid "7E7955CA-46A6-6C0D-30A5-068055E61FA9";
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
	rename -uid "550339E8-48A5-0B24-BB00-DB96FD720460";
createNode transform -n "LeftEyeLidUp4Aim" -p "LeftEyeLidUp4AimGrp";
	rename -uid "CA1804C1-49F6-82C8-88E8-028ED1619EC2";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp4AimShape" -p "LeftEyeLidUp4Aim";
	rename -uid "F4CEB7F2-4671-C5F4-E7E9-3598AECBEF12";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp4AimGrp_aimConstraint1" -p "LeftEyeLidUp4AimGrp";
	rename -uid "D9AA9442-4F94-0B6B-998A-78BD30FB0A0B";
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
	rename -uid "0B08B723-40A3-1438-C26D-ABB3C60664D5";
createNode transform -n "LeftEyeLidUp5Aim" -p "LeftEyeLidUp5AimGrp";
	rename -uid "F7BBA9CC-4427-6D14-16B6-A28D16A3B201";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidUp5AimShape" -p "LeftEyeLidUp5Aim";
	rename -uid "291E6A8C-4BEC-5661-77FE-6EA405BC6943";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidUp5AimGrp_aimConstraint1" -p "LeftEyeLidUp5AimGrp";
	rename -uid "E11C9524-4C36-E315-617B-3F9024AD8F79";
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
	rename -uid "0D3319A4-4CC5-31CD-8854-7C81A98B16F0";
createNode transform -n "LeftEyeLidDown3Aim" -p "LeftEyeLidDown3AimGrp";
	rename -uid "B0FE82B1-4D22-23E1-DAC3-EF804FBCC973";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown3AimShape" -p "LeftEyeLidDown3Aim";
	rename -uid "0690F32D-47A6-A6F0-79AF-A686A1883E45";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown3AimGrp_aimConstraint1" -p "LeftEyeLidDown3AimGrp";
	rename -uid "A162BF59-458D-DD29-95B8-4AA447BC30EC";
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
	rename -uid "7AED2182-47C3-4DE8-9C97-B394A31EF223";
createNode transform -n "LeftEyeLidDown4Aim" -p "LeftEyeLidDown4AimGrp";
	rename -uid "7B9D0DCA-41EB-C3A3-E697-6E824B330FBE";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown4AimShape" -p "LeftEyeLidDown4Aim";
	rename -uid "33E599A1-48EF-0535-EDA3-81BFC81BDBBE";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown4AimGrp_aimConstraint1" -p "LeftEyeLidDown4AimGrp";
	rename -uid "2D2D2369-4F35-78F2-0115-1B94FED0C5C1";
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
	rename -uid "DAABBCAE-44B1-6DC6-E250-5FACA83C83F9";
createNode transform -n "LeftEyeLidDown5Aim" -p "LeftEyeLidDown5AimGrp";
	rename -uid "E1105FBD-48FC-8FE4-50B5-FB8B3FCD66C6";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "LeftEyeLidDown5AimShape" -p "LeftEyeLidDown5Aim";
	rename -uid "FD223666-4D9E-7EB1-5331-84ACD5A6337F";
	setAttr -k off ".v";
createNode aimConstraint -n "LeftEyeLidDown5AimGrp_aimConstraint1" -p "LeftEyeLidDown5AimGrp";
	rename -uid "EDA10D72-4900-E5A6-41E0-F2BCF4AE77B8";
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
	rename -uid "EEFDC8D0-4C76-3EF3-0978-2C89EC77F7CA";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 1 0 ;
createNode locator -n "LeftEyeBallFixedUpShape" -p "LeftEyeBallFixedUp";
	rename -uid "CC40ACD2-4E92-472C-98B6-1293B628E259";
	setAttr -k off ".v";
createNode transform -n "LeftEyeBallFixedDown" -p "LeftEyeLidAimGrp";
	rename -uid "6FF21AFE-46B3-B76B-7CA3-159F515AA3F8";
	setAttr ".t" -type "double3" -5.8286708792820718e-16 -1 0 ;
createNode locator -n "LeftEyeBallFixedDownShape" -p "LeftEyeBallFixedDown";
	rename -uid "C8B3DC91-49C6-A406-1C2B-70881E988C12";
	setAttr -k off ".v";
createNode transform -n "LeftEyeLidLocGrpOffGrp" -p "LeftEyeLidRootPoser";
	rename -uid "E1AD4D1C-4376-7E37-19E0-59B208BD2839";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
createNode transform -n "LeftEyeLidLocGrp" -p "LeftEyeLidLocGrpOffGrp";
	rename -uid "D1AA2FCB-4A86-0EDC-F2FA-F8975103B99C";
createNode transform -n "LeftEyeLidInPos" -p "LeftEyeLidLocGrp";
	rename -uid "14B8171C-4407-AE4D-9F1E-D694D5878127";
	setAttr ".t" -type "double3" -1.5770937991373672 5.5996873804531333e-15 3.0000000000000027 ;
createNode locator -n "LeftEyeLidInPosShape" -p "LeftEyeLidInPos";
	rename -uid "6F2F2FB5-499F-CBE0-06CE-C687B1E0B33A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidInLocOffGrp" -p "LeftEyeLidInPos";
	rename -uid "FC4036A8-4316-7417-EC78-E5ABD4543E4B";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidInLoc" -p "LeftEyeLidInLocOffGrp";
	rename -uid "2FFF0CD4-46A5-890D-4B96-E18386F64F78";
createNode locator -n "LeftEyeLidInLocShape" -p "LeftEyeLidInLoc";
	rename -uid "55DFAFF7-474D-6FAD-A941-83AE67E88D6C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "LefteyeLidInEPPosShape" -p "LeftEyeLidInLoc";
	rename -uid "C71B6ABB-41E7-201B-F0C0-0D97234A7147";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpPos" -p "LeftEyeLidLocGrp";
	rename -uid "10A86A7D-41C4-2001-F3FB-B3BEBC7717AC";
	setAttr ".t" -type "double3" 1.9723026369843502e-08 2.1988641372964919 2.999999938756778 ;
createNode locator -n "LeftEyeLidUpPosShape" -p "LeftEyeLidUpPos";
	rename -uid "75CCAFBE-4B96-B5F5-B8A7-FE928756A2D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidUpLocOffGrp" -p "LeftEyeLidUpPos";
	rename -uid "4A10E788-4FD1-7868-3430-0BA7FC88E105";
createNode transform -n "LeftEyeLidUpLoc" -p "LeftEyeLidUpLocOffGrp";
	rename -uid "AE58400C-4589-8A3C-CE30-E79310533356";
createNode locator -n "LeftEyeLidUpLocShape" -p "LeftEyeLidUpLoc";
	rename -uid "B2999F2F-4AE6-108D-9C4B-06850ADB0793";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos2" -p "LeftEyeLidUpLoc";
	rename -uid "5B5BA01E-4996-14D2-4B59-32A684B5DD47";
	setAttr ".t" -type "double3" -2.0865480537993935 -0.027220286915054563 2.2439515523497988e-14 ;
createNode locator -n "LeftEyeLidUpCvPos2Shape" -p "LeftEyeLidUpCvPos2";
	rename -uid "47760BC6-432D-1D88-C2E2-28AC1E4EE532";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidUpCvPos1" -p "LeftEyeLidUpLoc";
	rename -uid "7FF0DF90-4C26-ABAE-33A2-0A9189211642";
	setAttr ".t" -type "double3" 2.239564886670331 -0.021241769988588476 1.1171619185290638e-15 ;
createNode locator -n "LeftEyeLidUpCvPos1Shape" -p "LeftEyeLidUpCvPos1";
	rename -uid "531D71EF-40EA-2CE2-9E16-CABD4A63BC2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutPos" -p "LeftEyeLidLocGrp";
	rename -uid "2BFCDFB3-4078-5131-94FA-708E201785DC";
	setAttr ".t" -type "double3" 2.3180398719788649 -1.2576745200831851e-16 2.9999999999999893 ;
createNode locator -n "LeftEyeLidOutPosShape" -p "LeftEyeLidOutPos";
	rename -uid "B2903556-4B12-4B15-3C38-3A9A8CC9F535";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutLocOffGrp" -p "LeftEyeLidOutPos";
	rename -uid "3627ADBC-46EA-E270-7FB1-2EA2DF7AFB24";
	setAttr ".v" no;
createNode transform -n "LeftEyeLidOutLoc" -p "LeftEyeLidOutLocOffGrp";
	rename -uid "C0AEE99A-4AB0-AAB0-BB5F-FF838D059D97";
createNode locator -n "LeftEyeLidOutLocShape" -p "LeftEyeLidOutLoc";
	rename -uid "416B4848-4FA6-7318-604E-B796BD857727";
	setAttr -k off ".v";
createNode locator -n "LefteyeLidOutEPPosShape" -p "LeftEyeLidOutLoc";
	rename -uid "89BFFC2D-4D61-B03E-848D-C980A0FAE722";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownPos" -p "LeftEyeLidLocGrp";
	rename -uid "CD9B42FA-47F6-FFBC-8C3C-68948DEE9C19";
	setAttr ".t" -type "double3" 6.071532164937965e-16 -2.0782131034149387 2.9999999909604407 ;
createNode locator -n "LeftEyeLidDownPosShape" -p "LeftEyeLidDownPos";
	rename -uid "76395127-4D53-C476-F249-02A21FB0771A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidDownLocOffGrp" -p "LeftEyeLidDownPos";
	rename -uid "5A5AB700-4466-9D3F-93CE-E496593F8812";
createNode transform -n "LeftEyeLidDownLoc" -p "LeftEyeLidDownLocOffGrp";
	rename -uid "C30CC3C5-43B7-3D63-ABA8-DFA28AA7B5E0";
createNode locator -n "LeftEyeLidDownLocShape" -p "LeftEyeLidDownLoc";
	rename -uid "73A9F7FD-484C-2BD1-9F48-73B34DDF3AAD";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos2" -p "LeftEyeLidDownLoc";
	rename -uid "AD98C189-4643-A2E0-69C6-E590C6514341";
	setAttr ".t" -type "double3" -2.0501244493478801 -0.0066320794302513683 -1.017588791007995e-14 ;
createNode locator -n "LeftEyeLidDownCvPos2Shape" -p "LeftEyeLidDownCvPos2";
	rename -uid "09C4A51C-4F67-994A-4F75-AEA4373619E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidDownCvPos1" -p "LeftEyeLidDownLoc";
	rename -uid "D5EA6A13-442D-CBA0-3183-23A186D1E5E1";
	setAttr ".t" -type "double3" 2.4473922134663999 0.041630203560837707 -7.5911499308745078e-15 ;
createNode locator -n "LeftEyeLidDownCvPos1Shape" -p "LeftEyeLidDownCvPos1";
	rename -uid "DB30E6A8-4F27-B123-037B-A586451D7B7A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "B564DEBB-4938-B3BC-23AB-B88F465D5B41";
createNode transform -n "LeftEyeLidOutUp1LocGrp" -p "LeftEyeLidOutUp1LocOffGrp";
	rename -uid "D03E589F-4ED2-D09B-8F4E-8E81D8D0E8B5";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "LeftEyeLidOutUp1Pos" -p "LeftEyeLidOutUp1LocGrp";
	rename -uid "DB33B878-40EC-FF39-F7F1-A3880B28EA7C";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp1PosShape" -p "LeftEyeLidOutUp1Pos";
	rename -uid "17F9A114-411D-3C94-D362-C892C423AF36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp1Loc" -p "LeftEyeLidOutUp1Pos";
	rename -uid "E46117EF-46BA-4FD5-75A9-2E8D1407D616";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "LeftEyeLidOutUp1LocShape" -p "LeftEyeLidOutUp1Loc";
	rename -uid "6726AB8B-4C17-8C21-4B2F-79A89C8E8D2D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "82D5DE83-47FA-E2CC-34EA-758F1C742BBC";
createNode transform -n "LeftEyeLidOutUp2LocGrp" -p "LeftEyeLidOutUp2LocOffGrp";
	rename -uid "49162196-4873-CC83-A3F8-EDB92CF20C16";
createNode transform -n "LeftEyeLidOutUp2Pos" -p "LeftEyeLidOutUp2LocGrp";
	rename -uid "7BD32038-471E-5D90-4BD6-48BA8CFBA6FD";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" -7.4446255129772491e-24 0 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp2PosShape" -p "LeftEyeLidOutUp2Pos";
	rename -uid "71836CC2-457B-2B9C-1750-C7AB0A85B557";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp2Loc" -p "LeftEyeLidOutUp2Pos";
	rename -uid "35CEEB3F-48AF-9315-2264-75944E0B2CDF";
createNode locator -n "LeftEyeLidOutUp2LocShape" -p "LeftEyeLidOutUp2Loc";
	rename -uid "3D19BA08-48B7-BF7A-C7B6-7BBFCEEA9C0D";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos1" -p "LeftEyeLidOutUp2Loc";
	rename -uid "2FECB48D-449A-15DE-F320-B2A16DFB7E7C";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos1Shape" -p "LeftEyeLidOutUp2CvPos1";
	rename -uid "281CE879-47C8-EB50-8748-5A82EC57F54C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp2CvPos2" -p "LeftEyeLidOutUp2Loc";
	rename -uid "93285F65-4145-67E6-80E9-8788E2C20D13";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode locator -n "LeftEyeLidOutUp2CvPos2Shape" -p "LeftEyeLidOutUp2CvPos2";
	rename -uid "ACC04C23-4C06-AE69-78A0-F09502AA2A40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutUp3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "C456CA3C-46CC-668A-C493-C89EC4B1D269";
createNode transform -n "LeftEyeLidOutUp3LocGrp" -p "LeftEyeLidOutUp3LocOffGrp";
	rename -uid "56FAA636-4FF4-F4B9-8951-68A0E44F76C8";
createNode transform -n "LeftEyeLidOutUp3Pos" -p "LeftEyeLidOutUp3LocGrp";
	rename -uid "57F80450-49BE-A4A9-B046-26A52FD7D628";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "LeftEyeLidOutUp3PosShape" -p "LeftEyeLidOutUp3Pos";
	rename -uid "8FAFAAE7-43B0-C867-26D2-E28C1AF72CDE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutUp3Loc" -p "LeftEyeLidOutUp3Pos";
	rename -uid "D909BECF-4339-E825-1477-3E8F55122EDD";
	setAttr ".v" no;
createNode locator -n "LeftEyeLidOutUp3LocShape" -p "LeftEyeLidOutUp3Loc";
	rename -uid "2F29DC8B-4E6F-4EA6-661B-7CA268B0522F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "ED59134E-447A-1FF2-DA76-139AD9210BF8";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LeftEyeLidOutDown1LocGrp" -p "LeftEyeLidOutDown1LocOffGrp";
	rename -uid "6AED1D24-4009-75A1-DF82-2BADE3378CBB";
createNode transform -n "LeftEyeLidOutDown1Pos" -p "LeftEyeLidOutDown1LocGrp";
	rename -uid "AE0E6EC4-4F74-EF08-E2B1-A1ACA1E01A33";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown1PosShape" -p "LeftEyeLidOutDown1Pos";
	rename -uid "A7AE4113-4B5B-118B-7D71-F0970153DCCA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown1Loc" -p "LeftEyeLidOutDown1Pos";
	rename -uid "0C0762FC-4EF4-BC93-CFBE-0CA3BB0F1BBA";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "LeftEyeLidOutDown1LocShape" -p "LeftEyeLidOutDown1Loc";
	rename -uid "EBDF4194-4A8B-AE14-BA8A-8C91B915F3BE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "ACD73981-412C-DAB5-4592-D995B64DF272";
createNode transform -n "LeftEyeLidOutDown2LocGrp" -p "LeftEyeLidOutDown2LocOffGrp";
	rename -uid "3B8B315F-4885-4CCA-DCC2-FA86B97E1F6A";
createNode transform -n "LeftEyeLidOutDown2Pos" -p "LeftEyeLidOutDown2LocGrp";
	rename -uid "76A8A7F3-4813-3C7B-CA82-55ABF25EB214";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 1.2325951644078309e-32 0 0 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown2PosShape" -p "LeftEyeLidOutDown2Pos";
	rename -uid "E0C2EFA7-4F54-543D-2F55-5DB632A1ACDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown2Loc" -p "LeftEyeLidOutDown2Pos";
	rename -uid "5AD79A4F-407D-3813-F07B-93B692FCEF0C";
createNode locator -n "LeftEyeLidOutDown2LocShape" -p "LeftEyeLidOutDown2Loc";
	rename -uid "ABC55502-4133-B343-1CFB-7188235B9AAD";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos1" -p "LeftEyeLidOutDown2Loc";
	rename -uid "4A3E8844-4366-7F68-A19F-6C9BD648B574";
	setAttr ".t" -type "double3" -1.5 0 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos1Shape" -p "LeftEyeLidOutDown2CvPos1";
	rename -uid "8E5FD72D-4CA5-1D4C-0E2A-B7A34BAE16CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown2CvPos2" -p "LeftEyeLidOutDown2Loc";
	rename -uid "83E6A57B-4CBD-2EB5-F8EF-38A2CD68075D";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode locator -n "LeftEyeLidOutDown2CvPos2Shape" -p "LeftEyeLidOutDown2CvPos2";
	rename -uid "515BF595-4B78-08B9-13F9-A8B826661BFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidOutDown3LocOffGrp" -p "LeftEyeLidLocGrp";
	rename -uid "8921C888-464A-E7A5-2411-D19678F17688";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "LeftEyeLidOutDown3LocGrp" -p "LeftEyeLidOutDown3LocOffGrp";
	rename -uid "0A16B57D-43C2-B724-1BD7-E28CEC55D7A3";
createNode transform -n "LeftEyeLidOutDown3Pos" -p "LeftEyeLidOutDown3LocGrp";
	rename -uid "5F3CD0FB-4CC3-739A-E47E-1ABD2CB3109A";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "LeftEyeLidOutDown3PosShape" -p "LeftEyeLidOutDown3Pos";
	rename -uid "C5E21268-48A0-F4A4-CA7B-F8B0B8B3A694";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "LeftEyeLidOutDown3Loc" -p "LeftEyeLidOutDown3Pos";
	rename -uid "DEF3B69F-4661-0564-CF14-C2A40A72D780";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "LeftEyeLidOutDown3LocShape" -p "LeftEyeLidOutDown3Loc";
	rename -uid "0C1E2506-4B88-04D8-2237-D19AA63D6C97";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "LeftEyeLidCtrlPosCrv" -p "LeftEyeLidRootPoser";
	rename -uid "2958B1A9-4B1D-E75A-9074-F1A873346A06";
	setAttr ".t" -type "double3" 0 1.2079226507921701e-13 3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShape" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "E080F118-4DF3-F0B2-3765-39AB1BEBE955";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 12 ".cp[0:11]" -type "double3" -2.2082783865799662 -14.820045471191406 
		-25.113191604613839 -2.2716148781647441 -14.666393661499018 -25.083902359008402 -2.1627300906052342 
		-14.841145324707032 -24.903356552123817 -2.4166932272782065 -15.123806762695313 -24.664869308471712 
		-2.665244500624155 -14.833849716186524 -24.470087051391825 -2.650816028105234 -14.708286666870112 
		-24.321054458618537 -2.7740088152756441 -14.858072280883789 -24.278085708618583 -2.7238643813004244 
		-14.939403152465825 -24.320398330688853 -2.7368501829972018 -14.741164398193359 -24.554609298706197 
		-2.4046261477341391 -14.517789077758788 -24.833391189575057 -2.1410475897660008 -14.794337463378906 
		-25.023866653442056 -2.2584576296677348 -14.951093292236328 -25.111383438109936;
createNode nurbsCurve -n "LeftEyeLidCtrlPosCrvShapeOrig" -p "LeftEyeLidCtrlPosCrv";
	rename -uid "AA5E3D88-4B18-57C9-F2A5-DB87D36D0125";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.0082783699035645 14.820045471191406 25.113191604614258
		1.0716148614883423 15.266393661499023 25.083902359008789
		1.562730073928833 16.041145324707031 24.903356552124023
		2.4166932106018066 16.323806762695313 24.66486930847168
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
	rename -uid "0978E74B-4D06-2BF0-59C6-9FA55FD5F2EC";
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidCrvGrp" -p "RightEyeLidSysGrp";
	rename -uid "85263C6E-4268-B630-6190-A0A0E15D3EB6";
	setAttr ".ovdt" 2;
createNode transform -n "RightEyeLidUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "B4DFB7DD-4775-4EEB-E060-46AB19546D11";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidUpCrvShape" -p "RightEyeLidUpCrv";
	rename -uid "01C60ECC-4216-7E9E-406D-0CA0D4610747";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.4229061730684631 -6.2325510755046213e-13 3.0000000000000671
		-1.4229061730684631 -6.2325510755046213e-13 3.0000000000000671
		-0.91345193813023817 2.1716438503809901 2.9999999387568366
		-2.999999991929641 2.1988641372952999 2.9999999387569312
		-5.239564878599964 2.1776223673059123 2.9999999387570577
		-5.3180398441846943 -2.0188642837159611e-12 3.0000000000002722
		-5.3180398441846943 -2.0188642837159611e-12 3.0000000000002722
		;
createNode transform -n "RightEyeLidDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "70A53524-44CB-8F0D-1F1B-1E8E1632D990";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidDownCrvShape" -p "RightEyeLidDownCrv";
	rename -uid "BD395290-4446-5A8C-F659-198613CBBAB0";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-1.4229061730684631 -6.2325510755046213e-13 3.0000000000000671
		-1.4229061730684631 -6.2325510755046213e-13 3.0000000000000671
		-0.94987552285720733 -2.0848451828456498 2.9999999909604691
		-2.9999999722050892 -2.0782131034161297 2.9999999909605939
		-5.4473921856715037 -2.0365828998561653 2.9999999909607236
		-5.3180398441846943 -2.0188642837159611e-12 3.0000000000002722
		-5.3180398441846943 -2.0188642837159611e-12 3.0000000000002722
		;
createNode transform -n "RightEyeLidUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "B18023B1-4CF9-A6F4-9094-B182B5172C28";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidUpJntCrvShape" -p "RightEyeLidUpJntCrv";
	rename -uid "D436AA08-4CA8-4CD9-60A6-A8996FAF522F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501
		-1.5870433543837381 0.48797602631153841 2.5934855848005234
		-1.9031893953450296 1.325218948087574 2.4528664790155923
		-2.9999999722071298 1.7755272613334703 2.4140850887411993
		-4.2739829304973025 1.2921419141418251 2.3853931082748776
		-4.7634543053784713 0.4487132469702898 2.3804159618510421
		-4.836880612789459 -3.5740691348550438e-12 2.3685583538124968
		;
createNode transform -n "RightEyeLidDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "28A112DC-48BC-82CB-6F24-A5BF651E0BC4";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidDownJntCrvShape" -p "RightEyeLidDownJntCrv";
	rename -uid "77CDB88C-45EC-554F-851C-91B92ED11CBF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501
		-1.5910120463163853 -0.46835993238709051 2.5992124607448015
		-1.9054410028294479 -1.2774549718514292 2.4787015409255191
		-2.9999999722046389 -1.7096859142164229 2.4603377139873359
		-4.3472019357823726 -1.2145480234132673 2.385835384017704
		-4.7899323524702417 -0.41762382242735208 2.3666027814699473
		-4.836880612789459 -3.5740691348550438e-12 2.3685583538124968
		;
createNode transform -n "RightEyeLidOutUpCrv" -p "RightEyeLidCrvGrp";
	rename -uid "6BE8710E-4F82-5458-008D-C886D874F0E6";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutUpCrvShape" -p "RightEyeLidOutUpCrv";
	rename -uid "3A5725F3-44EA-A836-7500-5B8690EE61C1";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.99999997220636461 1.4999999999995191 3.0000000000000409
		-0.99999997220636461 1.4999999999995191 3.0000000000000409
		-1.4999999722067228 2.4999999999993388 3.0000000000000671
		-2.9999999722067225 2.4999999999988036 3.000000000000151
		-4.4999999722067221 2.4999999999982685 3.0000000000002349
		-4.9999999722063642 1.4999999999980973 3.00000000000027
		-4.9999999722063642 1.4999999999980973 3.00000000000027
		;
createNode transform -n "RightEyeLidOutDownCrv" -p "RightEyeLidCrvGrp";
	rename -uid "EEBCB2F2-4FE9-6A4F-B0FC-AE93BD586DF5";
	setAttr ".v" no;
createNode bezierCurve -n "RightEyeLidOutDownCrvShape" -p "RightEyeLidOutDownCrv";
	rename -uid "1FD7D638-4267-CE85-0F4D-D78067222D41";
	setAttr -k off ".v";
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 1 1 2 2 2
		7
		-0.99999997220529524 -1.5000000000004821 3.0000000000000369
		-0.99999997220529524 -1.5000000000004821 3.0000000000000369
		-1.4999999722049371 -2.5000000000006541 3.0000000000000804
		-2.9999999722049369 -2.5000000000011893 3.0000000000001643
		-4.4999999722049369 -2.5000000000017244 3.0000000000002482
		-4.9999999722052939 -1.5000000000019007 3.0000000000002744
		-4.9999999722052939 -1.5000000000019007 3.0000000000002744
		;
createNode transform -n "RightEyeLidOutUpJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "F502F683-4841-2B79-7F06-42AC91D67987";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutUpJntCrvShape" -p "RightEyeLidOutUpJntCrv";
	rename -uid "7528E95E-413E-6910-C1A6-1DAE7C4CDE7A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.4625819209594502 1.1555102416188245 2.2995613350222461
		-1.9215631940075226 1.7929690625630084 2.147984824626251
		-2.9999999722072417 1.9237565457615666 2.2997590952770643
		-4.0784367504067927 1.7929690625614689 2.1479848246263704
		-4.5374180234539327 1.1555102416166323 2.2995613350224184
		;
createNode transform -n "RightEyeLidOutDownJntCrv" -p "RightEyeLidCrvGrp";
	rename -uid "AF9F441E-46F9-C28F-6AC7-E6955A44D6E0";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode nurbsCurve -n "RightEyeLidOutDownJntCrvShape" -p "RightEyeLidOutDownJntCrv";
	rename -uid "C8DE4059-4B84-0C37-89AF-5EAD3D406506";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -s 5 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-1.462581920957801 -1.1555102416211604 2.2995613350222435
		-1.9215631940049664 -1.7929690625659906 2.1479848246262545
		-2.9999999722044945 -1.9237565457660857 2.2997590952770679
		-4.0784367504042285 -1.7929690625675294 2.147984824626374
		-4.5374180234522843 -1.1555102416233458 2.2995613350224211
		;
createNode transform -n "RightEyeLidSurfPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "BB057469-48ED-D5F0-5466-3C8D6FD05802";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidUpCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "8EB9240F-4139-F5D1-1D8C-7E830F53E088";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp1Pos" -p "RightEyeLidUpCtrl0PosSurfPos";
	rename -uid "5929570A-483B-7EFC-27B8-E1A33429E4E2";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidUp1PosShape" -p "RightEyeLidUp1Pos";
	rename -uid "737C1D41-46FB-B588-0284-93ABFFC0042B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "B78FD41B-44BF-5F63-EB4D-209C0B76F252";
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "RightEyeLidUp2Pos" -p "RightEyeLidUpCtrl1PosSurfPos";
	rename -uid "07FFDF9A-43E5-6C19-BB2C-5A9A32410DC5";
	setAttr ".t" -type "double3" -1.8873791418627661e-15 0 0 ;
createNode locator -n "RightEyeLidUp2PosShape" -p "RightEyeLidUp2Pos";
	rename -uid "0B9DD30F-42D7-DA58-6FCE-D3960C7F8002";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "D6647883-4CB8-3C1F-8C25-52A8C36FFDC7";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp3Pos" -p "RightEyeLidUpCtrl2PosSurfPos";
	rename -uid "D3CF4013-4862-563C-D7F6-ADA5A4ED29AF";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode locator -n "RightEyeLidUp3PosShape" -p "RightEyeLidUp3Pos";
	rename -uid "97D767C7-4C07-C7FF-4437-FD9575ABB3D7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "8976EECA-4ADB-DF2C-BE96-039B8C8F8941";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp4Pos" -p "RightEyeLidUpCtrl3PosSurfPos";
	rename -uid "2356B667-4319-6718-CAD8-A98BE5E81E64";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 2.5673907444456745e-15 0 ;
createNode locator -n "RightEyeLidUp4PosShape" -p "RightEyeLidUp4Pos";
	rename -uid "994B7245-4640-F0BB-F148-0CA5B0EE9C7A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "D67864A6-404C-C60B-AF31-6A85FA1C45C7";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidUp5Pos" -p "RightEyeLidUpCtrl4PosSurfPos";
	rename -uid "8ED7835F-4EFA-644F-FE86-0AA71C23B99B";
	setAttr ".t" -type "double3" -1.3322676295501878e-15 6.6613381477509392e-16 0 ;
createNode locator -n "RightEyeLidUp5PosShape" -p "RightEyeLidUp5Pos";
	rename -uid "CA98EDD7-421E-5425-DC9A-51971B3D2243";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "D090F97A-4747-BCD5-5169-BB80DEACBB3E";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidUp6Pos" -p "RightEyeLidUpCtrl5PosSurfPos";
	rename -uid "9553A0CA-4562-B8EC-6B54-11A07FC16991";
	setAttr ".t" -type "double3" 3.3306690738754696e-16 1.3322676295501878e-15 0 ;
createNode locator -n "RightEyeLidUp6PosShape" -p "RightEyeLidUp6Pos";
	rename -uid "CABC5A65-45F9-334C-AC6F-A29708BC1964";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "267F6812-44C9-0EC3-3122-52864226F829";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidUp7Pos" -p "RightEyeLidUpCtrl6PosSurfPos";
	rename -uid "C459BE87-4A76-A77F-C736-78BBFC7483E8";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidUp7PosShape" -p "RightEyeLidUp7Pos";
	rename -uid "D9CB8766-4E6A-1844-B01C-93A4880AC2AB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "BC52246E-41F1-6F91-3453-79BF949A9495";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown1Pos" -p "RightEyeLidDownCtrl0PosSurfPos";
	rename -uid "E089DE00-49F7-8979-C36F-83B61BFC684C";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 0 0 ;
createNode locator -n "RightEyeLidDown1PosShape" -p "RightEyeLidDown1Pos";
	rename -uid "8A26FE03-4298-9925-D317-7BB64497BF9C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "73E96FB8-448E-97DC-4C04-9BB14C83A48B";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 -0.99999999999999956 ;
createNode transform -n "RightEyeLidDown2Pos" -p "RightEyeLidDownCtrl1PosSurfPos";
	rename -uid "9AFA2C49-4C9E-593E-3A4C-7CB844C9D05F";
	setAttr ".t" -type "double3" -1.4432899320127035e-15 4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown2PosShape" -p "RightEyeLidDown2Pos";
	rename -uid "49C15745-4394-BFC7-B0AE-2CA03CA8FFAE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "3E3868BB-4E64-4CF1-FE00-3D821BCD8DAD";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown3Pos" -p "RightEyeLidDownCtrl2PosSurfPos";
	rename -uid "A6C5668F-4938-5D53-95AB-ECB662CCF666";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -1.5543122344752192e-15 0 ;
createNode locator -n "RightEyeLidDown3PosShape" -p "RightEyeLidDown3Pos";
	rename -uid "A25FBC8C-4C6D-6DD3-9B61-57A9A0ED6F14";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "5BD89BE2-4AC6-FDF4-4410-B090EADFAF3C";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown4Pos" -p "RightEyeLidDownCtrl3PosSurfPos";
	rename -uid "C0EB7C0E-4D2F-4222-D291-65AAA60C1369";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -1.3704315460216776e-15 0 ;
createNode locator -n "RightEyeLidDown4PosShape" -p "RightEyeLidDown4Pos";
	rename -uid "1F01E55C-48CC-09C3-1888-D9B0FDE7D05B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "87707D49-4D5C-E5BF-1064-7EB4A30D27B2";
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999967 ;
createNode transform -n "RightEyeLidDown5Pos" -p "RightEyeLidDownCtrl4PosSurfPos";
	rename -uid "5B1422B7-409E-AB60-0404-43BF6A749607";
createNode locator -n "RightEyeLidDown5PosShape" -p "RightEyeLidDown5Pos";
	rename -uid "814C49E3-486E-EEF9-222C-3FA51B4F344C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "91AEC250-48CC-BC16-5F0D-36AFED7D8270";
	setAttr ".s" -type "double3" 1 0.99999999999999989 -0.99999999999999978 ;
createNode transform -n "RightEyeLidDown6Pos" -p "RightEyeLidDownCtrl5PosSurfPos";
	rename -uid "C90EA8AD-4112-F021-A3ED-C0802A7EA117";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -4.4408920985006262e-16 0 ;
createNode locator -n "RightEyeLidDown6PosShape" -p "RightEyeLidDown6Pos";
	rename -uid "AEE44F31-4CC3-6CA0-EDDA-F38DDF96AEFD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6PosSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "2DAE2D12-4BBA-2BC4-BA55-BFA058A1BFD8";
	setAttr ".s" -type "double3" 1 0.99999999999999978 -1 ;
createNode transform -n "RightEyeLidDown7Pos" -p "RightEyeLidDownCtrl6PosSurfPos";
	rename -uid "41C925BD-4F9F-C0A0-069E-C8AD5A4CE623";
	setAttr ".t" -type "double3" 1.6809694002597383e-15 -8.8817841970012523e-16 0 ;
createNode locator -n "RightEyeLidDown7PosShape" -p "RightEyeLidDown7Pos";
	rename -uid "BEC72A0B-4764-C5E6-9AD5-C78D52A3FEF3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "89FE4C74-4068-D774-170E-14B9249FEADB";
	setAttr ".s" -type "double3" 0.99999999999999989 1 -1 ;
createNode transform -n "RightEyeLidOutUp1LocSurfPosLoc" -p "RightEyeLidOutUp1LocSurfPos";
	rename -uid "36C6DA62-4191-95B2-0B84-5194A13B0628";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode locator -n "RightEyeLidOutUp1LocSurfPosLocShape" -p "RightEyeLidOutUp1LocSurfPosLoc";
	rename -uid "EFB7E60D-4D62-5804-758E-8AB4CA7A11C2";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2CvPos1SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "DC347B93-4181-4804-EB50-A78E56EA2BB8";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutUp2CvPos1SurfPosLoc" -p "RightEyeLidOutUp2CvPos1SurfPos";
	rename -uid "F426CB51-47A9-DABA-55EF-D5A3B04B5EF1";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
createNode locator -n "RightEyeLidOutUp2CvPos1SurfPosLocShape" -p "RightEyeLidOutUp2CvPos1SurfPosLoc";
	rename -uid "9996E4F2-44D1-40B0-3EC0-F1BC9F05C4F3";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "EAE9652B-47AB-5458-AF99-BB8D78156FF4";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 -1 ;
createNode transform -n "RightEyeLidOutUp2LocSurfPosLoc" -p "RightEyeLidOutUp2LocSurfPos";
	rename -uid "141EFCB3-4720-2D69-ED7E-79A8D7B7C164";
createNode locator -n "RightEyeLidOutUp2LocSurfPosLocShape" -p "RightEyeLidOutUp2LocSurfPosLoc";
	rename -uid "B2A64425-491C-FF2D-D2D4-23B745A635E2";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp2CvPos2SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "A7C7DF87-4365-2C4C-3BC6-4EB9DCBE431B";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 -0.99999999999999967 ;
createNode transform -n "RightEyeLidOutUp2CvPos2SurfPosLoc" -p "RightEyeLidOutUp2CvPos2SurfPos";
	rename -uid "8844CAA2-487E-D321-3E0F-138747712291";
createNode locator -n "RightEyeLidOutUp2CvPos2SurfPosLocShape" -p "RightEyeLidOutUp2CvPos2SurfPosLoc";
	rename -uid "3D4A96B4-4673-9D1B-8A92-95B394FF5D1E";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutUp3LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "7FE99DA7-4E67-44E2-1B86-698D34905E5C";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 -0.99999999999999967 ;
createNode transform -n "RightEyeLidOutUp3LocSurfPosLoc" -p "RightEyeLidOutUp3LocSurfPos";
	rename -uid "E180AF17-43C2-F18E-0958-9281F23ED9CB";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutUp3LocSurfPosLocShape" -p "RightEyeLidOutUp3LocSurfPosLoc";
	rename -uid "A81924D9-4D69-8A89-4203-B2A0AB625E1A";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown1LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "B9CB9C0D-4D94-23A9-77F6-61B142544133";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocSurfPosLoc" -p "RightEyeLidOutDown1LocSurfPos";
	rename -uid "CF00788C-4A1E-B123-0D95-7E99D82E3AB2";
createNode locator -n "RightEyeLidOutDown1LocSurfPosLocShape" -p "RightEyeLidOutDown1LocSurfPosLoc";
	rename -uid "F67E5A06-471E-FF5E-908F-FBB3F1E7B326";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2CvPos1SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "22932C12-45F1-8270-B07A-3DA2F9FC0F64";
	setAttr ".s" -type "double3" 0.99999999999999989 1 -0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown2CvPos1SurfPosLoc" -p "RightEyeLidOutDown2CvPos1SurfPos";
	rename -uid "D93C09EB-4A89-FB78-800A-199B59A1C6AA";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode locator -n "RightEyeLidOutDown2CvPos1SurfPosLocShape" -p "RightEyeLidOutDown2CvPos1SurfPosLoc";
	rename -uid "F6355E19-4414-7ABE-1A15-BFAE51B15ED1";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "249A5C1F-40FC-6BF3-DEE0-E29C58FA73C2";
	setAttr ".s" -type "double3" 0.99999999999999956 1 -0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown2LocSurfPosLoc" -p "RightEyeLidOutDown2LocSurfPos";
	rename -uid "3327B50D-4FEC-990D-5FF8-7AA6F18DAA8C";
createNode locator -n "RightEyeLidOutDown2LocSurfPosLocShape" -p "RightEyeLidOutDown2LocSurfPosLoc";
	rename -uid "189420E3-453A-C0BA-103C-58A68F159CAE";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown2CvPos2SurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "E7B1741B-477F-4EBD-2E03-D492A4F7B433";
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2SurfPosLoc" -p "RightEyeLidOutDown2CvPos2SurfPos";
	rename -uid "D9DFB0D1-4F90-4F72-D90D-50AB53FEF9DC";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode locator -n "RightEyeLidOutDown2CvPos2SurfPosLocShape" -p "RightEyeLidOutDown2CvPos2SurfPosLoc";
	rename -uid "292112E1-45F9-6450-2639-6493FE669524";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidOutDown3LocSurfPos" -p "RightEyeLidSurfPosGrp";
	rename -uid "BABA0069-4F0F-2450-04D0-1681FB57AC7C";
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1 ;
createNode transform -n "RightEyeLidOutDown3LocSurfPosLoc" -p "RightEyeLidOutDown3LocSurfPos";
	rename -uid "E17CD1FC-4801-BEDC-F4F6-CBA3EF87D56B";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDown3LocSurfPosLocShape" -p "RightEyeLidOutDown3LocSurfPosLoc";
	rename -uid "79AD4AA0-4507-F89A-D6BD-9988C7C15EAC";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidCrvPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "632BCC76-45E3-B837-19CC-3D9868F418E5";
	setAttr ".v" no;
createNode transform -n "RightEyeLidUpCrv0Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "DDA1CE39-4881-D314-108D-54AB63ADBDA8";
createNode locator -n "RightEyeLidUpCrv0PosShape" -p "RightEyeLidUpCrv0Pos";
	rename -uid "F8EA8835-46C8-0189-E6B9-348FF55AF854";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl0Pos" -p "RightEyeLidUpCrv0Pos";
	rename -uid "44595BF4-427A-F5B3-C485-FE8A309EA8D1";
createNode locator -n "RightEyeLidUpCtrl0PosShape" -p "RightEyeLidUpCtrl0Pos";
	rename -uid "9F8FBE60-4B33-2A35-196E-7090ABE52C9A";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv1Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "59C30AF2-451F-BEA9-08BB-8A9B9FB315A0";
createNode locator -n "RightEyeLidUpCrv1PosShape" -p "RightEyeLidUpCrv1Pos";
	rename -uid "00A4E76C-45F4-1D6D-D845-8785D96EC832";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl1Pos" -p "RightEyeLidUpCrv1Pos";
	rename -uid "666AA5FE-44FD-EB16-5838-759F7C2683EC";
createNode locator -n "RightEyeLidUpCtrl1PosShape" -p "RightEyeLidUpCtrl1Pos";
	rename -uid "7C7B4486-4160-0F42-F599-EE991481B172";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv2Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "B2C392A3-4025-EB0B-42AA-5DAEA72FDCF5";
createNode locator -n "RightEyeLidUpCrv2PosShape" -p "RightEyeLidUpCrv2Pos";
	rename -uid "F32AB146-47C9-D0C2-708A-01A78EF0C369";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl2Pos" -p "RightEyeLidUpCrv2Pos";
	rename -uid "DB6FE270-4D6D-02CB-C17A-EE96E0887869";
createNode locator -n "RightEyeLidUpCtrl2PosShape" -p "RightEyeLidUpCtrl2Pos";
	rename -uid "96706FBC-4FC1-04C7-2E58-86A9BB9B2ED1";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv3Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "A142CCA7-41B2-6301-7F14-F9992D6AA137";
createNode locator -n "RightEyeLidUpCrv3PosShape" -p "RightEyeLidUpCrv3Pos";
	rename -uid "98ACBBB7-4668-B67E-612E-CBA369190A7E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl3Pos" -p "RightEyeLidUpCrv3Pos";
	rename -uid "A65E93A6-4BBC-AAB2-5EE4-9590AF3D0F2E";
createNode locator -n "RightEyeLidUpCtrl3PosShape" -p "RightEyeLidUpCtrl3Pos";
	rename -uid "6915DE82-4122-0850-54E9-DDB2344FAC27";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv4Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "7FAFC881-4309-A94B-E5A1-C68278AB6F5B";
createNode locator -n "RightEyeLidUpCrv4PosShape" -p "RightEyeLidUpCrv4Pos";
	rename -uid "8DADBE40-48B1-ADDB-E1C9-31859CDAD1D1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl4Pos" -p "RightEyeLidUpCrv4Pos";
	rename -uid "F11BABAB-4BC8-272C-DCF9-19A5D5C340F2";
createNode locator -n "RightEyeLidUpCtrl4PosShape" -p "RightEyeLidUpCtrl4Pos";
	rename -uid "E63F1080-4C70-2691-4E59-238A348335A4";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv5Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "3222A288-4892-FF26-E47C-AA877C2D294F";
createNode locator -n "RightEyeLidUpCrv5PosShape" -p "RightEyeLidUpCrv5Pos";
	rename -uid "E097636C-4ED2-D853-492E-3BADC3483BC0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl5Pos" -p "RightEyeLidUpCrv5Pos";
	rename -uid "E0507E97-46E2-308B-52FE-F5822030BE46";
createNode locator -n "RightEyeLidUpCtrl5PosShape" -p "RightEyeLidUpCtrl5Pos";
	rename -uid "18ECCB14-49F6-299F-5756-868847E5B399";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCrv6Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "90EE97EE-40BB-C4F1-869A-73BD238D91BB";
createNode locator -n "RightEyeLidUpCrv6PosShape" -p "RightEyeLidUpCrv6Pos";
	rename -uid "2D97AD9C-4220-9E7C-B27A-2DB00376F01E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCtrl6Pos" -p "RightEyeLidUpCrv6Pos";
	rename -uid "CE09897C-430D-C08E-61CE-448515A3B9A6";
createNode locator -n "RightEyeLidUpCtrl6PosShape" -p "RightEyeLidUpCtrl6Pos";
	rename -uid "B51448D0-477B-D965-AC88-A186A198932C";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv0Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "546D48CC-4D86-344D-79E5-92A8DCA05DCA";
createNode locator -n "RightEyeLidDownCrv0PosShape" -p "RightEyeLidDownCrv0Pos";
	rename -uid "C041851D-4B9C-345B-6CAE-1DBF4212BDAA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl0Pos" -p "RightEyeLidDownCrv0Pos";
	rename -uid "8ACBEDFC-463A-60F5-A9C8-218D38443ADB";
createNode locator -n "RightEyeLidDownCtrl0PosShape" -p "RightEyeLidDownCtrl0Pos";
	rename -uid "3867FE6B-4766-51FC-C961-848B717A36B6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv1Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "CE5DA8B0-4DBF-9546-1384-4484FBBD4611";
createNode locator -n "RightEyeLidDownCrv1PosShape" -p "RightEyeLidDownCrv1Pos";
	rename -uid "9494F057-4622-E250-A33D-FFB4E17AED21";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl1Pos" -p "RightEyeLidDownCrv1Pos";
	rename -uid "6EEFB9C6-4DB3-3740-0135-6C9FE9BF49BE";
createNode locator -n "RightEyeLidDownCtrl1PosShape" -p "RightEyeLidDownCtrl1Pos";
	rename -uid "5E631FA6-4678-7072-9A2D-D18BD2876C32";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv2Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "0F9F8202-48A7-B8F6-1AFB-91A22F2CDF8C";
createNode locator -n "RightEyeLidDownCrv2PosShape" -p "RightEyeLidDownCrv2Pos";
	rename -uid "395DADD0-41F6-AC1E-E309-9EB517FED4FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl2Pos" -p "RightEyeLidDownCrv2Pos";
	rename -uid "7507B5CC-42C5-6898-73A4-BE9EA212B032";
createNode locator -n "RightEyeLidDownCtrl2PosShape" -p "RightEyeLidDownCtrl2Pos";
	rename -uid "C1D75846-4A16-20E0-8544-158B1953DCF5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv3Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "8F993AAA-4B14-6001-5C99-DDB39212289C";
createNode locator -n "RightEyeLidDownCrv3PosShape" -p "RightEyeLidDownCrv3Pos";
	rename -uid "48783653-425A-5302-14CB-D78DED563879";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl3Pos" -p "RightEyeLidDownCrv3Pos";
	rename -uid "120ABC78-4F72-3098-ED23-B49967C3133F";
createNode locator -n "RightEyeLidDownCtrl3PosShape" -p "RightEyeLidDownCtrl3Pos";
	rename -uid "A426A80E-4BF1-978F-C05E-58841EF3B889";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv4Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "168C4A04-48A6-A6A0-A65B-AAA2F195097B";
createNode locator -n "RightEyeLidDownCrv4PosShape" -p "RightEyeLidDownCrv4Pos";
	rename -uid "66E031C6-4C27-A282-0BE1-BC82D9780B22";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl4Pos" -p "RightEyeLidDownCrv4Pos";
	rename -uid "47E848FE-48A2-EC88-8527-3BB782FE4B84";
createNode locator -n "RightEyeLidDownCtrl4PosShape" -p "RightEyeLidDownCtrl4Pos";
	rename -uid "DBCC444B-47A5-C172-6185-A2BCB2334BCA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv5Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "DBE4BEAE-4D9D-4513-E97A-5B835708A013";
createNode locator -n "RightEyeLidDownCrv5PosShape" -p "RightEyeLidDownCrv5Pos";
	rename -uid "77E3E8B4-4473-3435-02C0-498597B5B117";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl5Pos" -p "RightEyeLidDownCrv5Pos";
	rename -uid "96FFC50C-454A-147A-6779-36AD0B2F5287";
createNode locator -n "RightEyeLidDownCtrl5PosShape" -p "RightEyeLidDownCtrl5Pos";
	rename -uid "391A05E0-47E8-E570-CB74-7B98BCBBD81B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCrv6Pos" -p "RightEyeLidCrvPosGrp";
	rename -uid "182ACF60-4845-2716-287C-49ADB3F8F2B7";
createNode locator -n "RightEyeLidDownCrv6PosShape" -p "RightEyeLidDownCrv6Pos";
	rename -uid "A2343EC6-4557-2B80-B721-B18F40FF8D25";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCtrl6Pos" -p "RightEyeLidDownCrv6Pos";
	rename -uid "765E93DA-44A8-6EF4-15FE-E59862DC339F";
createNode locator -n "RightEyeLidDownCtrl6PosShape" -p "RightEyeLidDownCtrl6Pos";
	rename -uid "6BA68FA6-40DD-D4CF-39BA-8D84E9097FA7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosGrp" -p "RightEyeLidSysGrp";
	rename -uid "B78665BC-4D47-3EFA-6DA4-26A9070651F3";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 180.00000000000324 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000002 ;
createNode transform -n "RightEyeLidCtrl0Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "85B611E8-45AE-CDC0-FA9E-E69381075DB9";
createNode locator -n "RightEyeLidCtrl0PosShape" -p "RightEyeLidCtrl0Pos";
	rename -uid "BA3F9C20-44E8-133E-21D7-639F5CF16C59";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl1Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "52F4851B-4DC4-6239-6F66-2FA560DAE699";
createNode locator -n "RightEyeLidCtrl1PosShape" -p "RightEyeLidCtrl1Pos";
	rename -uid "79EB47D3-4BD4-FADB-AEBF-19AA1EA17A7E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl2Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "88728674-43B8-AE02-BFB4-8DBC209715DE";
createNode locator -n "RightEyeLidCtrl2PosShape" -p "RightEyeLidCtrl2Pos";
	rename -uid "0A3D78C1-4E03-71FC-D8AF-A7B985DF9D56";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl3Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "43E812DC-4916-224E-7A90-A6AA90857F4A";
createNode locator -n "RightEyeLidCtrl3PosShape" -p "RightEyeLidCtrl3Pos";
	rename -uid "304D977F-4A6F-020A-6926-00AFEE1D3947";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl4Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "700EE62E-4B64-0FA1-C1A7-C193FC47DA32";
createNode locator -n "RightEyeLidCtrl4PosShape" -p "RightEyeLidCtrl4Pos";
	rename -uid "04624A7B-45DA-0088-60A6-ABADEEE030D4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl5Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "6E3CEA29-4414-08EF-E9D7-C1B6CDA32F93";
createNode locator -n "RightEyeLidCtrl5PosShape" -p "RightEyeLidCtrl5Pos";
	rename -uid "565B5A08-4CEF-2C50-17E6-D69FF8863F6C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl6Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "7A083E18-46EF-E24A-41B6-5E9813EDC7A8";
createNode locator -n "RightEyeLidCtrl6PosShape" -p "RightEyeLidCtrl6Pos";
	rename -uid "B9136EFD-464D-5DC5-3FCC-65BF252977A5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl7Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "05471F7E-4CF3-CB0C-E5E2-B5B1165B70F8";
createNode locator -n "RightEyeLidCtrl7PosShape" -p "RightEyeLidCtrl7Pos";
	rename -uid "C21F33AC-4C00-A905-876C-14B6D79118DB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl8Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "F1EDA5A2-474A-5C6B-46EE-229FDF0EEDCF";
createNode locator -n "RightEyeLidCtrl8PosShape" -p "RightEyeLidCtrl8Pos";
	rename -uid "BF28ED96-480B-EA74-4BD2-00843951D168";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl9Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "A53EC230-4D71-66D9-851C-C388B97D1F34";
createNode locator -n "RightEyeLidCtrl9PosShape" -p "RightEyeLidCtrl9Pos";
	rename -uid "6F7E960E-4CC8-C596-3B36-F592D114C1FE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl10Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "DFD84D28-4447-655F-1037-449699D32707";
createNode locator -n "RightEyeLidCtrl10PosShape" -p "RightEyeLidCtrl10Pos";
	rename -uid "B63FB603-4B20-92C1-93A7-C1AB105D2BF4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrl11Pos" -p "RightEyeLidCtrlPosGrp";
	rename -uid "DB93F264-4697-AB78-C09D-A78DDD2AA4D9";
createNode locator -n "RightEyeLidCtrl11PosShape" -p "RightEyeLidCtrl11Pos";
	rename -uid "85217D0F-4B5A-CD90-E532-8E8467FD0759";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidRootPoserGrp" -p "RightEyeLidSysGrp";
	rename -uid "92BA0AA2-4E30-63A8-7DA5-20A22870E1C8";
	setAttr ".t" -type "double3" -2.7794001988259354e-08 -1.2079226507921703e-13 -3.5527121146412049e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "RightEyeLidRootPoser" -p "RightEyeLidRootPoserGrp";
	rename -uid "61F51BA9-47C2-8BD4-A147-A5B2AFAB64E7";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -max 1 -en "Pos:Ctrl" -at "enum";
	addAttr -ci true -sn "FFD" -ln "FFD" -min 0 -max 1 -at "bool";
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k on ".mode";
	setAttr -cb on ".FFD";
createNode nurbsCurve -n "RightEyeLidRootPoserShape" -p "RightEyeLidRootPoser";
	rename -uid "8E4AFFD8-4BD5-2282-102C-F8ABA22642C5";
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
	rename -uid "F48F24D6-46C9-980F-784D-52A048F20C56";
	setAttr ".tmp" yes;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsSurface -n "RightEyeBallSurfShape" -p "RightEyeBallSurf";
	rename -uid "A28094C4-4992-58D2-4494-19BA9548B678";
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
	rename -uid "6F717A6F-4A0C-1C62-1C3A-AF803EAE95AF";
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
	rename -uid "9C4F7460-498B-A220-1DCA-02BA0A12DE06";
createNode transform -n "RightEyeBallffd1Lattice" -p "RightEyeBallFFDGrp";
	rename -uid "2617B231-480D-07AE-EF7F-8588E4DD4B25";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode lattice -n "RightEyeBallffd1LatticeShape" -p "RightEyeBallffd1Lattice";
	rename -uid "B81573EB-4896-6BCF-3EE6-8CBC8D76C07F";
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
	rename -uid "55592826-42F9-561C-4BC9-DFB870310018";
	setAttr ".t" -type "double3" -1.1102230246251565e-15 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 7.3584567753940817 6 7.3584567753940835 ;
createNode baseLattice -n "RightEyeBallffd1BaseShape" -p "RightEyeBallffd1Base";
	rename -uid "C8072684-4DCD-AF3F-2A8D-10836ED49F22";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "RightEyeLidAimGrp" -p "RightEyeLidRootPoser";
	rename -uid "AA9B2CFC-4D45-CA36-EE94-47A1A9BD5590";
	setAttr ".v" no;
createNode transform -n "RightEyeBallFix" -p "RightEyeLidAimGrp";
	rename -uid "878E4BD2-454E-E785-2473-899E17217ABE";
createNode locator -n "RightEyeBallFixShape" -p "RightEyeBallFix";
	rename -uid "03400C7F-4717-F6ED-E57E-5AAD5304211E";
	setAttr -k off ".v";
createNode transform -n "RightEyeLidUp3AimGrp" -p "RightEyeLidAimGrp";
	rename -uid "12C238B0-4401-CCC0-529E-67A5311B1A0F";
createNode transform -n "RightEyeLidUp3Aim" -p "RightEyeLidUp3AimGrp";
	rename -uid "EA985B64-48AE-73A6-942E-7AB01A625E5C";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp3AimShape" -p "RightEyeLidUp3Aim";
	rename -uid "C409B983-4EF8-7CAC-1650-94B98E449D2B";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp3AimGrp_aimConstraint1" -p "RightEyeLidUp3AimGrp";
	rename -uid "A00368EF-461B-6F65-6E5A-05B85CB8D668";
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
	rename -uid "BB46FAFB-4994-7400-5B66-7D8A86FC0757";
createNode transform -n "RightEyeLidUp4Aim" -p "RightEyeLidUp4AimGrp";
	rename -uid "00F14F4D-4FFA-2A86-A9DF-9B8D6C772A3C";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp4AimShape" -p "RightEyeLidUp4Aim";
	rename -uid "71177F7B-4401-67EF-A795-DDA2B653004A";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp4AimGrp_aimConstraint1" -p "RightEyeLidUp4AimGrp";
	rename -uid "6A902010-473A-5C03-71C9-BBAFBA229E79";
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
	rename -uid "9A1821C8-4FB1-689B-AC8C-D596CA67199F";
createNode transform -n "RightEyeLidUp5Aim" -p "RightEyeLidUp5AimGrp";
	rename -uid "F124C783-4192-1C03-3636-2BADAC2572CB";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidUp5AimShape" -p "RightEyeLidUp5Aim";
	rename -uid "D8B08BD4-44D5-64FB-DC5D-E384F382A3D3";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidUp5AimGrp_aimConstraint1" -p "RightEyeLidUp5AimGrp";
	rename -uid "76E8DE12-462E-3758-4F7C-C9AE33CE8391";
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
	rename -uid "C1562E28-40CD-678C-4078-42AC6ABB13BA";
createNode transform -n "RightEyeLidDown3Aim" -p "RightEyeLidDown3AimGrp";
	rename -uid "EF99DD6E-4C58-A40A-EF81-ED96E456527B";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown3AimShape" -p "RightEyeLidDown3Aim";
	rename -uid "0F0297A7-45B5-5978-3D28-D492D85AA0CB";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown3AimGrp_aimConstraint1" -p "RightEyeLidDown3AimGrp";
	rename -uid "49A37054-45D5-CEEB-19C7-31A11BCC9B2B";
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
	rename -uid "A476D5B9-4A65-A6EC-D472-89B0DA4A94A3";
createNode transform -n "RightEyeLidDown4Aim" -p "RightEyeLidDown4AimGrp";
	rename -uid "49E4A104-4CF7-BA42-0252-54820F6DE297";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown4AimShape" -p "RightEyeLidDown4Aim";
	rename -uid "A14480B1-4685-7E43-BCAF-0A866DBB4E99";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown4AimGrp_aimConstraint1" -p "RightEyeLidDown4AimGrp";
	rename -uid "2F1B7F59-4B72-06BC-B789-79AA3D6FEC5E";
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
	rename -uid "2D4C97A2-42B7-1ED5-6478-068FD7D19791";
createNode transform -n "RightEyeLidDown5Aim" -p "RightEyeLidDown5AimGrp";
	rename -uid "7DC4785E-44E5-C4A5-14CC-1A8CA106E736";
	setAttr ".t" -type "double3" 0 0 1 ;
createNode locator -n "RightEyeLidDown5AimShape" -p "RightEyeLidDown5Aim";
	rename -uid "D3078B1F-4B32-C4E0-5155-75AE008B561B";
	setAttr -k off ".v";
createNode aimConstraint -n "RightEyeLidDown5AimGrp_aimConstraint1" -p "RightEyeLidDown5AimGrp";
	rename -uid "D754FF85-4849-2917-7293-788DB78ECCA9";
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
	rename -uid "AAF94559-4726-2B3C-4504-5A8C2D0FC3FF";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.0658141036401503e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "RightEyeLidLocGrp" -p "RightEyeLidLocGrpOffGrp";
	rename -uid "36EEE3BC-4184-3DEC-1DE5-03971BFF2D92";
createNode transform -n "RightEyeLidInPos" -p "RightEyeLidLocGrp";
	rename -uid "2AFF27F5-4809-0F67-04F3-2DA80B0AC61A";
createNode locator -n "RightEyeLidInPosShape" -p "RightEyeLidInPos";
	rename -uid "0C4C9FE9-4DE7-CAD7-166C-A59E433359FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidInLocOffGrp" -p "RightEyeLidInPos";
	rename -uid "29A25660-4084-5A1F-E85A-5DB4B7694698";
	setAttr ".v" no;
createNode transform -n "RightEyeLidInLoc" -p "RightEyeLidInLocOffGrp";
	rename -uid "5105F2FC-4525-6C1A-7103-ED85DC041210";
createNode locator -n "RightEyeLidInLocShape" -p "RightEyeLidInLoc";
	rename -uid "0ED63B0A-43C5-35AB-F2B9-48856BAF6839";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode locator -n "RighteyeLidInEPPosShape" -p "RightEyeLidInLoc";
	rename -uid "7B6CA124-488F-9A25-5EDE-B5A60ADA01AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpPos" -p "RightEyeLidLocGrp";
	rename -uid "61837B85-40AA-4458-9317-9EAE13324A8F";
createNode locator -n "RightEyeLidUpPosShape" -p "RightEyeLidUpPos";
	rename -uid "C2F88814-4C2C-BD2B-F5F1-7CAC06697E76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidUpLocOffGrp" -p "RightEyeLidUpPos";
	rename -uid "AD7B7DB0-4855-BF59-0D4F-EBBC9D6DF5C8";
createNode transform -n "RightEyeLidUpLoc" -p "RightEyeLidUpLocOffGrp";
	rename -uid "3790F321-459C-9EDA-C80C-1D96EA21D87C";
createNode locator -n "RightEyeLidUpLocShape" -p "RightEyeLidUpLoc";
	rename -uid "1193F51C-4A16-0383-AC0B-1F8815496A5F";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos2" -p "RightEyeLidUpLoc";
	rename -uid "EBC2910B-4CEF-6DFD-FEF0-3EBE78BBC1BA";
createNode locator -n "RightEyeLidUpCvPos2Shape" -p "RightEyeLidUpCvPos2";
	rename -uid "47288166-4E26-826D-00D5-84A9EBC6FE1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidUpCvPos1" -p "RightEyeLidUpLoc";
	rename -uid "A61EC29C-4C94-3D5B-87A5-07A73C9917AF";
createNode locator -n "RightEyeLidUpCvPos1Shape" -p "RightEyeLidUpCvPos1";
	rename -uid "8AF2E903-440A-3B31-17CF-69BEA4BE95F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutPos" -p "RightEyeLidLocGrp";
	rename -uid "18B46C2F-4766-A38E-8C87-73831C48A4B1";
createNode locator -n "RightEyeLidOutPosShape" -p "RightEyeLidOutPos";
	rename -uid "3925DBDD-4AF6-D86F-35A8-A29FDF3F5AB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutLocOffGrp" -p "RightEyeLidOutPos";
	rename -uid "DFB33845-4DBA-19FE-D589-09BDC427D470";
	setAttr ".v" no;
createNode transform -n "RightEyeLidOutLoc" -p "RightEyeLidOutLocOffGrp";
	rename -uid "B25BB7D5-4A43-2800-1B14-8B923543C2C7";
createNode locator -n "RightEyeLidOutLocShape" -p "RightEyeLidOutLoc";
	rename -uid "640CCDE7-4F76-76DC-92C1-81B8907BA35E";
	setAttr -k off ".v";
createNode locator -n "RighteyeLidOutEPPosShape" -p "RightEyeLidOutLoc";
	rename -uid "56CC7481-4CE2-A7CC-6F4F-89861E03D4FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownPos" -p "RightEyeLidLocGrp";
	rename -uid "5D6032D5-44B2-37BB-3ACF-1E930B0948FF";
createNode locator -n "RightEyeLidDownPosShape" -p "RightEyeLidDownPos";
	rename -uid "046B3B92-4862-3EB0-46E6-4488CD2876F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidDownLocOffGrp" -p "RightEyeLidDownPos";
	rename -uid "03290FEF-4D57-AE57-8431-E880740D5FE9";
createNode transform -n "RightEyeLidDownLoc" -p "RightEyeLidDownLocOffGrp";
	rename -uid "81880E86-4597-3C58-C361-F4801EA6E4CE";
createNode locator -n "RightEyeLidDownLocShape" -p "RightEyeLidDownLoc";
	rename -uid "752EEE2D-4DA6-DDD6-FBDD-1DA301054A87";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos2" -p "RightEyeLidDownLoc";
	rename -uid "2AE1BA31-47CE-4C8D-D85B-79B39B37EC31";
createNode locator -n "RightEyeLidDownCvPos2Shape" -p "RightEyeLidDownCvPos2";
	rename -uid "59335FA3-4856-39FA-527C-AC9E0E68BD8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidDownCvPos1" -p "RightEyeLidDownLoc";
	rename -uid "DCF66238-405B-0A28-DDC9-42AF7DA708A9";
createNode locator -n "RightEyeLidDownCvPos1Shape" -p "RightEyeLidDownCvPos1";
	rename -uid "35D5846C-43A3-C9AA-A21F-128420A55B4D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "BAC26827-44DB-451E-307B-6BBFE229B6DE";
createNode transform -n "RightEyeLidOutUp1LocGrp" -p "RightEyeLidOutUp1LocOffGrp";
	rename -uid "A654DDDC-49F7-FD9F-1191-DD9E47EDCFA8";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "RightEyeLidOutUp1Pos" -p "RightEyeLidOutUp1LocGrp";
	rename -uid "8CD91B41-4A71-6105-C15D-7E925E10C888";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp1PosShape" -p "RightEyeLidOutUp1Pos";
	rename -uid "37CDFB56-4830-094A-7B73-8DA42CB053C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp1Loc" -p "RightEyeLidOutUp1Pos";
	rename -uid "F55F2DE2-4111-8F8F-9EA8-CFA360DFDD4C";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode locator -n "RightEyeLidOutUp1LocShape" -p "RightEyeLidOutUp1Loc";
	rename -uid "63E3DE29-4B4C-3EA5-5015-E78EB16C241E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "151885E9-44EA-342A-0D22-A697838E860D";
createNode transform -n "RightEyeLidOutUp2LocGrp" -p "RightEyeLidOutUp2LocOffGrp";
	rename -uid "905C11F0-434D-7924-A2D5-C3BB4D576C44";
createNode transform -n "RightEyeLidOutUp2Pos" -p "RightEyeLidOutUp2LocGrp";
	rename -uid "216B345F-42EB-FD9C-2878-B7AA04C4A11B";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp2PosShape" -p "RightEyeLidOutUp2Pos";
	rename -uid "09FEDFDC-41DA-65EB-9A0D-FA8D90E9F1E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp2Loc" -p "RightEyeLidOutUp2Pos";
	rename -uid "EA775220-4DD9-1124-EE56-2ABD921CF200";
createNode locator -n "RightEyeLidOutUp2LocShape" -p "RightEyeLidOutUp2Loc";
	rename -uid "DBA6B455-4AC0-0067-7E3D-179CB8E42D6D";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos1" -p "RightEyeLidOutUp2Loc";
	rename -uid "AD7B6288-43EE-398B-D57A-CC8BBE8593E1";
createNode locator -n "RightEyeLidOutUp2CvPos1Shape" -p "RightEyeLidOutUp2CvPos1";
	rename -uid "0280F54A-400F-5A45-BD50-D18F7CA04210";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp2CvPos2" -p "RightEyeLidOutUp2Loc";
	rename -uid "D012185D-4BB8-B34B-B119-77A460813918";
createNode locator -n "RightEyeLidOutUp2CvPos2Shape" -p "RightEyeLidOutUp2CvPos2";
	rename -uid "510EC5FD-4776-AB74-0419-518F0CB545D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutUp3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "2F41CDFA-452E-6C4D-6C6A-1186B3B75040";
createNode transform -n "RightEyeLidOutUp3LocGrp" -p "RightEyeLidOutUp3LocOffGrp";
	rename -uid "905D67F6-48AF-650E-8584-379B2D3557C3";
createNode transform -n "RightEyeLidOutUp3Pos" -p "RightEyeLidOutUp3LocGrp";
	rename -uid "32CAA2FD-447A-8AA9-4019-99994C94FA1E";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin";
	setAttr -k on ".blendMax";
createNode locator -n "RightEyeLidOutUp3PosShape" -p "RightEyeLidOutUp3Pos";
	rename -uid "CB7FF1F1-4895-B2CF-C7BF-6FA800D4C2E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutUp3Loc" -p "RightEyeLidOutUp3Pos";
	rename -uid "C94501CD-4B92-3378-2DCF-5AA27A4B5EDE";
	setAttr ".v" no;
createNode locator -n "RightEyeLidOutUp3LocShape" -p "RightEyeLidOutUp3Loc";
	rename -uid "898CBA1B-47A7-337C-5D12-A29566EF3CB6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "5F7B528F-4F62-45CC-B639-278749144B15";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "RightEyeLidOutDown1LocGrp" -p "RightEyeLidOutDown1LocOffGrp";
	rename -uid "8CA8BAAA-48C2-B165-B124-9C912FED3204";
createNode transform -n "RightEyeLidOutDown1Pos" -p "RightEyeLidOutDown1LocGrp";
	rename -uid "6E21CBB9-4DAC-EC7B-2708-32A054DBD1CB";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown1PosShape" -p "RightEyeLidOutDown1Pos";
	rename -uid "342321A5-4470-2254-805F-FD81DFBF2836";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown1Loc" -p "RightEyeLidOutDown1Pos";
	rename -uid "7FDF46FB-4C67-0183-93DA-CD960C107063";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode locator -n "RightEyeLidOutDown1LocShape" -p "RightEyeLidOutDown1Loc";
	rename -uid "7059178B-4A2D-E1D0-F181-82B28B84ED4A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "1580C376-4B52-506B-5F12-D6BFAC9EE083";
createNode transform -n "RightEyeLidOutDown2LocGrp" -p "RightEyeLidOutDown2LocOffGrp";
	rename -uid "0AD446C3-4016-FA5B-5D64-1A86E80A4492";
createNode transform -n "RightEyeLidOutDown2Pos" -p "RightEyeLidOutDown2LocGrp";
	rename -uid "056E9C18-4368-80D3-8EFB-B890D0B4B835";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown2PosShape" -p "RightEyeLidOutDown2Pos";
	rename -uid "48951801-4026-0818-309F-1DA3BE2FDAD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown2Loc" -p "RightEyeLidOutDown2Pos";
	rename -uid "25B7FE42-47D7-891A-7753-14B573500E81";
createNode locator -n "RightEyeLidOutDown2LocShape" -p "RightEyeLidOutDown2Loc";
	rename -uid "6DAF31EE-4BA2-2A48-D226-D8816633A606";
	setAttr -k off ".v" no;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos1" -p "RightEyeLidOutDown2Loc";
	rename -uid "103C5753-4BF1-7A98-5129-EAA48AF5D7D5";
createNode locator -n "RightEyeLidOutDown2CvPos1Shape" -p "RightEyeLidOutDown2CvPos1";
	rename -uid "E7EE1B02-44C5-6B76-CCA3-328E70C58746";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown2CvPos2" -p "RightEyeLidOutDown2Loc";
	rename -uid "5DA84342-460D-533D-2027-BD95D37DD34D";
createNode locator -n "RightEyeLidOutDown2CvPos2Shape" -p "RightEyeLidOutDown2CvPos2";
	rename -uid "C304CDCE-4C26-6439-4608-08ACC67086B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidOutDown3LocOffGrp" -p "RightEyeLidLocGrp";
	rename -uid "45177659-4A31-0692-27FF-E6B7BC402194";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RightEyeLidOutDown3LocGrp" -p "RightEyeLidOutDown3LocOffGrp";
	rename -uid "96221BC1-4545-02B0-9E97-F7A2CB592305";
createNode transform -n "RightEyeLidOutDown3Pos" -p "RightEyeLidOutDown3LocGrp";
	rename -uid "B4E10599-4E7D-206C-6416-E690DB82D83F";
	addAttr -ci true -sn "blendMin" -ln "blendMin" -dv 1 -at "double";
	addAttr -ci true -sn "blendMax" -ln "blendMax" -at "double";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".blendMin" 0.55;
	setAttr -k on ".blendMax" 0.5;
createNode locator -n "RightEyeLidOutDown3PosShape" -p "RightEyeLidOutDown3Pos";
	rename -uid "2501F444-4DDF-2FFF-E1C8-4BB9801CBB69";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".los" -type "double3" 0.2 0.2 0.2 ;
createNode transform -n "RightEyeLidOutDown3Loc" -p "RightEyeLidOutDown3Pos";
	rename -uid "92BD84D1-420F-274A-2172-5DBB70744ACE";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode locator -n "RightEyeLidOutDown3LocShape" -p "RightEyeLidOutDown3Loc";
	rename -uid "7DC01CC9-4455-4072-D4C1-69B6B213E801";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "RightEyeLidCtrlPosCrv" -p "RightEyeLidRootPoser";
	rename -uid "40C55B1B-4E8E-582D-1822-77B6BA3CA563";
	setAttr ".t" -type "double3" 0 1.2079226507921706e-13 3.5527121146411737e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShape" -p "RightEyeLidCtrlPosCrv";
	rename -uid "D5535B9F-4648-CC4D-9FDC-48AF9C82B66D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 12 ".cp[0:11]" -type "double3" -2.2082783532271493 -14.820045471191406 
		-25.113191604613839 -2.271614844811928 -14.666393661499018 -25.083902359008402 -2.1627300572524248 
		-14.841145324707032 -24.903356552123817 -2.4166931939254068 -15.123806762695313 -24.664869308471712 
		-2.6652444672713598 -14.833849716186524 -24.470087051391825 -2.6508159947524441 -14.708286666870112 
		-24.321054458618537 -2.7740087819228556 -14.858072280883789 -24.278085708618583 -2.7238643479476345 
		-14.939403152465825 -24.320398330688853 -2.736850149644404 -14.741164398193359 -24.554609298706197 
		-2.4046261143813341 -14.517789077758788 -24.833391189575057 -2.1410475564131861 -14.794337463378906 
		-25.023866653442056 -2.2584575963149178 -14.951093292236333 -25.111383438109936;
createNode nurbsCurve -n "RightEyeLidCtrlPosCrvShapeOrig" -p "RightEyeLidCtrlPosCrv";
	rename -uid "5E5C3F85-43D7-3C70-8923-408228CCB25F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		1.0082783699035645 14.820045471191406 25.113191604614258
		1.0716148614883423 15.266393661499023 25.083902359008789
		1.562730073928833 16.041145324707031 24.903356552124023
		2.4166932106018066 16.323806762695313 24.66486930847168
		3.2652444839477539 16.033849716186523 24.470087051391602
		3.850816011428833 15.308286666870117 24.321054458618164
		3.9740087985992432 14.858072280883789 24.278085708618164
		3.9238643646240234 14.33940315246582 24.320398330688477
		3.3368501663208008 13.541164398193359 24.554609298706055
		2.4046261310577393 13.317789077758789 24.833391189575195
		1.5410475730895996 13.594337463378906 25.023866653442383
		1.058457612991333 14.351093292236328 25.111383438110352
		;
createNode decomposeMatrix -n "LeftEyeLidUp2CtrlPosGrpDM";
	rename -uid "9AD1A7C2-49B2-2436-9DFC-0186DC8076F0";
createNode multMatrix -n "LeftEyeLidUp2CtrlPosGrpMM";
	rename -uid "4961837B-4AA9-440F-072A-42BA5530C1DD";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0716148614883423 15.266393661499023 25.083902359008789 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 0.99999999999999989 0 0 0 0 1 0 -1.0716148614883423 -15.266393661499023 -25.083902359008789 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp2CtrlRvsMultMD";
	rename -uid "AF112523-40D3-2BEA-0204-17BF9AB26760";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp3CtrlPosGrpDM";
	rename -uid "84CDAB23-4A81-ED2D-2466-6CBEE3304E3E";
createNode multMatrix -n "LeftEyeLidUp3CtrlPosGrpMM";
	rename -uid "ACB275A9-4688-61D2-7831-2098A0AEB278";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.562730073928833 16.041145324707031 24.903356552124023 1;
	setAttr ".i[2]" -type "matrix" 1 0 1.7763568394002505e-15 0 -1.3877787807814457e-17 1 0 0
		 0 0 1 0 -1.562730073928833 -16.041145324707031 -24.903356552124027 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp3CtrlRvsMultMD";
	rename -uid "BF72EDF7-4E8B-7DD1-DD87-9EAC83748EA3";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp4CtrlPosGrpDM";
	rename -uid "CCF8B689-4071-9E11-9734-17B646A2CD82";
createNode multMatrix -n "LeftEyeLidUp4CtrlPosGrpMM";
	rename -uid "85837583-4DDB-3207-4DAC-3A8D560B0268";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4166932106018066 16.323806762695313 24.66486930847168 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.6769177786658861e-17 0.99999999999999989 -1.7114691128522261e-16 0
		 -1.3877787807814457e-17 0 1 0 -2.4166932106018062 -16.323806762695313 -24.664869308471676 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp4CtrlRvsMultMD";
	rename -uid "0912EC69-49D9-88B1-2C3D-019A65FC2CDC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp5CtrlPosGrpDM";
	rename -uid "CC4FFD7A-41FD-BFC7-BEBC-30B115E2FB22";
createNode multMatrix -n "LeftEyeLidUp5CtrlPosGrpMM";
	rename -uid "1E15B10D-411B-A7AA-0F9D-4C9BFD3FF508";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.2652444839477539 16.033849716186523 24.470087051391602 1;
	setAttr ".i[2]" -type "matrix" 1 -9.8607613152626476e-32 -8.8817841970012523e-16 0
		 2.2657185044431773e-17 1.0000000000000002 1.6979533786898039e-16 0 0 1.1102230246251565e-16 1 0
		 -3.2652444839477539 -16.033849716186527 -24.470087051391602 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp5CtrlRvsMultMD";
	rename -uid "0ABBD264-4615-E210-05DE-D6907EB6F69F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp6CtrlPosGrpDM";
	rename -uid "6B3D9561-4ECC-AC52-BD00-76B790B6DDFC";
createNode multMatrix -n "LeftEyeLidUp6CtrlPosGrpMM";
	rename -uid "1C7FD3F8-46FD-A202-E740-22B5B92F551E";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.850816011428833 15.308286666870117 24.321054458618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.8508160114288321 -15.308286666870115 -24.321054458618161 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidUp6CtrlRvsMultMD";
	rename -uid "436B47E2-455F-8371-779B-45951CC46190";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown2CtrlPosGrpDM";
	rename -uid "77BB3ABA-4C32-B54B-4661-BFBA8C44D60C";
createNode multMatrix -n "LeftEyeLidDown2CtrlPosGrpMM";
	rename -uid "9AB44E2F-4392-761D-54BE-E4A03374834C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.058457612991333 14.351093292236328 25.111383438110352 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 0.99999999999999989 0 0
		 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0584576129913328 -14.351093292236326 -25.111383438110352 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown2CtrlRvsMultMD";
	rename -uid "16664700-4CA4-7EA8-1D60-BDAE8D7C1329";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown3CtrlPosGrpDM";
	rename -uid "049B6E5C-47FD-9E86-73B6-298E1B7A111F";
createNode multMatrix -n "LeftEyeLidDown3CtrlPosGrpMM";
	rename -uid "AD57AD64-4F30-B15B-6223-C59479CAE011";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.5410475730895996 13.594337463378906 25.023866653442383 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 -1.5410475730895996 -13.594337463378906 -25.023866653442383 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown3CtrlRvsMultMD";
	rename -uid "76114AF6-41C0-90A0-015B-A882563C7240";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown4CtrlPosGrpDM";
	rename -uid "B04020C2-4CAA-4062-D05E-4A8357F21014";
createNode multMatrix -n "LeftEyeLidDown4CtrlPosGrpMM";
	rename -uid "007BCD95-4EE4-F576-E4FB-E29DAF4A3BBB";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 2.4046261310577393 13.317789077758789 24.833391189575195 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.3928580356146194e-16 -3.9782670549075614e-16 0
		 -2.7755575615628914e-17 0.99999999999999989 0 0 0 0 1 0 -2.4046261310577393 -13.317789077758791 -24.833391189575195 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown4CtrlRvsMultMD";
	rename -uid "EEFC999E-409F-4D50-B3CA-C1AB3DFC1237";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown5CtrlPosGrpDM";
	rename -uid "136C56DF-4FC7-A065-9547-9B8A745E50CC";
createNode multMatrix -n "LeftEyeLidDown5CtrlPosGrpMM";
	rename -uid "DE29420F-4BC2-4C82-7BE7-2E8CE067714F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.3368501663208008 13.541164398193359 24.554609298706055 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 7.5168562475543605e-16 1.3630546302049217e-15 0
		 0 0.99999999999999989 0 0 0 0 1 0 -3.3368501663208012 -13.541164398193361 -24.554609298706058 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown5CtrlRvsMultMD";
	rename -uid "32A569CD-4770-FF02-D87E-5A98AED782EE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown6CtrlPosGrpDM";
	rename -uid "F7D632F0-4480-150C-E69D-85BFD08B7036";
createNode multMatrix -n "LeftEyeLidDown6CtrlPosGrpMM";
	rename -uid "E9D4A5CA-4360-6F82-DCEA-8B95EFD6328C";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9238643646240234 14.33940315246582 24.320398330688477 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.9238643646240243 -14.339403152465822 -24.32039833068848 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidDown6CtrlRvsMultMD";
	rename -uid "01FAB888-46FB-77D4-DA97-E585DB01E7FD";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidUp1CtrlPosGrpDM";
	rename -uid "B1949E87-4684-6D8E-FFDB-828942F159A5";
createNode multMatrix -n "LeftEyeLidUp1CtrlPosGrpMM";
	rename -uid "FEF8BAAC-4CF0-D3D3-8412-6EAD2AE217C8";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 1.0082783699035645 14.820045471191406 25.113191604614258 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 -1.6453555708108474e-15 -2.7881243541265926e-15 -1.2325951644078309e-32
		 0 1 0 0 -6.9388939039072284e-18 0 0.99999999999999989 6.9388939039072284e-18 -1.0082783699035642 -14.820045471191404 -25.113191604614254 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide1RvsMultMD";
	rename -uid "3BDA115F-4DB2-CC99-AEBE-D2BC667A1FDD";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "LeftEyeLidDown7CtrlPosGrpDM";
	rename -uid "7569CD58-4858-7B9E-C335-B6AD3F599D09";
createNode multMatrix -n "LeftEyeLidDown7CtrlPosGrpMM";
	rename -uid "3A826EDF-4467-6587-8F1F-B89A3243533B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920695 -0.010061500057584475 -0.18591058136067151 0
		 0.001757494324864467 0.94755933308612394 -0.042489736555673757 0 0.1861743517753443 0.041318672721467546 0.92914424835063048 0
		 3.9740087985992432 14.858072280883789 24.278085708618164 1;
	setAttr ".i[2]" -type "matrix" 1 0 8.8817841970012523e-16 0 0 1 0 0 0 0 1 0 -3.9740087985992427 -14.858072280883789 -24.278085708618164 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "LeftEyeLidSide2RvsMultMD";
	rename -uid "FC306966-4B40-A995-798C-EABD6E6337BC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS";
	rename -uid "EE55969D-46C6-F9E1-053B-11B1E4025E4E";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS";
	rename -uid "F8DEAB89-41DC-5215-511E-B5A148B6C442";
createNode multiplyDivide -n "LeftEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "FBE2C27F-4A60-5D64-4894-B0ABA5D2CB56";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "79F75A89-46EF-0A33-56BB-30B8D1284478";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS";
	rename -uid "198F8598-4E0A-70D3-3454-BDB293ED4085";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS";
	rename -uid "9D8D997A-4E2D-118E-FCEC-368F2D0B1F57";
createNode multiplyDivide -n "LeftEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "A6D65693-45AD-7284-0206-798F88324411";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS";
	rename -uid "56CDE6CE-44FD-0F4A-73F2-88B3ECB5A70A";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS";
	rename -uid "A2FFB312-4561-20E6-8603-07825AD85035";
createNode multiplyDivide -n "LeftEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "7A0E37B2-4203-FC81-46B4-98B498462306";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS";
	rename -uid "687D02A9-4DBB-C001-82D5-5282DC486CD9";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS";
	rename -uid "15566C6B-4059-CFD1-D7F7-2AAA5A7E784F";
createNode multiplyDivide -n "LeftEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "777D90E5-4668-91A7-AF7A-8CA92C315982";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS";
	rename -uid "62309309-4490-4BB1-A0B8-509D3E5684DC";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS";
	rename -uid "7DF0515D-48D5-5CD1-6E02-1C99E5EA2108";
createNode multiplyDivide -n "LeftEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "5FA55C8C-4DDD-F089-7BCC-AF9EF3C2D018";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS";
	rename -uid "243D3557-490A-A20C-9229-1FB271653AEC";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS";
	rename -uid "5A21823F-44FC-E027-6DC1-6D87AFA2B8C1";
createNode multiplyDivide -n "LeftEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "101EE5E7-4600-76C5-0DD5-329DA1B3E6E7";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidInLocPS";
	rename -uid "548113DC-4DBB-CC51-0CB5-EFBAC2B877B5";
createNode closestPointOnSurface -n "LeftEyeLidInLocCS";
	rename -uid "57E04BC3-4E4E-F9EB-E951-F88957644DF4";
createNode multiplyDivide -n "LefteyeLidInCtrlRvsMultMD";
	rename -uid "0558EAF0-4987-18CF-BEC8-CFA65D818EE6";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "3841304F-4E17-DCFC-B16A-4AA33EC404B7";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpLocPS";
	rename -uid "13E3C08F-4591-CCBB-2BC3-6CA280E94B2B";
createNode closestPointOnSurface -n "LeftEyeLidUpLocCS";
	rename -uid "C78DAFB9-47E7-3D2C-6326-A2A6E4E614F1";
createNode multiplyDivide -n "LeftEyeLidUpCtrlRvsMultMD";
	rename -uid "99EDB17C-424E-B89D-96E3-348D4CD26A34";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "B65165AC-4E22-627B-FFD2-6DBA245048DA";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutLocPS";
	rename -uid "637B8101-4CF2-6843-55AD-3A98CE9794A8";
createNode closestPointOnSurface -n "LeftEyeLidOutLocCS";
	rename -uid "D9A5A816-4273-0A40-8C06-17A553F0B804";
createNode multiplyDivide -n "LefteyeLidOutCtrlRvsMultMD";
	rename -uid "9FCFA4B0-40ED-B759-6528-979CA8D1C88D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownLocPS";
	rename -uid "77B6CA01-46B2-524E-6E4C-E986E1F4B793";
createNode closestPointOnSurface -n "LeftEyeLidDownLocCS";
	rename -uid "83511E80-4B2E-944D-A49E-48B27A613138";
createNode multiplyDivide -n "LefteyeLidDownCtrlRvsMultMD";
	rename -uid "98C201C4-4505-3314-D335-D88FBB661FC8";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "7D10CF65-4172-4A61-6A09-BD9E2BC1A301";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode decomposeMatrix -n "RightEyeLidUp2CtrlPosGrpDM";
	rename -uid "00E3A4CD-4041-1F1B-11E4-E5B1299ADCD6";
createNode multMatrix -n "RightEyeLidUp2CtrlPosGrpMM";
	rename -uid "75CF0407-4E0A-758F-6F7C-BD92C3D3E43B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0716148614869307 15.266393661499023 25.083902359008849 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999989 1.6949101745987762e-15 -7.6784108415841052e-16 0
		 0 1 0 0 0 0 1 0 1.0716148614869307 -15.266393661499022 -25.083902359008849 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp2CtrlRvsMultMD";
	rename -uid "B1968519-4F2D-A2FA-D988-54BE05F9314A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp3CtrlPosGrpDM";
	rename -uid "91CC00FF-4D24-46E9-0A61-E6AB9A4F11B0";
createNode multMatrix -n "RightEyeLidUp3CtrlPosGrpMM";
	rename -uid "A02B4FB4-40CD-173B-9FDB-D3970208405A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5627300739274315 16.041145324707031 24.903356552124112 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.0843618183427545e-17 0.99999999999999989 -1.7280174896636211e-16 0
		 0 1.1102230246251565e-16 1 0 1.5627300739274312 -16.041145324707031 -24.903356552124109 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp3CtrlRvsMultMD";
	rename -uid "47D67339-487A-78B0-3927-528EE302626D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp4CtrlPosGrpDM";
	rename -uid "A664DA57-453E-9B89-C29B-29B0B1B5E9F9";
createNode multMatrix -n "RightEyeLidUp4CtrlPosGrpMM";
	rename -uid "CB43C455-4C83-BBDA-9D2E-7FB4560D775D";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4166932106004184 16.323806762695313 24.664869308471815 1;
	setAttr ".i[2]" -type "matrix" 1 -9.0615330587380894e-16 -1.3691752902817888e-15 0
		 0 1 0 0 0 0 1 0 2.4166932106004184 -16.323806762695316 -24.664869308471818 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp4CtrlRvsMultMD";
	rename -uid "8C500334-4E8D-193C-F485-379FAACBE71A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp5CtrlPosGrpDM";
	rename -uid "4635147E-4B51-BCFF-98C3-5889A53813F8";
createNode multMatrix -n "RightEyeLidUp5CtrlPosGrpMM";
	rename -uid "2181652E-43DF-E4CD-BF56-7399FD9EEFF2";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.2652444839463768 16.033849716186523 24.470087051391786 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 2.2657185044422218e-17 0.99999999999999989 -1.6979533786898167e-16 0
		 0 0 1 0 3.2652444839463768 -16.03384971618652 -24.470087051391786 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp5CtrlRvsMultMD";
	rename -uid "B5BCFC66-4F88-20C5-6A36-15B0981B5D47";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp6CtrlPosGrpDM";
	rename -uid "36F35097-4EE8-D11E-1F3B-5EBD6FE53524";
createNode multMatrix -n "RightEyeLidUp6CtrlPosGrpMM";
	rename -uid "B89AD465-488B-88BA-D95A-5AB66F552EBD";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.8508160114274643 15.308286666870117 24.321054458618381 1;
	setAttr ".i[2]" -type "matrix" 0.99999999999999978 8.4978061625607498e-16 1.3500897321560226e-15 0
		 -5.344080749352476e-17 1 3.3752243303900565e-16 0 0 1.1102230246251565e-16 1 0 3.8508160114274643 -15.308286666870119 -24.321054458618384 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp6CtrlRvsMultMD";
	rename -uid "76C7FA46-4806-5870-B9AA-56944A3C623D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown2CtrlPosGrpDM";
	rename -uid "B9BC3CD4-40E1-6461-00F8-4A8A2AE8A9FF";
createNode multMatrix -n "RightEyeLidDown2CtrlPosGrpMM";
	rename -uid "B5061C57-4E26-D492-71D1-8491470E76FD";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0584576129899199 14.351093292236328 25.111383438110412 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 1.3877787807814457e-17 1 0 0 0 0 1 0 1.0584576129899199 -14.35109329223633 -25.111383438110419 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown2CtrlRvsMultMD";
	rename -uid "4AB7469F-4425-0CFB-E07B-619EE6C6E1AC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown3CtrlPosGrpDM";
	rename -uid "CDB47A2D-4B27-21F9-D688-568F093F0AFB";
createNode multMatrix -n "RightEyeLidDown3CtrlPosGrpMM";
	rename -uid "EB610DBA-4CF4-1B62-B825-BAA6A890DE4A";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.5410475730881914 13.594337463378906 25.023866653442468 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 -1.3877787807814457e-17 1 0 0 6.9388939039072284e-18 0 1 0
		 1.5410475730881914 -13.594337463378906 -25.023866653442465 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown3CtrlRvsMultMD";
	rename -uid "E10A072C-4216-4418-0E4B-D3A242E5780D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown4CtrlPosGrpDM";
	rename -uid "6F7C5847-43B9-E46D-F298-17B0BBB4F0FD";
createNode multMatrix -n "RightEyeLidDown4CtrlPosGrpMM";
	rename -uid "B3EE5AD4-4A6E-B848-998F-B6913B0088FC";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -2.4046261310563417 13.317789077758789 24.83339118957533 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.99999999999999989 6.9388939039072284e-18
		 2.4046261310563422 -13.317789077758789 -24.83339118957533 0.99999999999999989;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown4CtrlRvsMultMD";
	rename -uid "359085EC-43EB-52F6-8CA0-6BA0C557819D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown5CtrlPosGrpDM";
	rename -uid "FCCCEEE6-458D-8F40-7AC4-B9BA260CA30C";
createNode multMatrix -n "RightEyeLidDown5CtrlPosGrpMM";
	rename -uid "9DAC3EEE-478D-DD9D-AA0E-6DA29FF595F5";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.3368501663194188 13.541164398193359 24.554609298706243 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3368501663194188 -13.541164398193359 -24.554609298706243 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown5CtrlRvsMultMD";
	rename -uid "D15ED470-44D1-FCC3-B9E6-988A4A270F48";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown6CtrlPosGrpDM";
	rename -uid "B1E37841-45E6-26C3-EBDC-CEBC67F01F8E";
createNode multMatrix -n "RightEyeLidDown6CtrlPosGrpMM";
	rename -uid "FFCCB665-4772-1533-6A98-34B5CC5B139F";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9238643646226548 14.33940315246582 24.320398330688697 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9238643646226548 -14.33940315246582 -24.320398330688697 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidDown6CtrlRvsMultMD";
	rename -uid "813FC39C-4CA4-53CF-E231-2CB70CB6F720";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidUp1CtrlPosGrpDM";
	rename -uid "19710B9C-48D9-8613-25F2-2A94207658D1";
createNode multMatrix -n "RightEyeLidUp1CtrlPosGrpMM";
	rename -uid "73B82518-4C5D-E46C-1ADC-08B0A35E6814";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -1.0082783699021511 14.820045471191406 25.113191604614315 1;
	setAttr ".i[2]" -type "matrix" 1.0000000000000002 -1.6453555708108478e-15 -2.7881243541265997e-15 0
		 1.3877787807814457e-17 0.99999999999999989 0 0 0 0 1 0 1.0082783699021511 -14.820045471191408 -25.113191604614318 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidUp1CtrlRvsMultMD";
	rename -uid "6C07BD32-4041-9E90-0123-FFB8330B1021";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "RightEyeLidDown7CtrlPosGrpDM";
	rename -uid "C3C8C4FA-4D1A-7204-1338-29B849236703";
createNode multMatrix -n "RightEyeLidDown7CtrlPosGrpMM";
	rename -uid "D02B37E3-4E11-50C2-7177-D0A186A2DABE";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923426 -0.010061500058877895 -0.1859105813604619 0
		 -0.0017574943261922903 0.94755933308612073 -0.042489736555672439 0 -0.18617435177519251 0.041318672721207497 0.929144248350672 0
		 -3.9740087985978767 14.858072280883789 24.278085708618388 1;
	setAttr ".i[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9740087985978771 -14.858072280883789 -24.278085708618388 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode multiplyDivide -n "RightEyeLidSide2CtrlRvsMultMD";
	rename -uid "57BCC805-48B7-300C-354B-43818D7556DC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS";
	rename -uid "7483E08C-4E1A-1A75-7E97-09845DFB1EC1";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS";
	rename -uid "868847F2-4EE9-7606-25F4-63ADEF1C0F81";
createNode multiplyDivide -n "RightEyeLidOutUp1CtrlRvsMultMD";
	rename -uid "D0D81239-4577-0CF4-26B3-5AA486CE793D";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "35F7E8A5-4BFC-819E-A71F-2998A0D4BFA6";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS";
	rename -uid "3DF6881C-4E3F-5B81-787F-D1A1E5F51C4C";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS";
	rename -uid "D5EBDBA7-401B-9ADF-6150-B484B23F96C9";
createNode multiplyDivide -n "RightEyeLidOutUp2CtrlRvsMultMD";
	rename -uid "49C51D6C-44BF-0182-0C19-A293E88CBAF1";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS";
	rename -uid "9D662F07-4052-E123-3308-C99B5D3B96C4";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS";
	rename -uid "48EC2D79-42F5-57E6-5DAB-889B8D582F1B";
createNode multiplyDivide -n "RightEyeLidOutUp3CtrlRvsMultMD";
	rename -uid "E5D8CA35-40B9-CD2F-6D45-60B6F0A6449E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS";
	rename -uid "0E4E54E8-4462-6FF7-098C-15ADB79B57A7";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS";
	rename -uid "BCC6A7D2-4206-1A26-D0F5-E6B850923340";
createNode multiplyDivide -n "RightEyeLidOutDown1CtrlRvsMultMD";
	rename -uid "FC9AFDB1-484F-E269-20CE-07BAE90F3CF7";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS";
	rename -uid "8D99DC0F-44A3-DCBC-C62D-F2BC36822622";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS";
	rename -uid "567E1CF5-4487-BCB3-8A7B-8A8CAC75C92E";
createNode multiplyDivide -n "RightEyeLidOutDown2CtrlRvsMultMD";
	rename -uid "839EBE2C-446F-0AAB-B746-25A52C1A354E";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS";
	rename -uid "578BEEBD-4138-ABC8-3090-CFAB7C36888B";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS";
	rename -uid "7AF728AD-4F3A-5057-AAD6-3681D54EB5B7";
createNode multiplyDivide -n "RightEyeLidOutDown3CtrlRvsMultMD";
	rename -uid "6764B20E-4058-9C70-D230-25930377CE8C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidInLocPS";
	rename -uid "23B85207-45C2-17F9-58EC-05AA55DA6DC2";
createNode closestPointOnSurface -n "RightEyeLidInLocCS";
	rename -uid "AEDBAC39-452C-088C-372C-1289F92A2173";
createNode multiplyDivide -n "RighteyeLidInCtrlRvsMultMD";
	rename -uid "36FEA116-49CA-F459-54A8-A18A677245BB";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "F8ED1E88-460D-8C22-0D9E-C095D780652F";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidUpLocPS";
	rename -uid "EF5C1A7A-4BEE-9931-5F26-D8BA7611922C";
createNode closestPointOnSurface -n "RightEyeLidUpLocCS";
	rename -uid "7154C4AF-40B6-DB9C-C10D-B99B22072AFC";
createNode multiplyDivide -n "RightEyeLidUpCtrlRvsMultMD";
	rename -uid "67331DC5-4D0C-D2BC-AD6D-19A44259030A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "40339049-466C-BEF3-E8DA-CBA7C6085A56";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode pointOnSurfaceInfo -n "RightEyeLidOutLocPS";
	rename -uid "09489916-4743-02B7-A000-0B85F359F5D6";
createNode closestPointOnSurface -n "RightEyeLidOutLocCS";
	rename -uid "14A30844-4FF3-79BD-D940-C79B723E63ED";
createNode multiplyDivide -n "RighteyeLidOutCtrlRvsMultMD";
	rename -uid "228CEAB3-4033-7424-3159-D4AB3BD5B9BC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode pointOnSurfaceInfo -n "RightEyeLidDownLocPS";
	rename -uid "8876E29F-43FE-33BC-FE97-53BE7C219D7C";
createNode closestPointOnSurface -n "RightEyeLidDownLocCS";
	rename -uid "823480FB-4F68-8C8E-9CB9-6694A19F357F";
createNode multiplyDivide -n "RighteyeLidDownCtrlRvsMultMD";
	rename -uid "33CB6476-4CEB-1819-6FC9-9DADCF29A956";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "DA9F58BD-4731-456C-7BF1-BF88BEEFA64F";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode reverse -n "LeftEyeLidRootModeRvs";
	rename -uid "C5C946A2-4F7D-CCDC-BE4F-BCBC54853F86";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl0PosPS";
	rename -uid "ECDF7340-4565-60E5-7441-59B4560079A8";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl0PosCS";
	rename -uid "DC8E2C69-42BB-DA5B-013D-95BA51B882AE";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "3E22E500-4744-1C3A-40D2-BFA78CFE3833";
createNode multMatrix -n "LeftEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "60C05E8D-4A79-F356-6688-51ACE4E2E29B";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp1ZAL";
	rename -uid "0E0DA0E2-4D0F-3A8D-EE1E-7CA68301919A";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp1ZML";
	rename -uid "89415BF1-4376-0F44-6DA8-00B9BFE65744";
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl1PosPS";
	rename -uid "605ECB48-4518-BA99-6E71-3497FC2B46A3";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl1PosCS";
	rename -uid "E6F89FEA-41B5-4777-7A82-3AA6882F67BC";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "BF78F641-465A-3D08-589F-579E5E7C61A9";
createNode multMatrix -n "LeftEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "C5B5826E-4616-5C7F-9396-FA93C69F3398";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.587043409970982 0.48797602631460396 2.5934855848001748 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp2ZAL";
	rename -uid "9F4090E2-4FB2-436D-8135-C5A28E99F803";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp2ZML";
	rename -uid "90BEAA5D-47D1-D6B2-4435-C1B079F7FF6A";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl2PosPS";
	rename -uid "D4C2E0F4-400A-C80A-598A-CC8C29976693";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl2PosCS";
	rename -uid "CBADB784-4009-9EC5-C9F0-E6A08A30ECEA";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "0E502436-40E7-C6DB-BE18-75ACB6D530F9";
createNode multMatrix -n "LeftEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "EE06DEF2-415E-4ABA-5910-5C8119FA9943";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9031894509306093 1.3252189480909276 2.4528664790148569 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp3ZAL";
	rename -uid "C3BC5606-4E5E-9674-11FA-CCB185039D11";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp3ZML";
	rename -uid "CE6CD5AB-4563-87C1-DD4F-E8BD39BE5718";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl3PosPS";
	rename -uid "7FDE1ED7-42E6-4201-C865-92AFF6D62570";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl3PosCS";
	rename -uid "5C8CC5AF-4AA4-CFFF-0396-D5806CF60FCB";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "9EE5A72E-4574-C390-9119-FDBFBF9EAF18";
createNode multMatrix -n "LeftEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "6EC025D3-4153-C014-A94A-CDB199FA9878";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000445700983 1.7755272619269271 2.4140850883153409 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp4ZAL";
	rename -uid "ACA816A2-4D87-596E-4388-998C0E66FB27";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp4ZML";
	rename -uid "48E3C0BB-4C3C-2B89-342B-F592205F8F7A";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl4PosPS";
	rename -uid "DC6F94B3-4E7A-5EF7-01E5-F7A8BDDA9F43";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl4PosCS";
	rename -uid "E2EFBFF8-44B1-232A-E04F-DD90F7895289";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "BD1EBB22-49EF-E4E9-96E5-6BBBBDBC1DBC";
createNode multMatrix -n "LeftEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "E7C0D606-4A10-FD6C-92DB-82B1A598719D";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.273982986082383 1.2921419141502111 2.3853931082740627 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp5ZAL";
	rename -uid "DBF2E035-41D7-B41E-6A36-92852E86A7F6";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp5ZML";
	rename -uid "D96B20D0-42A7-EC54-77A5-298100889E41";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl5PosPS";
	rename -uid "32EC9762-4B96-5A8B-A46E-359339F10D12";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl5PosCS";
	rename -uid "10FACB2B-45F2-B1DB-4DAB-7F8C6DB72EF4";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "6814977F-4660-879E-1299-469D76DEB8E8";
createNode multMatrix -n "LeftEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "943BAC0A-4325-79A2-DCF4-159A735CC78F";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7634543609654862 0.44871324698002157 2.3804159618505771 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp6ZAL";
	rename -uid "DDCB69DD-4788-F65A-3AFF-0CBE6FE5BB8B";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp6ZML";
	rename -uid "D73F9D24-497A-710E-9348-298A033170FB";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidUpCtrl6PosPS";
	rename -uid "4A98F690-4AFF-7D9C-2AEF-F79753AB42BD";
createNode closestPointOnSurface -n "LeftEyeLidUpCtrl6PosCS";
	rename -uid "06D3AD30-4647-CBE0-D49F-0E9F05386009";
createNode decomposeMatrix -n "LeftEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "2C65C5BB-4E3A-D184-7A5B-54AF738DBFBC";
createNode multMatrix -n "LeftEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "E21F20DD-462C-6D5A-5E51-D0BA85322B37";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidUp7ZAL";
	rename -uid "14EC37E2-47F1-A96F-BCAC-EC986945733F";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidUp7ZML";
	rename -uid "38CC5DC7-45F7-20BF-12D5-B9880531E1A3";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl0PosPS";
	rename -uid "8B8862CC-4183-0ACF-6997-B7AE449C5B59";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl0PosCS";
	rename -uid "FDFAF1B3-4376-C59B-7079-548777DB1CED";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "AEB2DAA3-4103-8C64-C023-49A17C325424";
createNode multMatrix -n "LeftEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "960956D8-4086-FE33-C992-E98F1946982E";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.6057619006184951 2.1119024241255729e-12 2.6492255351027283 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown1ZAL";
	rename -uid "E1251871-4F37-1B79-4771-EE9B7E6181D4";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown1ZML";
	rename -uid "F2CC1138-4F7A-9B96-C7C3-49ADAD91ED33";
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl1PosPS";
	rename -uid "44AB000F-4921-43F2-2274-B2AA451E1CD9";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl1PosCS";
	rename -uid "5C4FBC49-4555-C4D0-E5A2-91BA615FFD85";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "5C288905-4BCB-3982-1611-03AFE0C21C59";
createNode multMatrix -n "LeftEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "94C67E74-4057-6DA8-2F11-E995E2C25C67";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.5910121019054044 -0.46835993238400825 2.5992124607449685 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown2ZAL";
	rename -uid "BC84D8AA-41F3-D91D-3192-B9B3248A88A8";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown2ZML";
	rename -uid "24484E61-4151-4B3D-343A-1498EE1E4363";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl2PosPS";
	rename -uid "468348D3-4094-820F-1210-DCBCB60C68C3";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl2PosCS";
	rename -uid "54A22B7F-4692-CD7F-1A74-A5BB744C252D";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "58BE472D-41A6-38CA-109D-EBB1D018ACCA";
createNode multMatrix -n "LeftEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "177C9196-4569-EC4A-31DD-2E81191B7BBF";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 1.9054410584200565 -1.2774549718480275 2.4787015409260404 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown3ZAL";
	rename -uid "9559DE1F-488F-A328-DD61-A8B01F6F5D66";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown3ZML";
	rename -uid "1ADC7036-42F9-269C-6E53-98B6276094CD";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl3PosPS";
	rename -uid "39EF1ABE-44A6-E932-AB77-FF99A746A3C6";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl3PosCS";
	rename -uid "8EFF6563-4580-AA9C-B0F7-139F088B4173";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "8998DC41-4C7E-DB38-E996-3CB0FBE78498";
createNode multMatrix -n "LeftEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "52E9D6A9-4CB7-2BB3-E360-B48F57F7C4D9";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 3.0000000277964594 -1.7096859157890627 2.4603377129103148 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown4ZAL";
	rename -uid "7B3894ED-4AEA-6094-E513-49898B17716A";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown4ZML";
	rename -uid "2FDBB335-40CE-A4EF-41F8-A2A3AF3602C2";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl4PosPS";
	rename -uid "5207F70B-4477-604A-1A0D-4180D2EC374D";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl4PosCS";
	rename -uid "F3686761-4C0E-5927-1EF7-3BAAF78FB9D5";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "0C918355-4009-2A5C-C943-C8BC4524A56E";
createNode multMatrix -n "LeftEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "BBC0A367-4594-4937-AFDA-D98C772A6FD1";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.3472019913733959 -1.214548023404677 2.3858353840180135 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown5ZAL";
	rename -uid "5A3F6404-43A1-1EF6-C92D-1C922F7BC987";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown5ZML";
	rename -uid "F93B00BD-45A2-BD10-ACB9-C8B657A06C14";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl5PosPS";
	rename -uid "35864F56-434B-ECA2-C240-B3A8637EB27A";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl5PosCS";
	rename -uid "44D125C9-4254-6B37-B70A-60B2D559EA22";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "1E532080-45A4-21D6-F760-96A284E0BED5";
createNode multMatrix -n "LeftEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "F7ED5376-449A-66C1-2842-B5A05653A2FE";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.7899324080594177 -0.41762382241756674 2.3666027814698745 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown6ZAL";
	rename -uid "BE21BD9D-4165-2B4F-AE80-388DC912D3BE";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown6ZML";
	rename -uid "A60514F1-4B09-8EFF-2DBE-9E928DD8A83E";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "LeftEyeLidDownCtrl6PosPS";
	rename -uid "A562C095-4474-756D-199C-898F2ADC4862";
createNode closestPointOnSurface -n "LeftEyeLidDownCtrl6PosCS";
	rename -uid "9B8EA1B2-4FCB-318D-1E9E-429900B8C63E";
createNode decomposeMatrix -n "LeftEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "2093DE9B-4471-D678-FC79-FD994DA2B30A";
createNode multMatrix -n "LeftEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "34930CE6-45F9-975A-E62D-C8A166DA0589";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 3.5682568011452531e-13 2.7755575615628914e-16 0
		 -3.5688119126575667e-13 1.0000000000000002 0 0 -2.2204460492495203e-16 -1.1102230246259489e-16 1 0
		 4.8368806683775887 3.3305431645715719e-12 2.3685583538122317 1;
	setAttr ".i[2]" -type "matrix" 1 -3.567701689632941e-13 5.6621374255882984e-14 0
		 3.5688119126575657e-13 1 1.1102230248271049e-16 0 -5.6732396558345499e-14 1.1102230246251249e-16 1 0
		 -2.9999999999999991 2.828805902315972e-29 -3 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "LeftEyeLidDown7ZAL";
	rename -uid "CC3F11BD-4F85-5CB8-5047-048933D9FF86";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "LeftEyeLidDown7ZML";
	rename -uid "AC9EB0F0-4663-729B-90EC-DEAB0CC72694";
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp1LocPS1";
	rename -uid "42041A4B-4ED1-03D3-7FA8-D8B8379608C5";
createNode closestPointOnSurface -n "LeftEyeLidOutUp1LocCS1";
	rename -uid "D07B3C15-4CA2-FA5E-F597-E9AD21BC24E9";
createNode rotateHelper -n "LeftEyeLidOutUp1LocRH";
	rename -uid "8B399589-4880-D161-D20E-CB99E10C2DF3";
	setAttr ".rm" -type "matrix" -0.59938660691385359 -0.8004567504399811 -0.002164746489369318 0
		 0.61710479662934881 -0.4638106790593548 0.63565818170424759 0 -0.50982091505679494 0.37966912524666252 0.77196760936265096 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2CvPos1PS";
	rename -uid "6DBA5BA4-4852-4EDB-53BF-5CBB5EE0B27D";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2CvPos1CS";
	rename -uid "E65878F5-48D7-AB2A-2A64-269164BE998B";
createNode rotateHelper -n "LeftEyeLidOutUp2CvPos1RH";
	rename -uid "16AD82B3-4410-13A8-BFAC-D4AB6E558B6D";
	setAttr ".rm" -type "matrix" -0.85788855533328023 -0.51383218769597572 0.001926010318117539 0
		 0.37068524135375569 -0.61628756083652825 0.6948252256507893 0 -0.35583658956139635 0.59679655264229714 0.71917605374733107 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2LocPS1";
	rename -uid "6DDDD54B-4B28-D80F-9336-A985D35DDB3D";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2LocCS1";
	rename -uid "9E023FAA-4834-34A6-2697-918108D46C9E";
createNode rotateHelper -n "LeftEyeLidOutUp2LocRH";
	rename -uid "B852DCEF-4D9D-C66F-FA90-91BA572B5201";
	setAttr ".rm" -type "matrix" -1 1.2246467991473532e-16 -6.1629758220391547e-33 0
		 -9.456238166517586e-17 -0.7721604443911001 0.63542761044649254 0 7.7817438922314862e-17 0.63542761044649276 0.77216044439110021 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp2CvPos2PS";
	rename -uid "98DECD82-4D8C-FE54-8598-9FA0B23811F2";
createNode closestPointOnSurface -n "LeftEyeLidOutUp2CvPos2CS";
	rename -uid "DA55D494-411D-5B60-3F94-4EAE8F1ECFAC";
createNode rotateHelper -n "LeftEyeLidOutUp2CvPos2RH";
	rename -uid "E94E02F4-4517-67BA-C649-3D92C3CCB181";
	setAttr ".rm" -type "matrix" -0.85788855533364683 0.51383218769536376 -0.0019260103181189263 0
		 -0.37068524135331726 -0.61628756083679259 0.69482522565078875 0 0.35583658956096953 0.59679655264255094 0.71917605374733173 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutUp3LocPS1";
	rename -uid "EC4EAB61-4E3C-0E0F-1F13-BD89585C8EAB";
createNode closestPointOnSurface -n "LeftEyeLidOutUp3LocCS1";
	rename -uid "7B44E302-4A1F-B824-8814-1AADC69A6947";
createNode rotateHelper -n "LeftEyeLidOutUp3LocRH";
	rename -uid "2D3B9C72-4451-F6BD-628A-3E9E03FCF814";
	setAttr ".rm" -type "matrix" -0.59938660691442291 0.800456750439555 0.0021647464893684298 0
		 -0.61710479662902107 -0.46381067905979467 0.63565818170424504 0 0.50982091505652249 0.37966912524702406 0.77196760936265307 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown1LocPS1";
	rename -uid "3A610F71-40F7-8954-F898-9B8FA1A3F0FA";
createNode closestPointOnSurface -n "LeftEyeLidOutDown1LocCS1";
	rename -uid "31139D21-4A9E-1EFA-86CA-CC8417C135B6";
createNode rotateHelper -n "LeftEyeLidOutDown1LocRH";
	rename -uid "E52CF0B5-43EA-03E1-AD06-FD8A47F122FF";
	setAttr ".rm" -type "matrix" 0.59938660691442347 -0.80045675043955444 0.0021647464893690955 0
		 0.61710479662901996 0.46381067905979501 0.6356581817042456 0 -0.50982091505652283 -0.37966912524702423 0.77196760936265263 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2CvPos1PS";
	rename -uid "9F188132-4F7A-EFB6-49C9-4E8978720B5D";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2CvPos1CS";
	rename -uid "DAEDF58F-4AEE-FA0A-E0AE-639CCE3D3D1F";
createNode rotateHelper -n "LeftEyeLidOutDown2CvPos1RH";
	rename -uid "CD04C38B-448B-ED39-462C-20B0783C88B4";
	setAttr ".rm" -type "matrix" 0.85788855533364661 -0.51383218769536343 -0.0019260103181187875 0
		 0.37068524135331726 0.61628756083679326 0.6948252256507883 0 -0.35583658956096914 -0.59679655264255072 0.71917605374733218 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2LocPS1";
	rename -uid "08E0CAAB-4199-F812-20C2-E997762B64FA";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2LocCS1";
	rename -uid "61497C69-471B-8F8D-F402-C39EC5FD861C";
createNode rotateHelper -n "LeftEyeLidOutDown2LocRH";
	rename -uid "920AD685-4332-1F85-928E-A8A497276E22";
	setAttr ".rm" -type "matrix" 1 0 0 0 0 0.77216044439108877 0.63542761044650586 0
		 0 -0.63542761044650586 0.77216044439108877 0 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown2CvPos2PS";
	rename -uid "21B80E08-40DB-5E18-6CC8-8E81D6788B08";
createNode closestPointOnSurface -n "LeftEyeLidOutDown2CvPos2CS";
	rename -uid "3B2043BB-4B03-2694-9E07-3C98614D3BA2";
createNode rotateHelper -n "LeftEyeLidOutDown2CvPos2RH";
	rename -uid "DC6F4302-479B-71DE-EE4A-CA8D0FC87972";
	setAttr ".rm" -type "matrix" 0.85788855533327923 0.51383218769597694 0.0019260103181186761 0
		 -0.37068524135375819 0.61628756083652869 0.69482522565078775 0 0.35583658956139569 -0.5967965526422957 0.71917605374733284 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "LeftEyeLidOutDown3LocPS1";
	rename -uid "F1F5283C-4E6A-D39C-EEE1-9797C4C31EC5";
createNode closestPointOnSurface -n "LeftEyeLidOutDown3LocCS1";
	rename -uid "E76EEA8A-475B-B5E6-6C82-B3833D14A2B2";
createNode rotateHelper -n "LeftEyeLidOutDown3LocRH";
	rename -uid "9D06DFD7-41E0-C6C9-4229-D38E1BB35106";
	setAttr ".rm" -type "matrix" 0.59938660691385004 0.80045675043998388 -0.0021647464893692074 0
		 -0.61710479662935191 0.46381067905935291 0.63565818170424604 0 0.50982091505679517 -0.37966912524665936 0.77196760936265219 0
		 0 0 0 1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC";
	rename -uid "2A602E9B-4041-1BBB-C24A-CA868753A3A8";
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC1";
	rename -uid "C41983A4-423E-3965-E344-47A04E2B00DC";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC2";
	rename -uid "C5A2CD50-43EB-0FFC-4AA1-C3BC019F9204";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC3";
	rename -uid "16EF4E23-4756-F543-C164-E3AA73E197B5";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC4";
	rename -uid "49B922EB-4606-B4CA-AA0E-738FF723258C";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC5";
	rename -uid "CF9B2356-4738-2A84-02D1-B2A555769C2F";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidUpCrvPC6";
	rename -uid "067B3A25-416A-DFC4-C4D1-22ACC4BAC6C1";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC";
	rename -uid "B5BAB360-4816-D6A8-FF44-41AC8F9BF518";
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC1";
	rename -uid "66603261-41FF-0FAC-5F5A-108A1CC703EE";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC2";
	rename -uid "9B614D40-474C-E888-E890-9D96E995FA83";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC3";
	rename -uid "55D266F2-4D9D-8D0F-8214-14A5870E04FB";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC4";
	rename -uid "D8B7DE5B-45AB-8E23-05FA-15ADB27E1EA3";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC5";
	rename -uid "B48AB02F-4B10-E8F2-3D56-DD8B5C4214D7";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "LeftEyeLidDownCrvPC6";
	rename -uid "1CEF400E-4BEF-7300-4182-47BB95BB872C";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC";
	rename -uid "7A0B8900-49C3-9500-E419-1381C8F5BE14";
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC1";
	rename -uid "3E9CBE87-4A74-39CE-E49F-AA89168A63A9";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC2";
	rename -uid "8D2CA2ED-4A46-A97F-F67D-E8BC970CFFF2";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC3";
	rename -uid "0E78A6A5-4003-5F06-BBC2-819065DB84A8";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC4";
	rename -uid "E65E7CB8-4A82-5FA3-5467-6B986BAA2BFD";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC5";
	rename -uid "6B88291E-4A52-6E75-1A23-A8A75C015705";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC6";
	rename -uid "F317A4CA-48D9-0AA6-7BD9-38BB46F37507";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC7";
	rename -uid "7DDF52C8-49C3-7B32-102A-39BB14ACAC80";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC8";
	rename -uid "435A22B8-4EED-7B5B-749C-1D90677D5B27";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC9";
	rename -uid "C1DBA04C-4F50-B680-3DF8-108E245A31BB";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC10";
	rename -uid "2B93E161-49A2-B95B-8B2B-429AC45A97CE";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "LeftEyeLidCtrlPosCrvPC11";
	rename -uid "A2D99AF8-4461-F174-65EE-EC84187EDFEB";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "3904E7F0-499F-4BF9-3CEF-458D8E5C0F89";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "LeftEyeBallffd";
	rename -uid "8176C637-4D9E-CB3D-7CA8-FCB92AF760F6";
	setAttr ".lo" yes;
createNode objectSet -n "LeftEyeBallffdSet";
	rename -uid "1590EA25-4880-72BF-976E-858C2E5AB027";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId4";
	rename -uid "8ECE97EB-4127-3761-B1BC-7992B1F8205A";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts4";
	rename -uid "F3E524BF-4180-5FF3-E94A-32A526BA0B0C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "42EFA44E-48AF-E5E4-FCC6-568D75E845FD";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode pairBlend -n "LeftEyeLidOutUp1LocOffGrpPB";
	rename -uid "82ED4313-48FD-7BEB-D90C-7391A9955B54";
	setAttr ".it1" -type "double3" -2 1.5000000000000036 3 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp1LocOffGrpDM";
	rename -uid "2F83904D-4137-754D-7FFA-B79C8A48B313";
createNode multMatrix -n "LeftEyeLidOutUp1LocOffGrpMM";
	rename -uid "55DB045E-4D0C-73FC-EC80-E5A4CF12B286";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 0.54835647942961518 16.260246184741497 25.528985512250632 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086522 0.0019534722132144022 0.20693462147916861 0
		 -0.011183456186151377 1.0532215101136295 0.045926110756276457 0 -0.20664143807123239 -0.047227759715844475 1.0327529624704908 0
		 4.9768646151104114 -16.592679297477915 -27.225379163111061 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp1PB";
	rename -uid "1D4539EF-4C81-2DA6-1173-75855475364E";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv2PosDM";
	rename -uid "8DB8A5C2-4FE8-F1F4-6B07-09AD2FDE3803";
createNode multMatrix -n "LeftEyeLidUpCrv2PosMM";
	rename -uid "FF839DD1-4FBC-9559-8DF0-DD9CC049B4ED";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 5.5511151231257827e-17 -5.5511151231257827e-17 1 0
		 -0.81481482942446304 0.38888879756621209 4.5365341261316416e-08 1;
createNode pairBlend -n "LeftEyeLidOutUp2LocOffGrpPB";
	rename -uid "790AF068-43F8-6356-1F90-A6814F95F9D8";
	setAttr ".it1" -type "double3" -4.4408920985006262e-16 2.5000000000000036 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp2LocOffGrpDM";
	rename -uid "39494022-4D96-9A30-2162-2E81FE3DED04";
createNode multMatrix -n "LeftEyeLidOutUp2LocOffGrpMM";
	rename -uid "C80D9A39-4B2F-96E2-9B4C-10BFDF4EAD78";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 2.4102356667335698 17.187682517711139 25.114674612973719 1;
	setAttr ".i[2]" -type "matrix" 1.033771770308652 0.0019534722132150961 0.20693462147916974 0
		 -0.011183456186151281 1.0532215101136295 0.04592611075627602 0 -0.20664143807123234 -0.047227759715844808 1.0327529624704905 0
		 2.8903165613110136 -16.619899584392961 -27.225379163111025 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp2PB";
	rename -uid "BA85F176-414F-7507-F9CC-9690F57A942C";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv3PosDM";
	rename -uid "3C76EB05-46FA-48E4-C039-93B6FD6F8043";
createNode multMatrix -n "LeftEyeLidUpCrv3PosMM";
	rename -uid "B70BDA62-4FD0-422F-71D0-F8B5EC24B318";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9723025562329717e-08 0.99999987671438562 6.1243210058847808e-08 1;
createNode pairBlend -n "LeftEyeLidOutUp3LocOffGrpPB";
	rename -uid "EFBFAB33-4237-BC09-C05B-E889B7E107BC";
	setAttr ".it1" -type "double3" 1.9999999999999991 1.4999999999999964 3.0000000000000071 ;
createNode decomposeMatrix -n "LeftEyeLidOutUp3LocOffGrpDM";
	rename -uid "30918BF2-4DD0-1E35-8C0C-A6BCDC9B3F70";
createNode multMatrix -n "LeftEyeLidOutUp3LocOffGrpMM";
	rename -uid "93330A08-4C2F-8E39-F928-4C90BF2A5CE1";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 4.2685998653864559 16.220000184508535 24.785343186808156 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086524 0.0019534722132143328 0.2069346214791678 0
		 -0.011183456186151334 1.0532215101136293 0.045926110756276027 0 -0.20664143807123242 -0.047227759715844586 1.032752962470491 0
		 0.65075167464068573 -16.598657814404376 -27.225379163111032 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutUp3PB";
	rename -uid "3D2E6E31-40E8-439F-5623-C6B6087AC7E4";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidUpCrv4PosdM";
	rename -uid "51686933-4393-ADD1-9C9A-7A9728960B9D";
createNode multMatrix -n "LeftEyeLidUpCrv4PosMM";
	rename -uid "F92DB7A5-4569-5800-5C0A-1793D4476D78";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 -5.5511151231257827e-17 1 0 0.81481480020516628 0.3888887975662112 4.5365341261316416e-08 1;
createNode pairBlend -n "LeftEyeLidOutDown1LocOffGrpPB";
	rename -uid "004EF953-418D-FC6B-961D-19BF549EF30C";
	setAttr ".it1" -type "double3" -2.0000000000000009 -1.4999999999999964 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown1LocOffGrpDM";
	rename -uid "55B7B386-450E-67D6-60F8-15875238AB5B";
createNode multMatrix -n "LeftEyeLidOutDown1LocOffGrpMM";
	rename -uid "6A6C61C0-4756-F960-CF78-6CA49D95CDAB";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.1861743517753213 0.041318672721336387 0.9291442483506408 0
		 0.54308399645301142 13.41756818548313 25.656454721917655 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086522 0.0019534722132144161 0.20693462147916863 0
		 -0.011183456186151316 1.0532215101136297 0.045926110756276138 0 -0.20664143807123242 -0.04722775971584442 1.0327529624704912 0
		 4.9404410303819253 -12.33619026425129 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown1PB";
	rename -uid "93071EFC-4E08-2758-6552-A4A6AC716174";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv2PosDM";
	rename -uid "FF45ADD4-4317-BA6B-BD28-B4A85AB5D6E2";
createNode multMatrix -n "LeftEyeLidDownCrv2PosMM";
	rename -uid "C87EE56F-48BA-5173-7746-E19F50F74EB2";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 5.5511151231257821e-17 0.99999999999999989 0
		 -0.81481481481481532 -0.38888889716560882 6.695968668424257e-09 1;
createNode pairBlend -n "LeftEyeLidOutDown2LocOffGrpPB";
	rename -uid "F102CF1C-4E48-0D07-AAB3-D38DEC5D14A4";
	setAttr ".it1" -type "double3" 4.4408920985006262e-16 -2.4999999999999982 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown2LocOffGrpDM";
	rename -uid "588EFF18-4D57-D22E-CCAA-CA9628C2A862";
createNode multMatrix -n "LeftEyeLidOutDown2LocOffGrpMM";
	rename -uid "F97E08C6-4234-C510-6B90-0A9374DCB59B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648921017 -0.010061500058239739 -0.18591058136061933 0
		 0.0017574943255344807 0.94755933308612217 -0.042489736555673875 0 0.18617435177532132 0.041318672721336394 0.92914424835064091 0
		 2.4014481951058979 12.449885852280527 25.327123295752088 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086526 0.0019534722132147214 0.20693462147916727 0
		 -0.011183456186151361 1.0532215101136293 0.045926110756276138 0 -0.20664143807123236 -0.047227759715844475 1.0327529624704908 0
		 2.8903165810340443 -12.342822343681533 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown2PB";
	rename -uid "5478DA98-44F1-3E5D-1801-F38D62469BBF";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv3PosDM";
	rename -uid "520D9D6E-492D-2E2E-78D9-E3AB9D650C07";
createNode multMatrix -n "LeftEyeLidDownCrv3PosMM";
	rename -uid "341ED5D1-42B0-7D08-B918-EABE3D882114";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 -6.1629758220391547e-33 0 1 0 -8.3266726748800786e-17 -1.0000000111735723 9.0395575469415235e-09 1;
createNode pairBlend -n "pairBlend1";
	rename -uid "D0C57B61-497F-EE63-A3B7-1CBB93720015";
	setAttr ".it1" -type "double3" 2 -1.4999999999999911 3.0000000000000036 ;
createNode decomposeMatrix -n "LeftEyeLidOutDown3LocOffGrpDM";
	rename -uid "B043C8C8-481D-1245-08FE-7FAA864922BA";
createNode multMatrix -n "LeftEyeLidOutDown3LocOffGrpMM";
	rename -uid "96A79E5F-4736-0FFB-3AC0-139E529C4F76";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" 0.93006084648920995 -0.010061500058239737 -0.1859105813606193 0
		 0.0017574943255344805 0.94755933308612206 -0.042489736555673868 0 0.1861743517753213 0.041318672721336387 0.92914424835064069 0
		 4.2633273824098517 13.377322185250172 24.912812396475175 1;
	setAttr ".i[2]" -type "matrix" 1.0337717703086524 0.0019534722132144022 0.20693462147916802 0
		 -0.011183456186151325 1.0532215101136297 0.04592611075627652 0 -0.20664143807123239 -0.04722775971584442 1.032752962470491 0
		 0.44292436756764508 -12.384452547242375 -27.225379215314693 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "LeftEyeLidOutDown3PB";
	rename -uid "2013670C-433F-B851-A9C4-B996865364C8";
	setAttr ".w" 0;
createNode decomposeMatrix -n "LeftEyeLidDownCrv4PosDM";
	rename -uid "C85C8954-4090-B031-14C4-7CB1168E109C";
createNode multMatrix -n "LeftEyeLidDownCrv4PosMM";
	rename -uid "69F41E98-4CA2-D58F-B4F1-FA9008D98A7D";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999978 0 0.8148148148148151 -0.38888889716560793 6.6959664479782077e-09 1;
createNode reverse -n "RightEyeLidRootModeRvs";
	rename -uid "D870D526-4C36-4173-BF66-1B9594CE70F3";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl0PosPS";
	rename -uid "2FCC0A0F-4113-F5C8-D7D2-18AB1DA15CD4";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl0PosCS";
	rename -uid "71D51BA6-4B72-6D20-353B-7B9296BED5FC";
createNode decomposeMatrix -n "RightEyeLidUpCtrl0PosSurfPosDM";
	rename -uid "BB03D867-4631-D028-B637-B98B37BC808E";
createNode multMatrix -n "RightEyeLidUpCtrl0PosSurfPosMM";
	rename -uid "F62B504E-46E5-D640-33BB-23BA3D05BC73";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp1ZAL";
	rename -uid "AF9AF801-4753-3AD1-A307-EEA4484E58A4";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp1ZML";
	rename -uid "6AF51784-4E85-9534-B66F-78971030AEB3";
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl1PosPS";
	rename -uid "25FF83C3-4B50-CC48-4252-87B91CAF5357";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl1PosCS";
	rename -uid "63BFED23-4285-52C8-6D7B-578A876BB785";
createNode decomposeMatrix -n "RightEyeLidUpCtrl1PosSurfPosDM";
	rename -uid "9D79D306-4458-0691-086C-A880B6A0A94B";
createNode multMatrix -n "RightEyeLidUpCtrl1PosSurfPosMM";
	rename -uid "755A1D22-45AD-ED3B-3C37-F68E731E0C11";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -1.5870433543837399 0.48797602631153841 2.5934855848005234 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp2ZAL";
	rename -uid "D9F73F4D-4B1E-D0FD-FF56-CB8D76EC1C6E";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp2ZML";
	rename -uid "13F2AFEA-4891-F899-58CB-5D941361A037";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl2PosPS";
	rename -uid "9F404C14-4092-B0F2-2010-21B057B04FBC";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl2PosCS";
	rename -uid "4A8F1A4F-4F4E-E5AE-6512-07A2CB6D0F85";
createNode decomposeMatrix -n "RightEyeLidUpCtrl2PosSurfPosDM";
	rename -uid "A30B4668-4933-96D4-5209-7392CD433AEB";
createNode multMatrix -n "RightEyeLidUpCtrl2PosSurfPosMM";
	rename -uid "F7A13E08-41A2-38DF-1617-F191247B48FA";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999967 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -1.9031893953450296 1.3252189480875742 2.4528664790155923 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp3ZAL";
	rename -uid "F03C1780-401E-D548-8BF0-E09D4B1EEE02";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp3ZML";
	rename -uid "0A056EA9-430D-68B8-F321-0B820A7CAF6D";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl3PosPS";
	rename -uid "7E509BBF-453D-E984-E958-D99A85CD19C2";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl3PosCS";
	rename -uid "E43AE4E6-4408-3081-E6FE-7FB5B4FE3542";
createNode decomposeMatrix -n "RightEyeLidUpCtrl3PosSurfPosDM";
	rename -uid "A7ACC575-43A5-3E9B-DBC6-C8AF3A3C5D0A";
createNode multMatrix -n "RightEyeLidUpCtrl3PosSurfPosMM";
	rename -uid "C970821C-4B61-7988-D208-21A235B2C1D3";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -2.9999999722071293 1.7755272613334676 2.4140850887411993 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp4ZAL";
	rename -uid "C724B1B9-4043-4EA1-7AE8-8FACA07AE3EE";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp4ZML";
	rename -uid "4919C8E8-47FC-5CD3-DAF5-DA8BEF80C094";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl4PosPS";
	rename -uid "C966B989-41C7-B7EF-4D7C-239CEA6D12AC";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl4PosCS";
	rename -uid "8C6BCCB8-4A56-0447-0F79-00AF75C2A924";
createNode decomposeMatrix -n "RightEyeLidUpCtrl4PosSurfPosDM";
	rename -uid "3D74D5BF-4EF7-D0FC-6AB4-FFBC53B07C39";
createNode multMatrix -n "RightEyeLidUpCtrl4PosSurfPosMM";
	rename -uid "E0FF4DB7-4F17-6DA4-8B91-57BDD61BCE6E";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.2739829304973034 1.2921419141418244 2.3853931082748776 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp5ZAL";
	rename -uid "360EE2CD-4381-D281-F030-49B973C50609";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp5ZML";
	rename -uid "5C5E1AAC-4C53-4613-89A6-51A2AF17089F";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl5PosPS";
	rename -uid "44D26E53-4879-4C2A-5458-D1955A93DA01";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl5PosCS";
	rename -uid "618A3A61-4783-6121-A441-B1AE6A966257";
createNode decomposeMatrix -n "RightEyeLidUpCtrl5PosSurfPosDM";
	rename -uid "0282D993-47AD-B0CA-DD28-078CD3893956";
createNode multMatrix -n "RightEyeLidUpCtrl5PosSurfPosMM";
	rename -uid "260093D2-43F5-F23B-1AF4-0A87D7E7D535";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999989 0
		 -4.7634543053784713 0.44871324697028847 2.3804159618510421 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp6ZAL";
	rename -uid "EE5E567C-4512-B6D5-CAF5-DD9449BF6C74";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp6ZML";
	rename -uid "48659062-4E2A-E8FA-685D-B9B51125D2DC";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidUpCtrl6PosPS";
	rename -uid "C556D5C9-4BC2-7E40-15AD-AEBA5F013CA6";
createNode closestPointOnSurface -n "RightEyeLidUpCtrl6PosCS";
	rename -uid "6E54CAAC-425A-71DE-48FB-C8BA2667CFE8";
createNode decomposeMatrix -n "RightEyeLidUpCtrl6PosSurfPosDM";
	rename -uid "B8D109D8-47BC-04E3-E6D3-1CAFD612BCC6";
createNode multMatrix -n "RightEyeLidUpCtrl6PosSurfPosMM";
	rename -uid "27BBE4B4-4BAC-AB36-C58A-89BD467AF11F";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidUp7ZAL";
	rename -uid "C323951D-4676-8004-327B-5DAA63E25DB5";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidUp7ZML";
	rename -uid "9D32D6DF-452F-AE45-E68C-C9B0C8A504EA";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl0PosPS";
	rename -uid "9EF64427-450F-16F9-D93D-1C86DBD312C5";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl0PosCS";
	rename -uid "7527E141-4411-DE74-700A-D6A2CD18B697";
createNode decomposeMatrix -n "RightEyeLidDownCtrl0PosSurfPosDM";
	rename -uid "C10A2384-47F6-13C4-D92E-70A82870A60B";
createNode multMatrix -n "RightEyeLidDownCtrl0PosSurfPosMM";
	rename -uid "D9B66D55-4988-6DC2-5E86-C4A9E0F83A62";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -1.6057618532849129 -1.2667997564271967e-12 2.6492255394058501 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidSide1ZAL";
	rename -uid "9739FF4C-41F4-A807-34D3-4DBF691A3486";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown1ZML";
	rename -uid "BEFA656F-4F14-609A-BBBD-34A0B485C494";
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl1PosPS";
	rename -uid "397DC337-4F16-4E54-ED80-718EC5977C46";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl1PosCS";
	rename -uid "FB954843-404E-352B-E7CE-118118187D26";
createNode decomposeMatrix -n "RightEyeLidDownCtrl1PosSurfPosDM";
	rename -uid "00A69554-4124-3BA4-1D01-F8ABD91BD14C";
createNode multMatrix -n "RightEyeLidDownCtrl1PosSurfPosMM";
	rename -uid "C0418318-4D3B-5D8F-1500-8082CD3189B9";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575642e-13 0.99999999999999956 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999956 0
		 -1.5910120463163866 -0.46835993238709095 2.5992124607448015 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown2ZAL";
	rename -uid "79EE41C0-4C48-8B49-AD3A-9887402DC25B";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown2ZML";
	rename -uid "BBF363DE-4FF8-4278-407B-CE816613CD3C";
	setAttr ".i1" 0.16666666666666666;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl2PosPS";
	rename -uid "D6D5FEDE-433A-C0E0-2CF3-929FB7F5200D";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl2PosCS";
	rename -uid "57795044-45FA-97B7-88AF-A08AF36327E4";
createNode decomposeMatrix -n "RightEyeLidDownCtrl2PosSurfPosDM";
	rename -uid "F359DB3C-45CB-4004-E77B-8EB2F8C04BD0";
createNode multMatrix -n "RightEyeLidDownCtrl2PosSurfPosMM";
	rename -uid "BA4A8AC3-42DA-FE0F-553D-9CAFE10D7F07";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999956 -3.5682568011452521e-13 -4.0002043607102428e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -1.9054410028294466 -1.2774549718514276 2.4787015409255191 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown3ZAL";
	rename -uid "52F6CACE-4A74-EEBF-62B1-4E970562EF21";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown3ZML";
	rename -uid "B7D01E11-410F-4CE3-06DD-2B8EEC193D7D";
	setAttr ".i1" 0.33333333333333331;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl3PosPS";
	rename -uid "207B7424-4F04-F676-46A4-4CA9EBD1BE8B";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl3PosCS";
	rename -uid "39F5BA1F-460D-6F60-95D9-61A40893EB1F";
createNode decomposeMatrix -n "RightEyeLidDownCtrl3PosSurfPosDM";
	rename -uid "EDE99855-4018-DC0D-7D1A-FA932AE9C363";
createNode multMatrix -n "RightEyeLidDownCtrl3PosSurfPosMM";
	rename -uid "5E736388-47EE-698C-4DC7-9E8A60274CC0";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999967 -3.5682568011452521e-13 -4.0002043607102438e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -2.9999999722046384 -1.7096859142164216 2.4603377139873359 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown4ZAL";
	rename -uid "A1F63310-42A9-BCE6-EF9D-999C15D4B3F5";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown4ZML";
	rename -uid "6F22FABA-422E-7B75-180D-B2923A6AFE5F";
	setAttr ".i1" 0.5;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl4PosPS";
	rename -uid "05DBF89E-492A-A367-1BA7-C29A51793B02";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl4PosCS";
	rename -uid "4276A4E6-4937-EC62-884A-7DA4AFC077DE";
createNode decomposeMatrix -n "RightEyeLidDownCtrl4PosSurfPosDM";
	rename -uid "3FC33269-4278-6ACB-5298-8A81D57A709F";
createNode multMatrix -n "RightEyeLidDownCtrl4PosSurfPosMM";
	rename -uid "DD81D5A8-4C34-5BBB-0691-F5BC357041B4";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999978 -3.5682568011452526e-13 -4.0002043607102438e-16 0
		 -3.5688119126575657e-13 1 0 0 -3.4450928483968441e-16 -1.1102230246263854e-16 0.99999999999999967 0
		 -4.3472019357823726 -1.2145480234132673 2.385835384017704 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown5ZAL";
	rename -uid "9075784B-4DBF-C65D-E4B2-7FBEB7B34E3A";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown5ZML";
	rename -uid "60AAC794-4D2B-6DAB-3EF3-A4B4FD789F66";
	setAttr ".i1" 0.333;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl5PosPS";
	rename -uid "376DEB97-4397-ED94-0292-FEB8AEDB4B1C";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl5PosCS";
	rename -uid "64C94E98-46D8-F043-EBB9-8DB4B6DFD6DC";
createNode decomposeMatrix -n "RightEyeLidDownCtrl5PosSurfPosDM";
	rename -uid "B45FC024-4320-98DA-AAB2-DEB90A09AD45";
createNode multMatrix -n "RightEyeLidDownCtrl5PosSurfPosMM";
	rename -uid "DDA5261E-4014-33B8-2B99-B09EC16134B9";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575652e-13 0.99999999999999989 0 0 -3.4450928483968451e-16 -1.1102230246263857e-16 0.99999999999999978 0
		 -4.7899323524702435 -0.41762382242735163 2.3666027814699473 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown6ZAL";
	rename -uid "43D9A067-45DA-CDF7-A57B-0992073C6640";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown6ZML";
	rename -uid "E827BC3A-4AB6-5C84-F47B-3683BBC3DBE4";
	setAttr ".i1" 0.167;
createNode pointOnSurfaceInfo -n "RightEyeLidDownCtrl6PosPS";
	rename -uid "72D85067-4A40-0948-6A51-54BFE2F6F28D";
createNode closestPointOnSurface -n "RightEyeLidDownCtrl6PosCS";
	rename -uid "5B28CFA3-413A-7943-15A0-55AB3788211E";
createNode decomposeMatrix -n "RightEyeLidDownCtrl6PosSurfPosDM";
	rename -uid "697E938B-4708-8F8C-A399-5D9737E9A409";
createNode multMatrix -n "RightEyeLidDownCtrl6PosSurfPosMM";
	rename -uid "BA14DFA5-4BBF-791B-285F-22B67D35B692";
	setAttr -s 6 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.99999999999999989 -3.5682568011452531e-13 -4.0002043607102448e-16 0
		 -3.5688119126575647e-13 0.99999999999999978 0 0 -3.4450928483968456e-16 -1.1102230246263859e-16 1 0
		 -4.8368806127894572 -3.5731809564353433e-12 2.3685583538124968 1;
	setAttr ".i[2]" -type "matrix" -1.0000000000000002 -3.5677016896329421e-13 5.6843418860808015e-14 0
		 -3.5688119126575657e-13 1.0000000000000002 1.1102230248286195e-16 0 5.6998509937049607e-14 1.1102230246251252e-16 0.99999999999999989 0
		 -2.9999999999999996 -9.5402865725166101e-30 -2.9999999999999996 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode addDoubleLinear -n "RightEyeLidDown7ZAL";
	rename -uid "998CAD74-45FC-2EBB-BE7E-4DBB2C67F039";
	setAttr ".ihi" 2;
createNode multDoubleLinear -n "RightEyeLidDown7ZML";
	rename -uid "47B48477-467B-C135-C910-559E8ED3228C";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp1LocPS1";
	rename -uid "F658AE5D-4071-C8A8-3FA7-249F7D40EDDA";
createNode closestPointOnSurface -n "RightEyeLidOutUp1LocCS1";
	rename -uid "F3923BBF-4E8E-0339-C241-A08F9ADFE649";
createNode rotateHelper -n "RightEyeLidOutUp1LocRH";
	rename -uid "17D9CAC3-4801-F7C2-C604-C2A6955082DB";
	setAttr ".rm" -type "matrix" 0.5993866069144218 -0.80045675043955544 -0.0021647464894030124 0
		 -0.61710479662898432 -0.46381067905979351 0.63565818170428112 0 -0.50982091505656779 -0.37966912524702368 -0.7719676093626231 0
		 0 0 0 1;
createNode multDoubleLinear -n "RightEyeLidOutUp1ZRvs";
	rename -uid "78ED915B-458E-2115-72F6-E2878297424E";
	setAttr ".i2" -1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2CvPos1PS";
	rename -uid "534E3CA1-4968-D400-399C-27A8EF89C8E6";
createNode closestPointOnSurface -n "RightEyeLidOutUp2CvPos1CS";
	rename -uid "6EDDF9D4-4B8A-7BC3-705E-3589A9B012D8";
createNode rotateHelper -n "RightEyeLidOutUp2CvPos1RH";
	rename -uid "A198247D-49EB-C904-95CD-2BA072E7AD95";
	setAttr ".rm" -type "matrix" 0.85788855533364616 -0.51383218769536443 0.0019260103180696602 0
		 -0.37068524135327802 -0.61628756083679304 0.69482522565080984 0 -0.35583658956101116 -0.59679655264255049 -0.71917605374731197 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2LocPS1";
	rename -uid "A0DA8A86-47D4-E542-5504-D5AD2C5321BA";
createNode closestPointOnSurface -n "RightEyeLidOutUp2LocCS1";
	rename -uid "CA8D62A4-491B-85B6-6612-5B99F2F6CD08";
createNode rotateHelper -n "RightEyeLidOutUp2LocRH";
	rename -uid "46F6BF72-47B7-8BAC-656A-B8AEC6A86A1E";
	setAttr ".rm" -type "matrix" 1 0 0 0 0 -0.77216044369816417 0.63542761128853564 0
		 0 -0.63542761128853564 -0.77216044369816417 0 0 0 0 1;
createNode multDoubleLinear -n "RightEyeLidOutUp2ZRvs";
	rename -uid "47F9FB74-4BC7-2AF6-69F6-50971BDB423B";
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp2CvPos2PS";
	rename -uid "48C8BD0E-4E2F-64E9-D272-DA925F91AC98";
createNode closestPointOnSurface -n "RightEyeLidOutUp2CvPos2CS";
	rename -uid "226DF4F9-48E8-64A3-E808-15A3022F5D30";
createNode rotateHelper -n "RightEyeLidOutUp2CvPos2RH";
	rename -uid "592E2C00-420A-4EA5-FCE7-C8B54A06326F";
	setAttr ".rm" -type "matrix" 0.85788855533327868 0.51383218769597727 -0.001926010318166471 0
		 0.37068524135379644 -0.61628756083652703 0.69482522565076876 0 0.35583658956135689 -0.59679655264229692 -0.71917605374735105 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutUp3LocPS1";
	rename -uid "DE3A43CA-4DF8-E05C-EF74-97B576ACF764";
createNode closestPointOnSurface -n "RightEyeLidOutUp3LocCS1";
	rename -uid "953A2A3B-47EF-2C5E-FA2F-3CA9FCF5667C";
createNode rotateHelper -n "RightEyeLidOutUp3LocRH";
	rename -uid "D4B8765B-44DE-42C9-5B12-33A0EC8F8F3F";
	setAttr ".rm" -type "matrix" 0.59938660691385337 0.80045675043998121 0.0021647464893345121 0
		 0.61710479662938622 -0.46381067905935491 0.63565818170421096 0 0.50982091505674954 -0.3796691252466618 -0.77196760936268127 0
		 0 0 0 1;
createNode multDoubleLinear -n "RightEyeLidOutUp3ZRvs";
	rename -uid "967772FF-4864-8A23-85B9-4DA8B74D6F48";
	setAttr ".i2" -1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown1LocPS1";
	rename -uid "979CEAED-437A-BE9F-5546-F5A9E8AF8CEE";
createNode closestPointOnSurface -n "RightEyeLidOutDown1LocCS1";
	rename -uid "A9D368C0-4B06-F195-FF8F-9AA5F156F7B8";
createNode rotateHelper -n "RightEyeLidOutDown1LocRH";
	rename -uid "A6343D2E-4528-8E84-03E8-9F951DE63BC5";
	setAttr ".rm" -type "matrix" -0.59938660691385415 -0.8004567504399811 0.00216474648940207 0
		 -0.61710479662931272 0.46381067905935436 0.63565818170428279 0 -0.50982091505683824 0.3796691252466638 -0.77196760936262232 0
		 0 0 0 1;
createNode multDoubleLinear -n "RightEyeLidOutDown1ZRvs";
	rename -uid "9F606FA2-477E-F0D2-C5F2-53B3FCB9B8F5";
	setAttr ".i2" -1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2CvPos1PS";
	rename -uid "1638EEAA-4CC0-D095-64ED-F4BE793CC45A";
createNode closestPointOnSurface -n "RightEyeLidOutDown2CvPos1CS";
	rename -uid "20530E4C-4A01-DF2A-BE78-39A1C62B4E3C";
createNode rotateHelper -n "RightEyeLidOutDown2CvPos1RH";
	rename -uid "1CBB77B2-496F-2577-0EF4-F89B8CB0F467";
	setAttr ".rm" -type "matrix" -0.85788855533327968 -0.51383218769597583 -0.0019260103180701309 0
		 -0.37068524135371828 0.61628756083652925 0.6948252256508084 0 -0.35583658956143566 0.59679655264229581 -0.71917605374731264 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2LocPS1";
	rename -uid "2EBB2A9F-4B5F-BE87-9A75-32B1004EB3EA";
createNode closestPointOnSurface -n "RightEyeLidOutDown2LocCS1";
	rename -uid "C38113A1-454C-217D-7AA1-F892740C1761";
createNode rotateHelper -n "RightEyeLidOutDown2LocRH";
	rename -uid "36F2194C-429D-1AA7-1525-EC9498DE276A";
	setAttr ".rm" -type "matrix" -1 -3.7138104411456711e-13 2.5243548967072378e-29 0
		 -2.8676575180459186e-13 0.77216044369816494 0.63542761128853442 0 -2.3598576973956117e-13 0.63542761128853442 -0.77216044369816494 0
		 0 0 0 1;
createNode multDoubleLinear -n "RightEyeLidOutDown2ZRvs";
	rename -uid "69D28376-4C4A-98D5-0649-85A672067A46";
	setAttr ".i2" -1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown2CvPos2PS";
	rename -uid "5365C779-47BD-2539-F728-AF8B4BADDA15";
createNode closestPointOnSurface -n "RightEyeLidOutDown2CvPos2CS";
	rename -uid "585187E3-4652-CEFF-0F15-6189B274A76A";
createNode rotateHelper -n "RightEyeLidOutDown2CvPos2RH";
	rename -uid "E8D9BAE8-4AE5-B226-0378-B5A2917D7AA5";
	setAttr ".rm" -type "matrix" -0.85788855533364694 0.51383218769536243 0.0019260103181661652 0
		 0.37068524135335518 0.61628756083679392 0.69482522565076743 0 0.35583658956092862 0.59679655264255072 -0.71917605374735216 0
		 0 0 0 1;
createNode pointOnSurfaceInfo -n "RightEyeLidOutDown3LocPS1";
	rename -uid "166B7AEC-4D51-86BA-B86F-AC871C68A815";
createNode closestPointOnSurface -n "RightEyeLidOutDown3LocCS1";
	rename -uid "7180C7DA-475A-9813-43CC-83B85D8022AD";
createNode rotateHelper -n "RightEyeLidOutDown3LocRH";
	rename -uid "4773F36A-43BD-7CBC-976D-23A6EA4C4C8D";
	setAttr ".rm" -type "matrix" -0.59938660691442436 0.80045675043955378 -0.0021647464893347341 0
		 0.6171047966290556 0.46381067905979528 0.63565818170421051 0 0.50982091505647853 0.3796691252470249 -0.77196760936268127 0
		 0 0 0 1;
createNode multDoubleLinear -n "RightEyeLidOutDown3ZRvs";
	rename -uid "982B5EF1-47EF-231E-3494-7AA7AEBAA5C8";
	setAttr ".i2" -1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC";
	rename -uid "A7D56F04-4BEC-C47A-3218-C8B66582936D";
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC1";
	rename -uid "D79A4C10-42C4-D3A3-4443-2AB74D4E4BAE";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC2";
	rename -uid "99EABA9A-41E0-EA4C-ED58-6B8FC62CD707";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC3";
	rename -uid "1309189D-4789-F1F5-23EE-4789695CA16D";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC4";
	rename -uid "8E4FDF69-4593-9C69-357E-C1AFDD33B659";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC5";
	rename -uid "43146CF6-42AF-6B33-7B75-E8B219E04A03";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidUpCrvPC6";
	rename -uid "76DF6013-4183-9EEB-3AE1-71992371B86A";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC";
	rename -uid "FF66F299-49E6-5AC8-540D-759419FC2DD5";
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC1";
	rename -uid "BA02C177-4377-AD02-ED10-68825EDD6D2E";
	setAttr ".pr" 0.33333333333333331;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC2";
	rename -uid "DF8D4A05-4508-F0CF-E618-3893EE6F23B8";
	setAttr ".pr" 0.66666666666666663;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC3";
	rename -uid "BB548EA3-4EEF-EE5F-EB69-CDB2A9D2ED89";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC4";
	rename -uid "ACFC6EEB-434E-74F0-DEE3-CCADB159F82D";
	setAttr ".pr" 1.3333333333333333;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC5";
	rename -uid "1ED11A36-43DC-2B6F-E4B3-4A8A90D06C3E";
	setAttr ".pr" 1.6666666666666665;
createNode pointOnCurveInfo -n "RightEyeLidDownCrvPC6";
	rename -uid "084A6DA5-4869-413D-DC37-78A2B21A31DE";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC";
	rename -uid "86ECB3B4-4439-3BCF-8AC9-418765A5019A";
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC1";
	rename -uid "C7892143-4ABC-1B18-3993-E5A0875F6482";
	setAttr ".pr" 1;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC2";
	rename -uid "5CE7A1DF-49D7-59A2-59E2-569FEF7D4F3B";
	setAttr ".pr" 2;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC3";
	rename -uid "3F7E594B-4ECC-A3E6-9336-10B8FA69F61A";
	setAttr ".pr" 3;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC4";
	rename -uid "EC1E9F63-4D48-01EF-7CE3-44B96BC0D21F";
	setAttr ".pr" 4;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC5";
	rename -uid "E87E0542-4A85-11A8-641F-A691D23AA407";
	setAttr ".pr" 5;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC6";
	rename -uid "57B09E95-4EC1-9A95-7E9F-5D96B6C6A3BB";
	setAttr ".pr" 6;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC7";
	rename -uid "19A9FDDC-4576-20E5-EE7C-F193AEA51B14";
	setAttr ".pr" 7;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC8";
	rename -uid "0ED2B394-428C-CF4B-901A-38913DDF3006";
	setAttr ".pr" 8;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC9";
	rename -uid "B0680CD5-481A-D3E4-CD1A-3F99D79577BE";
	setAttr ".pr" 9;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC10";
	rename -uid "FADB915B-4848-D905-4384-71B60236593F";
	setAttr ".pr" 10;
createNode pointOnCurveInfo -n "RightEyeLidCtrlPosCrvPC11";
	rename -uid "A862281D-49DD-69F0-90EC-DDB920DCA0C2";
	setAttr ".pr" 11;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "8F89CC0B-46B5-4904-FB38-1D989F02FC69";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ffd -n "RightEyeBallffd";
	rename -uid "2870F369-4DE6-96BB-966E-8BA7EF391A05";
	setAttr ".lo" yes;
createNode objectSet -n "RightEyeBallffdSet";
	rename -uid "1AEB6393-4F9F-ECBD-DB34-849C760ECDBD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId5";
	rename -uid "F82D31B6-4D62-EA73-C60F-65819DFF0ED9";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts5";
	rename -uid "E8A549D1-4C9D-36C6-2611-C7B7FD57B32D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "A5135DCA-4F6E-786D-0B06-6B93C653BCD2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode pairBlend -n "RightEyeLidOutUp1LocOffGrpPB";
	rename -uid "AFE06E74-4AD8-D3CE-068D-DCAE7A229CD7";
	setAttr ".it1" -type "double3" -2 1.4999999999999947 3 ;
createNode decomposeMatrix -n "RightEyeLidOutUp1LocOffGrpDM";
	rename -uid "0706349A-416E-D667-8663-84839211B58A";
createNode multMatrix -n "RightEyeLidOutUp1LocOffGrpMM";
	rename -uid "0FE7ED6D-491E-3CCA-C9CF-4AB75DCD4CD2";
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
	rename -uid "F45562B7-421E-926E-6E07-F199618D44A4";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv2PosDM";
	rename -uid "2D4EDC5F-4CD6-1B41-B006-4BA576336EB5";
createNode multMatrix -n "RightEyeLidUpCrv2PosMM";
	rename -uid "6E010160-4048-F873-1C52-F5877E0C1311";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 5.5511151231257827e-17 -5.5511151231257827e-17 1 0
		 -0.81481482942446304 0.38888879756621209 4.5365341261316416e-08 1;
createNode pairBlend -n "pairBlend2";
	rename -uid "53FB75B4-46C6-3562-7BD0-35A26EB46B6E";
	setAttr ".it1" -type "double3" 0 2.4999999999999947 3.0000000000000036 ;
createNode decomposeMatrix -n "RightEyeLidOutUp2LocOffGrpDM";
	rename -uid "BF21AFD9-4C5B-2D19-2860-B8A722616468";
createNode multMatrix -n "RightEyeLidOutUp2LocOffGrpMM";
	rename -uid "E4F3D8DD-463F-BDD3-135D-6C8A227BB616";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -2.4102356340132065 17.18768251771116 25.114674612973989 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132004828 -0.2069346214790509 0
		 -0.011183456186132642 1.0532215101136297 0.045926110756279448 0 -0.20664143807111601 -0.047227759715843365 1.0327529624705143 0
		 2.8903165951331626 -16.619899584329058 -27.225379156340701 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp2PB";
	rename -uid "7D36C3D2-4044-628D-B331-0C9CBAD7FE36";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv3PosDM";
	rename -uid "6793ED37-4495-6E9B-DBAC-5CBC35A5701C";
createNode multMatrix -n "RightEyeLidUpCrv3PosMM";
	rename -uid "EB769E41-4656-8498-B1F8-5088BCDCBA85";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.9723025562329717e-08 0.99999987671438562 6.1243210058847808e-08 1;
createNode pairBlend -n "RightEyeLidOutUp3LocOffGrpPB";
	rename -uid "7D6CEEEC-4A18-954F-C51C-698AA0335DA8";
	setAttr ".it1" -type "double3" 1.9999999999999982 1.5000000000000018 3.0000000000000178 ;
createNode decomposeMatrix -n "RightEyeLidOutUp3LocOffGrpDM";
	rename -uid "C9132366-4305-4558-A5DF-8283815F625A";
createNode multMatrix -n "RightEyeLidOutUp3LocOffGrpMM";
	rename -uid "F019C93E-434F-2924-8D2D-0BBA263B9D81";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -4.2685998326661458 16.220000184508592 24.785343186808632 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086757 -0.0019534722132008853 -0.20693462147905226 0
		 -0.011183456186132663 1.05322151011363 0.045926110756279837 0 -0.20664143807111601 -0.047227759715843698 1.0327529624705143 0
		 0.65075170846283259 -16.598657814340463 -27.225379156340708 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutUp3PB";
	rename -uid "F6451C56-4366-142D-1F76-C78CC3D4AE72";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidUpCrv4PosDM";
	rename -uid "7308E523-4EBB-F98B-6446-67B31B0F8F56";
createNode multMatrix -n "RightEyeLidUpCrv4PosMM";
	rename -uid "297A0AB4-4BC5-CD53-B168-889774E0A450";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 -5.5511151231257827e-17 1 0 0.81481480020516628 0.3888887975662112 4.5365341261316416e-08 1;
createNode pairBlend -n "RightEyeLidOutDown1LocOffGrpPB";
	rename -uid "07A1AA25-441D-6A7E-586F-90B0B75CC749";
	setAttr ".it1" -type "double3" -2 -1.5000000000000053 2.9999999999999964 ;
createNode decomposeMatrix -n "RightEyeLidOutDown1LocOffGrpDM";
	rename -uid "7C74C5BD-45D6-AFE3-966A-339EDB4E05A3";
createNode multMatrix -n "RightEyeLidOutDown1LocOffGrpMM";
	rename -uid "EA553B78-45A1-7F0B-E2B0-31B4C6A59199";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521591 0.041318672721339121 0.92914424835066145 0
		 -0.54308396373265477 13.417568185483118 25.656454721917711 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086762 -0.0019534722132005522 -0.20693462147905142 0
		 -0.011183456186132625 1.0532215101136297 0.045926110756279372 0 -0.20664143807111607 -0.047227759715843587 1.0327529624705145 0
		 4.9404410642040704 -12.336190264187373 -27.225379208544361 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown1PB";
	rename -uid "E61251DF-4CE0-EF9F-96AA-278D12B0AFF8";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv2PosDM";
	rename -uid "30F3363A-4147-10CA-EACC-08BF32C2F4B1";
createNode multMatrix -n "RightEyeLidDownCrv2PosMM";
	rename -uid "14869196-46B1-B47F-C043-EFBCA4146A9C";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 5.5511151231257821e-17 0.99999999999999989 0
		 -0.81481481481481532 -0.38888889716560882 6.695968668424257e-09 1;
createNode pairBlend -n "RightEyeLidOutDown2LocOffGrpPB";
	rename -uid "4711A1D3-45ED-4DC7-EC52-27A881203D31";
	setAttr ".it1" -type "double3" -1.3322676295501878e-15 -2.4999999999999982 3.0000000000000142 ;
createNode decomposeMatrix -n "RightEyeLidOutDown2LocOffGrpDM";
	rename -uid "264431BA-4E84-8BEA-2D2B-FF9872C9F96C";
createNode multMatrix -n "RightEyeLidOutDown2LocOffGrpMM";
	rename -uid "1DFE07EF-4C0D-CF19-E392-289AAD622E9B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923115 -0.010061500058222685 -0.18591058136051447 0
		 -0.0017574943255222212 0.94755933308612195 -0.042489736555673216 0 -0.18617435177521593 0.041318672721339128 0.92914424835066156 0
		 -2.4014481623855954 12.44988585228055 25.327123295752354 1;
	setAttr ".i[2]" -type "matrix" -1.0337717703086755 -0.0019534722132013849 -0.20693462147905289 0
		 -0.011183456186132736 1.05322151011363 0.045926110756279767 0 -0.20664143807111601 -0.047227759715843642 1.0327529624705145 0
		 2.8903166148561898 -12.342822343617623 -27.225379208544371 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown2PB";
	rename -uid "2668D2F6-413F-AF8E-75E1-FB97E77C54F0";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv3PosDM";
	rename -uid "A9E4EFF7-457A-7088-0906-F7880CA01C2C";
createNode multMatrix -n "RightEyeLidDownCrv3PosMM";
	rename -uid "B705C252-44D4-87B3-B667-62A210B8EDAD";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 -6.1629758220391547e-33 0 1 0 -8.3266726748800786e-17 -1.0000000111735723 9.0395575469415235e-09 1;
createNode pairBlend -n "RightEyeLidOutDown3LocOffGrpPB";
	rename -uid "E3467596-42A4-DB5D-04C8-2881A43E5084";
	setAttr ".it1" -type "double3" 1.9999999999999991 -1.4999999999999947 3.0000000000000142 ;
createNode decomposeMatrix -n "RightEyeLidOutDown3LocOffGrpDM";
	rename -uid "E02D772D-40CF-9182-F002-02906329D81E";
createNode multMatrix -n "RightEyeLidOutDown3LocOffGrpMM";
	rename -uid "073708D5-403F-A0BF-BA99-E69E227B490B";
	setAttr -s 5 ".i";
	setAttr ".i[1]" -type "matrix" -0.93006084648923093 -0.010061500058222683 -0.18591058136051444 0
		 -0.001757494325522221 0.94755933308612184 -0.042489736555673209 0 -0.18617435177521591 0.041318672721339121 0.92914424835066134 0
		 -4.2633273496895798 13.377322185250227 24.912812396475651 1;
	setAttr ".i[2]" -type "matrix" -1.033771770308676 -0.0019534722132007742 -0.20693462147905092 0
		 -0.011183456186132756 1.0532215101136302 0.045926110756280142 0 -0.20664143807111607 -0.047227759715843698 1.0327529624705147 0
		 0.44292440138979011 -12.384452547178462 -27.225379208544371 1;
	setAttr ".i[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0;
createNode pairBlend -n "RightEyeLidOutDown3PB";
	rename -uid "FB3B09A4-49B6-1B66-DC4C-DFA2087809D5";
	setAttr ".w" 0;
createNode decomposeMatrix -n "RightEyeLidDownCrv4PosDM";
	rename -uid "F8DDE286-4A09-1C65-CE4A-5397F9CF13B1";
createNode multMatrix -n "RightEyeLidDownCrv4PosMM";
	rename -uid "FC2B12D0-4AE4-EA13-CDCC-EB907477280B";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999999999999978 0 0 0 0 0.99999999999999989 0 0
		 0 0 0.99999999999999978 0 0.8148148148148151 -0.38888889716560793 6.6959664479782077e-09 1;
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
	setAttr -s 109 ".u";
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
	setAttr -s 2 ".dsm";
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
connectAttr "LeftEyeLidOutUp1LocRH.r" "LeftEyeLidOutUp1LocSurfPos.r";
connectAttr "LeftEyeLidOutUp1Ctrl.Z" "LeftLeftEyeLidOutUp1LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutUp2CvPos1PS.p" "LeftEyeLidOutUp2CvPos1SurfPos.t";
connectAttr "LeftEyeLidOutUp2CvPos1RH.r" "LeftEyeLidOutUp2CvPos1SurfPos.r";
connectAttr "LeftEyeLidOutUp2LocPS1.p" "LeftEyeLidOutUp2LocSurfPos.t";
connectAttr "LeftEyeLidOutUp2LocRH.r" "LeftEyeLidOutUp2LocSurfPos.r";
connectAttr "LeftEyeLidOutUp2Ctrl.Z" "LeftLeftEyeLidOutUp2LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutUp2CvPos2PS.p" "LeftEyeLidOutUp2CvPos2SurfPos.t";
connectAttr "LeftEyeLidOutUp2CvPos2RH.r" "LeftEyeLidOutUp2CvPos2SurfPos.r";
connectAttr "LeftEyeLidOutUp3LocPS1.p" "LeftEyeLidOutUp3LocSurfPos.t";
connectAttr "LeftEyeLidOutUp3LocRH.r" "LeftEyeLidOutUp3LocSurfPos.r";
connectAttr "LeftEyeLidOutUp3Ctrl.Z" "LeftLeftEyeLidOutUp3LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutDown1LocPS1.p" "LeftEyeLidOutDown1LocSurfPos.t";
connectAttr "LeftEyeLidOutDown1LocRH.r" "LeftEyeLidOutDown1LocSurfPos.r";
connectAttr "LeftEyeLidOutDown1Ctrl.Z" "LeftLeftEyeLidOutDown1LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutDown2CvPos1PS.p" "LeftEyeLidOutDown2CvPos1SurfPos.t";
connectAttr "LeftEyeLidOutDown2CvPos1RH.r" "LeftEyeLidOutDown2CvPos1SurfPos.r";
connectAttr "LeftEyeLidOutDown2LocPS1.p" "LeftEyeLidOutDown2LocSurfPos.t";
connectAttr "LeftEyeLidOutDown2LocRH.r" "LeftEyeLidOutDown2LocSurfPos.r";
connectAttr "LeftEyeLidOutDown2Ctrl.Z" "LeftLeftEyeLidOutDown2LocSurfPosLoc.tz";
connectAttr "LeftEyeLidOutDown2CvPos2PS.p" "LeftEyeLidOutDown2CvPos2SurfPos.t";
connectAttr "LeftEyeLidOutDown2CvPos2RH.r" "LeftEyeLidOutDown2CvPos2SurfPos.r";
connectAttr "LeftEyeLidOutDown3LocPS1.p" "LeftEyeLidOutDown3LocSurfPos.t";
connectAttr "LeftEyeLidOutDown3LocRH.r" "LeftEyeLidOutDown3LocSurfPos.r";
connectAttr "LeftEyeLidOutDown3Ctrl.Z" "LeftLeftEyeLidOutDown3LocSurfPosLoc.tz";
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
connectAttr "LeftEyeLidCCtrl.r" "LeftEyeLidLocGrp.r";
connectAttr "LeftEyeLidCCtrl.s" "LeftEyeLidLocGrp.s";
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
connectAttr "RightEyeLidOutUp1LocRH.r" "RightEyeLidOutUp1LocSurfPos.r";
connectAttr "RightEyeLidOutUp1ZRvs.o" "RightEyeLidOutUp1LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutUp2CvPos1PS.p" "RightEyeLidOutUp2CvPos1SurfPos.t";
connectAttr "RightEyeLidOutUp2CvPos1RH.r" "RightEyeLidOutUp2CvPos1SurfPos.r";
connectAttr "RightEyeLidOutUp2LocPS1.p" "RightEyeLidOutUp2LocSurfPos.t";
connectAttr "RightEyeLidOutUp2LocRH.r" "RightEyeLidOutUp2LocSurfPos.r";
connectAttr "RightEyeLidOutUp2ZRvs.o" "RightEyeLidOutUp2LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutUp2CvPos2PS.p" "RightEyeLidOutUp2CvPos2SurfPos.t";
connectAttr "RightEyeLidOutUp2CvPos2RH.r" "RightEyeLidOutUp2CvPos2SurfPos.r";
connectAttr "RightEyeLidOutUp3LocPS1.p" "RightEyeLidOutUp3LocSurfPos.t";
connectAttr "RightEyeLidOutUp3LocRH.r" "RightEyeLidOutUp3LocSurfPos.r";
connectAttr "RightEyeLidOutUp3ZRvs.o" "RightEyeLidOutUp3LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutDown1LocPS1.p" "RightEyeLidOutDown1LocSurfPos.t";
connectAttr "RightEyeLidOutDown1LocRH.r" "RightEyeLidOutDown1LocSurfPos.r";
connectAttr "RightEyeLidOutDown1ZRvs.o" "RightEyeLidOutDown1LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutDown2CvPos1PS.p" "RightEyeLidOutDown2CvPos1SurfPos.t"
		;
connectAttr "RightEyeLidOutDown2CvPos1RH.r" "RightEyeLidOutDown2CvPos1SurfPos.r"
		;
connectAttr "RightEyeLidOutDown2LocPS1.p" "RightEyeLidOutDown2LocSurfPos.t";
connectAttr "RightEyeLidOutDown2LocRH.r" "RightEyeLidOutDown2LocSurfPos.r";
connectAttr "RightEyeLidOutDown2ZRvs.o" "RightEyeLidOutDown2LocSurfPosLoc.tz";
connectAttr "RightEyeLidOutDown2CvPos2PS.p" "RightEyeLidOutDown2CvPos2SurfPos.t"
		;
connectAttr "RightEyeLidOutDown2CvPos2RH.r" "RightEyeLidOutDown2CvPos2SurfPos.r"
		;
connectAttr "RightEyeLidOutDown3LocPS1.p" "RightEyeLidOutDown3LocSurfPos.t";
connectAttr "RightEyeLidOutDown3LocRH.r" "RightEyeLidOutDown3LocSurfPos.r";
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
connectAttr "LeftEyeLidRootPoser.r" "RightEyeLidRootPoser.r";
connectAttr "LeftEyeLidRootPoser.t" "RightEyeLidRootPoser.t";
connectAttr "LeftEyeLidRootPoser.FFD" "RightEyeLidRootPoser.FFD";
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
connectAttr "RightEyeLidCCtrl.s" "RightEyeLidLocGrp.s";
connectAttr "RightEyeLidCCtrl.t" "RightEyeLidLocGrp.t";
connectAttr "RightEyeLidCCtrl.r" "RightEyeLidLocGrp.r";
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
connectAttr "LeftEyeLidOutUp1LocPS1.nn" "LeftEyeLidOutUp1LocRH.f";
connectAttr "LeftEyeLidOutUp1LocPS1.ntu" "LeftEyeLidOutUp1LocRH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos1PS.is";
connectAttr "LeftEyeLidOutUp2CvPos1CS.u" "LeftEyeLidOutUp2CvPos1PS.u";
connectAttr "LeftEyeLidOutUp2CvPos1CS.v" "LeftEyeLidOutUp2CvPos1PS.v";
connectAttr "LeftEyeLidOutUp2CvPos1Shape.wp" "LeftEyeLidOutUp2CvPos1CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos1CS.is";
connectAttr "LeftEyeLidOutUp2CvPos1PS.nn" "LeftEyeLidOutUp2CvPos1RH.f";
connectAttr "LeftEyeLidOutUp2CvPos1PS.ntu" "LeftEyeLidOutUp2CvPos1RH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocPS1.is";
connectAttr "LeftEyeLidOutUp2LocCS1.u" "LeftEyeLidOutUp2LocPS1.u";
connectAttr "LeftEyeLidOutUp2LocCS1.v" "LeftEyeLidOutUp2LocPS1.v";
connectAttr "LeftEyeLidOutUp2LocShape.wp" "LeftEyeLidOutUp2LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2LocCS1.is";
connectAttr "LeftEyeLidOutUp2LocPS1.nn" "LeftEyeLidOutUp2LocRH.f";
connectAttr "LeftEyeLidOutUp2LocPS1.ntu" "LeftEyeLidOutUp2LocRH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos2PS.is";
connectAttr "LeftEyeLidOutUp2CvPos2CS.u" "LeftEyeLidOutUp2CvPos2PS.u";
connectAttr "LeftEyeLidOutUp2CvPos2CS.v" "LeftEyeLidOutUp2CvPos2PS.v";
connectAttr "LeftEyeLidOutUp2CvPos2Shape.wp" "LeftEyeLidOutUp2CvPos2CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp2CvPos2CS.is";
connectAttr "LeftEyeLidOutUp2CvPos2PS.nn" "LeftEyeLidOutUp2CvPos2RH.f";
connectAttr "LeftEyeLidOutUp2CvPos2PS.ntu" "LeftEyeLidOutUp2CvPos2RH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocPS1.is";
connectAttr "LeftEyeLidOutUp3LocCS1.u" "LeftEyeLidOutUp3LocPS1.u";
connectAttr "LeftEyeLidOutUp3LocCS1.v" "LeftEyeLidOutUp3LocPS1.v";
connectAttr "LeftEyeLidOutUp3LocShape.wp" "LeftEyeLidOutUp3LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutUp3LocCS1.is";
connectAttr "LeftEyeLidOutUp3LocPS1.nn" "LeftEyeLidOutUp3LocRH.f";
connectAttr "LeftEyeLidOutUp3LocPS1.ntu" "LeftEyeLidOutUp3LocRH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocPS1.is";
connectAttr "LeftEyeLidOutDown1LocCS1.u" "LeftEyeLidOutDown1LocPS1.u";
connectAttr "LeftEyeLidOutDown1LocCS1.v" "LeftEyeLidOutDown1LocPS1.v";
connectAttr "LeftEyeLidOutDown1LocShape.wp" "LeftEyeLidOutDown1LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown1LocCS1.is";
connectAttr "LeftEyeLidOutDown1LocPS1.nn" "LeftEyeLidOutDown1LocRH.f";
connectAttr "LeftEyeLidOutDown1LocPS1.ntu" "LeftEyeLidOutDown1LocRH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos1PS.is";
connectAttr "LeftEyeLidOutDown2CvPos1CS.u" "LeftEyeLidOutDown2CvPos1PS.u";
connectAttr "LeftEyeLidOutDown2CvPos1CS.v" "LeftEyeLidOutDown2CvPos1PS.v";
connectAttr "LeftEyeLidOutDown2CvPos1Shape.wp" "LeftEyeLidOutDown2CvPos1CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos1CS.is";
connectAttr "LeftEyeLidOutDown2CvPos1PS.nn" "LeftEyeLidOutDown2CvPos1RH.f";
connectAttr "LeftEyeLidOutDown2CvPos1PS.ntu" "LeftEyeLidOutDown2CvPos1RH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocPS1.is";
connectAttr "LeftEyeLidOutDown2LocCS1.u" "LeftEyeLidOutDown2LocPS1.u";
connectAttr "LeftEyeLidOutDown2LocCS1.v" "LeftEyeLidOutDown2LocPS1.v";
connectAttr "LeftEyeLidOutDown2LocShape.wp" "LeftEyeLidOutDown2LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2LocCS1.is";
connectAttr "LeftEyeLidOutDown2LocPS1.nn" "LeftEyeLidOutDown2LocRH.f";
connectAttr "LeftEyeLidOutDown2LocPS1.ntu" "LeftEyeLidOutDown2LocRH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos2PS.is";
connectAttr "LeftEyeLidOutDown2CvPos2CS.u" "LeftEyeLidOutDown2CvPos2PS.u";
connectAttr "LeftEyeLidOutDown2CvPos2CS.v" "LeftEyeLidOutDown2CvPos2PS.v";
connectAttr "LeftEyeLidOutDown2CvPos2Shape.wp" "LeftEyeLidOutDown2CvPos2CS.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown2CvPos2CS.is";
connectAttr "LeftEyeLidOutDown2CvPos2PS.nn" "LeftEyeLidOutDown2CvPos2RH.f";
connectAttr "LeftEyeLidOutDown2CvPos2PS.ntu" "LeftEyeLidOutDown2CvPos2RH.u";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocPS1.is";
connectAttr "LeftEyeLidOutDown3LocCS1.u" "LeftEyeLidOutDown3LocPS1.u";
connectAttr "LeftEyeLidOutDown3LocCS1.v" "LeftEyeLidOutDown3LocPS1.v";
connectAttr "LeftEyeLidOutDown3LocShape.wp" "LeftEyeLidOutDown3LocCS1.ip";
connectAttr "LeftEyeBallSurfShape.ws" "LeftEyeLidOutDown3LocCS1.is";
connectAttr "LeftEyeLidOutDown3LocPS1.nn" "LeftEyeLidOutDown3LocRH.f";
connectAttr "LeftEyeLidOutDown3LocPS1.ntu" "LeftEyeLidOutDown3LocRH.u";
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
connectAttr "RightEyeLidOutUp1LocPS1.nn" "RightEyeLidOutUp1LocRH.f";
connectAttr "RightEyeLidOutUp1LocPS1.ntu" "RightEyeLidOutUp1LocRH.u";
connectAttr "RightEyeLidOutUp1Ctrl.Z" "RightEyeLidOutUp1ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos1PS.is";
connectAttr "RightEyeLidOutUp2CvPos1CS.u" "RightEyeLidOutUp2CvPos1PS.u";
connectAttr "RightEyeLidOutUp2CvPos1CS.v" "RightEyeLidOutUp2CvPos1PS.v";
connectAttr "RightEyeLidOutUp2CvPos1Shape.wp" "RightEyeLidOutUp2CvPos1CS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos1CS.is";
connectAttr "RightEyeLidOutUp2CvPos1PS.nn" "RightEyeLidOutUp2CvPos1RH.f";
connectAttr "RightEyeLidOutUp2CvPos1PS.ntu" "RightEyeLidOutUp2CvPos1RH.u";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocPS1.is";
connectAttr "RightEyeLidOutUp2LocCS1.u" "RightEyeLidOutUp2LocPS1.u";
connectAttr "RightEyeLidOutUp2LocCS1.v" "RightEyeLidOutUp2LocPS1.v";
connectAttr "RightEyeLidOutUp2LocShape.wp" "RightEyeLidOutUp2LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2LocCS1.is";
connectAttr "RightEyeLidOutUp2LocPS1.nn" "RightEyeLidOutUp2LocRH.f";
connectAttr "RightEyeLidOutUp2LocPS1.ntu" "RightEyeLidOutUp2LocRH.u";
connectAttr "RightEyeLidOutUp2Ctrl.Z" "RightEyeLidOutUp2ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos2PS.is";
connectAttr "RightEyeLidOutUp2CvPos2CS.u" "RightEyeLidOutUp2CvPos2PS.u";
connectAttr "RightEyeLidOutUp2CvPos2CS.v" "RightEyeLidOutUp2CvPos2PS.v";
connectAttr "RightEyeLidOutUp2CvPos2Shape.wp" "RightEyeLidOutUp2CvPos2CS.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp2CvPos2CS.is";
connectAttr "RightEyeLidOutUp2CvPos2PS.nn" "RightEyeLidOutUp2CvPos2RH.f";
connectAttr "RightEyeLidOutUp2CvPos2PS.ntu" "RightEyeLidOutUp2CvPos2RH.u";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocPS1.is";
connectAttr "RightEyeLidOutUp3LocCS1.u" "RightEyeLidOutUp3LocPS1.u";
connectAttr "RightEyeLidOutUp3LocCS1.v" "RightEyeLidOutUp3LocPS1.v";
connectAttr "RightEyeLidOutUp3LocShape.wp" "RightEyeLidOutUp3LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutUp3LocCS1.is";
connectAttr "RightEyeLidOutUp3LocPS1.nn" "RightEyeLidOutUp3LocRH.f";
connectAttr "RightEyeLidOutUp3LocPS1.ntu" "RightEyeLidOutUp3LocRH.u";
connectAttr "RightEyeLidOutUp3Ctrl.Z" "RightEyeLidOutUp3ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocPS1.is";
connectAttr "RightEyeLidOutDown1LocCS1.u" "RightEyeLidOutDown1LocPS1.u";
connectAttr "RightEyeLidOutDown1LocCS1.v" "RightEyeLidOutDown1LocPS1.v";
connectAttr "RightEyeLidOutDown1LocShape.wp" "RightEyeLidOutDown1LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown1LocCS1.is";
connectAttr "RightEyeLidOutDown1LocPS1.nn" "RightEyeLidOutDown1LocRH.f";
connectAttr "RightEyeLidOutDown1LocPS1.ntu" "RightEyeLidOutDown1LocRH.u";
connectAttr "RightEyeLidOutDown1Ctrl.Z" "RightEyeLidOutDown1ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos1PS.is";
connectAttr "RightEyeLidOutDown2CvPos1CS.u" "RightEyeLidOutDown2CvPos1PS.u";
connectAttr "RightEyeLidOutDown2CvPos1CS.v" "RightEyeLidOutDown2CvPos1PS.v";
connectAttr "RightEyeLidOutDown2CvPos1Shape.wp" "RightEyeLidOutDown2CvPos1CS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos1CS.is";
connectAttr "RightEyeLidOutDown2CvPos1PS.nn" "RightEyeLidOutDown2CvPos1RH.f";
connectAttr "RightEyeLidOutDown2CvPos1PS.ntu" "RightEyeLidOutDown2CvPos1RH.u";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocPS1.is";
connectAttr "RightEyeLidOutDown2LocCS1.u" "RightEyeLidOutDown2LocPS1.u";
connectAttr "RightEyeLidOutDown2LocCS1.v" "RightEyeLidOutDown2LocPS1.v";
connectAttr "RightEyeLidOutDown2LocShape.wp" "RightEyeLidOutDown2LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2LocCS1.is";
connectAttr "RightEyeLidOutDown2LocPS1.nn" "RightEyeLidOutDown2LocRH.f";
connectAttr "RightEyeLidOutDown2LocPS1.ntu" "RightEyeLidOutDown2LocRH.u";
connectAttr "RightEyeLidOutDown2Ctrl.Z" "RightEyeLidOutDown2ZRvs.i1";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos2PS.is";
connectAttr "RightEyeLidOutDown2CvPos2CS.u" "RightEyeLidOutDown2CvPos2PS.u";
connectAttr "RightEyeLidOutDown2CvPos2CS.v" "RightEyeLidOutDown2CvPos2PS.v";
connectAttr "RightEyeLidOutDown2CvPos2Shape.wp" "RightEyeLidOutDown2CvPos2CS.ip"
		;
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown2CvPos2CS.is";
connectAttr "RightEyeLidOutDown2CvPos2PS.nn" "RightEyeLidOutDown2CvPos2RH.f";
connectAttr "RightEyeLidOutDown2CvPos2PS.ntu" "RightEyeLidOutDown2CvPos2RH.u";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocPS1.is";
connectAttr "RightEyeLidOutDown3LocCS1.u" "RightEyeLidOutDown3LocPS1.u";
connectAttr "RightEyeLidOutDown3LocCS1.v" "RightEyeLidOutDown3LocPS1.v";
connectAttr "RightEyeLidOutDown3LocShape.wp" "RightEyeLidOutDown3LocCS1.ip";
connectAttr "RightEyeBallSurfShape.ws" "RightEyeLidOutDown3LocCS1.is";
connectAttr "RightEyeLidOutDown3LocPS1.nn" "RightEyeLidOutDown3LocRH.f";
connectAttr "RightEyeLidOutDown3LocPS1.ntu" "RightEyeLidOutDown3LocRH.u";
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
connectAttr "LeftEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RightEyeBallSurfShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=Blur3dMetaData:string=Blur3dValue";
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
// End of eyeLidCtrl05.ma
