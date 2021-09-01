//Maya ASCII 2018ff09 scene
//Name: Leg.ma
//Last modified: Tue, Aug 31, 2021 12:32:03 PM
//Codeset: 949
requires maya "2018ff09";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" -nodeType "quatInvert" -nodeType "quatProd"
		 "quatNodes" "1.0";
requires "mtoa" "3.1.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "LegRigGrp";
	rename -uid "F70F865C-45EB-4AA3-A909-B091296D7F5A";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "OrgJnt" -ln "OrgJnt" -at "message";
	addAttr -s false -ci true -m -sn "DrvJnt" -ln "DrvJnt" -at "message";
	addAttr -s false -ci true -m -sn "IKJnt" -ln "IKJnt" -at "message";
	addAttr -s false -ci true -m -sn "FKJnt" -ln "FKJnt" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "Pos" -ln "Pos" -at "message";
	addAttr -s false -ci true -m -sn "AnimCrv" -ln "AnimCrv" -at "message";
	addAttr -s false -ci true -m -sn "Arc" -ln "Arc" -at "message";
	addAttr -s false -ci true -m -sn "ScaleFix" -ln "ScaleFix" -at "message";
	addAttr -s false -ci true -m -sn "ScaleBlend" -ln "ScaleBlend" -at "message";
	addAttr -ci true -sn "Module" -ln "Module" -dt "string";
	addAttr -ci true -sn "Type" -ln "Type" -dt "string";
	setAttr -s 3 ".Grp";
	setAttr -s 3 ".DrvJnt";
	setAttr -s 3 ".IKJnt";
	setAttr -s 3 ".FKJnt";
	setAttr -s 8 ".Ctrl";
	setAttr -s 6 ".Pos";
	setAttr -s 2 ".AnimCrv";
	setAttr -s 3 ".Arc";
	setAttr -s 2 ".ScaleBlend";
	setAttr -l on -k on ".Module" -type "string" "Leg";
	setAttr -l on -k on ".Type" -type "string" "Set";
createNode transform -n "LegCtrlGrp" -p "LegRigGrp";
	rename -uid "1B602C32-4DCA-A8AD-A724-FD82E8C4BAEE";
createNode transform -n "LegRootCtrlGrp" -p "LegCtrlGrp";
	rename -uid "080A4791-4159-A456-5C82-43956D2B1DD9";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".nts" -type "string" "MConst={0:'parent',1:ls(LegRootJnt),2:['t','r'],3:['t','r']},\nConnect={0:'connect',1:ls(HipJnt,KneeJnt),2:[Length,Length],3:[UpperLength,LowerLength]}\n";
createNode transform -n "LegRootCtrl" -p "LegRootCtrlGrp";
	rename -uid "1927A504-4CBC-75AE-0412-DAAC129DED26";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "LegRootCtrlShape" -p "LegRootCtrl";
	rename -uid "E4589940-44B4-D35C-4C97-DAB2F3541A48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		0.75051449999999997 1.666476956430074e-16 0
		-1.666476956430074e-16 0.75051449999999997 0
		-0.75051449999999997 -1.666476956430074e-16 0
		1.666476956430074e-16 -0.75051449999999997 0
		0.75051449999999997 1.666476956430074e-16 0
		18.86157 4.1881098589158229e-15 0
		18.86157 1.813080000000004 0
		22.487729999999999 1.8130800000000047 0
		22.487729999999999 5.4392400000000052 0
		26.113889999999998 5.4392400000000061 0
		26.113889999999998 1.8130800000000056 0
		29.74005 1.8130800000000065 0
		29.74005 -1.8130799999999931 0
		26.113889999999998 -1.813079999999994 0
		26.113889999999998 -5.4392399999999936 0
		22.487729999999999 -5.4392399999999945 0
		22.487729999999999 -1.8130799999999949 0
		18.86157 -1.8130799999999956 0
		18.86157 4.1881098589158229e-15 0
		;
createNode transform -n "LegIKCtrlGrp" -p "LegRootCtrl";
	rename -uid "E3B07B6F-43C6-3DDD-FBB7-72B8EE76A8C7";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".nts" -type "string" "MConst={0:'parent',1:ls(AnkleJnt,LeftLegIKCtrlGrp),2:['t','r'],3:['t','r']}";
createNode transform -n "LegIKConstCtrl" -p "LegIKCtrlGrp";
	rename -uid "E0CA9A54-49F1-7EDB-AE2D-129229CB32AA";
	addAttr -ci true -sn "UpVolume" -ln "UpVolume" -at "double";
	addAttr -ci true -sn "DnVolume" -ln "DnVolume" -at "double";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LegIKConstCtrlShape" -p "LegIKConstCtrl";
	rename -uid "1BD76108-4D7A-7114-9677-E5B00C387B2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.588770857537174 -10.533209024836136 -11.488161835426387
		4.4486413791659344e-15 -1.5112134135796604 -19.202309845953437
		-10.588770857537174 -10.533209024836136 -11.488161835426384
		-12.645228340590414 -10.533209024836136 7.1354389137414742
		-11.411586491505975 -10.533209024836136 25.759039662909323
		1.8438515283238708e-15 -1.5112134135796642 33.473187673436371
		11.411586491505975 -10.533209024836136 25.759039662909323
		12.645228340590414 -10.533209024836136 7.1354389137414769
		10.588770857537174 -10.533209024836136 -11.488161835426387
		4.4486413791659344e-15 -1.5112134135796604 -19.202309845953437
		-10.588770857537174 -10.533209024836136 -11.488161835426384
		;
createNode transform -n "LegIKCtrl" -p "LegIKConstCtrl";
	rename -uid "081539F3-40B3-9DA1-2EB6-7EAE350E7F11";
	addAttr -ci true -sn "Twist" -ln "Twist" -at "double";
	addAttr -ci true -sn "Stretch" -ln "Stretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Squash" -ln "Squash" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "UpVolume" -ln "UpVolume" -at "double";
	addAttr -ci true -sn "DnVolume" -ln "DnVolume" -at "double";
	addAttr -ci true -sn "UpSlide" -ln "UpSlide" -at "double";
	addAttr -ci true -sn "DnSlide" -ln "DnSlide" -at "double";
	addAttr -ci true -sn "PVCtrlVis" -ln "PVCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "PVStretch" -ln "PVStretch" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 3 -en "Hip:Root:Fly:World" 
		-at "enum";
	addAttr -ci true -sn "Foot" -ln "Foot" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "FootRoll" -ln "FootRoll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "BallRoll" -ln "BallRoll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "ToeRoll" -ln "ToeRoll" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "InOut" -ln "InOut" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "HeelPivot" -ln "HeelPivot" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "BallPivot" -ln "BallPivot" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "ToePivot" -ln "ToePivot" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "ConstCtrlVis" -ln "ConstCtrlVis" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Twist";
	setAttr -k on ".Stretch";
	setAttr -k on ".Squash";
	setAttr -k on ".UpSlide";
	setAttr -k on ".DnSlide";
	setAttr -cb on ".PVCtrlVis";
	setAttr -k on ".PVStretch";
	setAttr -k on ".Follow" 2;
	setAttr -cb on ".Foot";
	setAttr -k on ".FootRoll";
	setAttr -k on ".BallRoll";
	setAttr -k on ".ToeRoll";
	setAttr -k on ".InOut";
	setAttr -k on ".HeelPivot";
	setAttr -k on ".BallPivot";
	setAttr -k on ".ToePivot";
	setAttr -cb on ".ConstCtrlVis";
createNode nurbsCurve -n "LegIKCtrlShape" -p "LegIKCtrl";
	rename -uid "21B51E62-4D06-DEE7-9AD0-55AC559D09C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.0240506905044615 -9.8666114249000998 -8.7361215781527388
		3.660010698659603e-15 -2.1778110135156821 -15.310337189920306
		-9.0240506905044615 -9.8666114249000998 -8.7361215781527353
		-10.776622053093755 -9.8666114249000998 7.1354389137414733
		-9.7252774985800041 -9.8666114249000998 23.006999405635689
		1.4401349483614679e-15 -2.1778110135156856 29.581215017403252
		9.7252774985800041 -9.8666114249000998 23.006999405635689
		10.776622053093755 -9.8666114249000998 7.135438913741476
		9.0240506905044615 -9.8666114249000998 -8.7361215781527388
		3.660010698659603e-15 -2.1778110135156821 -15.310337189920306
		-9.0240506905044615 -9.8666114249000998 -8.7361215781527353
		;
createNode transform -n "LegIKCtrlPosGrp" -p "LegIKCtrl";
	rename -uid "EAB7ABE9-4C42-1B99-9EB2-AF86893F7674";
	setAttr ".r" -type "double3" 7.9277460625420548e-15 -7.927755823049035e-15 -89.999929458447951 ;
createNode transform -n "LegIKCtrlPos" -p "LegIKCtrlPosGrp";
	rename -uid "ABE95AE9-4935-BE4B-BC6C-DE8CCB4107B2";
createNode transform -n "FootSystemGrp" -p "LegIKCtrl";
	rename -uid "FD62623D-4819-0727-3C66-0F964104289F";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 3.8857805861880479e-16 ;
	setAttr ".r" -type "double3" -90 -90 0 ;
createNode transform -n "FootInRotPos" -p "FootSystemGrp";
	rename -uid "A76358C3-4859-261D-6240-BDB508618A2E";
createNode transform -n "FootOutRotPos" -p "FootInRotPos";
	rename -uid "929A2E6A-4B2F-5A99-7873-71B4B7EEC724";
createNode transform -n "HeelRollPivPos" -p "FootOutRotPos";
	rename -uid "AD4E64F9-4C70-D798-205D-BCA5C1D2C5A0";
createNode transform -n "ToeRollPivPos" -p "HeelRollPivPos";
	rename -uid "D1EBE1EE-4461-79D4-DE98-66BAEEE75D0C";
createNode transform -n "BallPivPos" -p "ToeRollPivPos";
	rename -uid "7C5E5F69-4FC0-C1E3-746A-20835B7C6BA0";
createNode transform -n "FootRollPos" -p "BallPivPos";
	rename -uid "E8376D1F-44D7-910A-B7AC-BF921F2BB1A9";
createNode transform -n "IKFootRollPos" -p "FootRollPos";
	rename -uid "62DDD615-4FDE-310B-D219-5E8ED40A05D2";
createNode ikHandle -n "BallRaiseIKh" -p "FootRollPos";
	rename -uid "EAF80288-45C2-9B2F-DB82-B4BC84365D92";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 13.45170782841091 8.2935383618476521e-06 -6.7362397118227824 ;
	setAttr ".r" -type "double3" 7.889222474642735e-05 26.600429797236792 3.5325239739373418e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".pv" -type "double3" 1 -2.2204460492503131e-16 4.9303806576313238e-32 ;
	setAttr ".roc" yes;
createNode transform -n "BallRollPos" -p "BallPivPos";
	rename -uid "84939508-433A-75DB-D6FD-40A8EE4340E0";
createNode ikHandle -n "ToeRaiseIKh" -p "BallRollPos";
	rename -uid "29FFE04F-4DFE-412B-8870-A98DBED426D3";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 21.527483895339291 8.2935383609594737e-06 -6.7362397118228898 ;
	setAttr ".r" -type "double3" 7.0541552024744547e-05 0 0 ;
	setAttr ".pv" -type "double3" 1 -2.2204460492503131e-16 4.9303806576313238e-32 ;
	setAttr ".roc" yes;
createNode transform -n "FootMvPivGrp" -p "FootSystemGrp";
	rename -uid "192DF075-4AC2-F241-9DE8-5CB23647184E";
createNode transform -n "HeelMvPivPos" -p "FootMvPivGrp";
	rename -uid "990B8538-4EF8-1FDD-862D-4BBB5647A49C";
	setAttr ".t" -type "double3" -6.6961746667861801 0 -9.5458072461853618 ;
createNode transform -n "ToeMvPivPos" -p "FootMvPivGrp";
	rename -uid "81DCA2FB-4988-8B77-C3E3-6EB094116800";
	setAttr ".t" -type "double3" 21.52748389533928 -0.00012345554714876528 -6.7362397119850979 ;
createNode transform -n "BallMvPivPos" -p "FootMvPivGrp";
	rename -uid "15B8EF3A-45E1-DF4B-EECD-D8B39F02C758";
	setAttr ".t" -type "double3" 13.451707828410902 -0.00012345554708659279 -6.7362397119849904 ;
createNode transform -n "FootInPivPos" -p "FootMvPivGrp";
	rename -uid "28177B76-42C7-A9BA-4275-C7ACD408BAB4";
	setAttr ".t" -type "double3" 15.323806240654005 -5.4146108174550607 -9.7791837119231797 ;
createNode transform -n "FootOutPivPos" -p "FootMvPivGrp";
	rename -uid "F09723C1-4326-0CCE-23A3-04825A8775FD";
	setAttr ".t" -type "double3" 15.528343632316606 5.3952060198557303 -9.7783740275273932 ;
createNode transform -n "LegPoleVectorCtrlGrp" -p "LegRootCtrl";
	rename -uid "A0857315-476E-A3D4-F3F3-DAB2064855A5";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".nts" -type "string" "MConst={0:'parent',1:ls(KneeJnt,LeftLegPoleVectorCtrlGrp),2:['t','r'],3:['t','r']}";
createNode transform -n "LegPVOff" -p "LegPoleVectorCtrlGrp";
	rename -uid "F8E9FA5B-4F8C-88EE-70F9-349EFADC9366";
createNode transform -n "LegPoleVectorCtrl" -p "LegPVOff";
	rename -uid "2D2F44F2-4DE7-8A76-F04E-BAA864B29A6D";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 4 -en "Auto:Hip:Root:Fly:World" 
		-at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "LegPoleVectorCtrlShape" -p "LegPoleVectorCtrl";
	rename -uid "D01473DA-4455-E9A6-6CB6-AC97B5EFB916";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0 0 0
		1.8750760467543718e-15 -18.82986 18.82986
		-1.3684547543620923e-15 -9.41493 28.244790000000002
		-2.3059927777392782e-15 0 18.82986
		-5.5495235788557427e-15 9.41493 28.244790000000002
		-6.4870616022329282e-15 18.82986 18.82986
		0 0 0
		;
createNode transform -n "LegIKFKCtrlGrp" -p "LegRootCtrl";
	rename -uid "F50BF4DE-40F3-ED9F-F4E9-1894F5E912A2";
createNode transform -n "LegIKFKCtrl" -p "LegIKFKCtrlGrp";
	rename -uid "172DDB63-42A9-4DF6-E205-77A34DFFBB32";
	addAttr -ci true -sn "IKFK" -ln "IKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Arc" -ln "Arc" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "UpTwistFix" -ln "UpTwistFix" -at "double";
	addAttr -ci true -sn "DnTwistFix" -ln "DnTwistFix" -at "double";
	addAttr -ci true -sn "AutoHideIKFK" -ln "AutoHideIKFK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ArcCtrlVis" -ln "ArcCtrlVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "PantsSubCtrlVis" -ln "PantsSubCtrlVis" -min 0 -max 
		1 -en "Off:On" -at "enum";
	setAttr -l on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".IKFK";
	setAttr -k on ".Arc";
	setAttr -k on ".UpTwistFix";
	setAttr -k on ".DnTwistFix";
	setAttr -cb on ".AutoHideIKFK" yes;
	setAttr -cb on ".ArcCtrlVis";
	setAttr -k on ".PantsSubCtrlVis" 1;
createNode nurbsCurve -n "LegIKFKCtrlShape" -p "LegIKFKCtrl";
	rename -uid "2251F121-4063-6961-8F45-A5B0F2C252D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		19.425747742224249 2.3611547512018167 -4.945575254215967e-16
		21.495239106091567 2.3611547512018136 -9.5407691770727939e-16
		15.630007173210346 8.6232309951438744 3.482661896230109e-16
		15.630007173210336 -2.3611547512018776 3.482661896230109e-16
		13.56051580934302 -2.3611547512018722 8.0778558190869231e-16
		19.425747742224228 -8.6232309951439206 -4.945575254215967e-16
		19.425747742224249 2.3611547512018167 -4.945575254215967e-16
		;
createNode transform -n "LegUpArcCtrlGrp" -p "LegRootCtrl";
	rename -uid "53A40EDC-4F10-8637-54D2-70BD4B8F4084";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LegUpArcCtrl" -p "LegUpArcCtrlGrp";
	rename -uid "3A99E6CC-4679-8A33-B0CC-CBB0FC688E15";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LegUpArcCtrlShape" -p "LegUpArcCtrl";
	rename -uid "79AB3E21-404E-839D-7E73-DFBE8BD110C1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -10
		-1.5700920563688214e-15 -7.0710660000000001 -7.0710660000000001
		-2.2204460492503131e-15 -10 0
		-1.5700920563688214e-15 -7.0710660000000001 7.0710660000000001
		0 0 10
		1.5700920563688214e-15 7.0710660000000001 7.0710660000000001
		2.2204460492503131e-15 10 0
		1.5700920563688214e-15 7.0710660000000001 -7.0710660000000001
		0 0 -10
		;
createNode tangentConstraint -n "LegUpArcCtrlGrp_tangentConstraint1" -p "LegUpArcCtrlGrp";
	rename -uid "7AB96837-4672-993B-13DE-57B59BFDF756";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegUpIKCrvW0" -dv 1 -min 0 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.5565478165143802e-13 0.51904363413127375 -90.200633862653177 ;
	setAttr -k on ".w0";
createNode transform -n "Leg1CsHandleGrp" -p "LegUpArcCtrlGrp";
	rename -uid "3ED2FA8F-4A8F-4A47-9B33-A6B736815419";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Leg1CsHandleZeroMtx" -p "Leg1CsHandleGrp";
	rename -uid "E2E07A9C-4847-B233-58B8-F3993D54CFFC";
createNode transform -n "Leg1CsHandle" -p "Leg1CsHandleGrp";
	rename -uid "A110D67D-4AC5-1AB0-42CB-EB9BE83E6B63";
createNode clusterHandle -n "Leg1CsHandleShape" -p "Leg1CsHandle";
	rename -uid "E1A70793-4CF9-8894-8111-9ABFD2F3DA00";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "LegMidArcCtrlGrp" -p "LegRootCtrl";
	rename -uid "9344837B-4D48-323C-7A77-D88F2749F43B";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "LegMidArcCtrlPBGrp" -p "LegMidArcCtrlGrp";
	rename -uid "DDCF9EFB-43B5-8AB2-9555-90BEACA41E9C";
	addAttr -ci true -k true -sn "pbw" -ln "pbw" -min 0 -max 1 -at "double";
	setAttr -k on ".pbw" 0.5;
createNode transform -n "LegMidArcCtrl" -p "LegMidArcCtrlPBGrp";
	rename -uid "A53D0F67-42BA-1CCA-8346-438A50CD13F2";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LegMidArcCtrlShape" -p "LegMidArcCtrl";
	rename -uid "B9FF2581-4481-576E-9E28-5AA592544EA5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -10
		-1.5700920563688214e-15 -7.0710660000000001 -7.0710660000000001
		-2.2204460492503131e-15 -10 0
		-1.5700920563688214e-15 -7.0710660000000001 7.0710660000000001
		0 0 10
		1.5700920563688214e-15 7.0710660000000001 7.0710660000000001
		2.2204460492503131e-15 10 0
		1.5700920563688214e-15 7.0710660000000001 -7.0710660000000001
		0 0 -10
		;
createNode orientConstraint -n "LegMidArcCtrlPBGrp_orientConstraint1" -p "LegMidArcCtrlPBGrp";
	rename -uid "D8DE56FE-4733-93BB-AFAA-D292C002F4D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg1DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 5.3202923092330709e-16 -1.5000984710114849 -2.5453582912832202e-14 ;
	setAttr ".rsrr" -type "double3" 1.0787334089884731e-15 -1.4998121103940505 -2.5458406896467076e-14 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "LegMidArcCtrlPBGrp_pointConstraint1" -p "LegMidArcCtrlPBGrp";
	rename -uid "AFBFF589-4202-3879-272E-038F3958D521";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegArcPointPosW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 0.0015049548978396388 8.8817841970012523e-16 -0.13189847095592477 ;
	setAttr -k on ".w0";
createNode transform -n "Leg2UpCsHandleGrp" -p "LegMidArcCtrlPBGrp";
	rename -uid "52C2B160-4157-84F2-AFA2-57A9677784A3";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Leg2UpCsHandleZeroMtx" -p "Leg2UpCsHandleGrp";
	rename -uid "AEED7AF3-4D99-2E1F-C933-2589997D8936";
createNode transform -n "Leg2UpCsHandle" -p "Leg2UpCsHandleGrp";
	rename -uid "AA597B1D-496B-9DE6-ADD3-419F4907724C";
createNode clusterHandle -n "Leg2UpCsHandleShape" -p "Leg2UpCsHandle";
	rename -uid "FC9D1964-4432-1780-F150-51B6793D599B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "Leg2DnCsHandleGrp" -p "LegMidArcCtrlPBGrp";
	rename -uid "53C8464A-4C79-0182-B44F-33AFFDFD5B06";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Leg2DnCsHandleZeroMtx" -p "Leg2DnCsHandleGrp";
	rename -uid "43198AB2-40C9-3B9A-B90C-2C9C2FD7A42C";
createNode transform -n "Leg2DnCsHandle" -p "Leg2DnCsHandleGrp";
	rename -uid "11773298-4AF5-C138-7C3D-0EB52A46BA1A";
createNode clusterHandle -n "Leg2DnCsHandleShape" -p "Leg2DnCsHandle";
	rename -uid "D4244390-4A39-E666-6A3A-C18202146212";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "LegMidArcCtrlGrp_parentConstraint1" -p "LegMidArcCtrlGrp";
	rename -uid "FF37B865-4502-12C3-940E-7E9C59C45550";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg2DrvJntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 2.0189972703009702 -90.200633862653177 ;
	setAttr ".rst" -type "double3" 8.1046356547272165 53.212292331310373 1.6857660442348701 ;
	setAttr ".rsrr" -type "double3" 3.978162646487195e-16 2.0188557445253257 -90.200633862653163 ;
	setAttr -k on ".w0";
createNode transform -n "LegDnArcCtrlGrp" -p "LegRootCtrl";
	rename -uid "0638C3D9-4E6D-02C9-09A1-B2B5474EC9B3";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LegDnArcCtrl" -p "LegDnArcCtrlGrp";
	rename -uid "6FEFD0C1-49DB-D4E4-2A85-D995593318AA";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr -cb on ".ro";
createNode nurbsCurve -n "LegDnArcCtrlShape" -p "LegDnArcCtrl";
	rename -uid "C76762FF-4858-E41D-4212-55819C7456C6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -10
		-1.5700920563688214e-15 -7.0710660000000001 -7.0710660000000001
		-2.2204460492503131e-15 -10 0
		-1.5700920563688214e-15 -7.0710660000000001 7.0710660000000001
		0 0 10
		1.5700920563688214e-15 7.0710660000000001 7.0710660000000001
		2.2204460492503131e-15 10 0
		1.5700920563688214e-15 7.0710660000000001 -7.0710660000000001
		0 0 -10
		;
createNode tangentConstraint -n "LegDnArcCtrlGrp_tangentConstraint1" -p "LegDnArcCtrlGrp";
	rename -uid "AB1E64DA-4E0E-4A16-38D7-09BEC45F70F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegDnIKCrvW0" -dv 1 -min 0 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -0.0070705217408713432 2.018855744525295 -90.200633862653177 ;
	setAttr -k on ".w0";
createNode transform -n "Leg3CsHandleGrp" -p "LegDnArcCtrlGrp";
	rename -uid "6584A84F-48A9-1EA0-EF73-36BBE7AA77EA";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "Leg3CsHandleZeroMtx" -p "Leg3CsHandleGrp";
	rename -uid "B1E3EA24-42FF-5E89-7AB3-0CB5E747A48D";
createNode transform -n "Leg3CsHandle" -p "Leg3CsHandleGrp";
	rename -uid "06D53FDA-405B-A677-B4E3-C5BD8B0BE0F8";
createNode clusterHandle -n "Leg3CsHandleShape" -p "Leg3CsHandle";
	rename -uid "B03F82C0-446B-3426-7B55-4FA4B39E165F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "ThighFKCtrlGrp" -p "LegRootCtrl";
	rename -uid "17461562-4E98-3658-D4E2-C3B3A9931E08";
createNode transform -n "ThighFKCtrl" -p "ThighFKCtrlGrp";
	rename -uid "9522804D-4258-0D25-C56D-889BAE3197C1";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 2 -en "Hip:Root:World" -at "enum";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "ThighFKCtrlShape" -p "ThighFKCtrl";
	rename -uid "92254C2F-440A-DE40-27B8-2EA5C2AC9BAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -14.849247
		-3.2971951835492064e-15 -14.849247 0
		0 0 14.849247
		3.2971951835492064e-15 14.849247 0
		0 0 -14.849247
		;
createNode transform -n "KneeFKCtrlGrp" -p "ThighFKCtrl";
	rename -uid "521B0F03-43B1-9BE0-2B44-84A171E524A8";
createNode transform -n "KneeFKCtrl" -p "KneeFKCtrlGrp";
	rename -uid "BFC7FEFA-48E7-6583-1348-F1A7B6530C84";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "KneeFKCtrlShape" -p "KneeFKCtrl";
	rename -uid "B8C82758-4CB8-2182-8698-D3A7B99719B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -14.849247
		-3.2971951835492064e-15 -14.849247 0
		0 0 14.849247
		3.2971951835492064e-15 14.849247 0
		0 0 -14.849247
		;
