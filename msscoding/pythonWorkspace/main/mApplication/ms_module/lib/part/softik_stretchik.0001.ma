//Maya ASCII 2016 scene
//Name: softik_stretchik.0001.ma
//Last modified: Thu, Aug 17, 2017 11:44:27 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "3B4E168A-4BBD-8877-D804-11BF2984DCB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.4876641279737939 30.501089237129424 19.026166762984808 ;
	setAttr ".r" -type "double3" -57.338352738422138 1.4000000021295986 -3.9768804912986736e-016 ;
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-015 0 ;
	setAttr ".rpt" -type "double3" 3.8486098634124806e-016 -2.4325850540797535e-016 
		-8.1051535481235598e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "081DCFF6-4DC9-2D39-B1D2-CEBDBB4720BE";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.356365108884653;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6 -8.8817841970012523e-016 8.8817841970012523e-016 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FF35A8D1-40CF-BAFF-E6AD-25B4D2804372";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6892950391644899 100.1 -1.148825065274149 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4F56BAE1-463E-77C8-7A3A-2D9F6631EFC2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 21.018276762402071;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B30AEA71-4184-1EF4-7E14-ED94783DED1F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "98E9A935-4171-6106-C652-46AF9AE83F22";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4C6549E3-4704-0F9B-E970-2A95AF339311";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9C66AEAF-48DE-9BE0-87C4-789CF07C5442";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.0392366621977391;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "input_arm_grp";
	rename -uid "7105D908-4604-AC2F-281C-0EB7191642F4";
createNode transform -n "input_arm" -p "input_arm_grp";
	rename -uid "2FB1A7F1-473E-DDBD-6921-FDBED8871231";
createNode transform -n "input_arm_space" -p "input_arm";
	rename -uid "3319C532-463A-CBF8-4D8B-1BB884242339";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
createNode nurbsCurve -n "input_arm_spaceShape" -p "input_arm_space";
	rename -uid "04B7A4A5-4BFB-D155-EDB9-28A2A5443A7F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.37297424974844756 0
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-008
		-4.8704625764779988e-008 0.0017109454156154248 -0.37141068195303772
		0 0.37297424974844756 0
		1.6234877121003848e-008 0.0017109454156154248 0.37141068195303772
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-008
		0 0.37297424974844756 0
		-0.37141068195303772 0.0017109454156154248 0
		1.6234877121003848e-008 0.0017109454156154248 0.37141068195303772
		0 0.37297424974844756 0
		-4.8704625764779988e-008 0.0017109454156154248 -0.37141068195303772
		-0.37141068195303772 0.0017109454156154248 0
		0 0.37297424974844756 0
		-4.8704625764779988e-008 0.0017109454156154248 -0.37141068195303772
		-4.5580985937280648e-017 -0.36969974937842187 0
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-008
		4.8704625764779988e-008 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-4.5580985937280648e-017 -0.36969974937842187 0
		4.8704625764779988e-008 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-008 0.0015635521416198163 0.37141068195303772
		-4.5580985937280648e-017 -0.36969974937842187 0
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-008 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-008
		-4.5580985937280648e-017 -0.36969974937842187 0
		-1.6234877121003848e-008 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-008
		;
createNode transform -n "fit_space" -p "input_arm_grp";
	rename -uid "51718C36-497C-5E9D-E6A1-E09036D97199";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "fit_shoulder" -p "fit_space";
	rename -uid "F17583B2-443D-0E9A-9C2A-67A9616A4B88";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 1.3514467918201221 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fit_shoulderShape" -p "fit_shoulder";
	rename -uid "EBAABD48-4D93-EE18-FD8B-949C88DFCCE4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-017 -0.70532923936843872 0
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		-8.6778935727786896e-017 -0.70532923936843872 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		;
createNode transform -n "fit_elbow" -p "fit_space";
	rename -uid "608B285D-4386-93FE-9734-B783EE84A33B";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 4.5857226622590215 0 -3 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fit_elbowShape" -p "fit_elbow";
	rename -uid "0DF3C8B4-4CF9-B656-E1C1-0EA33DD66B8E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-017 -0.70532923936843872 0
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		-8.6778935727786896e-017 -0.70532923936843872 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		;
createNode transform -n "fit_wrist" -p "fit_space";
	rename -uid "886F3AC0-4D70-25E3-1399-5D9D7DB04356";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fit_wristShape" -p "fit_wrist";
	rename -uid "2154D174-499C-B48F-DA06-FEBD4AE0ABBD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-017 -0.70532923936843872 0
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		-8.6778935727786896e-017 -0.70532923936843872 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		;
createNode nurbsCurve -n "fit_spaceShape" -p "fit_space";
	rename -uid "90086374-407D-C23D-758C-CA86C120016B";
	setAttr -k off ".v" no;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-008
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-008 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-008 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-017 -0.70532923936843872 0
		9.2725848332975147e-008 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-017 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		-8.6778935727786896e-017 -0.70532923936843872 0
		-3.0908619663705394e-008 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-008
		;
createNode transform -n "arm_motion_grp";
	rename -uid "2710BCAD-41E0-3C95-7131-5395E61458BE";
	setAttr ".v" no;
createNode transform -n "init_space" -p "arm_motion_grp";
	rename -uid "C3332DA6-49F0-D5F7-56CC-D1A0173AD40B";
createNode transform -n "init_shoulder" -p "init_space";
	rename -uid "499303BE-415F-7B87-AD21-D18442520C59";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "init_elbow" -p "init_shoulder";
	rename -uid "2728BCCC-4B81-332F-2B23-4BB2F1BC62FE";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "init_wrist" -p "init_elbow";
	rename -uid "F2D9625F-48D0-D434-0531-1CA864A8D37F";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "motion_ik_grp" -p "arm_motion_grp";
	rename -uid "EA359EAC-4865-07B4-BCE6-78BFDC13D023";
createNode transform -n "softik_input" -p "motion_ik_grp";
	rename -uid "2D58E850-4EB3-F96B-709C-B6B0EDFA9113";
	addAttr -ci true -sn "softik_ctrl_value" -ln "softik_ctrl_value" -min 0 -max 1 
		-at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "armLen" -ln "armLen" -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".softik_ctrl_value";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".armLen";
createNode transform -n "softik_output" -p "motion_ik_grp";
	rename -uid "69834754-47FE-8F74-564C-7D9647F8D57E";
	addAttr -ci true -sn "output_softik" -ln "output_softik" -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".output_softik";
createNode transform -n "ik_shoulder_space" -p "motion_ik_grp";
	rename -uid "2E69F4C4-4DF9-717D-D791-AC975D524E39";
createNode locator -n "ik_shoulder_spaceShape" -p "ik_shoulder_space";
	rename -uid "37B4B802-4891-8B7B-DB69-C4BF93DBE3DC";
	setAttr -k off ".v";
createNode transform -n "ik_ctrlaim" -p "ik_shoulder_space";
	rename -uid "89C74C11-4CC1-7625-551C-0FACEEA1529E";
createNode locator -n "ik_ctrlaimShape" -p "ik_ctrlaim";
	rename -uid "A451523B-4F47-5682-7785-57B555344D9D";
	setAttr -k off ".v";
createNode transform -n "softik_output_loc" -p "ik_ctrlaim";
	rename -uid "D89AF524-4458-F996-32CC-BB857AE01109";
createNode locator -n "softik_output_locShape" -p "softik_output_loc";
	rename -uid "11C60093-45AE-0211-6731-D19E785EF965";
	setAttr -k off ".v" no;
createNode transform -n "stretch_output_loc" -p "softik_output_loc";
	rename -uid "0D78674A-4FFF-8130-6423-968B12CE86F1";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-015 0 2.3854160110976376e-015 ;
createNode locator -n "stretch_output_locShape" -p "stretch_output_loc";
	rename -uid "48DF63CF-4E81-09D7-1409-B08EE50B9DB8";
	setAttr -k off ".v" no;
createNode ikHandle -n "ikHandle4" -p "stretch_output_loc";
	rename -uid "086E3D9B-4B71-80BC-F48B-9DBFEE032C65";
	setAttr ".t" -type "double3" 1.1467630933736928e-007 0 -2.5347791732244218e-007 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-015 0 2.3854160110976376e-015 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle4_poleVectorConstraint1" -p "ikHandle4";
	rename -uid "B8B22526-4219-E4F6-57C1-938753455458";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_polevectorW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.9999999999999982 -5.5552531578749917e-025 -7 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "ik_ctrlaim_aimConstraint1" -p "ik_ctrlaim";
	rename -uid "17AAA992-4809-9C0F-4D10-3896008635ED";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ik_ctrlW0" -dv 1 -at "double";
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
	setAttr ".wut" 1;
	setAttr ".rsrr" -type "double3" -2.2537509537656059e-007 -30.873793714113745 8.1616585403735916e-007 ;
	setAttr -k on ".w0";