createNode transform -n "AnkleFKCtrlGrp" -p "KneeFKCtrl";
	rename -uid "70A2D439-4B4E-8928-4952-4D8FAE1AD4E3";
createNode transform -n "AnkleFKCtrl" -p "AnkleFKCtrlGrp";
	rename -uid "8635F8D9-4570-94E1-6A29-3B9B89043E6F";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
createNode nurbsCurve -n "AnkleFKCtrlShape" -p "AnkleFKCtrl";
	rename -uid "BE23D492-4BDA-A21E-0D73-45BE1920598C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -14.849247
		-3.2971951835492064e-15 -14.849247 0
		0 0 14.849247
		3.2971951835492064e-15 14.849247 0
		0 0 -14.849247
		;
createNode transform -n "AnkleFKCtrlPosGrp" -p "AnkleFKCtrl";
	rename -uid "17E4ECA0-4A81-72CC-6E53-A2A0216B8701";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 2.7755575615628914e-17 ;
	setAttr ".r" -type "double3" 7.6765047805049608e-15 -7.5672855938828483e-15 -8.4872705658523944e-15 ;
createNode transform -n "AnkleFKCtrlPos" -p "AnkleFKCtrlPosGrp";
	rename -uid "ABD2A03E-43B5-F02D-C648-5F8878A52FF8";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "LegIKCtrlPoser" -p "LegRootCtrl";
	rename -uid "C4FC1E39-47B2-103F-D23B-4B90D5F1A7D1";
	setAttr ".t" -type "double3" -0.30363421199440754 -86.709697779201463 -1.9208049322128444 ;
createNode transform -n "LegPoleVectorCtrlPoser" -p "LegRootCtrl";
	rename -uid "388A6A8F-4F11-69D8-578F-688137FF043F";
	setAttr ".t" -type "double3" -0.1518494020123935 -43.364106237694259 -0.38284900076094641 ;
	setAttr ".r" -type "double3" 0.51904363413175947 0 -0.2006338626532386 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "ThighFKCtrlPoser" -p "LegRootCtrl";
	rename -uid "BC0C9864-4B45-087E-C051-BAA728C6024C";
	setAttr ".t" -type "double3" 2.3986741481962781e-07 -4.7885365006550273e-07 6.167024002579069e-08 ;
	setAttr ".r" -type "double3" 0 0.5190436341312753 -90.200633862653191 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 0.99999999999999944 ;
createNode transform -n "KneeFKCtrlPoser" -p "ThighFKCtrlPoser";
	rename -uid "77CAC929-44F3-0B42-C6A7-47B533D4BEAB";
	setAttr ".t" -type "double3" 43.366060461866503 -5.3290705182007514e-15 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 0 1.4998121103940503 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1 ;
createNode transform -n "AnkleFKCtrlPoser" -p "KneeFKCtrlPoser";
	rename -uid "2A6CEFEB-4A54-3ACC-9721-128A0B7F7D95";
	setAttr ".t" -type "double3" 43.372869960552315 -5.2402526762307389e-14 2.350897254643769e-14 ;
	setAttr ".r" -type "double3" -0.0070748698197840854 -2.0188433530455536 0.20082906026165248 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
createNode transform -n "LegRootCtrlPoser" -p "LegCtrlGrp";
	rename -uid "B4CEA859-4208-88CC-A0C1-12AFD8E0E31C";
	setAttr ".t" -type "double3" 8.2564849853515607 96.576309204101548 2.0786147117614742 ;
createNode transform -n "LegSysGrp" -p "LegRigGrp";
	rename -uid "3FAA0A4C-4BF5-0EA4-4967-08B329D2C32F";
	setAttr ".v" no;
createNode transform -n "UpLegSysConsGrp" -p "LegSysGrp";
	rename -uid "CC5A8989-4913-EC8B-E307-E484302DA52B";
createNode transform -n "LegJntGrp" -p "UpLegSysConsGrp";
	rename -uid "39F31705-4A90-2356-2890-309C31D2B7F7";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode joint -n "Leg1DrvJnt" -p "LegJntGrp";
	rename -uid "7C388194-4238-8E82-2BA9-74B8BC77ACD3";
	addAttr -ci true -sn "fksy" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "fksz" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
	setAttr -k on ".fksy";
	setAttr -k on ".fksz";
	setAttr -k on ".IKSquash";
createNode joint -n "Leg2DrvJnt" -p "Leg1DrvJnt";
	rename -uid "2ABF8D30-40E3-3E1E-CFBE-FB9067B263EE";
	addAttr -ci true -sn "fksy" -ln "FKScaleY" -at "double";
	addAttr -ci true -sn "fksz" -ln "FKScaleZ" -at "double";
	addAttr -ci true -sn "IKSquash" -ln "IKSquash" -at "double";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
	setAttr -k on ".fksy";
	setAttr -k on ".fksz";
	setAttr -k on ".IKSquash";
createNode joint -n "Leg3DrvJnt" -p "Leg2DrvJnt";
	rename -uid "8C0895CE-4F08-8ABF-7304-7C970F9C3B03";
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.0070748698197787216 -2.0188433530455607 0.2008290602617302 ;
createNode orientConstraint -n "Leg3DrvJntORCons" -p "Leg3DrvJnt";
	rename -uid "8970B1F1-47B6-AAB5-5A4A-B8A29FBDFA46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegIKCtrlPosW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftAnkleFKCtrlPosW1" -dv 1 -min 0 
		-at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -4.9575708833947573e-07 -0.00014152490732759828 6.2404596289655752e-13 ;
	setAttr ".rsrr" -type "double3" -7.3814337895488739e-15 7.169198337526948e-15 8.4571932226542013e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Leg3AssiAPos" -p "Leg3DrvJnt";
	rename -uid "18478440-4688-B823-70E1-6281AC01618C";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "Leg2AssiAPos" -p "Leg2DrvJnt";
	rename -uid "A9DC6BB9-4AB7-514C-1F6E-65A4FB22C4E6";
	setAttr ".t" -type "double3" 0.99965741081207682 -8.8817841970012523e-16 0.026173670139210847 ;
	setAttr ".r" -type "double3" 0 -1.4998121103940505 0 ;
createNode transform -n "Leg3TwistFixGrp" -p "Leg2DrvJnt";
	rename -uid "8CD70D1D-4CD3-9230-F031-73B3ACF2C97D";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "Leg3AimGrp" -p "Leg3TwistFixGrp";
	rename -uid "6C515351-44EA-5AFC-3DA4-178886E85FD2";
createNode transform -n "Leg3TwistFixPos" -p "Leg3AimGrp";
	rename -uid "33046346-4944-58DC-D7FC-D8A452C78EC4";
createNode orientConstraint -n "Leg3TwistFixPosORCons" -p "Leg3TwistFixPos";
	rename -uid "ECFDFD9E-4CAC-4D13-23FB-1F9B11AC30E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg3AimGrpW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg3TwistFixSubPosW1" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr -k on ".w0" 0.5;
	setAttr -k on ".w1";
createNode aimConstraint -n "Leg3AimGrpAMCons" -p "Leg3AimGrp";
	rename -uid "A6DEEA9B-447E-C47B-98E1-7EA4357AD6C6";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg3TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "Leg3TwistFixSubPos" -p "Leg3AimGrp";
	rename -uid "7258A906-4685-A070-8EF5-23B67C6DB35A";
createNode aimConstraint -n "Leg3TwistFixSubPosAMCons" -p "Leg3TwistFixSubPos";
	rename -uid "0774E482-497F-E217-882D-22A6F27B54DF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg3TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "Leg3AssiBPos" -p "Leg3TwistFixGrp";
	rename -uid "63C8680E-41C5-D8E2-C852-A093B6083C29";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "Leg3TwsitFixTgPos" -p "Leg3TwistFixGrp";
	rename -uid "D489AD47-4C6F-9453-E288-AFB3EACFAADB";
createNode transform -n "Leg2TwistFixGrp" -p "Leg1DrvJnt";
	rename -uid "A98214FA-4AF9-1982-AEA6-B292894C8AF6";
createNode transform -n "Leg2AimGrp" -p "Leg2TwistFixGrp";
	rename -uid "8C0446EE-439F-3CF5-ED05-A6B81027621F";
createNode transform -n "Leg2TwistFixPos" -p "Leg2AimGrp";
	rename -uid "F5F10343-4EC0-692A-FC59-4AA2F0933F60";
createNode aimConstraint -n "Leg2AimGrpAMCons" -p "Leg2AimGrp";
	rename -uid "EBCEF6A3-4B38-7DE4-E90E-B49A1AC61F2B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg2TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "Leg2AssiBPos" -p "Leg2TwistFixGrp";
	rename -uid "5324CBE3-4E26-F7E8-5FD1-8E9CA9878CF8";
	setAttr ".t" -type "double3" 1 0 0 ;
createNode transform -n "Leg2TwsitFixTgPos" -p "Leg2TwistFixGrp";
	rename -uid "31AF34D6-447E-E8C2-F09F-18B1DBBD4411";
createNode joint -n "Leg1IKJnt" -p "LegJntGrp";
	rename -uid "CA84D425-4DE6-94CB-31E2-14937EABB10F";
	setAttr ".r" -type "double3" 3.8390287547259754e-17 -0.00014483484179065545 2.9314681533103706e-15 ;
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode joint -n "Leg2IKJnt" -p "Leg1IKJnt";
	rename -uid "BE3760E5-4D49-F873-F5A9-AA8FD17DAB7B";
	addAttr -ci true -sn "Length" -ln "Length" -at "double";
	setAttr ".t" -type "double3" 43.366 -3.5527136788005009e-15 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" -7.623201458367003e-20 0.00028636061743382292 3.8078606656827291e-18 ;
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
	setAttr -k on ".Length" 43.366;
createNode joint -n "Leg3IKJnt" -p "Leg2IKJnt";
	rename -uid "8B389CE6-4307-2AC0-9667-CB8C71ACA21A";
	addAttr -ci true -sn "Length" -ln "Length" -at "double";
	setAttr ".t" -type "double3" 43.373 1.1546319456101628e-14 2.4924506902834764e-14 ;
	setAttr ".jo" -type "double3" -0.0070748698197865565 -2.0188433530455527 0.20082906026172356 ;
	setAttr -k on ".Length" 43.373;
createNode ikEffector -n "effector22" -p "Leg2IKJnt";
	rename -uid "F2DD0ED3-4118-88E2-C6B2-71AEFBCA7E63";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Leg1FKJnt" -p "LegJntGrp";
	rename -uid "616B3EDE-4E98-4F4A-92C6-61870102E6CD";
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode joint -n "Leg2FKJnt" -p "Leg1FKJnt";
	rename -uid "1C90B6D8-4570-CFBC-8A61-85AD16B4DCE9";
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
createNode joint -n "Leg3FKJnt" -p "Leg2FKJnt";
	rename -uid "C50F521C-4994-D31D-CDF9-589330F1E364";
	setAttr ".jo" -type "double3" -0.0070748698197865504 -2.0188433530455527 0.20082906026172254 ;
createNode joint -n "LegUp1ArcJnt" -p "LegJntGrp";
	rename -uid "B661F7F1-4C8B-1088-85F7-0DB9AA8E773F";
	setAttr ".t" -type "double3" 8.2564849853515589 96.576309204101548 2.0786147117614746 ;
	setAttr ".r" -type "double3" -2.0949920648434232e-20 -0.00014483484179065548 1.6575321508982513e-14 ;
	setAttr ".jo" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode joint -n "LegUp2ArcJnt" -p "LegUp1ArcJnt";
	rename -uid "EC205741-42AB-C5D8-D2BF-BEA8850179FE";
	setAttr ".t" -type "double3" 10.84149960655486 8.8817841970012523e-16 6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" -8.5377364625159377e-07 -2.7977802164965507e-22 2.0845086995486544e-30 ;
createNode joint -n "LegUp3ArcJnt" -p "LegUp2ArcJnt";
	rename -uid "13D716C3-4D07-C4CE-B774-C19F3FE7C4D4";
	setAttr ".t" -type "double3" 10.841499606554818 3.5527136788005009e-15 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -8.5377364625159387e-07 5.5955604355987088e-22 3.4972248537189303e-23 ;
createNode joint -n "LegUp4ArcJnt" -p "LegUp3ArcJnt";
	rename -uid "9AFB286A-44EE-2C9D-5B46-3D96FDAC87D0";
	setAttr ".t" -type "double3" 10.841499606554846 -5.3290705182007514e-15 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -8.5377364625159387e-07 1.3988901069454531e-22 -1.7486127395357736e-23 ;
createNode joint -n "LegUp5ArcJnt" -p "LegUp4ArcJnt";
	rename -uid "FBFDFCB5-4184-C531-DD17-79B148CF70AE";
	setAttr ".t" -type "double3" 10.841499606554832 -1.7763568394002505e-15 0 ;
createNode joint -n "LegDn1ArcJnt" -p "LegUp5ArcJnt";
	rename -uid "27C3BC31-4519-F8CB-B141-0FB783FED3EA";
	setAttr ".t" -type "double3" 2.7029309777049093e-06 0 0 ;
	setAttr ".r" -type "double3" 1.207418269726245e-06 0.00028636056834548563 9.2102829706273589e-14 ;
	setAttr ".jo" -type "double3" 0 1.4998121103940505 0 ;
createNode joint -n "LegDn2ArcJnt" -p "LegDn1ArcJnt";
	rename -uid "E2E71093-485B-5233-7E47-9FAEC52B25FE";
	setAttr ".t" -type "double3" 10.843249805444431 -9.7699626167013776e-15 4.9960036108132044e-16 ;
	setAttr ".r" -type "double3" -8.5377364625159387e-07 7.6926537337475353e-22 3.9337428119293391e-23 ;
createNode joint -n "LegDn3ArcJnt" -p "LegDn2ArcJnt";
	rename -uid "495AB66E-4926-2359-8E7A-EDBFC50DCFE7";
	setAttr ".t" -type "double3" 10.843249805444403 -1.2434497875801753e-14 -4.9960036108132044e-16 ;
	setAttr ".r" -type "double3" -8.5377364625159387e-07 1.0489982362484089e-21 3.0595774068283958e-23 ;
createNode joint -n "LegDn4ArcJnt" -p "LegDn3ArcJnt";
	rename -uid "556FAA7C-42E8-546A-CEB5-84B021ED6047";
	setAttr ".t" -type "double3" 10.843249805444421 -1.2434497875801753e-14 -6.106226635438361e-16 ;
	setAttr ".r" -type "double3" -8.5377364625159377e-07 6.9933200657013245e-23 -2.0236924308438322e-21 ;
createNode joint -n "LegDn5ArcJnt" -p "LegDn4ArcJnt";
	rename -uid "BBEB154E-44A2-F187-BB31-CAA2279FCF47";
	setAttr ".t" -type "double3" 10.843249805444428 -2.6645352591003757e-15 2.5673907444456745e-14 ;
createNode ikEffector -n "effector24" -p "LegDn4ArcJnt";
	rename -uid "DFE24975-42F7-7B4E-C07C-8D984AF41ED6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector23" -p "LegUp4ArcJnt";
	rename -uid "0462F74C-419C-8D92-57EC-7198A0829520";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Leg1TwistFixGrp" -p "LegJntGrp";
	rename -uid "69EDEB51-4EC7-A7C7-2B41-EE8FC26DC16C";
	setAttr ".r" -type "double3" 1.5530689420841118e-13 0.51904363413127408 -90.200633862653177 ;
createNode transform -n "Leg1AimGrp" -p "Leg1TwistFixGrp";
	rename -uid "F73AB499-450F-EFB9-51AE-2D9C06F97AF8";
createNode transform -n "Leg1TwistFixPos" -p "Leg1AimGrp";
	rename -uid "5A5E6646-49D1-D9C9-5200-71990C55EBFE";
createNode aimConstraint -n "Leg1AimGrpAMCons" -p "Leg1AimGrp";
	rename -uid "7BF21875-47B0-546F-A701-31AAD3E9BDEE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLeg1TwsitFixTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode transform -n "Leg1TwistFixUpvec" -p "Leg1TwistFixGrp";
	rename -uid "6E8444F2-4D9B-D031-0FBC-39AE36F75CF8";
createNode transform -n "Leg1TwsitFixTgPos" -p "Leg1TwistFixGrp";
	rename -uid "6653A2A2-4FAD-4BA1-CCE9-618B61218C15";
	setAttr ".r" -type "double3" 0 1.4998121103940505 0 ;
createNode transform -n "Leg1IKJntPoser" -p "LegJntGrp";
	rename -uid "096FA52D-4F1E-7C15-3F0A-84B01961F299";
	setAttr ".t" -type "double3" 8.2564852252189773 96.576308725247912 2.0786147734317151 ;
	setAttr ".r" -type "double3" 0 0.51889879928948501 -90.200633862653191 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "LegIKh" -p "UpLegSysConsGrp";
	rename -uid "C1334D99-445B-38D2-DE79-47B65B1E4728";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "LegIKhPVCons" -p "LegIKh";
	rename -uid "767F3B56-40D5-2526-FD9B-8285BE2C14BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLegPoleVectorCtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" -0.15184964187980654 -43.364105758840623 -0.38284906243082006 ;
	setAttr -k on ".w0";
createNode transform -n "LegPVSysGrp" -p "UpLegSysConsGrp";
	rename -uid "398027E6-4B82-7AF3-749E-92A01FA6E5F8";
	setAttr -l on ".v";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "LegPVAmGrp" -p "LegPVSysGrp";
	rename -uid "52270FE0-4C37-D6D5-FD9F-9D9B8EAB44ED";
createNode aimConstraint -n "LegPVAmGrpAMCons" -p "LegPVAmGrp";
	rename -uid "E0E0F4BA-4982-619E-BB6F-E8B9F9D4CEA1";
	addAttr -dcb 0 -ci true -sn "w0" -ln "LeftLegPVTgPosW0" -dv 1 -at "double";
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
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 3.8404111276485572e-17 0.74996493044285639 5.8679065815851578e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LegPVPosGrp" -p "LegPVAmGrp";
	rename -uid "590D7820-4D33-3068-F765-1FA54D407719";
createNode transform -n "LegPVPos" -p "LegPVPosGrp";
	rename -uid "17D29894-4491-3233-19FA-0F87C9419D9C";
	addAttr -s false -ci true -m -sn "ag" -ln "AimGrp" -at "message";
createNode transform -n "LegPVPosFWGrp" -p "LegPVPos";
	rename -uid "8100EB80-40F2-738E-3180-B5A8F5FDF0FE";
createNode transform -n "LegPoleVectorToLegPVPosFW" -p "LegPVPosFWGrp";
	rename -uid "605042F4-49DE-60B1-3396-28BC5F2BD83A";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 7.1054273576010019e-15 0.010000000000000231 ;
createNode transform -n "LegPVPosPoser" -p "LegPVAmGrp";
	rename -uid "D9769A3F-4F5A-598E-5A80-0CA0BB26972F";
	setAttr ".t" -type "double3" 43.36234553369605 -4.4408920985006262e-15 0.56761765177693846 ;
	setAttr ".r" -type "double3" -0.74996493044285772 4.9696166897867462e-17 90 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "LegPVUpvec" -p "LegPVSysGrp";
	rename -uid "9B2830AB-482C-809E-852A-E8A3D14A0B99";
createNode transform -n "LegPVTgPos" -p "LegPVSysGrp";
	rename -uid "DBE512F6-4569-F9FD-A672-A3B0A6828AF2";
	setAttr ".r" -type "double3" -0.0018182313069729623 -0.51904044953890727 0.20071263990825647 ;
createNode transform -n "LegPosGrp" -p "UpLegSysConsGrp";
	rename -uid "91A0AAF3-4F90-20AB-4F94-6F9206BF0164";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LegIK1Pos" -p "LegPosGrp";
	rename -uid "DFC639AF-4714-D66B-5A2B-0EB78472131A";
	setAttr ".t" -type "double3" 8.2564852252189773 96.576308725247912 2.0786147734317151 ;
	setAttr ".r" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode transform -n "LegIK2Pos" -p "LegPosGrp";
	rename -uid "31785541-4DEA-09E5-915D-9FB6FCD4E05D";
	setAttr ".t" -type "double3" 8.1046359005558468 53.212293554816604 1.6857661213273389 ;
	setAttr ".r" -type "double3" 3.978162646487195e-16 2.0188557445253257 -90.200633862653163 ;
createNode transform -n "LegIK3Pos" -p "LegPosGrp";
	rename -uid "20E38602-44BA-7186-BD5F-3394D3CC304D";
	setAttr ".t" -type "double3" 7.952850773357155 9.8666114249000998 0.15780977954863018 ;
	setAttr ".r" -type "double3" 7.9277460625420548e-15 -7.927755823049035e-15 -89.999929458447951 ;
createNode transform -n "LegIKMovePos" -p "LegPosGrp";
	rename -uid "2BB9C43E-4AB5-C020-F0D8-35BD6C55946E";
createNode transform -n "LegPVStretchPos" -p "LegPosGrp";
	rename -uid "2FB11FFA-4123-3420-7838-E48EF1F1A3A8";
	setAttr ".r" -type "double3" 0.51904363413127463 0 -0.20063386265318042 ;
createNode transform -n "LegArcPosGrp" -p "UpLegSysConsGrp";
	rename -uid "4E203384-47C9-C49C-7793-63A32E0D5B88";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "Leg1ArcPos" -p "LegArcPosGrp";
	rename -uid "D248B7D8-4128-888C-3DC8-D28F1DCDF3E6";
	setAttr ".r" -type "double3" 4.9698206146691579e-17 0.51904363413127586 -90.200633862653191 ;
createNode transform -n "Leg2ArcPos" -p "LegArcPosGrp";
	rename -uid "DC11A585-4221-F46D-AB47-DBA200D03964";
	setAttr ".r" -type "double3" 3.978162646487195e-16 2.0188557445253257 -90.200633862653163 ;
createNode transform -n "Leg3ArcPos" -p "LegArcPosGrp";
	rename -uid "2DFB1C4B-4734-FF7F-A27B-908D21907AB0";
	setAttr ".r" -type "double3" 7.9277460625420548e-15 -7.927755823049035e-15 -89.999929458447951 ;
createNode transform -n "LegArcPointPos" -p "LegArcPosGrp";
	rename -uid "2E8334A0-4142-13C3-121D-098E8E4E947F";
createNode pointConstraint -n "LegArcPointPosPTCons" -p "LegArcPointPos";
	rename -uid "F79AEF95-470B-56FD-EA52-73AEFA295FEA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LeftLeg1ArcPosW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LeftLeg2ArcPosW1" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "LeftLeg3ArcPosW2" -dv 1 -min 0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr ".o" -type "double3" 0 0 0.01 ;
	setAttr ".rst" -type "double3" 8.1046570541912182 53.218403433111327 1.307396802593642 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode transform -n "LegArcCrvGrp" -p "UpLegSysConsGrp";
	rename -uid "E0C69731-44E3-0899-A87E-3AAB681BDFAB";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LegUpArcCrv" -p "LegArcCrvGrp";
	rename -uid "02E100EF-4629-4962-C0D8-25B8898C6EFB";
	setAttr -l on ".v";
createNode nurbsCurve -n "LegUpArcCrvShape" -p "LegUpArcCrv";
	rename -uid "223A129D-4633-006C-E3D7-FF93C1411D5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "LegDnArcCrv" -p "LegArcCrvGrp";
	rename -uid "C23C0914-4B7F-943E-D4F2-B095178B1FF1";
	setAttr -l on ".v";
createNode nurbsCurve -n "LegDnArcCrvShape" -p "LegDnArcCrv";
	rename -uid "F3D3A69E-4FDF-BB6C-69BC-9C91CC2B76E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "LegIKCrvGrp" -p "UpLegSysConsGrp";
	rename -uid "9716586E-4A70-FFF8-54A9-7CABE9552333";
	setAttr ".t" -type "double3" -8.2564849853515607 -96.576309204101563 -2.0786147117614742 ;
createNode transform -n "LegUpIKCrv" -p "LegIKCrvGrp";
	rename -uid "B55F771E-42E5-0613-A3EF-D086714FA19C";
	setAttr -l on ".v";
createNode nurbsCurve -n "LegUpIKCrvShape" -p "LegUpIKCrv";
	rename -uid "23BAA11D-408F-F857-3DC7-0B94D413E52C";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "LegUpIKCrvShapeOrig" -p "LegUpIKCrv";
	rename -uid "E9AB7BE8-4EEC-7512-AAE2-7395A6B9B828";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8.2564849853515625 96.576309204101563 2.0786147117614746
		8.1046358649692021 53.212352370673543 1.6858762151722744
		;
createNode transform -n "LegDnIKCrv" -p "LegIKCrvGrp";
	rename -uid "814CB13F-4277-7563-58FC-6BBDB4C93AE0";
	setAttr -l on ".v";
createNode nurbsCurve -n "LegDnIKCrvShape" -p "LegDnIKCrv";
	rename -uid "884A1A82-41C8-66A7-3421-24BB63874A8A";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "LegDnIKCrvShapeOrig" -p "LegDnIKCrv";
	rename -uid "566989C7-4ED7-CE54-D0DF-49B6819123E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		8.1046358649692021 53.212352370673543 1.6858762151722744
		7.9528502920640873 9.8665429591904523 0.15780818486575796
		;
createNode transform -n "LegUpIKChkCrv" -p "LegIKCrvGrp";
	rename -uid "DCE2EFBB-43D9-C4E2-6196-00B3F3590392";
	setAttr -l on ".v";
createNode nurbsCurve -n "LegUpIKChkCrvShape" -p "LegUpIKChkCrv";
	rename -uid "D1F5572B-4B18-944D-AB57-9F9614CCD105";
	setAttr -k off ".v";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "cv[*]";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		8.2564849853515625 96.576309204101563 2.0786147117614746
		8.2311767635384641 89.348973046535008 2.0131399337307432
		8.1805603200393904 74.894300767705985 1.8821903779981728
		8.1299438765403149 60.439628488876934 1.7512408222656004
		8.1046356547272147 53.212292331310373 1.6857660442348696
		;
createNode transform -n "LegDnIKChkCrv" -p "LegIKCrvGrp";
	rename -uid "D7F6D0D0-4983-D995-6C59-9E979E728C22";
	setAttr -l on ".v";
createNode nurbsCurve -n "LegDnIKChkCrvShape" -p "LegDnIKChkCrv";
	rename -uid "4AA06E08-4438-69B6-686E-A5B95995FBA8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 0.5 1 1 1
		5
		8.1046356547272165 53.21229233131038 1.6857660442348699
		8.0793381326461375 45.988011724649418 1.4311066450667584
		8.0287430886110513 31.539450547616248 0.9217878480097258
		7.9781480445759598 17.090889370582989 0.41246905095269421
		7.9528505224948773 9.8666087639220503 0.15780965178458192
		;
createNode ikHandle -n "LegUpArcIKh" -p "UpLegSysConsGrp";
	rename -uid "D3871213-46C9-1A52-71AE-41BDA1C58AAC";
	setAttr ".t" -type "double3" -0.15184911091785658 -43.363954130624435 -0.39273847211046076 ;
	setAttr ".r" -type "double3" -4.9698205008740383e-17 0.51889879928948512 -90.200633862653191 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode ikHandle -n "LegDnArcIKh" -p "UpLegSysConsGrp";
	rename -uid "D6EF5A85-44BA-D0F0-838E-0F9335B3E4A3";
	setAttr ".t" -type "double3" -0.30363468671939575 -86.709764369233923 -1.9208064607353643 ;
	setAttr ".r" -type "double3" 1.2074182696765184e-06 2.0189972702518819 -90.200633862653191 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtce" yes;
createNode transform -n "LegPVSysPoser" -p "UpLegSysConsGrp";
	rename -uid "2F42B7F8-423D-BF8E-5A40-CEA39D5C2B4B";
	setAttr ".t" -type "double3" 2.3986741659598465e-07 -4.7885365006550273e-07 6.167024091396911e-08 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "ToeRigGrp" -p "LegRigGrp";
	rename -uid "76E1D7C1-4718-9833-07A3-D49671E4AF28";
	addAttr -s false -ci true -m -sn "Grp" -ln "Grp" -at "message";
	addAttr -s false -ci true -m -sn "Ctrl" -ln "Ctrl" -at "message";
	addAttr -s false -ci true -m -sn "Part" -ln "Part" -at "message";
	addAttr -s false -ci true -sn "NoneToe" -ln "NoneToe" -at "message";
	addAttr -s false -ci true -m -sn "Jnt" -ln "Jnt" -at "message";
	addAttr -s false -ci true -m -sn "IKh" -ln "IKh" -at "message";
	setAttr -s 2 ".Grp";
	setAttr -s 2 ".IKh";
createNode transform -n "AnkleConsGrp" -p "ToeRigGrp";
	rename -uid "F0401823-410B-A5F7-8A99-2D8641DB857A";
createNode transform -n "AnkleIKScaleGrp" -p "AnkleConsGrp";
	rename -uid "864AFD9B-4C79-F44B-9EA8-F99AE707AB7B";
	setAttr ".t" -type "double3" -2.6609777385999678e-06 2.5086555499598262e-07 1.2776404828551691e-07 ;
	setAttr ".r" -type "double3" 0 0 89.999929458447951 ;
createNode transform -n "ToeSysGrp" -p "AnkleIKScaleGrp";
	rename -uid "C67970B3-46A2-078C-7355-17BC56CD6CB5";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.5987211554602254e-14 3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 0 -89.999929458447966 ;
createNode transform -n "AnkleIKJntGrp" -p "ToeSysGrp";
	rename -uid "F19C1886-4D48-62E2-D1A4-9694DDC8F329";
createNode joint -n "AnkleIKJnt" -p "AnkleIKJntGrp";
	rename -uid "AFBA4322-46BD-6B50-F527-F88E3BE18950";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -4.2632564145606011e-14 8.8817841970012523e-16 7.7715611723760958e-16 ;
	setAttr ".r" -type "double3" -1.2246836904861712e-12 -0.00022973161480108672 8.9009255410414138e-07 ;
	setAttr ".jo" -type "double3" 0 -63.399570202741486 0 ;
createNode joint -n "BallIKJnt" -p "AnkleIKJnt";
	rename -uid "3885DBC8-4D50-2617-DF2A-7589D36D7894";
	setAttr ".t" -type "double3" 15.044114096753535 -1.0231815394945443e-12 2.0392576516314875e-12 ;
	setAttr ".r" -type "double3" 5.9559729995293672e-12 0.00013905042103637554 1.6581609518754835e-06 ;
	setAttr ".jo" -type "double3" 0 -26.600429797258538 0 ;
createNode joint -n "ToeIKJnt" -p "BallIKJnt";
	rename -uid "2FF1CCBE-4449-DD78-E3B9-E18EA144E6D7";
	setAttr ".t" -type "double3" 8.0757760669283805 8.8817841970012523e-16 -1.0969003483296547e-13 ;
createNode ikEffector -n "effector25" -p "BallIKJnt";
	rename -uid "6EE844E3-4D97-29DA-A40E-0AA7FD71E15C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector26" -p "AnkleIKJnt";
	rename -uid "8880C64C-4362-85BF-4C33-4782B9CF3761";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "BallIKCtrlPrtGrp" -p "AnkleIKJntGrp";
	rename -uid "3FA6297E-4CE4-66BA-3FBF-CB9AEDC25592";
createNode transform -n "BallIKCtrlGrp" -p "BallIKCtrlPrtGrp";
	rename -uid "5B54EC0D-435E-0649-D10C-4EB7E2EA53BC";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "BallIKCtrl" -p "BallIKCtrlGrp";
	rename -uid "D4380531-484D-A6BE-60C0-92A2F61EB4E4";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "BallIKCtrlShape" -p "BallIKCtrl";
	rename -uid "6A44B433-4AAD-D038-3E01-EEA806D3D04C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.1088911706974591e-16 1.2949641359227825e-16 -6.9589935405000007
		-9.3431785430642142e-16 -6.9589935405000007 0
		6.1088911706974591e-16 1.2949641359227825e-16 6.9589935405000007
		2.1560960884459144e-15 6.9589935405000007 0
		6.1088911706974591e-16 1.2949641359227825e-16 -6.9589935405000007
		;
createNode joint -n "AnkleFKJnt" -p "ToeSysGrp";
	rename -uid "F205A053-4C94-9C74-AB7D-4EB3A91C4698";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 0 0 1.3877787807814457e-16 ;
	setAttr ".jo" -type "double3" 0 -63.399570202741486 0 ;
createNode joint -n "BallFKJnt" -p "AnkleFKJnt";
	rename -uid "EF9E73D0-4AAF-8BC5-B0B9-AF8B76ED3993";
	setAttr ".jo" -type "double3" 0 -26.600429797258538 0 ;
createNode joint -n "AnkleDrvJnt" -p "ToeSysGrp";
	rename -uid "0D575A91-4231-CD66-1399-9AAD39E49EC1";
	setAttr -l on ".v" no;
	setAttr ".jo" -type "double3" 0 -63.399570202741486 0 ;
createNode joint -n "BallDrvJnt" -p "AnkleDrvJnt";
	rename -uid "08739FC9-4F11-A0C2-119F-B8BAB60717DA";
	setAttr ".jo" -type "double3" 0 -26.600429797258538 0 ;
createNode transform -n "BallFKCtrlGrp" -p "AnkleIKScaleGrp";
	rename -uid "621A4DBB-47E7-10A0-9C37-AFAD76E9DE2B";
	setAttr ".t" -type "double3" 8.2935383654003658e-06 -6.7362397118227655 13.45170782841091 ;
	setAttr ".r" -type "double3" -89.999929458456677 -89.999999999999233 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "BallFKCtrl" -p "BallFKCtrlGrp";
	rename -uid "97F2FE55-4AA7-0164-6A4C-D0BCD47A5F12";
	setAttr -l on ".v";
	setAttr -cb on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "BallFKCtrlShape" -p "BallFKCtrl";
	rename -uid "4CCD0AF9-4F25-29E5-84AE-79B1C0A57FFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 -10.606605
		-2.3551394168208617e-15 -10.606605 0
		0 0 10.606605
		2.3551394168208617e-15 10.606605 0
		0 0 -10.606605
		;
createNode animCurveUU -n "LegIKUU";
	rename -uid "D4E22B3F-415C-A9DF-71BC-22A598D22415";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "LegFKUU";
	rename -uid "66E206DE-4E24-0E5C-B914-B58D74DCD98A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode blendColors -n "LegIKScaleBC";
	rename -uid "1644DB53-4ED1-915E-B5DA-2E869E28BDF1";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode blendColors -n "LegFKScaleBC";
	rename -uid "1C3914E3-4889-B4BC-96A5-5E83AE0F4A8D";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode condition -n "LegAutoHideCD";
	rename -uid "2E530014-43B9-0887-A3B6-3F87FE08ADF6";
	setAttr ".st" 1;
createNode reverse -n "LegAutoHideRV";
	rename -uid "D3572A42-4955-575D-E63D-3AB2BBDA057B";
createNode decomposeMatrix -n "LegIKCtrlPosDM";
	rename -uid "E732E5BE-4735-5CD7-F222-D6A9CAE7EF16";
createNode multMatrix -n "LegIKCtrlPosMM";
	rename -uid "E52424EF-412F-F6CD-90DF-A18F08ED9712";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" 2.2460339755979075e-16 1 -2.738534794738432e-16 0
		 0 2.2204460492503131e-16 1 0 1 -2.2204460492503131e-16 6.0807687657114685e-32 0 -0.15780977954863235 -7.9528507733571576 -9.8666114249001122 1;
createNode animCurveUA -n "FootInRotPos_rotateX";
	rename -uid "8149DC09-4988-B96E-F61F-78A2377B3677";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -10 90 0 0;
createNode animCurveUA -n "FootOutRotPos_rotateX";
	rename -uid "CED2B355-4098-A193-A2D3-3498812B22C2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -90;
createNode animCurveUA -n "HeelRollPivPos_rotateY";
	rename -uid "9F79D0E5-4F03-CE3D-D341-08B69B2B9DD4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -10 -90 0 0;
createNode animCurveUA -n "HeelRollPivPos_rotateZ";
	rename -uid "BD927854-4B82-7241-6BF3-DBA19A0E17CE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "ToeRollPivPos_rotateY";
	rename -uid "E4DE8FA0-4DE1-541C-1CB7-CA8781CF6872";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 -90 0 0 10 90;
createNode animCurveUA -n "ToeRollPivPos_rotateZ";
	rename -uid "9A94CF16-44B5-6DFC-13CA-06836F323749";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "BallPivPos_rotateZ";
	rename -uid "824EDB6F-4DEE-A520-FBAC-E5BDE5AE73E5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode animCurveUA -n "FootRollPos_rotateY";
	rename -uid "72B5B892-4136-45EA-FC1F-C880FDFE1B8D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 90;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "422ABAAF-40E7-D613-95A2-939982EBCF14";
createNode animCurveUA -n "BallRollPos_rotateY";
	rename -uid "1A45B48A-44A5-1CDF-7460-E7A87BBAA1D4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -10 90 0 0 10 -90;
createNode decomposeMatrix -n "LegIKFKCtrlGrpDM";
	rename -uid "4CB9E575-489F-5A7B-D464-E59512304D57";
createNode multMatrix -n "LegIKFKCtrlGrpMM";
	rename -uid "FE62C6AF-4FF8-4307-C1EB-A88E8399CC8E";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161918e-06 0.99999999999924227 -1.3051842010479848e-16 0
		 -0.99999999999924205 1.2311823426314206e-06 1.214306433183765e-16 0 1.2490024788271661e-16 1.2801701774134322e-16 1.0000000000000002 0
		 9.8666016334831657 -7.9528629209488972 -0.15780977954862993 1;
createNode decomposeMatrix -n "LegUpArcDM";
	rename -uid "223E0C8D-4405-CFE5-6EBD-B6BEDFBA3951";
createNode multMatrix -n "LegUpArcMM";
	rename -uid "DB2E2C8E-42E4-3F5F-D09B-CDB110B8026C";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LegUpArcCM";
	rename -uid "2BF8499C-411B-2C41-6582-62BF5F053113";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.1805604251603814 74.894330787387517 1.8822454634668739 1;
createNode pointOnCurveInfo -n "LegUpArcPC";
	rename -uid "E4DA16DA-4509-D52A-4393-799C24D07507";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode blendShape -n "LegArcBlendShape";
	rename -uid "965241B6-4EC6-F5C9-F67C-20B06B4C2B3C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".og";
	setAttr -s 2 ".it";
	setAttr ".mlid" 2;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgvs[0]" yes;
	setAttr ".tpvs[0]" yes;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".dfo" 1;
	setAttr ".aal" -type "attributeAlias" {"LeftLegArcCrvGrp","weight[0]"} ;
createNode objectSet -n "LeftLegArcBlendShapeSet";
	rename -uid "89F839F5-4759-8EA5-E375-C0BEAA03465A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "LeftLegArcBlendShapeGroupId";
	rename -uid "061BE540-48CB-9681-FAC3-5C9C94FCEE1A";
	setAttr ".ihi" 0;
createNode groupId -n "LeftLegArcBlendShapeGroupId1";
	rename -uid "0ECB0D72-449C-A4F2-4673-0788F1ACC1BD";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLegArcBlendShapeGroupParts";
	rename -uid "EC80D336-4635-7C81-B942-D5B90523F543";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "rebuildCurve5";
	rename -uid "82E34B65-4007-F194-0CCD-2EAA67D62445";
	setAttr ".s" 2;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode groupParts -n "LeftLegArcBlendShapeGroupParts1";
	rename -uid "7E929415-4DE4-6381-942B-17A1F0E2118D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode rebuildCurve -n "rebuildCurve6";
	rename -uid "AF186A70-4015-D725-F39C-1C85627CA78A";
	setAttr ".s" 2;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode animCurveUU -n "LegArcBlendShape_LegArcCrvGrp";
	rename -uid "1200D434-4F8A-3491-5FF6-EDB65B2EFFFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 1;
createNode cluster -n "Leg1CsHandleCluster";
	rename -uid "F6E9DED5-46F0-2300-DC64-30AD68442C83";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftLeg1CsSet";
	rename -uid "AA19AAEE-4AE3-97D8-0675-66964056DBE6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg1CsGroupId";
	rename -uid "22E6D736-428A-3CCF-D5D6-91BC80C22BA1";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg1CsGroupParts";
	rename -uid "51133700-4234-AB71-7BBE-9982966CFAFB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode pairBlend -n "LegMidArcCtrlPBGrpPB";
	rename -uid "FDDC2FA4-444F-03DA-7E89-CB9198A2A5CC";
	setAttr ".it1" -type "double3" 0.0015049548978396388 8.8817841970012523e-16 -0.13189847095592477 ;
	setAttr ".ir1" -type "double3" 1.0787334089884731e-15 -1.4998121103940505 -2.5458406896467076e-14 ;
	setAttr ".ri" 1;
createNode cluster -n "Leg2UpCsHandleCluster";
	rename -uid "227A2198-4E7C-3F8F-6058-D99591C2ADC1";
	setAttr ".wl[0].w[3]"  0.5;
createNode objectSet -n "LeftLeg2UpCsSet";
	rename -uid "463182B6-49BB-388C-4D62-3B9BC4D5F36C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg2UpCsGroupId";
	rename -uid "D94C49E6-4BEF-8934-7364-91A67D9438CC";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg2UpCsGroupParts";
	rename -uid "CE4170A4-4F16-F6C1-3599-DF985C23AC11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3:4]";
createNode cluster -n "Leg2DnCsHandleCluster";
	rename -uid "1697F7B9-4269-D377-B196-BA876EF98DCB";
	setAttr ".wl[0].w[1]"  0.5;
createNode objectSet -n "LeftLeg2DnCsSet";
	rename -uid "0E25C395-4025-183C-CB18-0881EB44D40C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg2DnCsGroupId";
	rename -uid "010AB872-4C9A-E32E-22E1-968EE173D7E0";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg2DnCsGroupParts";
	rename -uid "942B7334-4941-F4A5-6D5F-269DE986A5F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode decomposeMatrix -n "LegDnArcDM";
	rename -uid "BBD45D98-4841-C9C6-C2C0-D598117AC947";
createNode multMatrix -n "LegDnArcMM";
	rename -uid "CA5F34C1-412E-9C63-A26C-E8924DE5EE9F";
	setAttr -s 2 ".i";
createNode composeMatrix -n "LegDnArcCM";
	rename -uid "D56220BA-4492-80B6-412F-A2A151E89A70";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.0287430785166443 31.539447664931991 0.92184220001901584 1;
createNode pointOnCurveInfo -n "LegDnArcPC";
	rename -uid "B62EBABD-479F-DC9E-D4F6-18B486580972";
	setAttr ".pr" 0.5;
	setAttr ".top" yes;
createNode cluster -n "Leg3CsHandleCluster";
	rename -uid "05FA2D10-4F56-E02A-5D88-28997551F7B9";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.5;
	setAttr ".wl[0].w[3]" 0.5;
createNode objectSet -n "LeftLeg3CsSet";
	rename -uid "C9EF7BA4-45B5-5BA4-D582-15A413A0867F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "LeftLeg3CsGroupId";
	rename -uid "A2A10FAC-4C1E-7901-22C8-5A8A79B0F9AB";
	setAttr ".ihi" 0;
createNode groupParts -n "LeftLeg3CsGroupParts";
	rename -uid "51668848-4935-F6E2-4999-0EA96A8BF338";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1:3]";
createNode decomposeMatrix -n "UpLegSysConsGrpDM";
	rename -uid "D615605F-4A42-F162-7257-61895551F6CB";
createNode multMatrix -n "UpLegSysConsGrpMM";
	rename -uid "6F26B5E3-4327-5200-B39F-4B994EEE2645";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2564849853515625 96.576309204101563 2.0786147117614746 1;
	setAttr ".i[1]" -type "matrix" 0.99999999999999989 -1.3402655263963996e-15 -2.8846573904027154e-17 0
		 0 1 0 0 0 0 1 0 -8.2564849853515625 -96.576309204101548 -2.0786147117614746 1;
createNode blendTwoAttr -n "LegSquashBA";
	rename -uid "7555901B-4D01-866B-A0A6-BCBA928019F0";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode setRange -n "LegStretchSR";
	rename -uid "78E21596-4337-E1C2-66D9-10B30472C85A";
	setAttr ".m" -type "float3" 1 1 1 ;
	setAttr ".om" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "LegSquashPowMD";
	rename -uid "D0640F42-4513-375A-EC25-4EBC563A7D74";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multDoubleLinear -n "LegUpSlideML";
	rename -uid "FD8C10A3-41D0-258E-3B61-C7A121303C94";
createNode blendTwoAttr -n "LegPVStretch1BA";
	rename -uid "B8D0609A-4239-F8E9-C7AA-76B3C8AEF7C8";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LegStretchDvMD";
	rename -uid "2FDC8917-40DA-1237-D828-0FBE4B9E5738";
	setAttr ".op" 2;
createNode condition -n "LegCD";
	rename -uid "6692A892-411B-10AD-68D1-BB97EA3A3D6A";
	setAttr ".op" 2;
createNode distanceBetween -n "LegAllDB";
	rename -uid "D66811EF-4830-0E7D-E731-408060005C55";
createNode addDoubleLinear -n "LegSumDistAL";
	rename -uid "6C39EE95-4547-8073-ED16-9AAA0738130F";
createNode distanceBetween -n "Leg1DB";
	rename -uid "7AD32397-43AA-764E-641C-F19D33A2FECF";
createNode distanceBetween -n "Leg2DB";
	rename -uid "7946E246-4FA0-9562-F007-58894A2E6628";
createNode blendTwoAttr -n "LegStretchBA";
	rename -uid "E09E35C7-4AEC-EBFB-2670-59B384162C48";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LegPvStretch1DvMD";
	rename -uid "6357EFBC-4241-3205-9754-B997D8ACF7FE";
	setAttr ".op" 2;
createNode distanceBetween -n "LegPVStretch1DB";
	rename -uid "35C35D4A-4816-C600-3F69-DCAEE2D1FBC5";
createNode addDoubleLinear -n "LegUpSlideAL";
	rename -uid "7F10C3DF-4C84-D80E-7AF7-E09A812D8883";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LegUpSlideFilterML";
	rename -uid "0E023901-477A-9604-9053-3D9D9273ABBC";
	setAttr ".i2" 0.1;
createNode pairBlend -n "Leg1DrvJntRotPB";
	rename -uid "BD766973-47DA-D8A5-519E-1F8937F8A9D5";
	setAttr ".ri" 1;
createNode blendColors -n "Leg1DrvJntTrsBC";
	rename -uid "E1AA4462-433D-D885-2932-6D97C15F6EFF";
createNode blendColors -n "Leg2DrvJntTrsBC";
	rename -uid "3C9D16D9-40BF-36CB-46DD-6BAC42EFB862";
createNode pairBlend -n "Leg2DrvJntRotPB";
	rename -uid "74CB5263-4642-D000-B925-6E9E2C79A0C2";
	setAttr ".ri" 1;
createNode blendColors -n "Leg3DrvJntTrsBC";
	rename -uid "61EE964D-4DA8-D54C-FA55-7A85213051F7";
createNode decomposeMatrix -n "Leg3AssiAPosDM";
	rename -uid "DCD5DA74-44C3-7AA6-5D7A-36B989975252";
createNode multMatrix -n "Leg3AssiAPosMM";
	rename -uid "386A9F9B-4086-8B4E-50A4-D78925F8A2F3";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020715 -0.9993731604419871 -0.035228389155903463 0
		 0.999993868979553 -0.0035017143379136922 1.353086426457635e-16 0 -0.0001233597554089707 -0.035228173169929246 0.9993792876568337 0
		 7.9493509817142742 8.8672356034800526 0.12258126262867826 1;
	setAttr ".i[1]" -type "matrix" 5.5128134073838285e-07 0.99999999999924172 -1.1008627727241221e-06 0
		 -0.44776579521410698 1.2311823425203983e-06 0.89415087800368598 0 0.89415087800436366 5.5511151231257827e-17 0.44776579521444643 0
		 4.2768209735396914 -7.9528629209488928 -8.8928923349305311 1;
createNode decomposeMatrix -n "Leg3TwistFixGrpDM";
	rename -uid "1B95A6F0-40B8-4BDD-74D9-65A9006E6BFD";
createNode multMatrix -n "Leg3TwistFixGrpMM";
	rename -uid "D8398D48-4B79-32CC-C0AC-BA91BAA79131";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823425941189e-06 -0.99999999999924238 1.3183898417423734e-16 0
		 0.99999999999924194 1.2311823427636187e-06 1.3482054014857248e-16 0 -1.338989683019598e-16 1.3183898417423734e-16 1.0000000000000002 0
		 7.9528505224948782 9.866608763922045 0.15780965178458173 1;
	setAttr ".i[1]" -type "matrix" 1.2311823428557471e-06 0.99999999999924205 -1.381435695146593e-16 -2.6469779601696886e-23
		 -0.99999999999924205 1.2311823425203983e-06 1.3183898417423734e-16 1.3877787807814457e-17
		 1.3877804296545615e-16 1.3392590249529741e-16 1.0000000000000002 -3.0814879110195774e-33
		 9.8665989725054359 -7.9528626700833422 -0.1578096517845822 0.99999999999999989;
createNode pairBlend -n "Leg3TwsitFixTgPosPB";
	rename -uid "6A4A452F-4E59-2F11-4C32-31B62035505C";
	setAttr ".w" 0.5;
createNode decomposeMatrix -n "Leg3TwsitFixTgPosDM";
	rename -uid "71397D62-4EF0-94E2-C9E9-829ED0A341A9";
createNode multMatrix -n "Leg3TwsitFixTgPosMM";
	rename -uid "668A8F14-46B1-7221-4CA6-6281832EDA05";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780602071 -0.9993731604419871 -0.035228389155903483 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.0001233597554088362 -0.03522817316992926 0.99937928765683381 0
		 7.9493509817142751 8.867235603480049 0.12258126262867816 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806017688 0.999993868979553 -0.00012335975540883018 0
		 -0.99937316044198654 -0.0035017143379137972 -0.035228173169929239 0 -0.03522838915590347 0 0.99937928765683337 0
		 8.8938146877964961 -7.9182517180305005 0.19085196644479679 1;
createNode decomposeMatrix -n "Leg3TwsitFixTgPosDM1";
	rename -uid "AB90EB65-43F0-9626-716F-BAA0D93C2712";