createNode transform -n "ik_shoulder_space_upVec" -p "ik_shoulder_space";
	rename -uid "2F77CC06-414F-38FB-2973-EEACDB2828CD";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "ik_shoulder_space_upVecShape" -p "ik_shoulder_space_upVec";
	rename -uid "7DF83F39-43C1-9A08-CF6E-8D890C67FDF4";
	setAttr -k off ".v";
createNode transform -n "stretchik_input" -p "motion_ik_grp";
	rename -uid "80907107-4157-D98E-B7E3-5C9A573B10C2";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "uparm_len" -ln "uparm_len" -at "double";
	addAttr -ci true -sn "loarm_len" -ln "loarm_len" -at "double";
	addAttr -ci true -sn "ctrlLen" -ln "ctrlLen" -at "double";
	addAttr -ci true -sn "softikLen" -ln "softikLen" -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".stretch_ctrl_value";
	setAttr -k on ".uparm_len";
	setAttr -k on ".loarm_len";
	setAttr -k on ".ctrlLen";
	setAttr -k on ".softikLen";
createNode transform -n "stretchik_output" -p "motion_ik_grp";
	rename -uid "7A3E2C84-443F-8620-F6E9-D789992F5866";
	addAttr -ci true -sn "uparm_stretched" -ln "uparm_stretched" -at "double";
	addAttr -ci true -sn "loarm_stretched" -ln "loarm_stretched" -at "double";
	addAttr -ci true -sn "stretched_len" -ln "stretched_len" -at "double";
	addAttr -ci true -sn "stretch_ctrl_value" -ln "stretch_ctrl_value" -min 0 -max 1 
		-at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".uparm_stretched";
	setAttr -k on ".loarm_stretched";
	setAttr -k on ".stretched_len";
	setAttr -k on ".stretch_ctrl_value";
createNode joint -n "ik_shoulder" -p "motion_ik_grp";
	rename -uid "DCA03393-40C8-8C1A-83BC-3FAB13F5669A";
	setAttr ".r" -type "double3" -6.2595395351635579e-007 -3.1715845398649901e-015 
		-5.8061270316254003e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "ik_elbow" -p "ik_shoulder";
	rename -uid "0E539407-41E0-97B8-0B4E-3B981F60AA60";
	setAttr ".t" -type "double3" 4.4114103317260742 0 -4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 5.0869237672804237e-006 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "ik_wrist" -p "ik_elbow";
	rename -uid "1AFDAE42-4461-7494-DC86-FDA7497470AE";
	setAttr ".t" -type "double3" 4.5450291633605957 0 -6.6613381477509392e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "effector4" -p "ik_elbow";
	rename -uid "CB64C37F-41D0-8944-2225-A097D12E5555";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "motion_fk_grp" -p "arm_motion_grp";
	rename -uid "9B53206F-4AE7-7BC9-413D-879F95BCCF52";
createNode joint -n "fk_shoulder" -p "motion_fk_grp";
	rename -uid "439F9A17-4614-752A-7934-348BE86A66DB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "fk_elbow" -p "fk_shoulder";
	rename -uid "52CCE1EF-4DE6-D25A-C0F1-498BC6F3FC06";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "fk_wrist" -p "fk_elbow";
	rename -uid "00268DF8-4BD3-98B2-C314-7B992BF25EAE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "output_grp";
	rename -uid "A82BF7B6-4945-340F-EBE6-98ACBDC59658";
createNode joint -n "output_shoulder" -p "output_grp";
	rename -uid "A8C88763-4F78-9AB9-7FFA-27893F5F2419";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "output_elbow" -p "output_shoulder";
	rename -uid "13E45DF5-414F-4601-F507-FBB9E6666D9A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "output_wrist" -p "output_elbow";
	rename -uid "EE981A78-42B0-C8C5-9DB6-458AE5066D21";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "arm_ctrl_grp";
	rename -uid "44DFBF7F-4BAC-852F-004A-499DDF4DBF09";
createNode transform -n "ik_shoulder_ctrl_space" -p "arm_ctrl_grp";
	rename -uid "ADD681C4-43C0-983A-51D4-60B69DE4D9E0";
createNode transform -n "ik_elbow_polevector_space" -p "ik_shoulder_ctrl_space";
	rename -uid "CAFC541A-4533-6D1E-C6E0-F8BA67E124D2";
createNode transform -n "ik_polevector_space" -p "ik_elbow_polevector_space";
	rename -uid "0B90E0C2-4450-3695-F790-2D93D821AABD";
	setAttr ".t" -type "double3" -3.0000000476837152 -5.5552531578749917e-025 -3.9999999642372126 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "ik_polevector" -p "ik_polevector_space";
	rename -uid "19CCBFB9-42C8-1EE0-4D3D-19B6432C0F18";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "ik_polevectorShape" -p "ik_polevector";
	rename -uid "E98F4DED-4C48-274A-B0C5-AAB7BDDB8813";
	setAttr -k off ".v";
createNode transform -n "ik_ctrl_space" -p "ik_shoulder_ctrl_space";
	rename -uid "29F7DE76-401E-CDB3-F9FE-60AD02BA3352";
createNode transform -n "ik_ctrl" -p "ik_ctrl_space";
	rename -uid "C5659BF1-490C-8142-5EF3-3790F49B8764";
	addAttr -ci true -sn "softik" -ln "softik" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stretchik" -ln "stretchik" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".softik";
	setAttr -k on ".stretchik";
createNode renderBox -n "ik_ctrlShape" -p "ik_ctrl";
	rename -uid "2FC3CAF4-4FB0-9D06-3CC0-E3A43FA580D1";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "ik_fk_blend_ctrl_space" -p "arm_ctrl_grp";
	rename -uid "B2651B7D-4852-DD99-7EFF-899DD0B788B0";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "ik_fk_blend_ctrl" -p "ik_fk_blend_ctrl_space";
	rename -uid "BDDEDEBF-4E0E-7F36-F5CD-CFB41C61FE70";
	addAttr -ci true -sn "ik_fk_blend" -ln "ik_fk_blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fit_on_off" -ln "fit_on_off" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.987846675914698e-016 0 -1.987846675914698e-016 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ik_fk_blend";
	setAttr -k on ".fit_on_off" yes;
createNode nurbsCurve -n "ik_fk_blend_ctrlShape" -p "ik_fk_blend_ctrl";
	rename -uid "57FDD41E-426F-DBE2-6BD2-3387FD91DBDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		4.4235448637408581e-016 2.0816681711721685e-017 -3.3306690738754696e-016
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-016 2.0816681711721685e-017 -3.3306690738754696e-016
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-016 2.0816681711721685e-017 -3.3306690738754696e-016
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		4.4235448637408581e-016 2.0816681711721685e-017 -3.3306690738754696e-016
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		4.4235448637408581e-016 2.0816681711721685e-017 -3.3306690738754696e-016
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		;
createNode transform -n "fk_shoulder_ctrl_space" -p "arm_ctrl_grp";
	rename -uid "0955AE16-46CC-0AD2-7116-C19C71A39026";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "fk_shoulder_ctrl" -p "fk_shoulder_ctrl_space";
	rename -uid "FD8F0E2D-4BC7-FBA5-9825-D8894F62967B";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_shoulder_ctrlShape" -p "fk_shoulder_ctrl";
	rename -uid "9D328521-4594-09B5-4651-488ED1BB1B34";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-016 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-017 1.5409403615777631e-017 -1.1081941875543879
		-2.2204460492503131e-016 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-016 1.1081941875543879 -3.2112695072372299e-016
		-3.3306690738754696e-016 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-016 2.2289823389653639e-016 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-016 -1.1081941875543884 5.9521325992805852e-016
		1.1102230246251565e-016 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-017 1.5409403615777631e-017 -1.1081941875543879
		-2.2204460492503131e-016 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "fk_elbow_ctrl_space" -p "fk_shoulder_ctrl";
	rename -uid "05880195-4DE6-2583-C0F2-28AE500C9252";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "fk_elbow_ctrl" -p "fk_elbow_ctrl_space";
	rename -uid "0217974F-4E3A-DCB7-14D0-DD900DB4D771";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_elbow_ctrlShape" -p "fk_elbow_ctrl";
	rename -uid "2338AF18-4CCA-03B3-12BD-48BD94548E13";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-016 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-017 1.2643170607829331e-016 -1.1081941875543879
		-1.26014360253749e-016 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-016 1.1081941875543881 -3.2112695072372299e-016
		-2.2197910707351847e-016 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-017 3.3392053635905205e-016 1.1081941875543881
		1.260143602537489e-016 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-016 -1.1081941875543881 5.9521325992805852e-016
		2.219791070735186e-016 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-017 1.2643170607829331e-016 -1.1081941875543879
		-1.26014360253749e-016 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "fk_wrist_ctrl_space" -p "fk_elbow_ctrl";
	rename -uid "CDF4B0C4-4EA0-34BB-A7A1-47AD8918B111";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "fk_wrist_ctrl" -p "fk_wrist_ctrl_space";
	rename -uid "7821F4A1-4365-AB87-94A4-9988F24C5B66";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "fk_wrist_ctrlShape" -p "fk_wrist_ctrl";
	rename -uid "71065E6D-460C-A9AF-C1F0-8D8241231BF3";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-016 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-017 1.2643170442393208e-016 -1.1081941875543879
		-1.2601435859938777e-016 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-016 1.1081941875543881 -3.2112695072372299e-016
		-2.2197910541915725e-016 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-017 3.3392053470469082e-016 1.1081941875543881
		1.2601436190811012e-016 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-016 -1.1081941875543881 5.9521325992805852e-016
		2.2197910872787982e-016 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-017 1.2643170442393208e-016 -1.1081941875543879
		-1.2601435859938777e-016 0.78361162489122449 -0.78361162489122427
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CEC8EE8B-4E69-C71B-9094-8B81D286E5D6";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1E0F3BD1-4AD2-3DDE-B171-27BBB13F75B5";
createNode displayLayer -n "defaultLayer";
	rename -uid "D2809F04-487E-EF0E-1407-068A2CA87C9B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "43DB1CA4-4791-DF4C-57A4-70958244A54C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "84EE3D81-452A-4060-1F26-F1AD95168D6A";
	setAttr ".g" yes;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "1BD90BFC-4285-A495-0D2D-3C8F64653F22";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val";
	rename -uid "B497D6F0-4454-FE77-F126-6C8F32E222A9";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val";
	rename -uid "15D1952E-420C-8C9A-9863-3B9C771FEA7F";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV";
	rename -uid "DD615F1A-4E47-6BB3-F153-0EB11E7BF11E";
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "2534A5FC-427B-1DCE-192A-ABB7FA65E4E5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition";
	rename -uid "1A7E730A-440E-922E-0A89-88BACD8B9F09";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition";
	rename -uid "27207EBD-4882-9E92-0301-298D737AEDD5";
	setAttr ".op" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7532507B-4338-9586-8684-96A2289008D5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1196\n                -height 1053\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1196\n            -height 1053\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 31 100 -ps 2 69 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1196\\n    -height 1053\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1196\\n    -height 1053\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0024FF70-47BA-0262-7076-C0AF2257D7D7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo";
	rename -uid "3F39512B-47AE-2BB5-A648-40AE07383E3A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1925.3189910985709 -1115.8850172976418 ;
	setAttr ".tgi[0].vh" -type "double2" 3251.5176669475654 602.8588039529219 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3F741BA9-43F1-A6B2-CE09-2EAA356DF039";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8DAE8055-475A-DF84-0B24-009C9EFC808E";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "3525A8CA-49CA-E831-5E15-57A005DB2C99";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen";
	rename -uid "B41B673C-4280-203A-0087-EEA83A8BA671";
createNode distanceBetween -n "loarmLen";
	rename -uid "2687CA59-4DA9-2DC4-7A10-BDAC44E3D037";
createNode plusMinusAverage -n "armLen";
	rename -uid "6E7314BB-4AA1-12FE-FEE0-17A46555BEAC";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen";
	rename -uid "A8F5B125-4015-96E3-0B79-50BF9DC3F462";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "E04F0358-45ED-293A-04BD-9D9267E6BE41";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "3CF77C07-460A-2E7D-DAE4-DE89919C7216";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif";
	rename -uid "3B5B2A1D-4812-98CA-5805-1A9E4E06AD2D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide";
	rename -uid "3986737E-491C-746B-079B-FF87A543E4E4";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo2";
	rename -uid "C5AD5EAB-4A09-3C3B-3870-BFA13130A293";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1925.3189910985709 -1115.8850172976418 ;
	setAttr ".tgi[0].vh" -type "double2" 3251.5176669475654 602.8588039529219 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "B6E80894-4974-1452-40AE-1389739D869B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "5ECE2AB5-4E18-6ADA-48DE-BC888A3A3305";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen1";
	rename -uid "B23D34D6-4718-0A3E-E4C9-ABB567F3EE8D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "A28358A1-463B-3F69-F4C0-9DA3326A9170";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "82DCFFDA-403A-7FB1-C9EC-8486DFC6547B";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "1A21A1F0-4E5E-C357-49A4-358C3C6BCB82";
createNode plusMinusAverage -n "uparm_plus_stretch1";
	rename -uid "CDAC26BF-463B-B32B-56D4-46B5F3E9B541";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm";
	rename -uid "10242774-488F-3670-E5B8-35898F58AFC5";
	setAttr ".op" 2;
createNode condition -n "cond_loarm";
	rename -uid "3B7217F3-45E8-FC95-C780-7EA796FECB0F";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "5B95B0A8-4AF9-F0D7-81BB-A1A47FA89B15";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "63B1AD99-468F-38B2-F1CF-298490F37ECC";