createNode multMatrix -n "Leg3TwsitFixTgPosMM1";
	rename -uid "8E76BE8E-41EF-F1F2-FF3F-DE9DBA00D6B0";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780602071 -0.9993731604419871 -0.035228389155903483 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.0001233597554088362 -0.03522817316992926 0.99937928765683381 0
		 7.9493509817142751 8.867235603480049 0.12258126262867816 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806017688 0.999993868979553 -0.00012335975540883018 0
		 -0.99937316044198654 -0.0035017143379137972 -0.035228173169929239 0 -0.03522838915590347 0 0.99937928765683337 0
		 8.8938146877964961 -7.9182517180305005 0.19085196644479679 1;
createNode decomposeMatrix -n "Leg2TwistFixGrpDM";
	rename -uid "4862BEDD-4BFD-6AA7-4376-C890B4250AF4";
createNode multMatrix -n "Leg2TwistFixGrpMM";
	rename -uid "AA728936-4357-98D7-CD37-0DAB5851C782";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020702 -0.99937316044198687 -0.035228389155903476 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.00012335975540883617 -0.035228173169929253 0.99937928765683359 0
		 8.1046356547272165 53.212292331310358 1.6857660442348703 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode unitConversion -n "unitConversion85";
	rename -uid "A40F61F6-4EF6-3DC7-4C02-978ECAC13B8D";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "Leg2TwsitFixTgPosPB";
	rename -uid "F206C68D-42D6-0E4E-D52F-309156074C3F";
	setAttr ".w" 0.5;
createNode decomposeMatrix -n "Leg2TwsitFixTgPosDM";
	rename -uid "BF9CF5D2-4663-261D-C0DE-DB9599E0343F";
createNode multMatrix -n "Leg2TwsitFixTgPosMM";
	rename -uid "955D876B-4912-4896-33FC-D392B1999C84";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.1011340840739017 52.212339494723693 1.6767071477632889 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533148843 0.99999386897955322 -3.172166766019375e-05 1.3552527156068805e-20
		 -0.99995283658664469 -0.0035017143379138804 -0.0090588409313016524 3.4694469519536142e-18
		 -0.0090588964715811408 -2.1684043449710089e-19 0.9999589673555197 2.7105054312137611e-20
		 52.253432792405974 -7.9182517180304899 -1.2033980884180904 0.99999999999999989;
createNode decomposeMatrix -n "Leg2TwsitFixTgPosDM1";
	rename -uid "7BD5AFD8-43B8-509C-8085-2B8D8ACC6AEC";
createNode multMatrix -n "Leg2TwsitFixTgPosMM1";
	rename -uid "05C897E0-41AB-BFC7-9E0A-E482183504E2";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.1011340840739017 52.212339494723693 1.6767071477632889 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533148843 0.99999386897955322 -3.172166766019375e-05 1.3552527156068805e-20
		 -0.99995283658664469 -0.0035017143379138804 -0.0090588409313016524 3.4694469519536142e-18
		 -0.0090588964715811408 -2.1684043449710089e-19 0.9999589673555197 2.7105054312137611e-20
		 52.253432792405974 -7.9182517180304899 -1.2033980884180904 0.99999999999999989;
createNode multDoubleLinear -n "LegUpTxML";
	rename -uid "6B183A00-49E9-112C-E748-6E8B1A6F9970";
createNode multDoubleLinear -n "LegDnTxML";
	rename -uid "48A1C702-4B41-BFDE-9B5C-FDBF20BCE2F8";
createNode multDoubleLinear -n "LegDnSlideML";
	rename -uid "174DF439-499F-A9E3-8D30-14B3626FE77A";
createNode blendTwoAttr -n "LegPVStretch2BA";
	rename -uid "4A60FF70-4A74-35A2-FE77-558658435EBE";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "LegsPvStretch2DvMD";
	rename -uid "6C9F1ED2-4BEE-6961-2074-7C9F91F042B8";
	setAttr ".op" 2;
createNode distanceBetween -n "LegPVStretch2DB";
	rename -uid "5C4EB762-43B5-AADA-C23B-CFAFCABD3832";
createNode addDoubleLinear -n "LegDnSlideAL";
	rename -uid "CADE20DC-47ED-80E9-1CC5-7088390C5BB0";
	setAttr ".i2" 1;
createNode multDoubleLinear -n "LegDnSlideFilterML";
	rename -uid "80A76471-49F2-115B-772C-08A12890907A";
	setAttr ".i2" 0.1;
createNode quatToEuler -n "Leg3IKJntQE";
	rename -uid "2623A8D5-4B96-44EA-B4DD-B4A102F94C03";
	setAttr ".ort" -type "double3" -4.9575708092774887e-07 -0.00014152490733516511 
		6.1623442247123942e-13 ;
createNode quatProd -n "Leg3IKJntQP";
	rename -uid "43689C66-4AF5-1E17-0D85-CAB4E70634D8";
createNode decomposeMatrix -n "Leg3IKJntDM";
	rename -uid "3BF25AF1-444C-A989-CCB8-069538F296FD";
createNode multMatrix -n "Leg3IKJntMM";
	rename -uid "7E63AA67-4F89-2A31-CB91-40A30AA22215";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823424900525e-06 -0.99999999999924216 -1.3877787807814457e-17 0
		 0.99999999999924194 1.2311823426600232e-06 -5.8275866771095863e-18 0 6.7220534694101275e-18 -6.9388939039072284e-18 0.99999999999999989 0
		 7.952850773357155 9.8666114249000714 0.15780977954862974 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode quatInvert -n "Leg3IKJntQI";
	rename -uid "F8D4196E-4074-9DB7-5220-6A8F6110AED7";
createNode eulerToQuat -n "Leg3IKJntEQ";
	rename -uid "1D50083A-4197-3020-9199-91AF0E957C96";
createNode decomposeMatrix -n "Leg1FKJntDM";
	rename -uid "9512FDA4-49B0-C238-7D0C-F6AD7C1DEDDC";
createNode multMatrix -n "Leg1FKJntMM";
	rename -uid "D10A2E05-4111-367B-07C3-FA9C61925034";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.2564852252189773 96.576308725247912 2.0786147734317151 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533146214 0.99999386897955322 -3.1721667660217352e-05 0
		 -0.99995283658664502 -0.0035017143379138527 -0.0090588409313016472 0 -0.009058896471581146 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494479280164 -7.9182519595732481 -1.2033981544160492 1;
createNode quatToEuler -n "Leg1FKJntQE";
	rename -uid "19357C41-4402-7E1A-AB61-04AD662BB6B1";
	setAttr ".ort" -type "double3" 0 -5.466578358765419e-16 0 ;
createNode quatProd -n "Leg1FKJntQP";
	rename -uid "8EB5ECA4-40FC-2F20-3010-7C80A3AA7DC4";
createNode quatInvert -n "Leg1FKJntQI";
	rename -uid "268F5B3F-47DD-CF6E-D6DB-F883A3C5D283";
createNode eulerToQuat -n "Leg1FKJntEQ";
	rename -uid "D73D0A41-45DC-A713-B1B1-938E8BFC374F";
createNode decomposeMatrix -n "Leg2FKJntDM";
	rename -uid "CBCB269D-46AF-5580-0B8E-0D92E51348C7";
createNode multMatrix -n "Leg2FKJntMM";
	rename -uid "43ADECBC-4A3C-D48A-7238-D2822989C5CC";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020702 -0.99937316044198687 -0.035228389155903483 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.0001233597554088362 -0.03522817316992926 0.99937928765683359 0
		 8.1046359005558468 53.212293554816618 1.6857661213273398 1;
	setAttr ".i[1]" -type "matrix" -0.0034995407806006004 0.999993868979553 -0.0001233597554088066 0
		 -0.99937316044198687 -0.0035017143379133253 -0.035228173169929253 0 -0.035228389155903483 5.2041704279304213e-18 0.99937928765683381 0
		 53.266687313037714 -7.9182519595732721 0.19085193253242025 1;
createNode quatToEuler -n "Leg2FKJntQE";
	rename -uid "F24A5C72-4300-4EA1-EE5D-D188918D28AE";
	setAttr ".ort" -type "double3" 0 -7.9513867036587919e-16 0 ;
createNode quatProd -n "Leg2FKJntQP";
	rename -uid "484F03FA-4F4A-C736-B361-579DCC0FA449";
createNode quatInvert -n "Leg2FKJntQI";
	rename -uid "84183090-4967-92A8-D410-2B8BEE150CAD";
createNode eulerToQuat -n "Leg2FKJntEQ";
	rename -uid "D4A2CF07-400F-7ABE-1622-80A06C7234ED";
createNode decomposeMatrix -n "Leg3FKJntDM";
	rename -uid "8A8943C2-459B-41FF-AC35-12B52C96A20B";
createNode multMatrix -n "Leg3FKJntMM";
	rename -uid "427FDFCA-458B-10F7-2468-AB881D8E8C94";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823424900525e-06 -0.99999999999924216 -1.3877787807814457e-17 0
		 0.99999999999924194 1.2311823426600232e-06 -5.8275866771095863e-18 0 6.7220534694101275e-18 -6.9388939039072284e-18 0.99999999999999989 0
		 7.9528507733571514 9.8666114249000714 0.15780977954862974 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode quatToEuler -n "Leg3FKJntQE";
	rename -uid "D81D5E10-409E-CE72-1A88-52AD76F6B644";
	setAttr ".ort" -type "double3" -7.066173730790531e-16 3.9880916112407085e-16 -8.4497230249103e-14 ;
createNode quatProd -n "Leg3FKJntQP";
	rename -uid "539FE3BA-4C6B-D1BC-9E44-AF84BC6A315D";
createNode quatInvert -n "Leg3FKJntQI";
	rename -uid "CCEFCC64-471E-46A3-E95A-999EF949D66E";
createNode eulerToQuat -n "Leg3FKJntEQ";
	rename -uid "0EE01DD3-496B-92A3-1A70-C6865B6D9125";
createNode multDoubleLinear -n "LegUpIK1CrvPointMD";
	rename -uid "553BA7AE-4ECA-83B8-D246-4AAC27AE0AB4";
	setAttr ".i2" 10.841515115466635;
createNode multiplyDivide -n "LegUpIK1DvdMD";
	rename -uid "E0411FEA-4ACA-4205-EAFE-E59313AEA00A";
	setAttr ".op" 2;
createNode distanceBetween -n "LegUpIK1DB";
	rename -uid "9A95EF82-4947-3987-EC9F-ABB03CBDD334";
createNode pointOnCurveInfo -n "LegUpIK1PC";
	rename -uid "4AD1ED16-45EA-6C34-7F95-F789AA79B869";
createNode pointOnCurveInfo -n "LegUpIK2PC";
	rename -uid "CCD1D6D4-40E5-ACE4-8F42-E8BDEF4D9209";
	setAttr ".pr" 0.2500000000000005;
createNode distanceBetween -n "LegUpIK1ChkDB";
	rename -uid "34C902C2-4757-1B83-AA95-66903DE20543";
createNode pointOnCurveInfo -n "LegUpIK1ChkPC";
	rename -uid "49A41EFA-43C9-D3E3-C7D5-199B98FC709C";
createNode pointOnCurveInfo -n "LegUpIK2ChkPC";
	rename -uid "E1F96889-43C2-69AF-3FCF-C893BBE1703C";
	setAttr ".pr" 0.2500000000000005;
createNode multDoubleLinear -n "LegUpIK2CrvPointMD";
	rename -uid "F1126693-43E3-409E-3903-BC98CB1DFA30";
	setAttr ".i2" 10.841515115466592;
createNode multiplyDivide -n "LegUpIK2DvdMD";
	rename -uid "3C1BC70E-43AF-66CF-4130-CA8D5CE863B1";
	setAttr ".op" 2;
createNode distanceBetween -n "LegUpIK2DB";
	rename -uid "3CBF8FA9-4670-DBC5-BA33-B2A77ED6E5A0";
createNode pointOnCurveInfo -n "LegUpIK3PC";
	rename -uid "09D33088-40A3-9E03-D739-3EAF8DE43322";
	setAttr ".pr" 0.5;
createNode distanceBetween -n "LegUpIK2ChkDB";
	rename -uid "165C202A-47EB-317A-E3C4-23B19732E76E";
createNode pointOnCurveInfo -n "LegUpIK3ChkPC";
	rename -uid "89F76615-4769-908A-D9F7-FBB7171D0173";
	setAttr ".pr" 0.5;
createNode multDoubleLinear -n "LegUpIK3CrvPointMD";
	rename -uid "4463D467-4340-BE0E-D137-629F0BB294BB";
	setAttr ".i2" 10.841515115466621;
createNode multiplyDivide -n "LegUpIK3DvdMD";
	rename -uid "E957FF34-4276-EFDA-9788-708551A3073F";
	setAttr ".op" 2;
createNode distanceBetween -n "LegUpIK3DB";
	rename -uid "B1500B4B-4ADE-A157-A638-408BDDCEAA2E";
createNode pointOnCurveInfo -n "LegUpIK4PC";
	rename -uid "09E18DA7-4583-C6C0-9D0A-64B26DB216E3";
	setAttr ".pr" 0.75000000000000011;
createNode distanceBetween -n "LegUpIK3ChkDB";
	rename -uid "2CF4141A-43A6-C7D4-96FB-C38980E1725D";
createNode pointOnCurveInfo -n "LegUpIK4ChkPC";
	rename -uid "674DFA35-48D6-EA88-E1E0-A0AA2AC5A211";
	setAttr ".pr" 0.75000000000000011;
createNode multDoubleLinear -n "LegUpIK4CrvPointMD";
	rename -uid "F8C5C34E-488D-8BB3-16A7-BC97FE46DB3F";
	setAttr ".i2" 10.841515115466606;
createNode multiplyDivide -n "LegUpIK4DvdMD";
	rename -uid "24E5B764-4370-0CEB-C89F-4D95460249AC";
	setAttr ".op" 2;
createNode distanceBetween -n "LegUpIK4DB";
	rename -uid "BD30646F-4E69-244C-E8E1-52B330D463B9";
createNode pointOnCurveInfo -n "LegUpIK5PC";
	rename -uid "11BC109C-49EF-2709-61D7-F09F65EC6601";
	setAttr ".pr" 1;
createNode distanceBetween -n "LegUpIK4ChkDB";
	rename -uid "3FD9755B-40BC-25C2-6F65-5AA2760C482B";
createNode pointOnCurveInfo -n "LegUpIK5ChkPC";
	rename -uid "DE645BFA-4B48-F831-1091-159D83F0557D";
	setAttr ".pr" 1;
createNode multDoubleLinear -n "LegDnIK1CrvPointMD";
	rename -uid "4FB0B957-4D47-F308-1A48-36BEE5216A6E";
	setAttr ".i2" 10.843217490138095;
createNode multiplyDivide -n "LegDnIK1DvdMD";
	rename -uid "66E19E70-428C-1088-752D-9088FCAE4767";
	setAttr ".op" 2;
createNode distanceBetween -n "LegDnIK1DB";
	rename -uid "A25CDD24-4E67-BD1E-4A0A-648A189EF41A";
createNode pointOnCurveInfo -n "LegDnIK1PC";
	rename -uid "E1184E01-4315-0C95-12AE-56A718BD8D22";
createNode pointOnCurveInfo -n "LegDnIK2PC";
	rename -uid "D1828DDC-47A5-749D-FC9F-FE954602DE2B";
	setAttr ".pr" 0.25000000000000022;
createNode distanceBetween -n "LegDnIK1ChkDB";
	rename -uid "B7A9BC3D-4DFA-E6AB-51B6-D2B839D73DD1";
createNode pointOnCurveInfo -n "LegDnIK1ChkPC";
	rename -uid "E8D4446F-4AB7-19B8-8C29-828D3E7921BE";
createNode pointOnCurveInfo -n "LegDnIK2ChkPC";
	rename -uid "721DACF1-40DB-9EAE-EEAF-939EC652172F";
	setAttr ".pr" 0.25000000000000022;
createNode multDoubleLinear -n "LegDnIK2CrvPointMD";
	rename -uid "5A4DB2CB-4E4F-A435-666E-C5A0C50C251F";
	setAttr ".i2" 10.843217490138066;
createNode multiplyDivide -n "LegDnIK2DvdMD";
	rename -uid "EDCC44D1-4071-4C19-C0A6-758A6496B7E8";
	setAttr ".op" 2;
createNode distanceBetween -n "LegDnIK2DB";
	rename -uid "7BDF4F50-4662-A471-7245-D480C511F434";
createNode pointOnCurveInfo -n "LegDnIK3PC";
	rename -uid "D45E2753-4754-E1E9-5BFC-5B867E235C09";
	setAttr ".pr" 0.49999999999999983;
createNode distanceBetween -n "LegDnIK2ChkDB";
	rename -uid "BC678BED-4E27-8448-DEE8-859C4AAA6DE5";
createNode pointOnCurveInfo -n "LegDnIK3ChkPC";
	rename -uid "07965DAF-4F77-B63B-1296-DEB43A1F8BE8";
	setAttr ".pr" 0.49999999999999983;
createNode multDoubleLinear -n "LegDnIK3CrvPointMD";
	rename -uid "85985B00-401B-6187-BB31-F5B728C8A6C8";
	setAttr ".i2" 10.843217490138084;
createNode multiplyDivide -n "LegDnIK3DvdMD";
	rename -uid "DA2236CB-4D81-6A17-0C73-1983143C8B0E";
	setAttr ".op" 2;
createNode distanceBetween -n "LegDnIK3DB";
	rename -uid "1ADE8AD3-4FE7-6166-DA63-158BCB29C770";
createNode pointOnCurveInfo -n "LegDnIK4PC";
	rename -uid "57BBD0F3-4732-917D-390B-69A5872FC071";
	setAttr ".pr" 0.74999999999999989;
createNode distanceBetween -n "LegDnIK3ChkDB";
	rename -uid "98CF43D7-4371-3628-4758-AC8A8615BE96";
createNode pointOnCurveInfo -n "LegDnIK4ChkPC";
	rename -uid "969F5B85-456B-994D-ADAF-80B0F1D0DAF5";
	setAttr ".pr" 0.74999999999999989;
createNode multDoubleLinear -n "LegDnIK4CrvPointMD";
	rename -uid "E87795E1-42FF-E91F-5C07-3CA39CA0DC75";
	setAttr ".i2" 10.843217490138091;
createNode multiplyDivide -n "LegDnIK4DvdMD";
	rename -uid "D6CF62C3-4D17-CB4C-56EE-37ACF30BFA00";
	setAttr ".op" 2;
createNode distanceBetween -n "LegDnIK4DB";
	rename -uid "688C91BD-42E8-E5DC-B670-288EC67C887E";
createNode pointOnCurveInfo -n "LegDnIK5PC";
	rename -uid "B3F15F98-475A-6DB5-382D-0C9175C05CB2";
	setAttr ".pr" 1;
createNode distanceBetween -n "LegDnIK4ChkDB";
	rename -uid "21F113F3-47F2-718E-BFD0-CEA9A0E8E835";
createNode pointOnCurveInfo -n "LegDnIK5ChkPC";
	rename -uid "ADAD27BA-4B3F-D561-7859-FEB328C940F9";
	setAttr ".pr" 1;
createNode decomposeMatrix -n "Leg1TwistFixGrpDM";
	rename -uid "F597CFB2-4A77-B2C2-6C33-BA9E096B5C23";
createNode multMatrix -n "Leg1TwistFixGrpMM";
	rename -uid "7EBEB55C-4D56-4BFB-37AE-0989EB3035C9";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.2564849853515625 96.576309204101563 2.0786147117614746 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533121529 0.99999386897955322 -3.1721667660179662e-05 0
		 -0.99995283658664502 -0.0035017143379138388 -0.0090588409313016455 0 -0.0090588964715811425 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494956712643 -7.9182517180304961 -1.2033980884180897 1;
createNode unitConversion -n "unitConversion84";
	rename -uid "AD916E04-4C21-E3B4-7897-E18E51EAB754";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUA -n "Leg1TwistFixUpvec_rotateZ";
	rename -uid "DAEA5FB6-40F4-CA91-6AAD-369FAA79EC65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LegtwistFixVectorProduct";
	rename -uid "22A3A165-41C6-5839-B90B-22B6687D31BF";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "Leg1TwsitFixTgPosDM";
	rename -uid "60A4B0E6-4AAC-0694-FA5E-A59672930F00";
createNode multMatrix -n "Leg1TwsitFixTgPosMM";
	rename -uid "46E6A957-4DAE-BEF5-7282-DABADE0DF2BE";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0034995407806020702 -0.99937316044198687 -0.035228389155903476 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -0.00012335975540883617 -0.035228173169929253 0.99937928765683359 0
		 8.1046356547272165 53.212292331310358 1.6857660442348703 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "FD22467F-42BB-B32B-0403-659869133005";
createNode decomposeMatrix -n "LegIKhDM";
	rename -uid "95F5A6DD-4A27-4FC9-8C4B-44A88E34C6F5";
createNode multMatrix -n "LegIKhMM";
	rename -uid "760ED076-4D64-008E-F106-5986F187717F";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.952850773357155 9.8666114249000714 0.15780977954862974 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode decomposeMatrix -n "LegPVSysGrpDM";
	rename -uid "CD373CC4-40AA-3E60-6CA5-F786CED27346";
createNode multMatrix -n "LegPVSysGrpMM";
	rename -uid "106DCF55-41FB-3812-23D6-88943853B20D";
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" -0.003501570653314356 -0.99995283658664458 -0.009058896471581139 0
		 0.99999386897955289 -0.0035017143379136857 0 0 -3.1721667660213747e-05 -0.0090588409313016455 0.99995896735551948 0
		 8.2564852252189773 96.576308725247912 2.0786147734317151 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533146214 0.99999386897955322 -3.1721667660217345e-05 0
		 -0.99995283658664502 -0.0035017143379138527 -0.0090588409313016455 0 -0.0090588964715811425 9.7578195523695399e-19 0.9999589673555197 0
		 96.619494479280164 -7.9182519595732481 -1.2033981544160495 1;
createNode unitConversion -n "unitConversion80";
	rename -uid "09B665B8-4E28-0A6F-2541-838E6F802ED9";
	setAttr ".cf" 0.017453292519943295;
createNode multDoubleLinear -n "LegTwistRvsML";
	rename -uid "7F95E7D0-4088-AC9D-A1D2-60B859C82FC6";
	setAttr ".i2" -1;
createNode animCurveUA -n "LegPVUpvec_rotateZ";
	rename -uid "33673339-4C87-95CB-D522-9391482DF26E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -90 0 0 1 90;
createNode vectorProduct -n "LegPVVP";
	rename -uid "39BEA9EB-4FFB-A98D-AD22-C9BEAF628D91";
	setAttr ".i2" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
createNode decomposeMatrix -n "LegPVTgPosDM";
	rename -uid "69581AF5-49A0-F4EB-DC93-82B6128C3173";
createNode multMatrix -n "LegPVTgPosMM";
	rename -uid "EA4F75E1-478C-B3FC-6444-0FB0060EBF56";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427425593e-06 -0.99999999999924205 -3.4694469519536142e-18 0
		 0.99999999999924194 1.2311823429128094e-06 1.5382118322138094e-18 0 -6.2341624917916505e-19 -1.7347234759768071e-18 0.99999999999999989 0
		 7.952850773357155 9.8666114249000998 0.1578097795486304 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode decomposeMatrix -n "LegIKMovePosDM";
	rename -uid "0CF4C28B-46B2-81D1-3EC6-41BB9B91F384";
createNode multMatrix -n "LegIKMovePosMM";
	rename -uid "06A6DF29-4F54-A32A-6327-7CA482CF35DD";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000998 0.15780977954863018 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161931e-06 0.99999999999924205 1.3205309822143547e-18 0
		 -0.99999999999924216 1.2311823427424429e-06 0 0 0 0 1 0 9.8666016334831763 -7.9528629209488964 -0.15780977954863018 1;
createNode decomposeMatrix -n "LegPVStretchPosDM";
	rename -uid "DCF53C0D-4758-000A-75EB-58AF7978AC32";
createNode multMatrix -n "LegPVStretchPosMM";
	rename -uid "BFB74CE8-44EF-812F-3FEB-48B5A8CD74F4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 0.99999386897955311 -0.0035017143379137993 -3.3881317890172014e-21 0
		 0.0035015706533142997 0.99995283658664469 0.0090588964715811199 0 -3.1721667660212331e-05 -0.0090588409313016264 0.99995896735551959 0
		 8.1046355833391708 53.21220296640729 1.695765711000895 1;
	setAttr ".i[1]" -type "matrix" 0.99999386897955322 0.0035015706533154953 -3.1721667660226818e-05 0
		 -0.0035017143379137416 0.99995283658664502 -0.0090588409313016247 0 4.3368086899420177e-19 0.0090588964715811269 0.99995896735551981 0
		 -7.918251959573249 -53.253434017413703 -1.2133981544160517 1;
createNode decomposeMatrix -n "Leg1ArcPosDM";
	rename -uid "B7027DA5-4135-52DC-B084-D9B676E1E6C0";
createNode multMatrix -n "Leg1ArcPosMM";
	rename -uid "2FCE82A6-4F91-D97E-A14B-1D965725FA3D";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.0035015706533143565 -0.99995283658664469 -0.0090588964715811425 0
		 0.999993868979553 -0.0035017143379136861 8.6736173798840355e-19 0 -3.1721667660212886e-05 -0.0090588409313016489 0.99995896735551959 0
		 8.2564849853515625 96.576309204101563 2.0786147117614746 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533121529 0.99999386897955322 -3.1721667660179662e-05 0
		 -0.99995283658664502 -0.0035017143379138388 -0.0090588409313016455 0 -0.0090588964715811425 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494956712643 -7.9182517180304961 -1.2033980884180897 1;
createNode decomposeMatrix -n "Leg2ArcPosDM";
	rename -uid "E0EAB7FC-40FE-B94F-C5A9-96A44408C6D2";
createNode multMatrix -n "Leg2ArcPosMM";
	rename -uid "D479E74D-4BC8-6E0B-B019-D28777F09314";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -0.003499540780601551 -0.99937316044198687 -0.035228389155903476 0
		 0.99999386897955311 -0.0035017143379134641 -3.4694469519536142e-18 0 -0.00012335975540882227 -0.035228173169929253 0.99937928765683359 0
		 8.1046356547272165 53.212292331310373 1.6857660442348701 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode decomposeMatrix -n "Leg3ArcPosDM";
	rename -uid "96CC7570-4EA0-6586-FCF9-D6A5494FA50E";
createNode multMatrix -n "Leg3ArcPosMM";
	rename -uid "75D5FD63-41B0-B141-1FF1-9EA2DB10DD30";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.9528505224948782 9.8666087639220521 0.15780965178458195 1;
	setAttr ".i[1]" -type "matrix" 1.2311823428557471e-06 0.99999999999924205 -1.381435695146593e-16 -2.6469779601696886e-23
		 -0.99999999999924205 1.2311823425203983e-06 1.3183898417423734e-16 1.3877787807814457e-17
		 1.3877804296545615e-16 1.3392590249529741e-16 1.0000000000000002 -3.0814879110195774e-33
		 9.8665989725054359 -7.9528626700833422 -0.1578096517845822 0.99999999999999989;
createNode distanceBetween -n "LegDnArcDB";
	rename -uid "3B4541BF-4418-BD08-EA36-B781590F55C5";
createNode multDoubleLinear -n "LegArcDistMultML";
	rename -uid "6E80C3C4-44BC-F347-9550-CFAE0848A3A4";
	setAttr ".i2" 3;
createNode addDoubleLinear -n "LegArcDistSumALAL";
	rename -uid "E3344A77-42CE-CC95-635F-02BD6F536F4A";
createNode distanceBetween -n "LegUpArcDB";
	rename -uid "251E64A9-4D65-A3A5-6338-1290C951B41E";
createNode rebuildCurve -n "LegUpArcCrvRC";
	rename -uid "FA4D2813-4DDD-D05B-28D8-878CF503202B";
	setAttr ".s" 2;
	setAttr ".kr" 0;
createNode detachCurve -n "LeftLegArcDC";
	rename -uid "05F89675-43DB-ED83-557B-9CA964106AF1";
	setAttr -s 2 ".oc";
createNode makeThreePointCircularArc -n "LegTPC";
	rename -uid "E1DA897D-4AF4-C743-F9B6-4CBCBE76F158";
	setAttr ".s" 10;
createNode setRange -n "LegAngleSR";
	rename -uid "F865DA98-490F-78E7-28FA-1AB66482BF6B";
createNode addDoubleLinear -n "LegAngleAL";
	rename -uid "46F03F3F-44BB-9285-5B13-59BDA7C9FDCD";
createNode unitConversion -n "unitConversion81";
	rename -uid "4414BA95-451A-F703-C4E9-EF80C0FC4234";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LegOutAG";
	rename -uid "881CC999-4357-DB48-217F-C7836A190732";
createNode plusMinusAverage -n "LegVec3ToArcPA";
	rename -uid "DA2CA1E6-4144-5281-2D55-93A15595B424";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "LegVec3To1PA";
	rename -uid "D35CFDFB-4EAC-7C96-1A95-C0903D07297E";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion82";
	rename -uid "2CB9EA51-4691-D534-0D48-A1990FE09276";
	setAttr ".cf" 57.295779513082323;
createNode angleBetween -n "LegInAG";
	rename -uid "20AB3598-4EDD-FCDA-48A1-F4820D571E8F";
createNode plusMinusAverage -n "LegVecArcTo1PA";
	rename -uid "FFB4BB8F-4523-B9C4-BA01-F895CA8D2105";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion83";
	rename -uid "C45CCE9F-40CA-B48D-F4C7-FD90A99E9772";
	setAttr ".cf" 57.295779513082323;
createNode rebuildCurve -n "LegDnArcCrvRC";
	rename -uid "D3984D5E-44F8-CBCD-564B-18A1CE1512CB";
	setAttr ".s" 2;
	setAttr ".kr" 0;
createNode decomposeMatrix -n "LegUpIKChkCrvDM";
	rename -uid "ADF2847F-4922-23B2-E8A6-8AA7E93D0F38";
createNode multMatrix -n "LegUpIKChkCrvMM";
	rename -uid "90D3309E-470A-DCAD-8EE1-3582B48AE5E4";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.0035015706533121529 0.99999386897955322 -3.1721667660179662e-05 0
		 -0.99995283658664502 -0.0035017143379138388 -0.0090588409313016455 0 -0.0090588964715811425 1.0842021724855044e-19 0.9999589673555197 0
		 96.619494956712643 -7.9182517180304961 -1.2033980884180897 1;
createNode decomposeMatrix -n "LegDnIKChkCrvDM";
	rename -uid "C8830AAD-44D7-E236-FBD7-C39F50F0B7C2";
createNode multMatrix -n "LegDnIKChkCrvMM";
	rename -uid "0B2D417D-4DF0-F0D0-CD6B-3B871ABCFB8B";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i[1]" -type "matrix" -0.003499540780602624 0.99999386897955334 -0.00012335975540888033 0
		 -0.99937316044198699 -0.0035017143379138527 -0.035228173169929253 0 -0.035228389155903483 0 0.99937928765683359 0
		 53.266686086722309 -7.9182517180304908 0.19085196644482255 1;
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "F9ACC87A-455F-560B-9F84-F09039F86646";
createNode decomposeMatrix -n "AnkleConsGrpDM";
	rename -uid "E4114E92-4038-7CD8-5DED-3EA30AB43B00";
createNode multMatrix -n "AnkleConsGrpMM";
	rename -uid "33FCA13B-4E36-F819-0FD3-F3966F43B869";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823427424429e-06 -0.99999999999924216 0 0 0.99999999999924216 1.2311823427424429e-06 0 0
		 0 0 1 0 7.9528505224948782 9.8666087639220521 0.15780965178458195 1;
	setAttr ".i[1]" -type "matrix" 1.2311823428557471e-06 0.99999999999924205 -1.381435695146593e-16 -2.6469779601696886e-23
		 -0.99999999999924205 1.2311823425203983e-06 1.3183898417423734e-16 1.3877787807814457e-17
		 1.3877804296545615e-16 1.3392590249529741e-16 1.0000000000000002 -3.0814879110195774e-33
		 9.8665989725054359 -7.9528626700833422 -0.1578096517845822 0.99999999999999989;
createNode blendColors -n "AnkleFKScaleBC";
	rename -uid "DB984900-42B1-8DB1-9857-DCB358E7E3A2";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "AnkleIKScaleBC";
	rename -uid "89E71396-47D3-10E3-D040-C08DD7047A09";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode decomposeMatrix -n "AnkleIKJntGrpDM";
	rename -uid "C6593258-4227-295E-C0E8-F2BAA5D8C1DC";
createNode multMatrix -n "AnkleIKJntGrpMM";
	rename -uid "2D6C37F9-48AD-2DB6-D500-47A7CBC72469";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.2311823425203985e-06 -0.99999999999924238 0 0 0.99999999999924238 1.2311823425203985e-06 0 0
		 0 0 1 0 7.952850773357155 9.8666114249000714 0.15780977954862979 1;
	setAttr ".i[1]" -type "matrix" 1.2311823427161895e-06 0.99999999999924227 4.7900441086169731e-18 0
		 -0.99999999999924205 1.2311823425203983e-06 -1.7347234759768071e-17 0 -6.9389021799755108e-18 -6.7220449263613834e-18 1.0000000000000002 0
		 9.8666016334831461 -7.9528629209488964 -0.15780977954862968 1;
createNode decomposeMatrix -n "BallIKCtrlPrtGrpDM";
	rename -uid "160F9DD7-4F9F-5BC9-87A5-E6A5980363D2";
createNode multMatrix -n "BallIKCtrlPrtGrpMM";
	rename -uid "AC497FCE-4E43-05CF-D67E-1E89326A6AA1";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 5.5128134065263114e-07 -0.44776579521410714 0.89415087800436366 0
		 0.99999999999924238 1.2311823425203985e-06 0 0 -1.1008627725480834e-06 0.8941508780036862 0.44776579521444637 0
		 7.952850773357155 9.866611424900114 0.15780977954863062 1;
	setAttr ".i[1]" -type "matrix" 5.51281340619675e-07 0.99999999999924172 -1.1008627724772899e-06 0
		 -0.44776579521410692 1.231182342409376e-06 0.89415087800368587 0 0.89415087800436377 -5.5511151231257827e-17 0.44776579521444643 0
		 4.2768209735396727 -7.9528629209488919 -8.892892334930492 1;
createNode decomposeMatrix -n "BallIKCtrlGrpDM";
	rename -uid "ED314D64-4A91-2A37-FCEC-18A073EAAE8B";
createNode multMatrix -n "BallIKCtrlGrpMM";
	rename -uid "8F529E00-4460-4160-0F27-59AF3CA15909";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" 1.0587911840678754e-22 -2.2204460492503131e-16 1 0
		 0.99999999999924227 1.2311823425203983e-06 0 0 -1.2311823425203981e-06 0.99999999999924205 2.2204460492503131e-16 0
		 7.9528590668955195 3.1303717130773263 13.609517607959539 1;
	setAttr ".i[1]" -type "matrix" -3.7773999505995417e-16 0.99999999999924172 -1.2311823424407499e-06 0
		 2.7755555102713874e-16 1.2311823425203976e-06 0.99999999999924183 0 1 0 -2.7755575615628914e-16 0
		 -13.609517607959541 -7.9528629209478687 -3.1303619216552994 1;
createNode decomposeMatrix -n "BallFKJntDM";
	rename -uid "59F17088-42B1-4F8D-E072-86893D7E9446";
createNode multMatrix -n "BallFKJntMM";
	rename -uid "46136042-403A-F86B-DC6D-DCA22C120CCA";
	setAttr -s 4 ".i";
	setAttr ".i[0]" -type "matrix" -3.1763735522036263e-22 2.7755575615628914e-16 1 0
		 0.99999999999924238 1.2311823425203985e-06 0 0 -1.2311823425203985e-06 0.99999999999924238 -2.7755575615628914e-16 0
		 7.9528590668955221 3.1303717130773299 13.609517607959541 1;
	setAttr ".i[1]" -type "matrix" 1.3220899827098495e-14 0.99999999999924216 -1.2311821904319823e-06 0
		 1.6210841920564715e-20 1.2311821905863771e-06 0.99999999999924194 0 0.99999999999999978 -1.3433698597964394e-14 -2.7755575615628914e-17 0
		 -13.609517607959644 -7.9528629209472133 -3.1303619216565117 1;
createNode quatToEuler -n "BallFKJntQE";
	rename -uid "4ED6151A-41D0-B936-3FCA-9A92049FD622";
createNode quatProd -n "BallFKJntQP";
	rename -uid "0A4155A0-4C6B-65CC-02EE-22AA1E972342";
createNode quatInvert -n "BallFKJntQI";
	rename -uid "49F601CE-4721-C9B8-7A6E-2FA372C2C596";
createNode eulerToQuat -n "BallFKJntEQ";
	rename -uid "477A85C7-476D-47FA-7953-08A483DEA4BA";
createNode blendColors -n "AnkleDrvJntTrsBC";
	rename -uid "D7AC77F8-49F1-FD56-D81E-F48F7F86A659";
createNode pairBlend -n "AnkleDrvJntRotPB";
	rename -uid "28CF2BF4-4B63-7951-EB00-4FAEE705337A";
	setAttr ".ri" 1;
createNode blendColors -n "BallDrvJntTrsBC";
	rename -uid "26CB27F5-4F8A-48B6-58C1-7AA7947CFC02";
createNode decomposeMatrix -n "BallTrsDM";
	rename -uid "80314611-4EB5-0ED7-33A0-73A56588479E";
createNode multMatrix -n "BallTrsMM";
	rename -uid "70B0DE56-4186-B07B-0161-E98D58EA6CB3";
	setAttr -s 2 ".i";
createNode pairBlend -n "BallDrvJntRotPB";
	rename -uid "90FF3DE1-4698-65BC-443F-1AA10F516249";
	setAttr ".ri" 1;
createNode decomposeMatrix -n "BallRotDM";
	rename -uid "7693E498-4F4A-8D21-DE27-AF939B3A3175";
createNode multMatrix -n "BallRotMM";
	rename -uid "91AC2461-4F42-7045-6592-A9AF0E5FB4FD";
	setAttr -s 3 ".i";
createNode inverseMatrix -n "BallIKJntOrIM";
	rename -uid "604246E1-4BB1-AD04-0FA7-E2A5464663D5";
	setAttr ".omat" -type "matrix" 0.89415087800436344 0 -0.4477657952144467 0 0 1 0 0
		 0.4477657952144467 0 0.89415087800436366 0 0 0 0 1;
createNode composeMatrix -n "BallIKJntOrCM";
	rename -uid "D08D6415-4C23-95E3-F38C-C18539C4FF99";
	setAttr ".omat" -type "matrix" 0.89415087800436355 0 0.44776579521444665 0 0 1 0 0
		 -0.44776579521444665 0 0.89415087800436355 0 0 0 0 1;
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
	setAttr ".fprt" yes;
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
	setAttr -s 2 ".u";
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
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off ".eeaa";
	setAttr -av -k off ".engm";
	setAttr -av -k off ".mes";
	setAttr -av -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -av -k off ".mbs";
	setAttr -av -k off ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off ".enpt";
	setAttr -av -k off ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off ".twa";
	setAttr -av -k off ".twz";
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
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 3 ".sol";
connectAttr "LegCtrlGrp.msg" "LegRigGrp.Grp[0]";
connectAttr "LegSysGrp.msg" "LegRigGrp.Grp[1]";
connectAttr "LegJntGrp.msg" "LegRigGrp.Grp[2]";
connectAttr "Leg1IKJnt.msg" "LegRigGrp.IKJnt[0]";
connectAttr "Leg2IKJnt.msg" "LegRigGrp.IKJnt[1]";
connectAttr "Leg3IKJnt.msg" "LegRigGrp.IKJnt[2]";
connectAttr "Leg1FKJnt.msg" "LegRigGrp.FKJnt[0]";
connectAttr "Leg2FKJnt.msg" "LegRigGrp.FKJnt[1]";
connectAttr "Leg3FKJnt.msg" "LegRigGrp.FKJnt[2]";
connectAttr "Leg1DrvJnt.msg" "LegRigGrp.DrvJnt[0]";
connectAttr "Leg2DrvJnt.msg" "LegRigGrp.DrvJnt[1]";
connectAttr "Leg3DrvJnt.msg" "LegRigGrp.DrvJnt[2]";
connectAttr "LegIKCtrl.msg" "LegRigGrp.Ctrl[0]";
connectAttr "ThighFKCtrl.msg" "LegRigGrp.Ctrl[1]";
connectAttr "KneeFKCtrl.msg" "LegRigGrp.Ctrl[2]";
connectAttr "AnkleFKCtrl.msg" "LegRigGrp.Ctrl[3]";
connectAttr "LegIKFKCtrl.msg" "LegRigGrp.Ctrl[4]";
connectAttr "LegPoleVectorCtrl.msg" "LegRigGrp.Ctrl[5]";
connectAttr "LegRootCtrl.msg" "LegRigGrp.Ctrl[6]";
connectAttr "BallFKCtrl.msg" "LegRigGrp.Ctrl[7]";
connectAttr "LegIKCtrlPos.msg" "LegRigGrp.Pos[0]";
connectAttr "AnkleFKCtrlPos.msg" "LegRigGrp.Pos[1]";
connectAttr "LegPVPos.msg" "LegRigGrp.Pos[2]";
connectAttr "Leg1TwistFixPos.msg" "LegRigGrp.Pos[3]";
connectAttr "Leg2TwistFixPos.msg" "LegRigGrp.Pos[4]";
connectAttr "Leg3TwistFixPos.msg" "LegRigGrp.Pos[5]";
connectAttr "LegIKUU.msg" "LegRigGrp.AnimCrv[0]";
connectAttr "LegFKUU.msg" "LegRigGrp.AnimCrv[1]";
connectAttr "Leg1ArcPos.msg" "LegRigGrp.Arc[0]";
connectAttr "Leg2ArcPos.msg" "LegRigGrp.Arc[1]";
connectAttr "Leg3ArcPos.msg" "LegRigGrp.Arc[2]";
connectAttr "LegIKScaleBC.msg" "LegRigGrp.ScaleBlend[0]";
connectAttr "LegFKScaleBC.msg" "LegRigGrp.ScaleBlend[1]";
connectAttr "LegRootCtrlPoser.t" "LegRootCtrlGrp.t";
connectAttr "LegRootCtrlPoser.r" "LegRootCtrlGrp.r";
connectAttr "LegRootCtrlPoser.s" "LegRootCtrlGrp.s";
connectAttr "LegAutoHideCD.ocr" "LegIKCtrlGrp.v";
connectAttr "LegIKCtrlPoser.t" "LegIKCtrlGrp.t";
connectAttr "LegIKCtrlPoser.r" "LegIKCtrlGrp.r";
connectAttr "LegIKCtrlPoser.s" "LegIKCtrlGrp.s";
connectAttr "LegIKCtrl.ConstCtrlVis" "LegIKConstCtrlShape.v";
connectAttr "LegIKCtrlPosDM.ot" "LegIKCtrlPos.t";
connectAttr "FootInPivPos.c" "FootInRotPos.rp";
connectAttr "FootInPivPos.c" "FootInRotPos.sp";
connectAttr "FootInRotPos_rotateX.o" "FootInRotPos.rx";
connectAttr "FootOutPivPos.c" "FootOutRotPos.rp";
connectAttr "FootOutPivPos.c" "FootOutRotPos.sp";
connectAttr "FootOutRotPos_rotateX.o" "FootOutRotPos.rx";
connectAttr "HeelMvPivPos.c" "HeelRollPivPos.rp";
connectAttr "HeelMvPivPos.c" "HeelRollPivPos.sp";
connectAttr "HeelRollPivPos_rotateY.o" "HeelRollPivPos.ry";
connectAttr "HeelRollPivPos_rotateZ.o" "HeelRollPivPos.rz";
connectAttr "ToeMvPivPos.c" "ToeRollPivPos.rp";
connectAttr "ToeMvPivPos.c" "ToeRollPivPos.sp";
connectAttr "ToeRollPivPos_rotateY.o" "ToeRollPivPos.ry";
connectAttr "ToeRollPivPos_rotateZ.o" "ToeRollPivPos.rz";
connectAttr "BallMvPivPos.c" "BallPivPos.rp";
connectAttr "BallMvPivPos.c" "BallPivPos.sp";
connectAttr "BallPivPos_rotateZ.o" "BallPivPos.rz";
connectAttr "BallMvPivPos.c" "FootRollPos.rp";
connectAttr "BallMvPivPos.c" "FootRollPos.sp";
connectAttr "FootRollPos_rotateY.o" "FootRollPos.ry";
connectAttr "AnkleIKJnt.msg" "BallRaiseIKh.hsj";
connectAttr "effector26.hp" "BallRaiseIKh.hee";
connectAttr "ikSCsolver.msg" "BallRaiseIKh.hsv";
connectAttr "BallMvPivPos.c" "BallRollPos.rp";
connectAttr "BallMvPivPos.c" "BallRollPos.sp";
connectAttr "BallRollPos_rotateY.o" "BallRollPos.ry";
connectAttr "BallIKJnt.msg" "ToeRaiseIKh.hsj";
connectAttr "effector25.hp" "ToeRaiseIKh.hee";
connectAttr "ikSCsolver.msg" "ToeRaiseIKh.hsv";
connectAttr "LegIKCtrl.Foot" "HeelMvPivPos.dh";
connectAttr "LegIKCtrl.Foot" "ToeMvPivPos.dh";
connectAttr "LegIKCtrl.Foot" "BallMvPivPos.dh";
connectAttr "LegIKCtrl.Foot" "FootInPivPos.dh";
connectAttr "LegIKCtrl.Foot" "FootOutPivPos.dh";
connectAttr "LegIKCtrl.PVCtrlVis" "LegPoleVectorCtrlGrp.v";
connectAttr "LegPoleVectorCtrlPoser.t" "LegPoleVectorCtrlGrp.t";
connectAttr "LegPoleVectorCtrlPoser.r" "LegPoleVectorCtrlGrp.r";
connectAttr "LegPoleVectorCtrlPoser.s" "LegPoleVectorCtrlGrp.s";
connectAttr "LegAutoHideCD.ocr" "LegPoleVectorCtrlShape.v";
connectAttr "LegIKFKCtrlGrpDM.ot" "LegIKFKCtrlGrp.t";
connectAttr "LegIKFKCtrlGrpDM.or" "LegIKFKCtrlGrp.r";
connectAttr "LegUpArcDM.ot" "LegUpArcCtrlGrp.t";
connectAttr "LegUpArcCtrlGrp_tangentConstraint1.crx" "LegUpArcCtrlGrp.rx";
connectAttr "LegUpArcCtrlGrp_tangentConstraint1.cry" "LegUpArcCtrlGrp.ry";
connectAttr "LegUpArcCtrlGrp_tangentConstraint1.crz" "LegUpArcCtrlGrp.rz";
connectAttr "LegIKFKCtrl.ArcCtrlVis" "LegUpArcCtrlGrp.v";
connectAttr "LegUpArcCtrlGrp.pim" "LegUpArcCtrlGrp_tangentConstraint1.cpim";
connectAttr "LegUpArcCtrlGrp.t" "LegUpArcCtrlGrp_tangentConstraint1.ct";
connectAttr "LegUpArcCtrlGrp.rp" "LegUpArcCtrlGrp_tangentConstraint1.crp";
connectAttr "LegUpArcCtrlGrp.rpt" "LegUpArcCtrlGrp_tangentConstraint1.crt";
connectAttr "LegUpArcCtrlGrp.ro" "LegUpArcCtrlGrp_tangentConstraint1.cro";
connectAttr "LegArcBlendShape.og[0]" "LegUpArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LegUpArcCtrlGrp_tangentConstraint1.w0" "LegUpArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "Leg1DrvJnt.wm" "LegUpArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LegUpArcCtrl.t" "Leg1CsHandle.t";
connectAttr "LegUpArcCtrl.r" "Leg1CsHandle.r";
connectAttr "LegUpArcCtrl.s" "Leg1CsHandle.s";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.ctx" "LegMidArcCtrlGrp.tx";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.cty" "LegMidArcCtrlGrp.ty";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.ctz" "LegMidArcCtrlGrp.tz";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.crx" "LegMidArcCtrlGrp.rx";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.cry" "LegMidArcCtrlGrp.ry";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.crz" "LegMidArcCtrlGrp.rz";
connectAttr "LegIKFKCtrl.ArcCtrlVis" "LegMidArcCtrlGrp.v";
connectAttr "LegMidArcCtrlPBGrpPB.orx" "LegMidArcCtrlPBGrp.rx";
connectAttr "LegMidArcCtrlPBGrpPB.ory" "LegMidArcCtrlPBGrp.ry";
connectAttr "LegMidArcCtrlPBGrpPB.orz" "LegMidArcCtrlPBGrp.rz";
connectAttr "LegMidArcCtrlPBGrpPB.otx" "LegMidArcCtrlPBGrp.tx";
connectAttr "LegMidArcCtrlPBGrpPB.oty" "LegMidArcCtrlPBGrp.ty";
connectAttr "LegMidArcCtrlPBGrpPB.otz" "LegMidArcCtrlPBGrp.tz";
connectAttr "LegMidArcCtrlPBGrp.ro" "LegMidArcCtrlPBGrp_orientConstraint1.cro";
connectAttr "LegMidArcCtrlPBGrp.pim" "LegMidArcCtrlPBGrp_orientConstraint1.cpim"
		;