createNode plusMinusAverage -n "loarm_plus_stretch1";
	rename -uid "D0BF03AC-4A52-4B74-A8CA-819757FC61F4";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo5";
	rename -uid "A7DD5D68-4E91-63DA-FC15-9893AD09A7A3";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1925.3189910985709 -1115.8850172976418 ;
	setAttr ".tgi[0].vh" -type "double2" 3251.5176669475654 602.8588039529219 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo5";
	rename -uid "49E7F585-4674-F4E7-9359-85BFD6F2A2F6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "C472D8C4-4D6A-EBBF-F923-6AB820AA27FB";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo4";
	rename -uid "AF8E2CAC-4F37-CD2B-A7AF-BFA6DB50FC33";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -6377.9763627856619 -3548.8094980990791 ;
	setAttr ".tgi[0].vh" -type "double2" 7336.3096580382344 165.47629920739254 ;
	setAttr -s 28 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1027.2066650390625;
	setAttr ".tgi[0].ni[0].y" -1049.0103759765625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1951.4285888671875;
	setAttr ".tgi[0].ni[1].y" -1165.7142333984375;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 3214.28564453125;
	setAttr ".tgi[0].ni[2].y" -1464.2857666015625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -1027.2066650390625;
	setAttr ".tgi[0].ni[3].y" -1179.0103759765625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -345.8421630859375;
	setAttr ".tgi[0].ni[4].y" -817.983154296875;
	setAttr ".tgi[0].ni[4].nvs" 18305;
	setAttr ".tgi[0].ni[5].x" 3125.6982421875;
	setAttr ".tgi[0].ni[5].y" -358.1961669921875;
	setAttr ".tgi[0].ni[5].nvs" 18305;
	setAttr ".tgi[0].ni[6].x" 322.33953857421875;
	setAttr ".tgi[0].ni[6].y" -1437.1923828125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -1049.1357421875;
	setAttr ".tgi[0].ni[7].y" -416.32778930664062;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 437.99136352539062;
	setAttr ".tgi[0].ni[8].y" -737.3662109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -583.9874267578125;
	setAttr ".tgi[0].ni[9].y" -1202.6605224609375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 888.5714111328125;
	setAttr ".tgi[0].ni[10].y" -208.57142639160156;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -583.9874267578125;
	setAttr ".tgi[0].ni[11].y" -289.80337524414062;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -11.857770919799805;
	setAttr ".tgi[0].ni[12].y" 246.30802917480469;
	setAttr ".tgi[0].ni[12].nvs" 18306;
	setAttr ".tgi[0].ni[13].x" 1248.4541015625;
	setAttr ".tgi[0].ni[13].y" -1334.8892822265625;
	setAttr ".tgi[0].ni[13].nvs" 18305;
	setAttr ".tgi[0].ni[14].x" -1151.51708984375;
	setAttr ".tgi[0].ni[14].y" -781.16192626953125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1411.4285888671875;
	setAttr ".tgi[0].ni[15].y" -75.714286804199219;
	setAttr ".tgi[0].ni[15].nvs" 18305;
	setAttr ".tgi[0].ni[16].x" 1093.585693359375;
	setAttr ".tgi[0].ni[16].y" -1.7191909551620483;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 2864.26953125;
	setAttr ".tgi[0].ni[17].y" -278.1961669921875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2504.288818359375;
	setAttr ".tgi[0].ni[18].y" 420.1832275390625;
	setAttr ".tgi[0].ni[18].nvs" 18306;
	setAttr ".tgi[0].ni[19].x" 961.9525146484375;
	setAttr ".tgi[0].ni[19].y" -1178.104736328125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1672.857177734375;
	setAttr ".tgi[0].ni[20].y" -1197.142822265625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 3550.275390625;
	setAttr ".tgi[0].ni[21].y" -251.55580139160156;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 3648.555419921875;
	setAttr ".tgi[0].ni[22].y" -825.33905029296875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -583.9874267578125;
	setAttr ".tgi[0].ni[23].y" -605.51763916015625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 3387.126708984375;
	setAttr ".tgi[0].ni[24].y" -629.624755859375;
	setAttr ".tgi[0].ni[24].nvs" 18306;
	setAttr ".tgi[0].ni[25].x" 1951.4285888671875;
	setAttr ".tgi[0].ni[25].y" -390;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 3214.28564453125;
	setAttr ".tgi[0].ni[26].y" -1370;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1672.857177734375;
	setAttr ".tgi[0].ni[27].y" -220;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -57.142854872204104 -15.476189861221945 ;
	setAttr ".tgi[1].vh" -type "double2" 57.142854872204104 15.476189861221945 ;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -1431.5199683451419 -1708.3332654502688 ;
	setAttr ".tgi[2].vh" -type "double2" 1683.9009106973767 1470.2380368160852 ;
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo3";
	rename -uid "618AF09D-4D92-2395-7860-559A87344DEC";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1925.3189910985709 -1115.8850172976418 ;
	setAttr ".tgi[0].vh" -type "double2" 3251.5176669475654 602.8588039529219 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo3";
	rename -uid "46806B59-47C2-0082-FAE9-678BB11D15EB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo4";
	rename -uid "35EB09D5-4151-474B-1C9F-EE8B1C1F7AFF";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1925.3189910985709 -1115.8850172976418 ;
	setAttr ".tgi[0].vh" -type "double2" 3251.5176669475654 602.8588039529219 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "35A4C894-4C91-5A7E-24B4-A0B233492F10";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo3";
	rename -uid "856D4767-4666-1546-AE45-69B092F0734C";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -6376.7858866424822 -3549.9999742422824 ;
	setAttr ".tgi[0].vh" -type "double2" 7337.5001341814141 164.2858230641894 ;
	setAttr -s 28 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1951.4285888671875;
	setAttr ".tgi[0].ni[0].y" -1165.7142333984375;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -1151.51708984375;
	setAttr ".tgi[0].ni[1].y" -781.16192626953125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1049.1357421875;
	setAttr ".tgi[0].ni[2].y" -416.32778930664062;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1951.4285888671875;
	setAttr ".tgi[0].ni[3].y" -390;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1672.857177734375;
	setAttr ".tgi[0].ni[4].y" -220;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1672.857177734375;
	setAttr ".tgi[0].ni[5].y" -1197.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -1027.2066650390625;
	setAttr ".tgi[0].ni[6].y" -1179.0103759765625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 3387.126708984375;
	setAttr ".tgi[0].ni[7].y" -629.624755859375;
	setAttr ".tgi[0].ni[7].nvs" 18306;
	setAttr ".tgi[0].ni[8].x" -583.9874267578125;
	setAttr ".tgi[0].ni[8].y" -605.51763916015625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 3214.28564453125;
	setAttr ".tgi[0].ni[9].y" -1370;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -583.9874267578125;
	setAttr ".tgi[0].ni[10].y" -1202.6605224609375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 3550.275390625;
	setAttr ".tgi[0].ni[11].y" -251.55580139160156;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 961.9525146484375;
	setAttr ".tgi[0].ni[12].y" -1178.104736328125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2864.26953125;
	setAttr ".tgi[0].ni[13].y" -278.1961669921875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1248.4541015625;
	setAttr ".tgi[0].ni[14].y" -1334.8892822265625;
	setAttr ".tgi[0].ni[14].nvs" 18305;
	setAttr ".tgi[0].ni[15].x" 1411.4285888671875;
	setAttr ".tgi[0].ni[15].y" -75.714286804199219;
	setAttr ".tgi[0].ni[15].nvs" 18305;
	setAttr ".tgi[0].ni[16].x" 888.5714111328125;
	setAttr ".tgi[0].ni[16].y" -208.57142639160156;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -1027.2066650390625;
	setAttr ".tgi[0].ni[17].y" -1049.0103759765625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 437.99136352539062;
	setAttr ".tgi[0].ni[18].y" -737.3662109375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2504.288818359375;
	setAttr ".tgi[0].ni[19].y" 420.1832275390625;
	setAttr ".tgi[0].ni[19].nvs" 18306;
	setAttr ".tgi[0].ni[20].x" 1093.585693359375;
	setAttr ".tgi[0].ni[20].y" -1.7191909551620483;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 322.33953857421875;
	setAttr ".tgi[0].ni[21].y" -1437.1923828125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 3648.555419921875;
	setAttr ".tgi[0].ni[22].y" -825.33905029296875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 3214.28564453125;
	setAttr ".tgi[0].ni[23].y" -1464.2857666015625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 3125.6982421875;
	setAttr ".tgi[0].ni[24].y" -358.1961669921875;
	setAttr ".tgi[0].ni[24].nvs" 18305;
	setAttr ".tgi[0].ni[25].x" -345.8421630859375;
	setAttr ".tgi[0].ni[25].y" -817.983154296875;
	setAttr ".tgi[0].ni[25].nvs" 18305;
	setAttr ".tgi[0].ni[26].x" -583.9874267578125;
	setAttr ".tgi[0].ni[26].y" -289.80337524414062;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -11.857770919799805;
	setAttr ".tgi[0].ni[27].y" 246.30802917480469;
	setAttr ".tgi[0].ni[27].nvs" 18306;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -57.142854872204104 -15.476189861221945 ;
	setAttr ".tgi[1].vh" -type "double2" 57.142854872204104 15.476189861221945 ;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" 1672.618981155141 -2075.3015584615659 ;
	setAttr ".tgi[2].vh" -type "double2" 3992.8569841952608 291.96829599152971 ;
	setAttr -s 28 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 541.4285888671875;
	setAttr ".tgi[2].ni[0].y" -537.14288330078125;
	setAttr ".tgi[2].ni[0].nvs" 18306;
	setAttr ".tgi[2].ni[1].x" 922.85711669921875;
	setAttr ".tgi[2].ni[1].y" -654.28570556640625;
	setAttr ".tgi[2].ni[1].nvs" 18305;
	setAttr ".tgi[2].ni[2].x" 1218.5714111328125;
	setAttr ".tgi[2].ni[2].y" -860;
	setAttr ".tgi[2].ni[2].nvs" 18305;
	setAttr ".tgi[2].ni[3].x" 3310;
	setAttr ".tgi[2].ni[3].y" -107.14286041259766;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 3352.50048828125;
	setAttr ".tgi[2].ni[4].y" -438.73904418945312;
	setAttr ".tgi[2].ni[4].nvs" 18305;
	setAttr ".tgi[2].ni[5].x" 1741.4285888671875;
	setAttr ".tgi[2].ni[5].y" -308.57144165039063;
	setAttr ".tgi[2].ni[5].nvs" 18305;
	setAttr ".tgi[2].ni[6].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[6].y" -578.5714111328125;
	setAttr ".tgi[2].ni[6].nvs" 18305;
	setAttr ".tgi[2].ni[7].x" 2264.28564453125;
	setAttr ".tgi[2].ni[7].y" -990;
	setAttr ".tgi[2].ni[7].nvs" 18306;
	setAttr ".tgi[2].ni[8].x" 262.85714721679687;
	setAttr ".tgi[2].ni[8].y" -864.28570556640625;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 3091.07177734375;
	setAttr ".tgi[2].ni[9].y" -438.73904418945312;
	setAttr ".tgi[2].ni[9].nvs" 18305;
	setAttr ".tgi[2].ni[10].x" 2525.71435546875;
	setAttr ".tgi[2].ni[10].y" -1000;
	setAttr ".tgi[2].ni[10].nvs" 18306;
	setAttr ".tgi[2].ni[11].x" 3830;
	setAttr ".tgi[2].ni[11].y" -1508.5714111328125;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 1480;
	setAttr ".tgi[2].ni[12].y" -460;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 2750.9462890625;
	setAttr ".tgi[2].ni[13].y" -540.45574951171875;
	setAttr ".tgi[2].ni[13].nvs" 18306;
	setAttr ".tgi[2].ni[14].x" 262.85714721679687;
	setAttr ".tgi[2].ni[14].y" -1018.5714111328125;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 1480;
	setAttr ".tgi[2].ni[15].y" -1068.5714111328125;
	setAttr ".tgi[2].ni[15].nvs" 18306;
	setAttr ".tgi[2].ni[16].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[16].y" -1150;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 3613.928955078125;
	setAttr ".tgi[2].ni[17].y" -227.31047058105469;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 1741.4285888671875;
	setAttr ".tgi[2].ni[18].y" -1117.142822265625;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 2829.643310546875;
	setAttr ".tgi[2].ni[19].y" -333.02474975585937;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[20].y" -841.4285888671875;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 3613.928955078125;
	setAttr ".tgi[2].ni[21].y" -438.73904418945312;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 2002.857177734375;
	setAttr ".tgi[2].ni[22].y" -1022.8571166992187;
	setAttr ".tgi[2].ni[22].nvs" 18305;
	setAttr ".tgi[2].ni[23].x" 2002.857177734375;
	setAttr ".tgi[2].ni[23].y" -275.71429443359375;
	setAttr ".tgi[2].ni[23].nvs" 18306;
	setAttr ".tgi[2].ni[24].x" 1218.5714111328125;
	setAttr ".tgi[2].ni[24].y" -365.71429443359375;
	setAttr ".tgi[2].ni[24].nvs" 18305;
	setAttr ".tgi[2].ni[25].x" 1.4285714626312256;
	setAttr ".tgi[2].ni[25].y" -995.71429443359375;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 2264.28564453125;
	setAttr ".tgi[2].ni[26].y" -285.71429443359375;
	setAttr ".tgi[2].ni[26].nvs" 18305;
	setAttr ".tgi[2].ni[27].x" 262.85714721679687;
	setAttr ".tgi[2].ni[27].y" -710;
	setAttr ".tgi[2].ni[27].nvs" 18304;
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo1";
	rename -uid "74DE9860-4130-C364-8648-FD9F48229A13";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1925.3189910985709 -1115.8850172976418 ;
	setAttr ".tgi[0].vh" -type "double2" 3251.5176669475654 602.8588039529219 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "75F039B8-44E0-2F33-90F0-B194F76C3F4F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "F3276EB9-4D92-8FAF-8C26-61823ECE2944";