connectAttr "Leg1DrvJnt.r" "LegMidArcCtrlPBGrp_orientConstraint1.tg[0].tr";
connectAttr "Leg1DrvJnt.ro" "LegMidArcCtrlPBGrp_orientConstraint1.tg[0].tro";
connectAttr "Leg1DrvJnt.pm" "LegMidArcCtrlPBGrp_orientConstraint1.tg[0].tpm";
connectAttr "Leg1DrvJnt.jo" "LegMidArcCtrlPBGrp_orientConstraint1.tg[0].tjo";
connectAttr "LegMidArcCtrlPBGrp_orientConstraint1.w0" "LegMidArcCtrlPBGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "LegMidArcCtrlPBGrp.pim" "LegMidArcCtrlPBGrp_pointConstraint1.cpim";
connectAttr "LegMidArcCtrlPBGrp.rp" "LegMidArcCtrlPBGrp_pointConstraint1.crp";
connectAttr "LegMidArcCtrlPBGrp.rpt" "LegMidArcCtrlPBGrp_pointConstraint1.crt";
connectAttr "LegArcPointPos.t" "LegMidArcCtrlPBGrp_pointConstraint1.tg[0].tt";
connectAttr "LegArcPointPos.rp" "LegMidArcCtrlPBGrp_pointConstraint1.tg[0].trp";
connectAttr "LegArcPointPos.rpt" "LegMidArcCtrlPBGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "LegArcPointPos.pm" "LegMidArcCtrlPBGrp_pointConstraint1.tg[0].tpm";
connectAttr "LegMidArcCtrlPBGrp_pointConstraint1.w0" "LegMidArcCtrlPBGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "LegMidArcCtrl.t" "Leg2UpCsHandle.t";
connectAttr "LegMidArcCtrl.r" "Leg2UpCsHandle.r";
connectAttr "LegMidArcCtrl.s" "Leg2UpCsHandle.s";
connectAttr "LegMidArcCtrl.t" "Leg2DnCsHandle.t";
connectAttr "LegMidArcCtrl.r" "Leg2DnCsHandle.r";
connectAttr "LegMidArcCtrl.s" "Leg2DnCsHandle.s";
connectAttr "LegMidArcCtrlGrp.ro" "LegMidArcCtrlGrp_parentConstraint1.cro";
connectAttr "LegMidArcCtrlGrp.pim" "LegMidArcCtrlGrp_parentConstraint1.cpim";
connectAttr "LegMidArcCtrlGrp.rp" "LegMidArcCtrlGrp_parentConstraint1.crp";
connectAttr "LegMidArcCtrlGrp.rpt" "LegMidArcCtrlGrp_parentConstraint1.crt";
connectAttr "Leg2DrvJnt.t" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tt";
connectAttr "Leg2DrvJnt.rp" "LegMidArcCtrlGrp_parentConstraint1.tg[0].trp";
connectAttr "Leg2DrvJnt.rpt" "LegMidArcCtrlGrp_parentConstraint1.tg[0].trt";
connectAttr "Leg2DrvJnt.r" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tr";
connectAttr "Leg2DrvJnt.ro" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tro";
connectAttr "Leg2DrvJnt.s" "LegMidArcCtrlGrp_parentConstraint1.tg[0].ts";
connectAttr "Leg2DrvJnt.pm" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tpm";
connectAttr "Leg2DrvJnt.jo" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tjo";
connectAttr "Leg2DrvJnt.ssc" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tsc";
connectAttr "Leg2DrvJnt.is" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tis";
connectAttr "LegMidArcCtrlGrp_parentConstraint1.w0" "LegMidArcCtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LegDnArcDM.ot" "LegDnArcCtrlGrp.t";
connectAttr "LegDnArcCtrlGrp_tangentConstraint1.crx" "LegDnArcCtrlGrp.rx";
connectAttr "LegDnArcCtrlGrp_tangentConstraint1.cry" "LegDnArcCtrlGrp.ry";
connectAttr "LegDnArcCtrlGrp_tangentConstraint1.crz" "LegDnArcCtrlGrp.rz";
connectAttr "LegIKFKCtrl.ArcCtrlVis" "LegDnArcCtrlGrp.v";
connectAttr "LegDnArcCtrlGrp.pim" "LegDnArcCtrlGrp_tangentConstraint1.cpim";
connectAttr "LegDnArcCtrlGrp.t" "LegDnArcCtrlGrp_tangentConstraint1.ct";
connectAttr "LegDnArcCtrlGrp.rp" "LegDnArcCtrlGrp_tangentConstraint1.crp";
connectAttr "LegDnArcCtrlGrp.rpt" "LegDnArcCtrlGrp_tangentConstraint1.crt";
connectAttr "LegDnArcCtrlGrp.ro" "LegDnArcCtrlGrp_tangentConstraint1.cro";
connectAttr "LegArcBlendShape.og[1]" "LegDnArcCtrlGrp_tangentConstraint1.tg[0].tgm"
		;
connectAttr "LegDnArcCtrlGrp_tangentConstraint1.w0" "LegDnArcCtrlGrp_tangentConstraint1.tg[0].tw"
		;
connectAttr "Leg3DrvJnt.wm" "LegDnArcCtrlGrp_tangentConstraint1.wum";
connectAttr "LegDnArcCtrl.t" "Leg3CsHandle.t";
connectAttr "LegDnArcCtrl.r" "Leg3CsHandle.r";
connectAttr "LegDnArcCtrl.s" "Leg3CsHandle.s";
connectAttr "LegAutoHideCD.ocg" "ThighFKCtrlGrp.v";
connectAttr "ThighFKCtrlPoser.t" "ThighFKCtrlGrp.t";
connectAttr "ThighFKCtrlPoser.r" "ThighFKCtrlGrp.r";
connectAttr "ThighFKCtrlPoser.s" "ThighFKCtrlGrp.s";
connectAttr "KneeFKCtrlPoser.t" "KneeFKCtrlGrp.t";
connectAttr "KneeFKCtrlPoser.r" "KneeFKCtrlGrp.r";
connectAttr "LegAutoHideCD.ocg" "KneeFKCtrlGrp.v";
connectAttr "KneeFKCtrlPoser.s" "KneeFKCtrlGrp.s";
connectAttr "AnkleFKCtrlPoser.t" "AnkleFKCtrlGrp.t";
connectAttr "AnkleFKCtrlPoser.r" "AnkleFKCtrlGrp.r";
connectAttr "LegAutoHideCD.ocg" "AnkleFKCtrlGrp.v";
connectAttr "AnkleFKCtrlPoser.s" "AnkleFKCtrlGrp.s";
connectAttr "UpLegSysConsGrpDM.ot" "UpLegSysConsGrp.t";
connectAttr "UpLegSysConsGrpDM.or" "UpLegSysConsGrp.r";
connectAttr "ThighFKCtrl.sy" "Leg1DrvJnt.fksy";
connectAttr "ThighFKCtrl.sz" "Leg1DrvJnt.fksz";
connectAttr "LegSquashBA.o" "Leg1DrvJnt.IKSquash";
connectAttr "Leg1DrvJntRotPB.orx" "Leg1DrvJnt.rx";
connectAttr "Leg1DrvJntRotPB.ory" "Leg1DrvJnt.ry";
connectAttr "Leg1DrvJntRotPB.orz" "Leg1DrvJnt.rz";
connectAttr "Leg1DrvJntTrsBC.op" "Leg1DrvJnt.t";
connectAttr "KneeFKCtrl.sy" "Leg2DrvJnt.fksy";
connectAttr "KneeFKCtrl.sz" "Leg2DrvJnt.fksz";
connectAttr "LegSquashBA.o" "Leg2DrvJnt.IKSquash";
connectAttr "Leg2DrvJntTrsBC.op" "Leg2DrvJnt.t";
connectAttr "Leg2DrvJntRotPB.orx" "Leg2DrvJnt.rx";
connectAttr "Leg2DrvJntRotPB.ory" "Leg2DrvJnt.ry";
connectAttr "Leg2DrvJntRotPB.orz" "Leg2DrvJnt.rz";
connectAttr "Leg1DrvJnt.s" "Leg2DrvJnt.is";
connectAttr "Leg2DrvJnt.s" "Leg3DrvJnt.is";
connectAttr "Leg3DrvJntORCons.crx" "Leg3DrvJnt.rx";
connectAttr "Leg3DrvJntORCons.cry" "Leg3DrvJnt.ry";
connectAttr "Leg3DrvJntORCons.crz" "Leg3DrvJnt.rz";
connectAttr "Leg3DrvJntTrsBC.op" "Leg3DrvJnt.t";
connectAttr "Leg3DrvJnt.ro" "Leg3DrvJntORCons.cro";
connectAttr "Leg3DrvJnt.pim" "Leg3DrvJntORCons.cpim";
connectAttr "Leg3DrvJnt.jo" "Leg3DrvJntORCons.cjo";
connectAttr "Leg3DrvJnt.is" "Leg3DrvJntORCons.is";
connectAttr "LegIKCtrlPos.r" "Leg3DrvJntORCons.tg[0].tr";
connectAttr "LegIKCtrlPos.ro" "Leg3DrvJntORCons.tg[0].tro";
connectAttr "LegIKCtrlPos.pm" "Leg3DrvJntORCons.tg[0].tpm";
connectAttr "Leg3DrvJntORCons.w0" "Leg3DrvJntORCons.tg[0].tw";
connectAttr "AnkleFKCtrlPos.r" "Leg3DrvJntORCons.tg[1].tr";
connectAttr "AnkleFKCtrlPos.ro" "Leg3DrvJntORCons.tg[1].tro";
connectAttr "AnkleFKCtrlPos.pm" "Leg3DrvJntORCons.tg[1].tpm";
connectAttr "Leg3DrvJntORCons.w1" "Leg3DrvJntORCons.tg[1].tw";
connectAttr "LegIKUU.o" "Leg3DrvJntORCons.w0";
connectAttr "LegFKUU.o" "Leg3DrvJntORCons.w1";
connectAttr "Leg3AssiAPosDM.ot" "Leg3AssiAPos.t";
connectAttr "Leg3AssiAPosDM.or" "Leg3AssiAPos.r";
connectAttr "Leg3TwistFixGrpDM.ot" "Leg3TwistFixGrp.t";
connectAttr "Leg3AimGrpAMCons.crx" "Leg3AimGrp.rx";
connectAttr "Leg3AimGrpAMCons.cry" "Leg3AimGrp.ry";
connectAttr "Leg3AimGrpAMCons.crz" "Leg3AimGrp.rz";
connectAttr "Leg3TwistFixPosORCons.crx" "Leg3TwistFixPos.rx";
connectAttr "Leg3TwistFixPosORCons.cry" "Leg3TwistFixPos.ry";
connectAttr "Leg3TwistFixPosORCons.crz" "Leg3TwistFixPos.rz";
connectAttr "Leg3TwistFixPos.ro" "Leg3TwistFixPosORCons.cro";
connectAttr "Leg3TwistFixPos.pim" "Leg3TwistFixPosORCons.cpim";
connectAttr "Leg3AimGrp.r" "Leg3TwistFixPosORCons.tg[0].tr";
connectAttr "Leg3AimGrp.ro" "Leg3TwistFixPosORCons.tg[0].tro";
connectAttr "Leg3AimGrp.pm" "Leg3TwistFixPosORCons.tg[0].tpm";
connectAttr "Leg3TwistFixPosORCons.w0" "Leg3TwistFixPosORCons.tg[0].tw";
connectAttr "Leg3TwistFixSubPos.r" "Leg3TwistFixPosORCons.tg[1].tr";
connectAttr "Leg3TwistFixSubPos.ro" "Leg3TwistFixPosORCons.tg[1].tro";
connectAttr "Leg3TwistFixSubPos.pm" "Leg3TwistFixPosORCons.tg[1].tpm";
connectAttr "Leg3TwistFixPosORCons.w1" "Leg3TwistFixPosORCons.tg[1].tw";
connectAttr "Leg3AimGrp.pim" "Leg3AimGrpAMCons.cpim";
connectAttr "Leg3AimGrp.t" "Leg3AimGrpAMCons.ct";
connectAttr "Leg3AimGrp.rp" "Leg3AimGrpAMCons.crp";
connectAttr "Leg3AimGrp.rpt" "Leg3AimGrpAMCons.crt";
connectAttr "Leg3AimGrp.ro" "Leg3AimGrpAMCons.cro";
connectAttr "Leg3TwsitFixTgPos.t" "Leg3AimGrpAMCons.tg[0].tt";
connectAttr "Leg3TwsitFixTgPos.rp" "Leg3AimGrpAMCons.tg[0].trp";
connectAttr "Leg3TwsitFixTgPos.rpt" "Leg3AimGrpAMCons.tg[0].trt";
connectAttr "Leg3TwsitFixTgPos.pm" "Leg3AimGrpAMCons.tg[0].tpm";
connectAttr "Leg3AimGrpAMCons.w0" "Leg3AimGrpAMCons.tg[0].tw";
connectAttr "Leg3TwistFixGrp.wm" "Leg3AimGrpAMCons.wum";
connectAttr "Leg3TwistFixSubPosAMCons.crx" "Leg3TwistFixSubPos.rx";
connectAttr "Leg3TwistFixSubPosAMCons.cry" "Leg3TwistFixSubPos.ry";
connectAttr "Leg3TwistFixSubPosAMCons.crz" "Leg3TwistFixSubPos.rz";
connectAttr "Leg3TwistFixSubPos.pim" "Leg3TwistFixSubPosAMCons.cpim";
connectAttr "Leg3TwistFixSubPos.t" "Leg3TwistFixSubPosAMCons.ct";
connectAttr "Leg3TwistFixSubPos.rp" "Leg3TwistFixSubPosAMCons.crp";
connectAttr "Leg3TwistFixSubPos.rpt" "Leg3TwistFixSubPosAMCons.crt";
connectAttr "Leg3TwistFixSubPos.ro" "Leg3TwistFixSubPosAMCons.cro";
connectAttr "Leg3TwsitFixTgPos.t" "Leg3TwistFixSubPosAMCons.tg[0].tt";
connectAttr "Leg3TwsitFixTgPos.rp" "Leg3TwistFixSubPosAMCons.tg[0].trp";
connectAttr "Leg3TwsitFixTgPos.rpt" "Leg3TwistFixSubPosAMCons.tg[0].trt";
connectAttr "Leg3TwsitFixTgPos.pm" "Leg3TwistFixSubPosAMCons.tg[0].tpm";
connectAttr "Leg3TwistFixSubPosAMCons.w0" "Leg3TwistFixSubPosAMCons.tg[0].tw";
connectAttr "Leg3AssiAPos.wm" "Leg3TwistFixSubPosAMCons.wum";
connectAttr "Leg3TwsitFixTgPosPB.otx" "Leg3TwsitFixTgPos.tx";
connectAttr "Leg3TwsitFixTgPosPB.oty" "Leg3TwsitFixTgPos.ty";
connectAttr "Leg3TwsitFixTgPosPB.otz" "Leg3TwsitFixTgPos.tz";
connectAttr "Leg2TwistFixGrpDM.ot" "Leg2TwistFixGrp.t";
connectAttr "Leg2AimGrpAMCons.crx" "Leg2AimGrp.rx";
connectAttr "Leg2AimGrpAMCons.cry" "Leg2AimGrp.ry";
connectAttr "Leg2AimGrpAMCons.crz" "Leg2AimGrp.rz";
connectAttr "unitConversion85.o" "Leg2TwistFixPos.rx";
connectAttr "Leg2AimGrp.pim" "Leg2AimGrpAMCons.cpim";
connectAttr "Leg2AimGrp.t" "Leg2AimGrpAMCons.ct";
connectAttr "Leg2AimGrp.rp" "Leg2AimGrpAMCons.crp";
connectAttr "Leg2AimGrp.rpt" "Leg2AimGrpAMCons.crt";
connectAttr "Leg2AimGrp.ro" "Leg2AimGrpAMCons.cro";
connectAttr "Leg2TwsitFixTgPos.t" "Leg2AimGrpAMCons.tg[0].tt";
connectAttr "Leg2TwsitFixTgPos.rp" "Leg2AimGrpAMCons.tg[0].trp";
connectAttr "Leg2TwsitFixTgPos.rpt" "Leg2AimGrpAMCons.tg[0].trt";
connectAttr "Leg2TwsitFixTgPos.pm" "Leg2AimGrpAMCons.tg[0].tpm";
connectAttr "Leg2AimGrpAMCons.w0" "Leg2AimGrpAMCons.tg[0].tw";
connectAttr "Leg2AssiAPos.wm" "Leg2AimGrpAMCons.wum";
connectAttr "Leg2TwsitFixTgPosPB.otx" "Leg2TwsitFixTgPos.tx";
connectAttr "Leg2TwsitFixTgPosPB.oty" "Leg2TwsitFixTgPos.ty";
connectAttr "Leg2TwsitFixTgPosPB.otz" "Leg2TwsitFixTgPos.tz";
connectAttr "Leg1IKJntPoser.t" "Leg1IKJnt.t";
connectAttr "Leg1IKJnt.s" "Leg2IKJnt.is";
connectAttr "LegUpTxML.o" "Leg2IKJnt.tx";
connectAttr "Leg2IKJnt.s" "Leg3IKJnt.is";
connectAttr "LegDnTxML.o" "Leg3IKJnt.tx";
connectAttr "Leg3IKJntQE.ort" "Leg3IKJnt.r";
connectAttr "Leg3IKJnt.tx" "effector22.tx";
connectAttr "Leg3IKJnt.ty" "effector22.ty";
connectAttr "Leg3IKJnt.tz" "effector22.tz";
connectAttr "Leg1FKJntDM.ot" "Leg1FKJnt.t";
connectAttr "Leg1FKJntQE.ort" "Leg1FKJnt.r";
connectAttr "Leg1FKJnt.s" "Leg2FKJnt.is";
connectAttr "Leg2FKJntDM.ot" "Leg2FKJnt.t";
connectAttr "Leg2FKJntQE.ort" "Leg2FKJnt.r";
connectAttr "Leg2FKJnt.s" "Leg3FKJnt.is";
connectAttr "Leg3FKJntDM.ot" "Leg3FKJnt.t";
connectAttr "Leg3FKJntQE.ort" "Leg3FKJnt.r";
connectAttr "LegUp1ArcJnt.s" "LegUp2ArcJnt.is";
connectAttr "LegUpIK1CrvPointMD.o" "LegUp2ArcJnt.tx";
connectAttr "LegUp2ArcJnt.s" "LegUp3ArcJnt.is";
connectAttr "LegUpIK2CrvPointMD.o" "LegUp3ArcJnt.tx";
connectAttr "LegUp3ArcJnt.s" "LegUp4ArcJnt.is";
connectAttr "LegUpIK3CrvPointMD.o" "LegUp4ArcJnt.tx";
connectAttr "LegUp4ArcJnt.s" "LegUp5ArcJnt.is";
connectAttr "LegUpIK4CrvPointMD.o" "LegUp5ArcJnt.tx";
connectAttr "LegUp5ArcJnt.s" "LegDn1ArcJnt.is";
connectAttr "LegDn1ArcJnt.s" "LegDn2ArcJnt.is";
connectAttr "LegDnIK1CrvPointMD.o" "LegDn2ArcJnt.tx";
connectAttr "LegDn2ArcJnt.s" "LegDn3ArcJnt.is";
connectAttr "LegDnIK2CrvPointMD.o" "LegDn3ArcJnt.tx";
connectAttr "LegDn3ArcJnt.s" "LegDn4ArcJnt.is";
connectAttr "LegDnIK3CrvPointMD.o" "LegDn4ArcJnt.tx";
connectAttr "LegDn4ArcJnt.s" "LegDn5ArcJnt.is";
connectAttr "LegDnIK4CrvPointMD.o" "LegDn5ArcJnt.tx";
connectAttr "LegDn5ArcJnt.tx" "effector24.tx";
connectAttr "LegDn5ArcJnt.ty" "effector24.ty";
connectAttr "LegDn5ArcJnt.tz" "effector24.tz";
connectAttr "LegUp5ArcJnt.tx" "effector23.tx";
connectAttr "LegUp5ArcJnt.ty" "effector23.ty";
connectAttr "LegUp5ArcJnt.tz" "effector23.tz";
connectAttr "Leg1TwistFixGrpDM.ot" "Leg1TwistFixGrp.t";
connectAttr "Leg1AimGrpAMCons.crx" "Leg1AimGrp.rx";
connectAttr "Leg1AimGrpAMCons.cry" "Leg1AimGrp.ry";
connectAttr "Leg1AimGrpAMCons.crz" "Leg1AimGrp.rz";
connectAttr "unitConversion84.o" "Leg1TwistFixPos.rx";
connectAttr "Leg1AimGrp.pim" "Leg1AimGrpAMCons.cpim";
connectAttr "Leg1AimGrp.t" "Leg1AimGrpAMCons.ct";
connectAttr "Leg1AimGrp.rp" "Leg1AimGrpAMCons.crp";
connectAttr "Leg1AimGrp.rpt" "Leg1AimGrpAMCons.crt";
connectAttr "Leg1AimGrp.ro" "Leg1AimGrpAMCons.cro";
connectAttr "Leg1TwsitFixTgPos.t" "Leg1AimGrpAMCons.tg[0].tt";
connectAttr "Leg1TwsitFixTgPos.rp" "Leg1AimGrpAMCons.tg[0].trp";
connectAttr "Leg1TwsitFixTgPos.rpt" "Leg1AimGrpAMCons.tg[0].trt";
connectAttr "Leg1TwsitFixTgPos.pm" "Leg1AimGrpAMCons.tg[0].tpm";
connectAttr "Leg1AimGrpAMCons.w0" "Leg1AimGrpAMCons.tg[0].tw";
connectAttr "Leg1TwistFixUpvec.wm" "Leg1AimGrpAMCons.wum";
connectAttr "Leg1TwistFixUpvec_rotateZ.o" "Leg1TwistFixUpvec.rz";
connectAttr "Leg1TwsitFixTgPosDM.ot" "Leg1TwsitFixTgPos.t";
connectAttr "Leg1IKJnt.msg" "LegIKh.hsj";
connectAttr "effector22.hp" "LegIKh.hee";
connectAttr "ikRPsolver.msg" "LegIKh.hsv";
connectAttr "LegIKhDM.ot" "LegIKh.t";
connectAttr "LegIKhPVCons.ctx" "LegIKh.pvx";
connectAttr "LegIKhPVCons.cty" "LegIKh.pvy";
connectAttr "LegIKhPVCons.ctz" "LegIKh.pvz";
connectAttr "LegIKh.pim" "LegIKhPVCons.cpim";
connectAttr "Leg1IKJnt.pm" "LegIKhPVCons.ps";
connectAttr "Leg1IKJnt.t" "LegIKhPVCons.crp";
connectAttr "LegPoleVectorCtrl.t" "LegIKhPVCons.tg[0].tt";
connectAttr "LegPoleVectorCtrl.rp" "LegIKhPVCons.tg[0].trp";
connectAttr "LegPoleVectorCtrl.rpt" "LegIKhPVCons.tg[0].trt";
connectAttr "LegPoleVectorCtrl.pm" "LegIKhPVCons.tg[0].tpm";
connectAttr "LegIKhPVCons.w0" "LegIKhPVCons.tg[0].tw";
connectAttr "LegPVSysGrpDM.or" "LegPVSysGrp.r";
connectAttr "LegPVSysPoser.t" "LegPVSysGrp.t";
connectAttr "LegPVAmGrpAMCons.crx" "LegPVAmGrp.rx";
connectAttr "LegPVAmGrpAMCons.cry" "LegPVAmGrp.ry";
connectAttr "LegPVAmGrpAMCons.crz" "LegPVAmGrp.rz";
connectAttr "LegPVAmGrp.pim" "LegPVAmGrpAMCons.cpim";
connectAttr "LegPVAmGrp.t" "LegPVAmGrpAMCons.ct";
connectAttr "LegPVAmGrp.rp" "LegPVAmGrpAMCons.crp";
connectAttr "LegPVAmGrp.rpt" "LegPVAmGrpAMCons.crt";
connectAttr "LegPVAmGrp.ro" "LegPVAmGrpAMCons.cro";
connectAttr "LegPVTgPos.t" "LegPVAmGrpAMCons.tg[0].tt";
connectAttr "LegPVTgPos.rp" "LegPVAmGrpAMCons.tg[0].trp";
connectAttr "LegPVTgPos.rpt" "LegPVAmGrpAMCons.tg[0].trt";
connectAttr "LegPVTgPos.pm" "LegPVAmGrpAMCons.tg[0].tpm";
connectAttr "LegPVAmGrpAMCons.w0" "LegPVAmGrpAMCons.tg[0].tw";
connectAttr "LegPVUpvec.wm" "LegPVAmGrpAMCons.wum";
connectAttr "unitConversion80.o" "LegPVAmGrpAMCons.ox";
connectAttr "LegPVPosPoser.t" "LegPVPosGrp.t";
connectAttr "LegPVPosPoser.r" "LegPVPosGrp.r";
connectAttr "LegPVPosPoser.s" "LegPVPosGrp.s";
connectAttr "LegPVSysGrp.msg" "LegPVPos.ag";
connectAttr "LegPVUpvec_rotateZ.o" "LegPVUpvec.rz";
connectAttr "LegPVTgPosDM.ot" "LegPVTgPos.t";
connectAttr "LegIKMovePosDM.ot" "LegIKMovePos.t";
connectAttr "LegIKMovePosDM.or" "LegIKMovePos.r";
connectAttr "LegPVStretchPosDM.ot" "LegPVStretchPos.t";
connectAttr "Leg1ArcPosDM.ot" "Leg1ArcPos.t";
connectAttr "Leg2ArcPosDM.ot" "Leg2ArcPos.t";
connectAttr "Leg3ArcPosDM.ot" "Leg3ArcPos.t";
connectAttr "LegArcPointPosPTCons.ctx" "LegArcPointPos.tx";
connectAttr "LegArcPointPosPTCons.cty" "LegArcPointPos.ty";
connectAttr "LegArcPointPosPTCons.ctz" "LegArcPointPos.tz";
connectAttr "LegArcPointPos.pim" "LegArcPointPosPTCons.cpim";
connectAttr "LegArcPointPos.rp" "LegArcPointPosPTCons.crp";
connectAttr "LegArcPointPos.rpt" "LegArcPointPosPTCons.crt";
connectAttr "Leg1ArcPos.t" "LegArcPointPosPTCons.tg[0].tt";
connectAttr "Leg1ArcPos.rp" "LegArcPointPosPTCons.tg[0].trp";
connectAttr "Leg1ArcPos.rpt" "LegArcPointPosPTCons.tg[0].trt";
connectAttr "Leg1ArcPos.pm" "LegArcPointPosPTCons.tg[0].tpm";
connectAttr "LegArcPointPosPTCons.w0" "LegArcPointPosPTCons.tg[0].tw";
connectAttr "Leg2ArcPos.t" "LegArcPointPosPTCons.tg[1].tt";
connectAttr "Leg2ArcPos.rp" "LegArcPointPosPTCons.tg[1].trp";
connectAttr "Leg2ArcPos.rpt" "LegArcPointPosPTCons.tg[1].trt";
connectAttr "Leg2ArcPos.pm" "LegArcPointPosPTCons.tg[1].tpm";
connectAttr "LegArcPointPosPTCons.w1" "LegArcPointPosPTCons.tg[1].tw";
connectAttr "Leg3ArcPos.t" "LegArcPointPosPTCons.tg[2].tt";
connectAttr "Leg3ArcPos.rp" "LegArcPointPosPTCons.tg[2].trp";
connectAttr "Leg3ArcPos.rpt" "LegArcPointPosPTCons.tg[2].trt";
connectAttr "Leg3ArcPos.pm" "LegArcPointPosPTCons.tg[2].tpm";
connectAttr "LegArcPointPosPTCons.w2" "LegArcPointPosPTCons.tg[2].tw";
connectAttr "LegDnArcDB.d" "LegArcPointPosPTCons.w0";
connectAttr "LegArcDistMultML.o" "LegArcPointPosPTCons.w1";
connectAttr "LegUpArcDB.d" "LegArcPointPosPTCons.w2";
connectAttr "LegUpArcCrvRC.oc" "LegUpArcCrvShape.cr";
connectAttr "LegDnArcCrvRC.oc" "LegDnArcCrvShape.cr";
connectAttr "Leg2UpCsHandleCluster.og[0]" "LegUpIKCrvShape.cr";
connectAttr "LeftLegArcBlendShapeGroupId.id" "LegUpIKCrvShape.iog.og[2].gid";
connectAttr "LeftLegArcBlendShapeSet.mwc" "LegUpIKCrvShape.iog.og[2].gco";
connectAttr "LeftLeg1CsGroupId.id" "LegUpIKCrvShape.iog.og[3].gid";
connectAttr "LeftLeg1CsSet.mwc" "LegUpIKCrvShape.iog.og[3].gco";
connectAttr "LeftLeg2UpCsGroupId.id" "LegUpIKCrvShape.iog.og[5].gid";
connectAttr "LeftLeg2UpCsSet.mwc" "LegUpIKCrvShape.iog.og[5].gco";
connectAttr "Leg1ArcPos.t" "LegUpIKCrvShapeOrig.cp[0]";
connectAttr "Leg2ArcPos.t" "LegUpIKCrvShapeOrig.cp[1]";
connectAttr "Leg3CsHandleCluster.og[0]" "LegDnIKCrvShape.cr";
connectAttr "LeftLegArcBlendShapeGroupId1.id" "LegDnIKCrvShape.iog.og[2].gid";
connectAttr "LeftLegArcBlendShapeSet.mwc" "LegDnIKCrvShape.iog.og[2].gco";
connectAttr "LeftLeg2DnCsGroupId.id" "LegDnIKCrvShape.iog.og[3].gid";
connectAttr "LeftLeg2DnCsSet.mwc" "LegDnIKCrvShape.iog.og[3].gco";
connectAttr "LeftLeg3CsGroupId.id" "LegDnIKCrvShape.iog.og[5].gid";
connectAttr "LeftLeg3CsSet.mwc" "LegDnIKCrvShape.iog.og[5].gco";
connectAttr "Leg2ArcPos.t" "LegDnIKCrvShapeOrig.cp[0]";
connectAttr "Leg3ArcPos.t" "LegDnIKCrvShapeOrig.cp[1]";
connectAttr "LegUpIKChkCrvDM.ot" "LegUpIKChkCrv.t";
connectAttr "LegUpIKChkCrvDM.or" "LegUpIKChkCrv.r";
connectAttr "LegDnIKChkCrvDM.ot" "LegDnIKChkCrv.t";
connectAttr "LegDnIKChkCrvDM.or" "LegDnIKChkCrv.r";
connectAttr "LegUp1ArcJnt.msg" "LegUpArcIKh.hsj";
connectAttr "effector23.hp" "LegUpArcIKh.hee";
connectAttr "ikSplineSolver.msg" "LegUpArcIKh.hsv";
connectAttr "LegUpIKCrvShape.ws" "LegUpArcIKh.ic";
connectAttr "Leg1TwistFixPos.wm" "LegUpArcIKh.dwum";
connectAttr "Leg2TwistFixPos.wm" "LegUpArcIKh.dwue";
connectAttr "LegDn1ArcJnt.msg" "LegDnArcIKh.hsj";
connectAttr "effector24.hp" "LegDnArcIKh.hee";
connectAttr "ikSplineSolver.msg" "LegDnArcIKh.hsv";
connectAttr "LegDnIKCrvShape.ws" "LegDnArcIKh.ic";
connectAttr "Leg2TwistFixPos.wm" "LegDnArcIKh.dwum";
connectAttr "Leg3TwistFixPos.wm" "LegDnArcIKh.dwue";
connectAttr "AnkleConsGrp.msg" "ToeRigGrp.Grp[0]";
connectAttr "AnkleIKScaleGrp.msg" "ToeRigGrp.Grp[1]";
connectAttr "BallRaiseIKh.msg" "ToeRigGrp.IKh[0]";
connectAttr "ToeRaiseIKh.msg" "ToeRigGrp.IKh[1]";
connectAttr "AnkleConsGrpDM.ot" "AnkleConsGrp.t";
connectAttr "AnkleConsGrpDM.or" "AnkleConsGrp.r";
connectAttr "AnkleFKScaleBC.op" "AnkleConsGrp.s";
connectAttr "AnkleIKScaleBC.op" "AnkleIKScaleGrp.s";
connectAttr "AnkleIKJntGrpDM.ot" "AnkleIKJntGrp.t";
connectAttr "AnkleIKJntGrpDM.or" "AnkleIKJntGrp.r";
connectAttr "AnkleIKJnt.s" "BallIKJnt.is";
connectAttr "BallIKJnt.s" "ToeIKJnt.is";
connectAttr "ToeIKJnt.tx" "effector25.tx";
connectAttr "ToeIKJnt.ty" "effector25.ty";
connectAttr "ToeIKJnt.tz" "effector25.tz";
connectAttr "BallIKJnt.tx" "effector26.tx";
connectAttr "BallIKJnt.ty" "effector26.ty";
connectAttr "BallIKJnt.tz" "effector26.tz";
connectAttr "BallIKCtrlPrtGrpDM.ot" "BallIKCtrlPrtGrp.t";
connectAttr "BallIKCtrlPrtGrpDM.or" "BallIKCtrlPrtGrp.r";
connectAttr "BallIKCtrlGrpDM.or" "BallIKCtrlGrp.r";
connectAttr "BallIKCtrlGrpDM.ot" "BallIKCtrlGrp.t";
connectAttr "LegAutoHideCD.ocr" "BallIKCtrlGrp.v";
connectAttr "BallFKJntDM.ot" "BallFKJnt.t";
connectAttr "BallFKJntQE.ort" "BallFKJnt.r";
connectAttr "AnkleDrvJntTrsBC.op" "AnkleDrvJnt.t";
connectAttr "AnkleDrvJntRotPB.orx" "AnkleDrvJnt.rx";
connectAttr "AnkleDrvJntRotPB.ory" "AnkleDrvJnt.ry";
connectAttr "AnkleDrvJntRotPB.orz" "AnkleDrvJnt.rz";
connectAttr "BallDrvJntTrsBC.op" "BallDrvJnt.t";
connectAttr "BallDrvJntRotPB.orx" "BallDrvJnt.rx";
connectAttr "BallDrvJntRotPB.ory" "BallDrvJnt.ry";
connectAttr "BallDrvJntRotPB.orz" "BallDrvJnt.rz";
connectAttr "LegAutoHideCD.ocg" "BallFKCtrlGrp.v";
connectAttr "LegIKFKCtrl.IKFK" "LegIKUU.i";
connectAttr "LegIKFKCtrl.IKFK" "LegFKUU.i";
connectAttr "LegIKFKCtrl.IKFK" "LegIKScaleBC.b";
connectAttr "LegIKCtrl.s" "LegIKScaleBC.c2";
connectAttr "LegIKFKCtrl.IKFK" "LegFKScaleBC.b";
connectAttr "AnkleFKCtrl.s" "LegFKScaleBC.c1";
connectAttr "LegIKFKCtrl.AutoHideIKFK" "LegAutoHideCD.ft";
connectAttr "LegAutoHideRV.ox" "LegAutoHideCD.ctr";
connectAttr "LegIKFKCtrl.IKFK" "LegAutoHideCD.ctg";
connectAttr "LegIKFKCtrl.IKFK" "LegAutoHideRV.ix";
connectAttr "LegIKCtrlPosMM.o" "LegIKCtrlPosDM.imat";
connectAttr "IKFootRollPos.wm" "LegIKCtrlPosMM.i[2]";
connectAttr "LegIKCtrlPos.pim" "LegIKCtrlPosMM.i[3]";
connectAttr "LegIKCtrl.InOut" "FootInRotPos_rotateX.i";
connectAttr "LegIKCtrl.InOut" "FootOutRotPos_rotateX.i";
connectAttr "LegIKCtrl.FootRoll" "HeelRollPivPos_rotateY.i";
connectAttr "LegIKCtrl.HeelPivot" "HeelRollPivPos_rotateZ.i";
connectAttr "LegIKCtrl.ToeRoll" "ToeRollPivPos_rotateY.i";
connectAttr "LegIKCtrl.ToePivot" "ToeRollPivPos_rotateZ.i";
connectAttr "LegIKCtrl.BallPivot" "BallPivPos_rotateZ.i";
connectAttr "LegIKCtrl.FootRoll" "FootRollPos_rotateY.i";
connectAttr "LegIKCtrl.BallRoll" "BallRollPos_rotateY.i";
connectAttr "LegIKFKCtrlGrpMM.o" "LegIKFKCtrlGrpDM.imat";
connectAttr "Leg3DrvJnt.wm" "LegIKFKCtrlGrpMM.i[2]";
connectAttr "LegIKFKCtrlGrp.pim" "LegIKFKCtrlGrpMM.i[3]";
connectAttr "LegUpArcMM.o" "LegUpArcDM.imat";
connectAttr "LegUpArcCM.omat" "LegUpArcMM.i[0]";
connectAttr "LegUpArcCtrlGrp.pim" "LegUpArcMM.i[1]";
connectAttr "LegUpArcPC.p" "LegUpArcCM.it";
connectAttr "LegArcBlendShape.og[0]" "LegUpArcPC.ic";
connectAttr "LeftLegArcBlendShapeGroupParts.og" "LegArcBlendShape.ip[0].ig";
connectAttr "LeftLegArcBlendShapeGroupId.id" "LegArcBlendShape.ip[0].gi";
connectAttr "LeftLegArcBlendShapeGroupParts1.og" "LegArcBlendShape.ip[1].ig";
connectAttr "LeftLegArcBlendShapeGroupId1.id" "LegArcBlendShape.ip[1].gi";
connectAttr "LegUpArcCrvShape.ws" "LegArcBlendShape.it[0].itg[0].iti[6000].igt";
connectAttr "LegDnArcCrvShape.ws" "LegArcBlendShape.it[1].itg[0].iti[6000].igt";
connectAttr "LegArcBlendShape_LegArcCrvGrp.o" "LegArcBlendShape.w[0]";
connectAttr "LeftLegArcBlendShapeGroupId.msg" "LeftLegArcBlendShapeSet.gn" -na;
connectAttr "LeftLegArcBlendShapeGroupId1.msg" "LeftLegArcBlendShapeSet.gn" -na;
connectAttr "LegUpIKCrvShape.iog.og[2]" "LeftLegArcBlendShapeSet.dsm" -na;
connectAttr "LegDnIKCrvShape.iog.og[2]" "LeftLegArcBlendShapeSet.dsm" -na;
connectAttr "LegArcBlendShape.msg" "LeftLegArcBlendShapeSet.ub[0]";
connectAttr "rebuildCurve5.oc" "LeftLegArcBlendShapeGroupParts.ig";
connectAttr "LeftLegArcBlendShapeGroupId.id" "LeftLegArcBlendShapeGroupParts.gi"
		;