createNode blendColors -n "ikfk_shoulder_t";
	rename -uid "B91A695D-40D7-12C7-7FB1-29B1DEB4035E";
createNode blendColors -n "ikfk_shoulder_r";
	rename -uid "4D1B2185-40D4-3056-5FB0-36B599AE57F1";
createNode unitConversion -n "unitConversion1";
	rename -uid "8B7CFA86-48CD-1FD6-F761-EE9607094B6F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "D39456B8-42BF-4875-24CF-8FA38EF57F70";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "486DC800-4360-51A8-B38A-12A8BDF5A5EE";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow";
	rename -uid "21A7002D-476D-C767-B974-90AC76264883";
createNode pairBlend -n "pairBlend1";
	rename -uid "BC1EFBC5-4C5F-BC75-D8B0-7994D6C084E7";
createNode reverse -n "reverse1";
	rename -uid "94F59E05-415D-A088-66F7-95BEC7B16FA4";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "F8D90144-4AFD-57F1-8933-E2B9C9D7C631";
	setAttr ".ot" -type "double3" 1.3514467918201221 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "51D46BAF-475A-4BAC-FBA3-9EA715D38018";
	setAttr ".ot" -type "double3" 4.5857226622590215 0 -3 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "E47065DF-4EE5-6E6B-8A27-62ACE28E0187";
	setAttr ".ot" -type "double3" 8 0 0 ;
createNode plusMinusAverage -n "shld2elbow_vec";
	rename -uid "5A59B0F6-4B7A-39FB-359A-D6A56849E3C9";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec";
	rename -uid "F86E90A2-45F7-BF7B-C388-DDB2CCD608D3";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "6A90D9A7-4740-A4EC-0112-6ABE7D48D619";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec";
	rename -uid "36C0C41F-4F83-EE9B-91C6-ABA90330B6E9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat";
	rename -uid "6E40038C-4606-B1E3-3015-E7B7D1BD9858";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "E69F0E0D-43A2-9C14-F59C-BBAD2EA9B23D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix4";
	rename -uid "7432F4B6-4B9B-433D-09C1-908623BAF09D";
	setAttr ".ot" -type "double3" 1.3514467918201221 0 0 ;
	setAttr ".or" -type "double3" 0 42.847913159681205 0 ;
	setAttr ".os" -type "double3" 0.99999994466279163 1 0.99999994466279163 ;
	setAttr ".oqy" 0.36526604660244899;
	setAttr ".oqw" 0.93090317176353932;
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "2AEC5E52-48BE-AA29-019A-53AD1748CD2A";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "07EE21F0-48A8-2B9D-59B4-5280307EB917";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "A5F06894-40F6-4C9C-C3D5-5D9D7E4D0952";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "1AF68F99-47C0-5C63-D2B4-C5850FD1AE61";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "E9BFCCC9-4E07-52BA-3DC2-12945751DD8D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat";
	rename -uid "93D8F5BD-4D31-68A6-F9A4-AF8F068A8992";
createNode decomposeMatrix -n "decomposeMatrix5";
	rename -uid "C39922BF-447F-78E9-52AF-8B8C3FF720E4";
	setAttr ".ot" -type "double3" 4.4114104636276572 0 3.0072370371669876e-008 ;
	setAttr ".or" -type "double3" 0 -84.152496699606402 0 ;
	setAttr ".os" -type "double3" 1.0000000651748777 1 1.0000000651748777 ;
	setAttr ".oqy" -0.67011897935910369;
	setAttr ".oqw" 0.74225369888112591;
createNode multMatrix -n "multMatrix1";
	rename -uid "416E852F-4591-C4B9-32A9-43910FD60203";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix6";
	rename -uid "E4AEAF60-4189-E20A-D98F-8393DED14963";
	setAttr ".ot" -type "double3" 1.3514467918201221 0 0 ;
	setAttr ".or" -type "double3" 0 42.847913159681205 0 ;
	setAttr ".os" -type "double3" 0.99999995188982183 1 0.99999995188982183 ;
	setAttr ".oqy" 0.36526604660244899;
	setAttr ".oqw" 0.93090317176353932;
createNode multMatrix -n "multMatrix2";
	rename -uid "0B1380BD-4B9D-D8C8-0506-F4A07DF2B88E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix7";
	rename -uid "DF2FBFAA-43CC-AEE9-8424-5E959E1B0E57";
	setAttr ".ot" -type "double3" 4.4114102513939146 0 3.0072369261446852e-008 ;
	setAttr ".or" -type "double3" 0 -84.152496699606388 0 ;
	setAttr ".os" -type "double3" 1.0000000074798641 1 1.0000000074798641 ;
	setAttr ".oqy" -0.67011897935910369;
	setAttr ".oqw" 0.74225369888112602;
createNode multMatrix -n "multMatrix3";
	rename -uid "2FB2F5A7-45E6-1EBD-420B-689241D07789";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "5CCDC4BE-4C7A-AC06-C44A-0CBC2DF4BD3B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix8";
	rename -uid "6D53D425-42AD-82C5-F9C8-CBA01F38E651";
	setAttr ".ot" -type "double3" 4.5450290901141859 0 7.0103034488511184e-008 ;
	setAttr ".or" -type "double3" 0 41.30458353992519 0 ;
	setAttr ".os" -type "double3" 0.99999999252013616 1 0.99999999252013616 ;
	setAttr ".oqy" 0.35269580917798193;
	setAttr ".oqw" 0.93573803288542712;
createNode lambert -n "lambert2";
	rename -uid "CEFD624E-49A6-B26B-17D5-D08409A9FABE";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "940E0503-4040-37C4-C78C-19AE067B317C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "CEA52E53-4928-ADA0-688F-E89614D27F52";
createNode nodeGraphEditorInfo -n "alignment_MayaNodeEditorSavedTabsInfo6";
	rename -uid "AD6CFC6C-4A65-060E-DDB6-B8AD65CB0F63";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -435.11903032897078 -593.452357370703 ;
	setAttr ".tgi[0].vh" -type "double2" 1679.1665999425811 418.45236432457796 ;
	setAttr -s 14 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 966.4705810546875;
	setAttr ".tgi[0].ni[1].y" 381.34451293945312;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 524.28570556640625;
	setAttr ".tgi[0].ni[2].y" -65.714286804199219;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[3].y" -131.42857360839844;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 705.0419921875;
	setAttr ".tgi[0].ni[4].y" 381.34451293945312;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 262.85714721679687;
	setAttr ".tgi[0].ni[5].y" -65.714286804199219;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1627.142822265625;
	setAttr ".tgi[0].ni[6].y" -208.57142639160156;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1325.7142333984375;
	setAttr ".tgi[0].ni[7].y" -614.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2280;
	setAttr ".tgi[0].ni[8].y" -1240;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1587.142822265625;
	setAttr ".tgi[0].ni[9].y" -614.28570556640625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2541.428466796875;
	setAttr ".tgi[0].ni[10].y" -1240;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1047.142822265625;
	setAttr ".tgi[0].ni[11].y" -600;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2580;
	setAttr ".tgi[0].ni[12].y" -1257.142822265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2841.428466796875;
	setAttr ".tgi[0].ni[13].y" -1257.142822265625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "59687164-49F3-88D6-2167-66A1B7C1A86D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -74.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode decomposeMatrix -n "input_arm_space_decomp";
	rename -uid "1F7BCE1A-4726-33B6-B0F0-79855286938B";
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "init_shoulder_localMat";
	rename -uid "3640B09B-4EA7-8700-E525-FFAED1C1CDD2";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat";
	rename -uid "865DD6A9-451E-E03C-11C9-C48F3FB69DF4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp";
	rename -uid "5297659E-4F31-2A57-C215-8B8C274299F7";
	setAttr ".ot" -type "double3" 6.6485532081798784 0 0 ;