connectAttr "LegUpIKCrvShapeOrig.ws" "rebuildCurve5.ic";
connectAttr "rebuildCurve6.oc" "LeftLegArcBlendShapeGroupParts1.ig";
connectAttr "LeftLegArcBlendShapeGroupId1.id" "LeftLegArcBlendShapeGroupParts1.gi"
		;
connectAttr "LegDnIKCrvShapeOrig.ws" "rebuildCurve6.ic";
connectAttr "LegIKFKCtrl.Arc" "LegArcBlendShape_LegArcCrvGrp.i";
connectAttr "LeftLeg1CsGroupParts.og" "Leg1CsHandleCluster.ip[0].ig";
connectAttr "LeftLeg1CsGroupId.id" "Leg1CsHandleCluster.ip[0].gi";
connectAttr "Leg1CsHandle.wm" "Leg1CsHandleCluster.ma";
connectAttr "Leg1CsHandleShape.x" "Leg1CsHandleCluster.x";
connectAttr "Leg1CsHandleZeroMtx.wim" "Leg1CsHandleCluster.pm";
connectAttr "LegUpIKCrv.wm" "Leg1CsHandleCluster.gm[0]";
connectAttr "LeftLeg1CsGroupId.msg" "LeftLeg1CsSet.gn" -na;
connectAttr "LegUpIKCrvShape.iog.og[3]" "LeftLeg1CsSet.dsm" -na;
connectAttr "Leg1CsHandleCluster.msg" "LeftLeg1CsSet.ub[0]";
connectAttr "LegArcBlendShape.og[0]" "LeftLeg1CsGroupParts.ig";
connectAttr "LeftLeg1CsGroupId.id" "LeftLeg1CsGroupParts.gi";
connectAttr "LegMidArcCtrlPBGrp_pointConstraint1.ctx" "LegMidArcCtrlPBGrpPB.itx2"
		;
connectAttr "LegMidArcCtrlPBGrp_pointConstraint1.cty" "LegMidArcCtrlPBGrpPB.ity2"
		;
connectAttr "LegMidArcCtrlPBGrp_pointConstraint1.ctz" "LegMidArcCtrlPBGrpPB.itz2"
		;
connectAttr "LegMidArcCtrlPBGrp_orientConstraint1.crx" "LegMidArcCtrlPBGrpPB.irx2"
		;
connectAttr "LegMidArcCtrlPBGrp_orientConstraint1.cry" "LegMidArcCtrlPBGrpPB.iry2"
		;
connectAttr "LegMidArcCtrlPBGrp_orientConstraint1.crz" "LegMidArcCtrlPBGrpPB.irz2"
		;