createNode multMatrix -n "init_wrist_local";
	rename -uid "68C6190D-4B59-C8A6-D102-29B9B27379CD";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local";
	rename -uid "30FC7B38-4E4C-CBDC-974C-69A5F8D9A827";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local";
	rename -uid "22D4338F-4C89-297C-58D7-9E8A46F239A8";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local";
	rename -uid "FD818EE7-4B9B-5144-5BF8-ACAA721E2825";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix5";
	rename -uid "4BB0397B-4F75-4EAD-4F94-2F9A7A39268F";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix6";
	rename -uid "D1E0BF8A-4173-C2AA-0ACE-F4978D2516B3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix9";
	rename -uid "FD313054-470D-31E3-71BD-209C44A64630";
	setAttr ".ot" -type "double3" 8.0000000860229914 0 -1.6677013281451991e-007 ;
createNode multMatrix -n "multMatrix7";
	rename -uid "F6BABE01-4C53-AFD8-CFDF-239E8E5A8EEC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix10";
	rename -uid "8AF6DCD6-4C8D-0B59-6E70-6191DF2FDE05";
	setAttr ".ot" -type "double3" 3.2342758704389012 0 -3.0000000000000009 ;
	setAttr ".or" -type "double3" 0 -41.304583539925183 0 ;
	setAttr ".os" -type "double3" 1.0000000074798638 1 1.0000000074798638 ;
	setAttr ".oqy" -0.35269580917798188;
	setAttr ".oqw" 0.93573803288542712;
createNode multMatrix -n "multMatrix8";
	rename -uid "4E504CAF-4B7E-23A6-19FF-849303B38C04";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix11";
	rename -uid "C6946E29-4872-3ECD-CEE5-85A885150245";
	setAttr ".ot" -type "double3" 1.3514467918201221 0 0 ;
	setAttr ".or" -type "double3" 0 42.847913159681205 0 ;
	setAttr ".os" -type "double3" 0.99999995188982183 1 0.99999995188982183 ;
	setAttr ".oqy" 0.36526604660244899;
	setAttr ".oqw" 0.93090317176353932;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D7B08C46-4800-A20E-3DDC-C1AF68B4ABA4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -163.87994830625433 -595.05156897751499 ;
	setAttr ".tgi[0].vh" -type "double2" 1535.2594821369594 312.29413924216084 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1100.645751953125;
	setAttr ".tgi[0].ni[0].y" -33.522529602050781;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 196.58026123046875;
	setAttr ".tgi[0].ni[1].y" -420.64578247070312;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 19.928844451904297;
	setAttr ".tgi[0].ni[2].y" 234.9688720703125;
	setAttr ".tgi[0].ni[2].nvs" 18305;
	setAttr ".tgi[0].ni[3].x" 831.1917724609375;
	setAttr ".tgi[0].ni[3].y" -214.89530944824219;
	setAttr ".tgi[0].ni[3].nvs" 18305;
	setAttr ".tgi[0].ni[4].x" -2.5841484069824219;
	setAttr ".tgi[0].ni[4].y" -311.35516357421875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 359.00537109375;
	setAttr ".tgi[0].ni[5].y" -164.38755798339844;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 208.97358703613281;
	setAttr ".tgi[0].ni[6].y" -79.290748596191406;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1414.23974609375;
	setAttr ".tgi[0].ni[7].y" -10.401191711425781;
	setAttr ".tgi[0].ni[7].nvs" 18305;
	setAttr ".tgi[0].ni[8].x" 797.75244140625;
	setAttr ".tgi[0].ni[8].y" 181.8189697265625;
	setAttr ".tgi[0].ni[8].nvs" 18305;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 90;
	setAttr -av ".unw" 90;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
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
	setAttr -s 5 ".s";
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
	setAttr -s 69 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
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
	setAttr ".ro" yes;
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
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
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
	setAttr -k off ".enpt";
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
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
	setAttr -k on ".hwfr";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".gsn";
	setAttr -k on ".gsv";
connectAttr "input_arm_space_decomp.ot" "fit_space.t";
connectAttr "input_arm_space_decomp.or" "fit_space.r";
connectAttr "input_arm_space_decomp.os" "fit_space.s";
connectAttr "input_arm_space_decomp.osh" "fit_space.sh";
connectAttr "fit_space.t" "init_space.t";
connectAttr "fit_space.r" "init_space.r";
connectAttr "fit_space.s" "init_space.s";
connectAttr "decomposeMatrix4.ot" "init_shoulder.t";
connectAttr "decomposeMatrix4.or" "init_shoulder.r";
connectAttr "decomposeMatrix5.ot" "init_elbow.t";
connectAttr "decomposeMatrix5.or" "init_elbow.r";
connectAttr "decomposeMatrix5.osh" "init_elbow.sh";
connectAttr "decomposeMatrix8.ot" "init_wrist.t";
connectAttr "init_space.t" "motion_ik_grp.t";
connectAttr "init_space.r" "motion_ik_grp.r";
connectAttr "init_space.s" "motion_ik_grp.s";
connectAttr "ik_ctrl.softik" "softik_input.softik_ctrl_value";
connectAttr "ctrlLen.d" "softik_input.ctrlLen";
connectAttr "armLen.o1" "softik_input.armLen";
connectAttr "ctrllen_condition.ocr" "softik_output.output_softik";
connectAttr "init_shoulder.t" "ik_shoulder_space.t";
connectAttr "init_shoulder.r" "ik_shoulder_space.r";
connectAttr "ik_ctrlaim_aimConstraint1.crx" "ik_ctrlaim.rx";
connectAttr "ik_ctrlaim_aimConstraint1.cry" "ik_ctrlaim.ry";
connectAttr "ik_ctrlaim_aimConstraint1.crz" "ik_ctrlaim.rz";
connectAttr "softik_output.output_softik" "softik_output_loc.tx";
connectAttr "stretch_output_mul_ctrlVal.ox" "stretch_output_loc.tx";
connectAttr "ik_shoulder.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_poleVectorConstraint1.ctx" "ikHandle4.pvx";
connectAttr "ikHandle4_poleVectorConstraint1.cty" "ikHandle4.pvy";
connectAttr "ikHandle4_poleVectorConstraint1.ctz" "ikHandle4.pvz";
connectAttr "ikHandle4.pim" "ikHandle4_poleVectorConstraint1.cpim";
connectAttr "ik_shoulder.pm" "ikHandle4_poleVectorConstraint1.ps";
connectAttr "ik_shoulder.t" "ikHandle4_poleVectorConstraint1.crp";
connectAttr "ik_polevector.t" "ikHandle4_poleVectorConstraint1.tg[0].tt";
connectAttr "ik_polevector.rp" "ikHandle4_poleVectorConstraint1.tg[0].trp";
connectAttr "ik_polevector.rpt" "ikHandle4_poleVectorConstraint1.tg[0].trt";
connectAttr "ik_polevector.pm" "ikHandle4_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle4_poleVectorConstraint1.w0" "ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ik_ctrlaim.pim" "ik_ctrlaim_aimConstraint1.cpim";
connectAttr "ik_ctrlaim.t" "ik_ctrlaim_aimConstraint1.ct";
connectAttr "ik_ctrlaim.rp" "ik_ctrlaim_aimConstraint1.crp";
connectAttr "ik_ctrlaim.rpt" "ik_ctrlaim_aimConstraint1.crt";
connectAttr "ik_ctrlaim.ro" "ik_ctrlaim_aimConstraint1.cro";
connectAttr "ik_ctrl.t" "ik_ctrlaim_aimConstraint1.tg[0].tt";
connectAttr "ik_ctrl.rp" "ik_ctrlaim_aimConstraint1.tg[0].trp";
connectAttr "ik_ctrl.rpt" "ik_ctrlaim_aimConstraint1.tg[0].trt";
connectAttr "ik_ctrl.pm" "ik_ctrlaim_aimConstraint1.tg[0].tpm";
connectAttr "ik_ctrlaim_aimConstraint1.w0" "ik_ctrlaim_aimConstraint1.tg[0].tw";
connectAttr "ik_shoulder_space_upVec.wm" "ik_ctrlaim_aimConstraint1.wum";
connectAttr "ik_ctrl.stretchik" "stretchik_input.stretch_ctrl_value";
connectAttr "uparmLen.d" "stretchik_input.uparm_len";
connectAttr "loarmLen.d" "stretchik_input.loarm_len";
connectAttr "ctrlLen.d" "stretchik_input.ctrlLen";
connectAttr "softik_output.output_softik" "stretchik_input.softikLen";
connectAttr "uparm_plus_stretch1.o1" "stretchik_output.uparm_stretched";
connectAttr "loarm_plus_stretch1.o1" "stretchik_output.loarm_stretched";
connectAttr "stretchedLen.o1" "stretchik_output.stretched_len";
connectAttr "stretchik_input.stretch_ctrl_value" "stretchik_output.stretch_ctrl_value"
		;
connectAttr "decomposeMatrix6.ot" "ik_shoulder.t";
connectAttr "decomposeMatrix6.or" "ik_shoulder.jo";
connectAttr "ik_shoulder.s" "ik_elbow.is";
connectAttr "stretchik_output.uparm_stretched" "ik_elbow.tx";
connectAttr "init_elbow.r" "ik_elbow.jo";
connectAttr "ik_elbow.s" "ik_wrist.is";
connectAttr "stretchik_output.loarm_stretched" "ik_wrist.tx";
connectAttr "init_wrist.r" "ik_wrist.jo";
connectAttr "ik_wrist.tx" "effector4.tx";
connectAttr "ik_wrist.ty" "effector4.ty";
connectAttr "ik_wrist.tz" "effector4.tz";
connectAttr "init_space.t" "motion_fk_grp.t";
connectAttr "init_space.r" "motion_fk_grp.r";
connectAttr "init_space.s" "motion_fk_grp.s";
connectAttr "fk_shoulder_ctrl.r" "fk_shoulder.r";
connectAttr "decomposeMatrix11.ot" "fk_shoulder.t";
connectAttr "decomposeMatrix11.or" "fk_shoulder.jo";
connectAttr "fk_shoulder.s" "fk_elbow.is";
connectAttr "init_elbow.t" "fk_elbow.t";
connectAttr "fk_elbow_ctrl.r" "fk_elbow.r";
connectAttr "init_elbow.r" "fk_elbow.jo";
connectAttr "fk_elbow.s" "fk_wrist.is";
connectAttr "init_wrist.t" "fk_wrist.t";
connectAttr "fk_wrist_ctrl.r" "fk_wrist.r";
connectAttr "init_wrist.r" "fk_wrist.jo";
connectAttr "init_space.t" "output_grp.t";
connectAttr "init_space.r" "output_grp.r";
connectAttr "init_space.s" "output_grp.s";
connectAttr "ikfk_shoulder_t.op" "output_shoulder.t";
connectAttr "unitConversion3.o" "output_shoulder.r";
connectAttr "decomposeMatrix6.or" "output_shoulder.jo";
connectAttr "output_shoulder.s" "output_elbow.is";
connectAttr "ikfk_blend_elbow.ot" "output_elbow.t";
connectAttr "ikfk_blend_elbow.or" "output_elbow.r";
connectAttr "init_elbow.r" "output_elbow.jo";
connectAttr "output_elbow.s" "output_wrist.is";
connectAttr "pairBlend1.ot" "output_wrist.t";
connectAttr "pairBlend1.or" "output_wrist.r";
connectAttr "init_wrist.r" "output_wrist.jo";
connectAttr "init_space.t" "arm_ctrl_grp.t";
connectAttr "init_space.r" "arm_ctrl_grp.r";
connectAttr "init_space.s" "arm_ctrl_grp.s";
connectAttr "ik_fk_blend_ctrl.ik_fk_blend" "ik_shoulder_ctrl_space.v";
connectAttr "init_shoulder.t" "ik_shoulder_ctrl_space.t";
connectAttr "decomposeMatrix10.ot" "ik_elbow_polevector_space.t";
connectAttr "decomposeMatrix10.or" "ik_elbow_polevector_space.r";
connectAttr "wrist_ik_ctrl_localMat_decomp.ot" "ik_ctrl_space.t";
connectAttr "decomposeMatrix9.ot" "ik_fk_blend_ctrl_space.t";
connectAttr "reverse1.ox" "fk_shoulder_ctrl_space.v";
connectAttr "init_shoulder.t" "fk_shoulder_ctrl_space.t";
connectAttr "init_shoulder.r" "fk_shoulder_ctrl_space.r";
connectAttr "init_elbow.t" "fk_elbow_ctrl_space.t";
connectAttr "init_elbow.r" "fk_elbow_ctrl_space.r";
connectAttr "init_wrist.t" "fk_wrist_ctrl_space.t";
connectAttr "init_wrist.r" "fk_wrist_ctrl_space.r";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ctrlLen_minus_dif.o1" "divide_softikV.i1x";
connectAttr "conditionfor_zerodivide.ocr" "divide_softikV.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "softik_input.softik_ctrl_value" "mult_softikV.i1x";
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "softik_input.armLen" "result_softik_len.i1[0]";
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "softik_input.softik_ctrl_value" "softikV_condition.ft";
connectAttr "result_softik_len.o1" "softikV_condition.ctr";
connectAttr "softik_input.armLen" "softikV_condition.cfr";
connectAttr "softikV_condition.ocr" "ctrllen_condition.ctr";
connectAttr "softik_input.ctrlLen" "ctrllen_condition.ft";
connectAttr "armlen_minus_softikV.o1" "ctrllen_condition.st";
connectAttr "softik_input.ctrlLen" "ctrllen_condition.cfr";
connectAttr "init_shoulder_local.o" "uparmLen.im1";
connectAttr "init_elbow_local.o" "uparmLen.im2";
connectAttr "init_elbow_local.o" "loarmLen.im1";
connectAttr "init_wrist_local.o" "loarmLen.im2";
connectAttr "uparmLen.d" "armLen.i1[0]";
connectAttr "loarmLen.d" "armLen.i1[1]";
connectAttr "multMatrix5.o" "ctrlLen.im1";
connectAttr "ik_ctrl_local.o" "ctrlLen.im2";
connectAttr "softik_input.armLen" "armlen_minus_softikV.i1[0]";
connectAttr "softik_input.softik_ctrl_value" "armlen_minus_softikV.i1[1]";
connectAttr "softik_input.ctrlLen" "ctrlLen_minus_dif.i1[0]";
connectAttr "armlen_minus_softikV.o1" "ctrlLen_minus_dif.i1[1]";
connectAttr "softik_input.softik_ctrl_value" "conditionfor_zerodivide.ft";
connectAttr "softik_input.softik_ctrl_value" "conditionfor_zerodivide.cfr";
connectAttr "stretchik_input.uparm_len" "uparm_ratio.i1x";
connectAttr "armLen1.o1" "uparm_ratio.i2x";
connectAttr "stretchik_input.uparm_len" "armLen1.i1[0]";
connectAttr "stretchik_input.loarm_len" "armLen1.i1[1]";
connectAttr "stretchik_input.loarm_len" "loarm_ratio3.i1x";
connectAttr "armLen1.o1" "loarm_ratio3.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "stretchik_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x";
connectAttr "stretchik_input.uparm_len" "uparm_plus_stretch1.i1[0]";
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch1.i1[1]";
connectAttr "stretchik_input.ctrlLen" "cond_uparm.ft";
connectAttr "armLen1.o1" "cond_uparm.st";
connectAttr "uparm_plus_stretch1.o1" "cond_uparm.ctr";
connectAttr "stretchik_input.uparm_len" "cond_uparm.cfr";
connectAttr "stretchik_input.ctrlLen" "cond_loarm.ft";
connectAttr "armLen1.o1" "cond_loarm.st";
connectAttr "loarm_plus_stretch1.o1" "cond_loarm.ctr";
connectAttr "stretchik_input.loarm_len" "cond_loarm.cfr";
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "stretchik_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x";
connectAttr "stretchik_input.loarm_len" "loarm_plus_stretch1.i1[0]";
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch1.i1[1]";
connectAttr "stretchik_input.ctrlLen" "stretchedLen.i1[0]";
connectAttr "stretchik_input.softikLen" "stretchedLen.i1[1]";
connectAttr "cond_loarm.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[1].dn";
connectAttr "armLen1.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[4].dn";
connectAttr "loarm_ratio3.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[6].dn";
connectAttr "stretchedLen.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[8].dn";
connectAttr "uparm_ratio.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[10].dn";
connectAttr "stretchik_input.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[12].dn"
		;
connectAttr "stretchCtrl_loarm.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[13].dn"
		;
connectAttr "stretchCtrl_uparm.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[15].dn"
		;
connectAttr "stretched_uparmLen.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[16].dn"
		;
connectAttr "stretchik_output.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[18].dn"
		;
connectAttr "stretched_loarmLen.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[19].dn"
		;
connectAttr "loarm_plus_stretch1.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[20].dn"
		;
connectAttr "cond_uparm.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[25].dn";
connectAttr "uparm_plus_stretch1.msg" "MayaNodeEditorSavedTabsInfo4.tgi[0].ni[27].dn"
		;