connectAttr "LegMidArcCtrlPBGrp.pbw" "LegMidArcCtrlPBGrpPB.w";
connectAttr "LeftLeg2UpCsGroupParts.og" "Leg2UpCsHandleCluster.ip[0].ig";
connectAttr "LeftLeg2UpCsGroupId.id" "Leg2UpCsHandleCluster.ip[0].gi";
connectAttr "Leg2UpCsHandle.wm" "Leg2UpCsHandleCluster.ma";
connectAttr "Leg2UpCsHandleShape.x" "Leg2UpCsHandleCluster.x";
connectAttr "Leg2UpCsHandleZeroMtx.wim" "Leg2UpCsHandleCluster.pm";
connectAttr "LegUpIKCrv.wm" "Leg2UpCsHandleCluster.gm[0]";
connectAttr "LeftLeg2UpCsGroupId.msg" "LeftLeg2UpCsSet.gn" -na;
connectAttr "LegUpIKCrvShape.iog.og[5]" "LeftLeg2UpCsSet.dsm" -na;
connectAttr "Leg2UpCsHandleCluster.msg" "LeftLeg2UpCsSet.ub[0]";
connectAttr "Leg1CsHandleCluster.og[0]" "LeftLeg2UpCsGroupParts.ig";
connectAttr "LeftLeg2UpCsGroupId.id" "LeftLeg2UpCsGroupParts.gi";
connectAttr "LeftLeg2DnCsGroupParts.og" "Leg2DnCsHandleCluster.ip[0].ig";
connectAttr "LeftLeg2DnCsGroupId.id" "Leg2DnCsHandleCluster.ip[0].gi";
connectAttr "Leg2DnCsHandle.wm" "Leg2DnCsHandleCluster.ma";
connectAttr "Leg2DnCsHandleShape.x" "Leg2DnCsHandleCluster.x";
connectAttr "Leg2DnCsHandleZeroMtx.wim" "Leg2DnCsHandleCluster.pm";
connectAttr "LegDnIKCrv.wm" "Leg2DnCsHandleCluster.gm[0]";
connectAttr "LeftLeg2DnCsGroupId.msg" "LeftLeg2DnCsSet.gn" -na;
connectAttr "LegDnIKCrvShape.iog.og[3]" "LeftLeg2DnCsSet.dsm" -na;
connectAttr "Leg2DnCsHandleCluster.msg" "LeftLeg2DnCsSet.ub[0]";
connectAttr "LegArcBlendShape.og[1]" "LeftLeg2DnCsGroupParts.ig";
connectAttr "LeftLeg2DnCsGroupId.id" "LeftLeg2DnCsGroupParts.gi";
connectAttr "LegDnArcMM.o" "LegDnArcDM.imat";
connectAttr "LegDnArcCM.omat" "LegDnArcMM.i[0]";
connectAttr "LegDnArcCtrlGrp.pim" "LegDnArcMM.i[1]";
connectAttr "LegDnArcPC.p" "LegDnArcCM.it";
connectAttr "LegArcBlendShape.og[1]" "LegDnArcPC.ic";
connectAttr "LeftLeg3CsGroupParts.og" "Leg3CsHandleCluster.ip[0].ig";
connectAttr "LeftLeg3CsGroupId.id" "Leg3CsHandleCluster.ip[0].gi";
connectAttr "Leg3CsHandle.wm" "Leg3CsHandleCluster.ma";
connectAttr "Leg3CsHandleShape.x" "Leg3CsHandleCluster.x";
connectAttr "Leg3CsHandleZeroMtx.wim" "Leg3CsHandleCluster.pm";
connectAttr "LegDnIKCrv.wm" "Leg3CsHandleCluster.gm[0]";
connectAttr "LeftLeg3CsGroupId.msg" "LeftLeg3CsSet.gn" -na;
connectAttr "LegDnIKCrvShape.iog.og[5]" "LeftLeg3CsSet.dsm" -na;
connectAttr "Leg3CsHandleCluster.msg" "LeftLeg3CsSet.ub[0]";
connectAttr "Leg2DnCsHandleCluster.og[0]" "LeftLeg3CsGroupParts.ig";
connectAttr "LeftLeg3CsGroupId.id" "LeftLeg3CsGroupParts.gi";
connectAttr "UpLegSysConsGrpMM.o" "UpLegSysConsGrpDM.imat";
connectAttr "LegRootCtrl.wm" "UpLegSysConsGrpMM.i[2]";
connectAttr "UpLegSysConsGrp.pim" "UpLegSysConsGrpMM.i[3]";
connectAttr "LegStretchSR.oz" "LegSquashBA.ab";
connectAttr "LegSquashPowMD.ox" "LegSquashBA.i[1]";
connectAttr "LegIKCtrl.Stretch" "LegStretchSR.vx";
connectAttr "LegIKCtrl.PVStretch" "LegStretchSR.vy";
connectAttr "LegIKCtrl.Squash" "LegStretchSR.vz";
connectAttr "LegUpSlideML.o" "LegSquashPowMD.i1x";
connectAttr "LegPVStretch1BA.o" "LegUpSlideML.i1";
connectAttr "LegUpSlideAL.o" "LegUpSlideML.i2";
connectAttr "LegStretchSR.oy" "LegPVStretch1BA.ab";
connectAttr "LegStretchDvMD.ox" "LegPVStretch1BA.i[0]";
connectAttr "LegPvStretch1DvMD.ox" "LegPVStretch1BA.i[1]";
connectAttr "LegCD.ocr" "LegStretchDvMD.i1x";
connectAttr "LegCD.ocg" "LegStretchDvMD.i2x";
connectAttr "LegAllDB.d" "LegCD.ft";
connectAttr "LegSumDistAL.o" "LegCD.st";
connectAttr "LegStretchBA.o" "LegCD.ctr";
connectAttr "LegSumDistAL.o" "LegCD.ctg";
connectAttr "LegIK1Pos.t" "LegAllDB.p1";
connectAttr "LegIKMovePos.t" "LegAllDB.p2";
connectAttr "Leg1DB.d" "LegSumDistAL.i1";
connectAttr "Leg2DB.d" "LegSumDistAL.i2";
connectAttr "LegIK1Pos.t" "Leg1DB.p1";
connectAttr "LegIK2Pos.t" "Leg1DB.p2";
connectAttr "LegIK2Pos.t" "Leg2DB.p1";
connectAttr "LegIK3Pos.t" "Leg2DB.p2";
connectAttr "LegSumDistAL.o" "LegStretchBA.i[0]";
connectAttr "LegAllDB.d" "LegStretchBA.i[1]";
connectAttr "LegStretchSR.ox" "LegStretchBA.ab";
connectAttr "LegPVStretch1DB.d" "LegPvStretch1DvMD.i1x";
connectAttr "Leg1DB.d" "LegPvStretch1DvMD.i2x";
connectAttr "LegIK1Pos.t" "LegPVStretch1DB.p1";
connectAttr "LegPVStretchPos.t" "LegPVStretch1DB.p2";
connectAttr "LegUpSlideFilterML.o" "LegUpSlideAL.i1";
connectAttr "LegIKCtrl.UpSlide" "LegUpSlideFilterML.i1";
connectAttr "Leg1IKJnt.rx" "Leg1DrvJntRotPB.irx1";
connectAttr "Leg1IKJnt.ry" "Leg1DrvJntRotPB.iry1";
connectAttr "Leg1IKJnt.rz" "Leg1DrvJntRotPB.irz1";
connectAttr "Leg1FKJnt.rx" "Leg1DrvJntRotPB.irx2";
connectAttr "Leg1FKJnt.ry" "Leg1DrvJntRotPB.iry2";
connectAttr "Leg1FKJnt.rz" "Leg1DrvJntRotPB.irz2";
connectAttr "LegIKFKCtrl.IKFK" "Leg1DrvJntRotPB.w";
connectAttr "Leg1IKJnt.t" "Leg1DrvJntTrsBC.c2";
connectAttr "Leg1FKJnt.t" "Leg1DrvJntTrsBC.c1";
connectAttr "LegIKFKCtrl.IKFK" "Leg1DrvJntTrsBC.b";
connectAttr "Leg2IKJnt.t" "Leg2DrvJntTrsBC.c2";
connectAttr "Leg2FKJnt.t" "Leg2DrvJntTrsBC.c1";
connectAttr "LegIKFKCtrl.IKFK" "Leg2DrvJntTrsBC.b";
connectAttr "Leg2IKJnt.rx" "Leg2DrvJntRotPB.irx1";
connectAttr "Leg2IKJnt.ry" "Leg2DrvJntRotPB.iry1";
connectAttr "Leg2IKJnt.rz" "Leg2DrvJntRotPB.irz1";
connectAttr "Leg2FKJnt.rx" "Leg2DrvJntRotPB.irx2";
connectAttr "Leg2FKJnt.ry" "Leg2DrvJntRotPB.iry2";
connectAttr "Leg2FKJnt.rz" "Leg2DrvJntRotPB.irz2";
connectAttr "LegIKFKCtrl.IKFK" "Leg2DrvJntRotPB.w";
connectAttr "Leg3IKJnt.t" "Leg3DrvJntTrsBC.c2";
connectAttr "Leg3FKJnt.t" "Leg3DrvJntTrsBC.c1";
connectAttr "LegIKFKCtrl.IKFK" "Leg3DrvJntTrsBC.b";
connectAttr "Leg3AssiAPosMM.o" "Leg3AssiAPosDM.imat";
connectAttr "AnkleDrvJnt.wm" "Leg3AssiAPosMM.i[2]";
connectAttr "Leg3AssiAPos.pim" "Leg3AssiAPosMM.i[3]";
connectAttr "Leg3TwistFixGrpMM.o" "Leg3TwistFixGrpDM.imat";
connectAttr "Leg3DrvJnt.wm" "Leg3TwistFixGrpMM.i[2]";
connectAttr "Leg3TwistFixGrp.pim" "Leg3TwistFixGrpMM.i[3]";
connectAttr "Leg3TwsitFixTgPosDM.ot" "Leg3TwsitFixTgPosPB.it1";
connectAttr "Leg3TwsitFixTgPosDM1.ot" "Leg3TwsitFixTgPosPB.it2";
connectAttr "Leg3TwsitFixTgPosMM.o" "Leg3TwsitFixTgPosDM.imat";
connectAttr "Leg3AssiAPos.wm" "Leg3TwsitFixTgPosMM.i[2]";
connectAttr "Leg3TwsitFixTgPos.pim" "Leg3TwsitFixTgPosMM.i[3]";
connectAttr "Leg3TwsitFixTgPosMM1.o" "Leg3TwsitFixTgPosDM1.imat";
connectAttr "Leg3AssiBPos.wm" "Leg3TwsitFixTgPosMM1.i[2]";
connectAttr "Leg3TwsitFixTgPos.pim" "Leg3TwsitFixTgPosMM1.i[3]";
connectAttr "Leg2TwistFixGrpMM.o" "Leg2TwistFixGrpDM.imat";
connectAttr "Leg2DrvJnt.wm" "Leg2TwistFixGrpMM.i[2]";
connectAttr "Leg2TwistFixGrp.pim" "Leg2TwistFixGrpMM.i[3]";
connectAttr "LegIKFKCtrl.DnTwistFix" "unitConversion85.i";
connectAttr "Leg2TwsitFixTgPosDM.ot" "Leg2TwsitFixTgPosPB.it1";
connectAttr "Leg2TwsitFixTgPosDM1.ot" "Leg2TwsitFixTgPosPB.it2";
connectAttr "Leg2TwsitFixTgPosMM.o" "Leg2TwsitFixTgPosDM.imat";
connectAttr "Leg2AssiAPos.wm" "Leg2TwsitFixTgPosMM.i[2]";
connectAttr "Leg2TwsitFixTgPos.pim" "Leg2TwsitFixTgPosMM.i[3]";
connectAttr "Leg2TwsitFixTgPosMM1.o" "Leg2TwsitFixTgPosDM1.imat";
connectAttr "Leg2AssiBPos.wm" "Leg2TwsitFixTgPosMM1.i[2]";
connectAttr "Leg2TwsitFixTgPos.pim" "Leg2TwsitFixTgPosMM1.i[3]";
connectAttr "LegUpSlideML.o" "LegUpTxML.i1";
connectAttr "Leg2IKJnt.Length" "LegUpTxML.i2";
connectAttr "LegDnSlideML.o" "LegDnTxML.i1";
connectAttr "Leg3IKJnt.Length" "LegDnTxML.i2";
connectAttr "LegPVStretch2BA.o" "LegDnSlideML.i1";
connectAttr "LegDnSlideAL.o" "LegDnSlideML.i2";
connectAttr "LegStretchSR.oy" "LegPVStretch2BA.ab";
connectAttr "LegStretchDvMD.ox" "LegPVStretch2BA.i[0]";
connectAttr "LegsPvStretch2DvMD.ox" "LegPVStretch2BA.i[1]";
connectAttr "LegPVStretch2DB.d" "LegsPvStretch2DvMD.i1x";
connectAttr "Leg2DB.d" "LegsPvStretch2DvMD.i2x";
connectAttr "LegPVStretchPos.t" "LegPVStretch2DB.p1";
connectAttr "LegIKMovePos.t" "LegPVStretch2DB.p2";
connectAttr "LegDnSlideFilterML.o" "LegDnSlideAL.i1";
connectAttr "LegIKCtrl.DnSlide" "LegDnSlideFilterML.i1";
connectAttr "Leg3IKJntQP.oq" "Leg3IKJntQE.iq";
connectAttr "Leg3IKJntDM.oq" "Leg3IKJntQP.iq1";
connectAttr "Leg3IKJntQI.oq" "Leg3IKJntQP.iq2";
connectAttr "Leg3IKJntMM.o" "Leg3IKJntDM.imat";
connectAttr "LegIKCtrlPos.wm" "Leg3IKJntMM.i[2]";
connectAttr "Leg3IKJnt.pim" "Leg3IKJntMM.i[3]";
connectAttr "Leg3IKJntEQ.oq" "Leg3IKJntQI.iq";
connectAttr "Leg3IKJnt.jo" "Leg3IKJntEQ.irt";
connectAttr "Leg1FKJntMM.o" "Leg1FKJntDM.imat";
connectAttr "ThighFKCtrl.wm" "Leg1FKJntMM.i[2]";
connectAttr "Leg1FKJnt.pim" "Leg1FKJntMM.i[3]";
connectAttr "Leg1FKJntQP.oq" "Leg1FKJntQE.iq";
connectAttr "Leg1FKJntDM.oq" "Leg1FKJntQP.iq1";
connectAttr "Leg1FKJntQI.oq" "Leg1FKJntQP.iq2";
connectAttr "Leg1FKJntEQ.oq" "Leg1FKJntQI.iq";
connectAttr "Leg1FKJnt.jo" "Leg1FKJntEQ.irt";
connectAttr "Leg2FKJntMM.o" "Leg2FKJntDM.imat";
connectAttr "KneeFKCtrl.wm" "Leg2FKJntMM.i[2]";
connectAttr "Leg2FKJnt.pim" "Leg2FKJntMM.i[3]";
connectAttr "Leg2FKJntQP.oq" "Leg2FKJntQE.iq";
connectAttr "Leg2FKJntDM.oq" "Leg2FKJntQP.iq1";
connectAttr "Leg2FKJntQI.oq" "Leg2FKJntQP.iq2";
connectAttr "Leg2FKJntEQ.oq" "Leg2FKJntQI.iq";
connectAttr "Leg2FKJnt.jo" "Leg2FKJntEQ.irt";
connectAttr "Leg3FKJntMM.o" "Leg3FKJntDM.imat";
connectAttr "AnkleFKCtrl.wm" "Leg3FKJntMM.i[2]";
connectAttr "Leg3FKJnt.pim" "Leg3FKJntMM.i[3]";
connectAttr "Leg3FKJntQP.oq" "Leg3FKJntQE.iq";
connectAttr "Leg3FKJntDM.oq" "Leg3FKJntQP.iq1";
connectAttr "Leg3FKJntQI.oq" "Leg3FKJntQP.iq2";
connectAttr "Leg3FKJntEQ.oq" "Leg3FKJntQI.iq";
connectAttr "Leg3FKJnt.jo" "Leg3FKJntEQ.irt";
connectAttr "LegUpIK1DvdMD.ox" "LegUpIK1CrvPointMD.i1";
connectAttr "LegUpIK1DB.d" "LegUpIK1DvdMD.i1x";
connectAttr "LegUpIK1ChkDB.d" "LegUpIK1DvdMD.i1y";
connectAttr "LegUpIK1ChkDB.d" "LegUpIK1DvdMD.i2x";
connectAttr "LegUpIK1DB.d" "LegUpIK1DvdMD.i2y";
connectAttr "LegUpIK1PC.p" "LegUpIK1DB.p1";
connectAttr "LegUpIK2PC.p" "LegUpIK1DB.p2";
connectAttr "LegUpIKCrvShape.ws" "LegUpIK1PC.ic";
connectAttr "LegUpIKCrvShape.ws" "LegUpIK2PC.ic";
connectAttr "LegUpIK1ChkPC.p" "LegUpIK1ChkDB.p1";
connectAttr "LegUpIK2ChkPC.p" "LegUpIK1ChkDB.p2";
connectAttr "LegUpIKChkCrvShape.ws" "LegUpIK1ChkPC.ic";
connectAttr "LegUpIKChkCrvShape.ws" "LegUpIK2ChkPC.ic";
connectAttr "LegUpIK2DvdMD.ox" "LegUpIK2CrvPointMD.i1";
connectAttr "LegUpIK2DB.d" "LegUpIK2DvdMD.i1x";
connectAttr "LegUpIK2ChkDB.d" "LegUpIK2DvdMD.i1y";
connectAttr "LegUpIK2ChkDB.d" "LegUpIK2DvdMD.i2x";
connectAttr "LegUpIK2DB.d" "LegUpIK2DvdMD.i2y";
connectAttr "LegUpIK2PC.p" "LegUpIK2DB.p1";
connectAttr "LegUpIK3PC.p" "LegUpIK2DB.p2";
connectAttr "LegUpIKCrvShape.ws" "LegUpIK3PC.ic";
connectAttr "LegUpIK2ChkPC.p" "LegUpIK2ChkDB.p1";
connectAttr "LegUpIK3ChkPC.p" "LegUpIK2ChkDB.p2";
connectAttr "LegUpIKChkCrvShape.ws" "LegUpIK3ChkPC.ic";
connectAttr "LegUpIK3DvdMD.ox" "LegUpIK3CrvPointMD.i1";
connectAttr "LegUpIK3DB.d" "LegUpIK3DvdMD.i1x";
connectAttr "LegUpIK3ChkDB.d" "LegUpIK3DvdMD.i1y";
connectAttr "LegUpIK3ChkDB.d" "LegUpIK3DvdMD.i2x";
connectAttr "LegUpIK3DB.d" "LegUpIK3DvdMD.i2y";
connectAttr "LegUpIK3PC.p" "LegUpIK3DB.p1";
connectAttr "LegUpIK4PC.p" "LegUpIK3DB.p2";
connectAttr "LegUpIKCrvShape.ws" "LegUpIK4PC.ic";
connectAttr "LegUpIK3ChkPC.p" "LegUpIK3ChkDB.p1";
connectAttr "LegUpIK4ChkPC.p" "LegUpIK3ChkDB.p2";
connectAttr "LegUpIKChkCrvShape.ws" "LegUpIK4ChkPC.ic";
connectAttr "LegUpIK4DvdMD.ox" "LegUpIK4CrvPointMD.i1";
connectAttr "LegUpIK4DB.d" "LegUpIK4DvdMD.i1x";
connectAttr "LegUpIK4ChkDB.d" "LegUpIK4DvdMD.i1y";
connectAttr "LegUpIK4ChkDB.d" "LegUpIK4DvdMD.i2x";
connectAttr "LegUpIK4DB.d" "LegUpIK4DvdMD.i2y";
connectAttr "LegUpIK4PC.p" "LegUpIK4DB.p1";
connectAttr "LegUpIK5PC.p" "LegUpIK4DB.p2";
connectAttr "LegUpIKCrvShape.ws" "LegUpIK5PC.ic";
connectAttr "LegUpIK4ChkPC.p" "LegUpIK4ChkDB.p1";
connectAttr "LegUpIK5ChkPC.p" "LegUpIK4ChkDB.p2";
connectAttr "LegUpIKChkCrvShape.ws" "LegUpIK5ChkPC.ic";
connectAttr "LegDnIK1DvdMD.ox" "LegDnIK1CrvPointMD.i1";
connectAttr "LegDnIK1DB.d" "LegDnIK1DvdMD.i1x";
connectAttr "LegDnIK1ChkDB.d" "LegDnIK1DvdMD.i1y";
connectAttr "LegDnIK1ChkDB.d" "LegDnIK1DvdMD.i2x";
connectAttr "LegDnIK1DB.d" "LegDnIK1DvdMD.i2y";
connectAttr "LegDnIK1PC.p" "LegDnIK1DB.p1";
connectAttr "LegDnIK2PC.p" "LegDnIK1DB.p2";
connectAttr "LegDnIKCrvShape.ws" "LegDnIK1PC.ic";
connectAttr "LegDnIKCrvShape.ws" "LegDnIK2PC.ic";
connectAttr "LegDnIK1ChkPC.p" "LegDnIK1ChkDB.p1";
connectAttr "LegDnIK2ChkPC.p" "LegDnIK1ChkDB.p2";
connectAttr "LegDnIKChkCrvShape.ws" "LegDnIK1ChkPC.ic";
connectAttr "LegDnIKChkCrvShape.ws" "LegDnIK2ChkPC.ic";
connectAttr "LegDnIK2DvdMD.ox" "LegDnIK2CrvPointMD.i1";
connectAttr "LegDnIK2DB.d" "LegDnIK2DvdMD.i1x";
connectAttr "LegDnIK2ChkDB.d" "LegDnIK2DvdMD.i1y";
connectAttr "LegDnIK2ChkDB.d" "LegDnIK2DvdMD.i2x";
connectAttr "LegDnIK2DB.d" "LegDnIK2DvdMD.i2y";
connectAttr "LegDnIK2PC.p" "LegDnIK2DB.p1";
connectAttr "LegDnIK3PC.p" "LegDnIK2DB.p2";
connectAttr "LegDnIKCrvShape.ws" "LegDnIK3PC.ic";
connectAttr "LegDnIK2ChkPC.p" "LegDnIK2ChkDB.p1";
connectAttr "LegDnIK3ChkPC.p" "LegDnIK2ChkDB.p2";
connectAttr "LegDnIKChkCrvShape.ws" "LegDnIK3ChkPC.ic";
connectAttr "LegDnIK3DvdMD.ox" "LegDnIK3CrvPointMD.i1";
connectAttr "LegDnIK3DB.d" "LegDnIK3DvdMD.i1x";
connectAttr "LegDnIK3ChkDB.d" "LegDnIK3DvdMD.i1y";
connectAttr "LegDnIK3ChkDB.d" "LegDnIK3DvdMD.i2x";
connectAttr "LegDnIK3DB.d" "LegDnIK3DvdMD.i2y";
connectAttr "LegDnIK3PC.p" "LegDnIK3DB.p1";
connectAttr "LegDnIK4PC.p" "LegDnIK3DB.p2";
connectAttr "LegDnIKCrvShape.ws" "LegDnIK4PC.ic";
connectAttr "LegDnIK3ChkPC.p" "LegDnIK3ChkDB.p1";
connectAttr "LegDnIK4ChkPC.p" "LegDnIK3ChkDB.p2";
connectAttr "LegDnIKChkCrvShape.ws" "LegDnIK4ChkPC.ic";
connectAttr "LegDnIK4DvdMD.ox" "LegDnIK4CrvPointMD.i1";
connectAttr "LegDnIK4DB.d" "LegDnIK4DvdMD.i1x";
connectAttr "LegDnIK4ChkDB.d" "LegDnIK4DvdMD.i1y";
connectAttr "LegDnIK4ChkDB.d" "LegDnIK4DvdMD.i2x";
connectAttr "LegDnIK4DB.d" "LegDnIK4DvdMD.i2y";
connectAttr "LegDnIK4PC.p" "LegDnIK4DB.p1";
connectAttr "LegDnIK5PC.p" "LegDnIK4DB.p2";
connectAttr "LegDnIKCrvShape.ws" "LegDnIK5PC.ic";
connectAttr "LegDnIK4ChkPC.p" "LegDnIK4ChkDB.p1";
connectAttr "LegDnIK5ChkPC.p" "LegDnIK4ChkDB.p2";
connectAttr "LegDnIKChkCrvShape.ws" "LegDnIK5ChkPC.ic";
connectAttr "Leg1TwistFixGrpMM.o" "Leg1TwistFixGrpDM.imat";
connectAttr "Leg1DrvJnt.wm" "Leg1TwistFixGrpMM.i[2]";
connectAttr "Leg1TwistFixGrp.pim" "Leg1TwistFixGrpMM.i[3]";
connectAttr "LegIKFKCtrl.UpTwistFix" "unitConversion84.i";
connectAttr "LegtwistFixVectorProduct.ox" "Leg1TwistFixUpvec_rotateZ.i";
connectAttr "Leg1TwsitFixTgPos.t" "LegtwistFixVectorProduct.i1";
connectAttr "Leg1TwsitFixTgPosMM.o" "Leg1TwsitFixTgPosDM.imat";
connectAttr "Leg2DrvJnt.wm" "Leg1TwsitFixTgPosMM.i[2]";
connectAttr "Leg1TwsitFixTgPos.pim" "Leg1TwsitFixTgPosMM.i[3]";
connectAttr "LegIKhMM.o" "LegIKhDM.imat";
connectAttr "LegIKCtrlPos.wm" "LegIKhMM.i[2]";
connectAttr "LegIKh.pim" "LegIKhMM.i[3]";
connectAttr "LegPVSysGrpMM.o" "LegPVSysGrpDM.imat";
connectAttr "LegPVSysGrp.pim" "LegPVSysGrpMM.i[3]";
connectAttr "LegTwistRvsML.o" "unitConversion80.i";
connectAttr "LegIKCtrl.Twist" "LegTwistRvsML.i1";
connectAttr "LegPVVP.ox" "LegPVUpvec_rotateZ.i";
connectAttr "LegPVTgPos.t" "LegPVVP.i1";
connectAttr "LegPVTgPosMM.o" "LegPVTgPosDM.imat";
connectAttr "LegIKCtrlPos.wm" "LegPVTgPosMM.i[2]";
connectAttr "LegPVTgPos.pim" "LegPVTgPosMM.i[3]";
connectAttr "LegIKMovePosMM.o" "LegIKMovePosDM.imat";
connectAttr "LegIKCtrlPos.wm" "LegIKMovePosMM.i[2]";
connectAttr "LegIKMovePos.pim" "LegIKMovePosMM.i[3]";
connectAttr "LegPVStretchPosMM.o" "LegPVStretchPosDM.imat";
connectAttr "LegPoleVectorCtrl.wm" "LegPVStretchPosMM.i[2]";
connectAttr "LegPVStretchPos.pim" "LegPVStretchPosMM.i[3]";
connectAttr "Leg1ArcPosMM.o" "Leg1ArcPosDM.imat";
connectAttr "Leg1DrvJnt.wm" "Leg1ArcPosMM.i[2]";
connectAttr "Leg1ArcPos.pim" "Leg1ArcPosMM.i[3]";
connectAttr "Leg2ArcPosMM.o" "Leg2ArcPosDM.imat";
connectAttr "Leg2DrvJnt.wm" "Leg2ArcPosMM.i[2]";
connectAttr "Leg2ArcPos.pim" "Leg2ArcPosMM.i[3]";
connectAttr "Leg3ArcPosMM.o" "Leg3ArcPosDM.imat";
connectAttr "Leg3DrvJnt.wm" "Leg3ArcPosMM.i[2]";
connectAttr "Leg3ArcPos.pim" "Leg3ArcPosMM.i[3]";
connectAttr "Leg2ArcPos.t" "LegDnArcDB.p1";
connectAttr "Leg3ArcPos.t" "LegDnArcDB.p2";
connectAttr "LegArcDistSumALAL.o" "LegArcDistMultML.i1";
connectAttr "LegUpArcDB.d" "LegArcDistSumALAL.i1";
connectAttr "LegDnArcDB.d" "LegArcDistSumALAL.i2";
connectAttr "Leg1ArcPos.t" "LegUpArcDB.p1";
connectAttr "Leg2ArcPos.t" "LegUpArcDB.p2";
connectAttr "LeftLegArcDC.oc[0]" "LegUpArcCrvRC.ic";
connectAttr "LegTPC.oc" "LeftLegArcDC.ic";
connectAttr "LegAngleSR.ox" "LeftLegArcDC.p[0]";
connectAttr "Leg1ArcPos.t" "LegTPC.pt1";
connectAttr "LegArcPointPos.t" "LegTPC.pt2";
connectAttr "Leg3ArcPos.t" "LegTPC.pt3";
connectAttr "LegAngleAL.o" "LegAngleSR.omx";
connectAttr "unitConversion83.o" "LegAngleSR.vx";
connectAttr "LegTPC.s" "LegAngleSR.mx";
connectAttr "unitConversion81.o" "LegAngleAL.i1";
connectAttr "unitConversion82.o" "LegAngleAL.i2";
connectAttr "LegOutAG.a" "unitConversion81.i";
connectAttr "LegVec3ToArcPA.o3" "LegOutAG.v1";
connectAttr "LegVec3To1PA.o3" "LegOutAG.v2";
connectAttr "Leg3ArcPos.t" "LegVec3ToArcPA.i3[0]";
connectAttr "LegArcPointPos.t" "LegVec3ToArcPA.i3[1]";
connectAttr "Leg3ArcPos.t" "LegVec3To1PA.i3[0]";
connectAttr "Leg1ArcPos.t" "LegVec3To1PA.i3[1]";
connectAttr "LegInAG.a" "unitConversion82.i";
connectAttr "LegVecArcTo1PA.o3" "LegInAG.v1";
connectAttr "LegVec3To1PA.o3" "LegInAG.v2";
connectAttr "LegArcPointPos.t" "LegVecArcTo1PA.i3[0]";
connectAttr "Leg1ArcPos.t" "LegVecArcTo1PA.i3[1]";
connectAttr "LegOutAG.a" "unitConversion83.i";
connectAttr "LeftLegArcDC.oc[1]" "LegDnArcCrvRC.ic";
connectAttr "LegUpIKChkCrvMM.o" "LegUpIKChkCrvDM.imat";
connectAttr "Leg1DrvJnt.wm" "LegUpIKChkCrvMM.i[2]";
connectAttr "LegUpIKChkCrv.pim" "LegUpIKChkCrvMM.i[3]";
connectAttr "LegDnIKChkCrvMM.o" "LegDnIKChkCrvDM.imat";
connectAttr "Leg2DrvJnt.wm" "LegDnIKChkCrvMM.i[2]";
connectAttr "LegDnIKChkCrv.pim" "LegDnIKChkCrvMM.i[3]";
connectAttr "AnkleConsGrpMM.o" "AnkleConsGrpDM.imat";
connectAttr "Leg3DrvJnt.wm" "AnkleConsGrpMM.i[2]";
connectAttr "AnkleConsGrp.pim" "AnkleConsGrpMM.i[3]";
connectAttr "AnkleFKCtrl.s" "AnkleFKScaleBC.c1";
connectAttr "LegIKFKCtrl.IKFK" "AnkleFKScaleBC.b";
connectAttr "LegIKCtrl.s" "AnkleIKScaleBC.c2";
connectAttr "LegIKFKCtrl.IKFK" "AnkleIKScaleBC.b";
connectAttr "AnkleIKJntGrpMM.o" "AnkleIKJntGrpDM.imat";
connectAttr "Leg3IKJnt.wm" "AnkleIKJntGrpMM.i[2]";
connectAttr "AnkleIKJntGrp.pim" "AnkleIKJntGrpMM.i[3]";
connectAttr "BallIKCtrlPrtGrpMM.o" "BallIKCtrlPrtGrpDM.imat";
connectAttr "AnkleIKJnt.wm" "BallIKCtrlPrtGrpMM.i[2]";
connectAttr "BallIKCtrlPrtGrp.pim" "BallIKCtrlPrtGrpMM.i[3]";
connectAttr "BallIKCtrlGrpMM.o" "BallIKCtrlGrpDM.imat";
connectAttr "BallIKJnt.wm" "BallIKCtrlGrpMM.i[2]";
connectAttr "BallIKCtrlGrp.pim" "BallIKCtrlGrpMM.i[3]";
connectAttr "BallFKJntMM.o" "BallFKJntDM.imat";
connectAttr "BallFKCtrl.wm" "BallFKJntMM.i[2]";
connectAttr "BallFKJnt.pim" "BallFKJntMM.i[3]";
connectAttr "BallFKJntQP.oq" "BallFKJntQE.iq";
connectAttr "BallFKJntDM.oq" "BallFKJntQP.iq1";
connectAttr "BallFKJntQI.oq" "BallFKJntQP.iq2";
connectAttr "BallFKJntEQ.oq" "BallFKJntQI.iq";
connectAttr "BallFKJnt.jo" "BallFKJntEQ.irt";
connectAttr "AnkleIKJnt.t" "AnkleDrvJntTrsBC.c2";
connectAttr "AnkleFKJnt.t" "AnkleDrvJntTrsBC.c1";
connectAttr "LegIKFKCtrl.IKFK" "AnkleDrvJntTrsBC.b";
connectAttr "AnkleIKJnt.rx" "AnkleDrvJntRotPB.irx1";
connectAttr "AnkleIKJnt.ry" "AnkleDrvJntRotPB.iry1";
connectAttr "AnkleIKJnt.rz" "AnkleDrvJntRotPB.irz1";
connectAttr "AnkleFKJnt.rx" "AnkleDrvJntRotPB.irx2";
connectAttr "AnkleFKJnt.ry" "AnkleDrvJntRotPB.iry2";
connectAttr "AnkleFKJnt.rz" "AnkleDrvJntRotPB.irz2";
connectAttr "LegIKFKCtrl.IKFK" "AnkleDrvJntRotPB.w";
connectAttr "BallTrsDM.ot" "BallDrvJntTrsBC.c2";
connectAttr "BallFKJnt.t" "BallDrvJntTrsBC.c1";
connectAttr "LegIKFKCtrl.IKFK" "BallDrvJntTrsBC.b";
connectAttr "BallTrsMM.o" "BallTrsDM.imat";
connectAttr "BallIKCtrl.m" "BallTrsMM.i[0]";
connectAttr "BallIKCtrlGrp.m" "BallTrsMM.i[1]";
connectAttr "BallRotDM.orx" "BallDrvJntRotPB.irx1";
connectAttr "BallRotDM.ory" "BallDrvJntRotPB.iry1";
connectAttr "BallRotDM.orz" "BallDrvJntRotPB.irz1";
connectAttr "BallFKJnt.rx" "BallDrvJntRotPB.irx2";
connectAttr "BallFKJnt.ry" "BallDrvJntRotPB.iry2";
connectAttr "BallFKJnt.rz" "BallDrvJntRotPB.irz2";
connectAttr "LegIKFKCtrl.IKFK" "BallDrvJntRotPB.w";
connectAttr "BallRotMM.o" "BallRotDM.imat";
connectAttr "BallIKCtrl.m" "BallRotMM.i[0]";
connectAttr "BallIKJntOrIM.omat" "BallRotMM.i[1]";
connectAttr "BallIKCtrlGrp.m" "BallRotMM.i[2]";
connectAttr "BallIKJntOrCM.omat" "BallIKJntOrIM.imat";
connectAttr "BallIKJnt.jo" "BallIKJntOrCM.ir";
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=idStructure:int32=ID";
dataStructure -fmt "raw" -as "name=faceConnectOutputStructure:bool=faceConnectOutput:string[200]=faceConnectOutputAttributes:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_FBX:string=54";
dataStructure -fmt "raw" -as "name=externalContentTablZ:string=nodZ:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
dataStructure -fmt "raw" -as "name=faceConnectMarkerStructure:bool=faceConnectMarker:string[200]=faceConnectOutputGroups";
dataStructure -fmt "raw" -as "name=FBXFastExportSetting_MB:string=19424";
// End of Leg.ma