connectAttr "stretchik_output.stretched_len" "stretch_output_mul_ctrlVal.i1x";
connectAttr "stretchik_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "ik_shoulder.t" "ikfk_shoulder_t.c1";
connectAttr "fk_shoulder.t" "ikfk_shoulder_t.c2";
connectAttr "ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_t.b";
connectAttr "unitConversion1.o" "ikfk_shoulder_r.c1";
connectAttr "unitConversion2.o" "ikfk_shoulder_r.c2";
connectAttr "ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_r.b";
connectAttr "ik_shoulder.r" "unitConversion1.i";
connectAttr "fk_shoulder.r" "unitConversion2.i";
connectAttr "ikfk_shoulder_r.op" "unitConversion3.i";
connectAttr "ik_elbow.r" "ikfk_blend_elbow.ir2";
connectAttr "fk_elbow.r" "ikfk_blend_elbow.ir1";
connectAttr "fk_elbow.t" "ikfk_blend_elbow.it1";
connectAttr "ik_elbow.t" "ikfk_blend_elbow.it2";
connectAttr "ik_fk_blend_ctrl.ik_fk_blend" "ikfk_blend_elbow.w";
connectAttr "ik_wrist.t" "pairBlend1.it2";
connectAttr "ik_wrist.r" "pairBlend1.ir2";
connectAttr "fk_wrist.t" "pairBlend1.it1";
connectAttr "fk_wrist.r" "pairBlend1.ir1";
connectAttr "ik_fk_blend_ctrl.ik_fk_blend" "pairBlend1.w";
connectAttr "ik_fk_blend_ctrl.ik_fk_blend" "reverse1.ix";
connectAttr "fit_shoulder.wm" "decomposeMatrix1.imat";
connectAttr "fit_elbow.wm" "decomposeMatrix2.imat";
connectAttr "fit_wrist.wm" "decomposeMatrix3.imat";
connectAttr "decomposeMatrix2.ot" "shld2elbow_vec.i3[0]";
connectAttr "decomposeMatrix1.ot" "shld2elbow_vec.i3[1]";
connectAttr "decomposeMatrix3.ot" "shld2wrist_vec.i3[0]";
connectAttr "decomposeMatrix1.ot" "shld2wrist_vec.i3[1]";
connectAttr "shld2wrist_vec.o3" "shoulder_y_vec.i1";
connectAttr "shld2elbow_vec.o3" "shoulder_y_vec.i2";
connectAttr "shld2elbow_vec.o3" "shoulder_z_Vec.i1";
connectAttr "shoulder_y_vec.o" "shoulder_z_Vec.i2";
connectAttr "shoulder_x_vec.ox" "shoulder_aligned_mat.i00";
connectAttr "shoulder_x_vec.oy" "shoulder_aligned_mat.i01";
connectAttr "shoulder_x_vec.oz" "shoulder_aligned_mat.i02";
connectAttr "shoulder_y_vec.ox" "shoulder_aligned_mat.i10";
connectAttr "shoulder_y_vec.oy" "shoulder_aligned_mat.i11";
connectAttr "shoulder_y_vec.oz" "shoulder_aligned_mat.i12";
connectAttr "shoulder_z_Vec.oy" "shoulder_aligned_mat.i21";
connectAttr "shoulder_z_Vec.ox" "shoulder_aligned_mat.i20";
connectAttr "shoulder_z_Vec.oz" "shoulder_aligned_mat.i22";
connectAttr "decomposeMatrix1.otx" "shoulder_aligned_mat.i30";
connectAttr "decomposeMatrix1.oty" "shoulder_aligned_mat.i31";
connectAttr "decomposeMatrix1.otz" "shoulder_aligned_mat.i32";
connectAttr "shld2elbow_vec.o3" "shoulder_x_vec.i1";
connectAttr "init_shoulder_localMat.o" "decomposeMatrix4.imat";
connectAttr "decomposeMatrix1.ot" "elbow2shoulder_vec.i3[0]";
connectAttr "decomposeMatrix2.ot" "elbow2shoulder_vec.i3[1]";
connectAttr "decomposeMatrix3.ot" "elbow2wrist_vec.i3[0]";
connectAttr "decomposeMatrix2.ot" "elbow2wrist_vec.i3[1]";
connectAttr "elbow2shoulder_vec.o3" "elbow_y_vec.i1";
connectAttr "elbow2wrist_vec.o3" "elbow_y_vec.i2";
connectAttr "elbow2wrist_vec.o3" "elbow_z_vec.i1";
connectAttr "elbow_y_vec.o" "elbow_z_vec.i2";
connectAttr "elbow2wrist_vec.o3" "elbow_x_vec.i1";
connectAttr "elbow_x_vec.ox" "elbow_aligned_mat.i00";
connectAttr "elbow_x_vec.oy" "elbow_aligned_mat.i01";
connectAttr "elbow_x_vec.oz" "elbow_aligned_mat.i02";
connectAttr "elbow_y_vec.ox" "elbow_aligned_mat.i10";
connectAttr "elbow_y_vec.oy" "elbow_aligned_mat.i11";
connectAttr "elbow_y_vec.oz" "elbow_aligned_mat.i12";
connectAttr "elbow_z_vec.ox" "elbow_aligned_mat.i20";
connectAttr "elbow_z_vec.oy" "elbow_aligned_mat.i21";
connectAttr "elbow_z_vec.oz" "elbow_aligned_mat.i22";
connectAttr "decomposeMatrix2.otx" "elbow_aligned_mat.i30";
connectAttr "decomposeMatrix2.oty" "elbow_aligned_mat.i31";
connectAttr "decomposeMatrix2.otz" "elbow_aligned_mat.i32";
connectAttr "multMatrix3.o" "decomposeMatrix5.imat";
connectAttr "init_shoulder.wm" "multMatrix1.i[0]";
connectAttr "motion_ik_grp.wim" "multMatrix1.i[1]";
connectAttr "multMatrix1.o" "decomposeMatrix6.imat";
connectAttr "init_elbow.wm" "multMatrix2.i[0]";
connectAttr "fk_shoulder.wim" "multMatrix2.i[1]";
connectAttr "multMatrix2.o" "decomposeMatrix7.imat";
connectAttr "elbow_aligned_mat.o" "multMatrix3.i[0]";
connectAttr "init_shoulder.wim" "multMatrix3.i[1]";
connectAttr "fit_wrist.wm" "multMatrix4.i[0]";
connectAttr "init_elbow.wim" "multMatrix4.i[1]";
connectAttr "multMatrix4.o" "decomposeMatrix8.imat";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "decomposeMatrix6.msg" "alignment_MayaNodeEditorSavedTabsInfo6.tgi[0].ni[2].dn"
		;
connectAttr "init_shoulder.msg" "alignment_MayaNodeEditorSavedTabsInfo6.tgi[0].ni[3].dn"
		;
connectAttr "multMatrix1.msg" "alignment_MayaNodeEditorSavedTabsInfo6.tgi[0].ni[5].dn"
		;
connectAttr "lambert2.msg" "alignment_MayaNodeEditorSavedTabsInfo6.tgi[0].ni[12].dn"
		;
connectAttr "lambert2SG.msg" "alignment_MayaNodeEditorSavedTabsInfo6.tgi[0].ni[13].dn"
		;
connectAttr "lambert2.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "input_arm_space.wm" "input_arm_space_decomp.imat";
connectAttr "shoulder_aligned_mat.o" "init_shoulder_localMat.i[0]";
connectAttr "init_space.wim" "init_shoulder_localMat.i[1]";
connectAttr "init_wrist.wm" "wrist_ik_ctrl_localMat.i[0]";
connectAttr "ik_shoulder_ctrl_space.wim" "wrist_ik_ctrl_localMat.i[1]";
connectAttr "wrist_ik_ctrl_localMat.o" "wrist_ik_ctrl_localMat_decomp.imat";
connectAttr "init_wrist.wm" "init_wrist_local.i[0]";
connectAttr "init_space.wim" "init_wrist_local.i[1]";
connectAttr "init_elbow.wm" "init_elbow_local.i[0]";
connectAttr "init_space.wim" "init_elbow_local.i[1]";
connectAttr "init_shoulder.wm" "init_shoulder_local.i[0]";
connectAttr "init_space.wim" "init_shoulder_local.i[1]";
connectAttr "ik_ctrl.wm" "ik_ctrl_local.i[0]";
connectAttr "init_space.wim" "ik_ctrl_local.i[1]";
connectAttr "init_shoulder.wm" "multMatrix5.i[0]";
connectAttr "init_space.wim" "multMatrix5.i[1]";
connectAttr "output_wrist.wm" "multMatrix6.i[0]";
connectAttr "arm_ctrl_grp.wim" "multMatrix6.i[1]";
connectAttr "multMatrix6.o" "decomposeMatrix9.imat";
connectAttr "init_elbow.wm" "multMatrix7.i[0]";
connectAttr "ik_shoulder_ctrl_space.wim" "multMatrix7.i[1]";
connectAttr "multMatrix7.o" "decomposeMatrix10.imat";
connectAttr "init_shoulder.wm" "multMatrix8.i[0]";
connectAttr "motion_fk_grp.wim" "multMatrix8.i[1]";
connectAttr "multMatrix8.o" "decomposeMatrix11.imat";
connectAttr "ikfk_blend_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "fk_elbow_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "init_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "fk_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "fk_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "decomposeMatrix7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "multMatrix2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "output_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "ik_elbow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "armlen_minus_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minus_dif.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "conditionfor_zerodivide.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_uparm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikfk_shoulder_t.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikfk_shoulder_r.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2elbow_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_Vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_mat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_vec.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_mat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_arm_space_decomp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat_decomp.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "init_wrist_local.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_elbow_local.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of softik_stretchik.0001.ma
