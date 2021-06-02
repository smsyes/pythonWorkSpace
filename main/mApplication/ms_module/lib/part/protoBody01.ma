//Maya ASCII 2019 scene
//Name: protoBody01.ma
//Last modified: Wed, Apr 07, 2021 02:11:31 AM
//Codeset: 949
requires maya "2019";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "07009605-43BA-FF8C-9AE4-8AAE7A961D56";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.085972011150936 12.974940109432808 64.899817850848009 ;
	setAttr ".r" -type "double3" 1.4616472704322419 -0.19999999999938717 1.9412683463190344e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "169DE1A7-4861-239D-D754-E4B25F6347AC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 68.759883215089616;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 12 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "229BD652-4421-192F-5848-64BB91C1E965";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D1816DF2-4F27-62F7-09F3-C981F64ED8B0";
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
	rename -uid "6C367CF2-4A09-98C3-AC72-CBAE07E5CE35";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.0957208736981663 16.187770815283251 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "613FDC8F-4CF9-557F-1B5F-079DF602EDA9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 20.149455035320095;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "3ADC369B-48D9-E76E-3247-8CACEB6900F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1270202976021 15.745125931783852 1.4808099951317693 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E1B6CD61-4B70-18A0-93BF-8BAECEF074AA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1270202976021;
	setAttr ".ow" 52.840267428101406;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 7.3516480710329448 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "L_arm";
	rename -uid "7252414D-4DA3-5430-DAAF-B7BDB8F3B124";
createNode transform -n "L_input_arm_grp" -p "L_arm";
	rename -uid "2CE02460-4CD8-5AA0-2951-3384F370596F";
createNode transform -n "L_input_arm" -p "L_input_arm_grp";
	rename -uid "50C0C4FA-41FA-11CD-26D6-5BA772B2754A";
createNode transform -n "L_input_arm_space" -p "L_input_arm";
	rename -uid "F0752C0E-4E7F-FA88-BF89-AB9D300F126A";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 1 20 0 ;
createNode nurbsCurve -n "L_input_arm_spaceShape" -p "L_input_arm_space";
	rename -uid "C830CF5A-4F3C-FFA6-C176-1499B1E2A0F4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.37297424974844756 0
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		0 0.37297424974844756 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		0 0.37297424974844756 0
		-0.37141068195303772 0.0017109454156154248 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-0.37141068195303772 0.0017109454156154248 0
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-4.5580985937280648e-17 -0.36969974937842187 0
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		-4.5580985937280648e-17 -0.36969974937842187 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		;
createNode transform -n "L_fit_space" -p "L_input_arm_grp";
	rename -uid "5AC6C570-4EEA-7837-3C0F-20AE658B4463";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "L_fit_shoulder" -p "|L_arm|L_input_arm_grp|L_fit_space";
	rename -uid "4B3E4F94-471C-EB6C-8441-87BB149A37E4";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_fit_shoulderShape" -p "L_fit_shoulder";
	rename -uid "F225355A-43B4-ABEB-0558-04891E0D8ABA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "L_fit_elbow" -p "|L_arm|L_input_arm_grp|L_fit_space";
	rename -uid "4A7E9A14-4DF2-E2EF-E691-2F8D59FE20EC";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 6 0 -0.21373660796144356 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_fit_elbowShape" -p "L_fit_elbow";
	rename -uid "2DBDE0FB-45A6-9E1C-076C-7C9D55876139";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "L_fit_wrist" -p "|L_arm|L_input_arm_grp|L_fit_space";
	rename -uid "510C1511-49CA-EC26-D052-088CECD43125";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_fit_wristShape" -p "L_fit_wrist";
	rename -uid "74491407-44B6-9AFC-322D-79BC18005E6A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode nurbsCurve -n "L_fit_spaceShape" -p "|L_arm|L_input_arm_grp|L_fit_space";
	rename -uid "F0E7C492-440A-4EEF-250D-10ABF13E484A";
	setAttr -k off ".v" no;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "L_arm_motion_grp" -p "L_arm";
	rename -uid "838BF7F5-4FCE-2297-D01A-78A6362CC5A5";
	setAttr ".v" no;
createNode transform -n "L_init_space" -p "L_arm_motion_grp";
	rename -uid "57DFCA57-487E-9887-6204-5190F15FDFD8";
createNode transform -n "L_init_shoulder" -p "|L_arm|L_arm_motion_grp|L_init_space";
	rename -uid "DF826BF6-4EBD-CEAE-FBD5-E89DF043EB65";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "L_init_elbow" -p "L_init_shoulder";
	rename -uid "40957BD1-43B6-1A5B-8541-0292C3A81918";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "L_init_wrist" -p "L_init_elbow";
	rename -uid "C26E1C44-49C8-6066-C8F1-C69EEA034A91";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "L_motion_ik_grp" -p "L_arm_motion_grp";
	rename -uid "51AFB83B-4332-B071-55E8-DCAB5E2D29CB";
createNode transform -n "L_softik_input" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "B48E3408-4E71-86BB-ADE3-3D8F9AC7F798";
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
createNode transform -n "L_softik_output" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "82688327-47F7-C898-BB5E-0B9F1243EAE3";
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
createNode transform -n "L_ik_shoulder_space" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "B3B452E0-4787-D3E2-E00F-37AA8D4F6CDD";
createNode locator -n "L_ik_shoulder_spaceShape" -p "L_ik_shoulder_space";
	rename -uid "8E3CBB89-427D-36CA-A984-F8901FD38E75";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrlaim" -p "L_ik_shoulder_space";
	rename -uid "B5DB4C65-4D3C-915A-C55A-09BA4404C8BB";
createNode locator -n "L_ik_ctrlaimShape" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim";
	rename -uid "5BE8287B-4F7B-E801-6CC4-1F8DE5EF99CA";
	setAttr -k off ".v";
createNode transform -n "L_softik_output_loc" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim";
	rename -uid "F9193BC1-406D-45F5-C272-7D81E96879B0";
createNode locator -n "L_softik_output_locShape" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "CD72BEF7-44E4-EFFE-EBFC-A8B3748DDBEE";
	setAttr -k off ".v" no;
createNode transform -n "L_stretch_output_loc" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "64206D9F-40C4-39E5-4CE9-898C08C26D01";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "L_stretch_output_locShape" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "1C1D35C1-46B6-D84D-D117-6683218E6098";
	setAttr -k off ".v" no;
createNode ikHandle -n "L_ikHandle4" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "F7637DF0-484B-D9D3-A493-A9B5D0CF06DC";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_ikHandle4_poleVectorConstraint1" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4";
	rename -uid "E7C33D8F-4F8B-2F19-A067-FEA0ABFA9C72";
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
	setAttr ".rst" -type "double3" 2.9999999999999982 -5.5552531578749917e-25 -7 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "L_ik_ctrlaim_aimConstraint1" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim";
	rename -uid "E2DD4824-4816-20C5-C416-6B8CF72DD63C";
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
	setAttr ".rsrr" -type "double3" -2.2537509537656059e-07 -30.873793714113745 8.1616585403735916e-07 ;
	setAttr -k on ".w0";
createNode transform -n "L_ik_shoulder_space_upVec" -p "L_ik_shoulder_space";
	rename -uid "C606E385-43FE-D97D-7349-83A0157617CD";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "L_ik_shoulder_space_upVecShape" -p "L_ik_shoulder_space_upVec";
	rename -uid "2CDBBBE5-4C1F-DAED-8CC6-47A6DEF9D549";
	setAttr -k off ".v";
createNode transform -n "L_stretchik_input" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "BDABBD3B-4E88-BC8E-1342-CF9899293619";
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
createNode transform -n "L_stretchik_output" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "E7B28B0E-4DA5-519D-A328-B2BD5BB6B4F2";
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
createNode joint -n "L_ik_shoulder" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "1A8FFBC5-4D96-9AC9-4CC9-2AAFA55D881E";
	setAttr ".r" -type "double3" -1.6728669668657964e-14 -4.8597647910875947e-05 5.0066390482677168e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_elbow" -p "L_ik_shoulder";
	rename -uid "6A1BCB50-4215-8B6C-9411-16A06F2255D3";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 0.00010082841412153638 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_wrist" -p "L_ik_elbow";
	rename -uid "0F849F01-484C-222A-5C5E-A7AC456EEF55";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "L_effector4" -p "L_ik_elbow";
	rename -uid "94100E31-4DAF-0041-5FFB-59A70581E5D1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "L_motion_fk_grp" -p "L_arm_motion_grp";
	rename -uid "4E7E7893-4744-D0EE-DD9A-4FBB639A21A5";
createNode joint -n "L_fk_shoulder" -p "|L_arm|L_arm_motion_grp|L_motion_fk_grp";
	rename -uid "84F95F6A-43F8-64DB-A894-378536FCA5D0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_elbow" -p "L_fk_shoulder";
	rename -uid "8CEF5361-4A84-95ED-4DBF-CB8AC40717B4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_wrist" -p "L_fk_elbow";
	rename -uid "141D3A97-4427-17D5-3390-389A36268613";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_output_grp" -p "L_arm";
	rename -uid "988241AE-4618-8CA8-0145-C7B491229DCC";
createNode joint -n "L_output_shoulder" -p "|L_arm|L_output_grp";
	rename -uid "0C991B7F-40AF-A422-A6B6-3B8D5B86D08A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_elbow" -p "L_output_shoulder";
	rename -uid "3330B226-4122-AF9E-71C2-7488B62E0BD3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_wrist" -p "L_output_elbow";
	rename -uid "724D9678-412C-C089-8337-90BCA42F47B6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_arm_ctrl_grp" -p "L_arm";
	rename -uid "8A882F99-46B2-C9A1-1F7D-A8B204ED25E8";
createNode transform -n "L_ik_shoulder_ctrl_space" -p "L_arm_ctrl_grp";
	rename -uid "0FC920E1-4847-4456-A3F2-839F0E94372D";
createNode transform -n "L_ik_elbow_polevector_space" -p "L_ik_shoulder_ctrl_space";
	rename -uid "0C4800EF-4AA7-393D-73DD-DF88E4716678";
createNode transform -n "L_ik_polevector_space" -p "L_ik_elbow_polevector_space";
	rename -uid "D38D0F79-4094-12DE-E3E5-5B9E08813BD9";
	setAttr ".t" -type "double3" -3.0000000476837152 -5.5552531578749917e-25 -3.9999999642372126 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "L_ik_polevector" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space";
	rename -uid "16E57FFD-4C1B-5B0C-2D23-78B82C10AADD";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "L_ik_polevectorShape" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space|L_ik_polevector";
	rename -uid "4F1CA121-48DC-967B-A0BB-B295099614CC";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrl_space" -p "L_ik_shoulder_ctrl_space";
	rename -uid "655C6249-489F-FC1E-1FA5-BB92431601C0";
createNode transform -n "L_ik_ctrl" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space";
	rename -uid "CE18CF3B-40CA-B3AE-76C6-9389D39F5759";
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
createNode renderBox -n "L_ik_ctrlShape" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl";
	rename -uid "EF8EA215-4EF8-119D-83B5-5D8B9BFF3ADA";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "L_ik_fk_blend_ctrl_space" -p "L_arm_ctrl_grp";
	rename -uid "4D048ADA-4430-4343-8C09-A9A8C2DB8A32";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "L_ik_fk_blend_ctrl" -p "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space";
	rename -uid "6C985FF3-4F4C-4170-5FEC-3CA523D40B15";
	addAttr -ci true -sn "ik_fk_blend" -ln "ik_fk_blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fit_on_off" -ln "fit_on_off" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.987846675914698e-16 0 -1.987846675914698e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ik_fk_blend" 1;
	setAttr -k on ".fit_on_off" yes;
createNode nurbsCurve -n "L_ik_fk_blend_ctrlShape" -p "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl";
	rename -uid "BFCD2632-486A-1274-F159-7D9EEADA5058";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		;
createNode transform -n "L_fk_shoulder_ctrl_space" -p "L_arm_ctrl_grp";
	rename -uid "3EE1AA31-4CDF-96F0-4894-1F8D4FF23767";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_shoulder_ctrl" -p "L_fk_shoulder_ctrl_space";
	rename -uid "0B6D90EE-48A1-8D1F-321F-5BA6E3DCB77C";
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
createNode nurbsCurve -n "L_fk_shoulder_ctrlShape" -p "L_fk_shoulder_ctrl";
	rename -uid "8CEDC674-4A53-32B2-A902-36AF1DB22835";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-16 1.1081941875543879 -3.2112695072372299e-16
		-3.3306690738754696e-16 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-16 2.2289823389653639e-16 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-16 -1.1081941875543884 5.9521325992805852e-16
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "L_fk_elbow_ctrl_space" -p "L_fk_shoulder_ctrl";
	rename -uid "EF981AE0-4300-457F-CA7A-078FF0714A98";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_elbow_ctrl" -p "L_fk_elbow_ctrl_space";
	rename -uid "DDAEC7D0-4B75-1108-9580-208981612C93";
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
createNode nurbsCurve -n "L_fk_elbow_ctrlShape" -p "L_fk_elbow_ctrl";
	rename -uid "E28BEEEE-4E54-6A5B-B484-809F7C0DFA47";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910707351847e-16 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-17 3.3392053635905205e-16 1.1081941875543881
		1.260143602537489e-16 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-16 -1.1081941875543881 5.9521325992805852e-16
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "L_fk_wrist_ctrl_space" -p "L_fk_elbow_ctrl";
	rename -uid "9EBE1C54-4ACD-EC29-3B45-3F85FC40FDA6";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_wrist_ctrl" -p "L_fk_wrist_ctrl_space";
	rename -uid "13917608-4F3F-1D35-D08D-F0BDE281B3F3";
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
createNode nurbsCurve -n "L_fk_wrist_ctrlShape" -p "L_fk_wrist_ctrl";
	rename -uid "48612657-473A-8777-2C09-94B5B5947F18";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910541915725e-16 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-17 3.3392053470469082e-16 1.1081941875543881
		1.2601436190811012e-16 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-16 -1.1081941875543881 5.9521325992805852e-16
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "R_arm";
	rename -uid "6053DD79-4B32-FCD7-5D5E-A5B48B1163B8";
createNode transform -n "R_input_arm_grp" -p "R_arm";
	rename -uid "DF6180D3-4C1D-52C3-69FB-4E94B967637A";
createNode transform -n "R_input_arm" -p "R_input_arm_grp";
	rename -uid "C5B23547-4F63-8A1D-C81E-BE89FB825362";
createNode transform -n "R_input_arm_space" -p "R_input_arm";
	rename -uid "2F820D44-453C-1D66-2D82-7DB97164EC70";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -1 20 0 ;
createNode nurbsCurve -n "R_input_arm_spaceShape" -p "R_input_arm_space";
	rename -uid "A4715A67-4D8B-D676-1A40-08AC6BC77BEC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.37297424974844756 0
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		0 0.37297424974844756 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		0 0.37297424974844756 0
		-0.37141068195303772 0.0017109454156154248 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-0.37141068195303772 0.0017109454156154248 0
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-4.5580985937280648e-17 -0.36969974937842187 0
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		-4.5580985937280648e-17 -0.36969974937842187 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		;
createNode transform -n "R_fit_space" -p "R_input_arm_grp";
	rename -uid "D005522C-4356-7AE7-E889-50A8F8058CD3";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "R_fit_shoulder" -p "|R_arm|R_input_arm_grp|R_fit_space";
	rename -uid "A960BEE6-4CC5-D420-2906-199EC7AEBD08";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -2 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_fit_shoulderShape" -p "R_fit_shoulder";
	rename -uid "E582FE80-4435-97AE-B2CC-E9BA67AB0A1D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "R_fit_elbow" -p "|R_arm|R_input_arm_grp|R_fit_space";
	rename -uid "FC795A2D-4902-6AE8-DBC7-4FBC4A4428E6";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -6 0 -0.21373660796144356 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_fit_elbowShape" -p "R_fit_elbow";
	rename -uid "99160452-4855-D463-FC8E-98BAD5DC42CA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "R_fit_wrist" -p "|R_arm|R_input_arm_grp|R_fit_space";
	rename -uid "76CA20F5-4923-C58F-F70B-DEA54EF36793";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -10 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_fit_wristShape" -p "R_fit_wrist";
	rename -uid "39F41A12-4B79-8F4C-1B56-468208C21876";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode nurbsCurve -n "R_fit_spaceShape" -p "|R_arm|R_input_arm_grp|R_fit_space";
	rename -uid "0CC5EFBE-4B6F-9485-305E-639745017CC0";
	setAttr -k off ".v" no;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "R_arm_motion_grp" -p "R_arm";
	rename -uid "7B2CAB92-488B-42DF-8077-CEB0356EDFCE";
	setAttr ".v" no;
createNode transform -n "R_init_space" -p "R_arm_motion_grp";
	rename -uid "9A112313-48EA-05BA-7764-94830C7BE2AD";
createNode transform -n "R_init_shoulder" -p "|R_arm|R_arm_motion_grp|R_init_space";
	rename -uid "F2F49E3B-484F-C09E-3721-A79198F23045";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "R_init_elbow" -p "R_init_shoulder";
	rename -uid "62562C85-4F93-6E03-81BD-3C8F850CE51B";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "R_init_wrist" -p "R_init_elbow";
	rename -uid "F4E0C399-4997-A417-52FC-769D790F4521";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "R_motion_ik_grp" -p "R_arm_motion_grp";
	rename -uid "8D15E98A-4C1C-C4E4-35CC-E0B0C88186B9";
createNode transform -n "R_softik_input" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "75C95526-4F41-DD87-6679-CEA3C1FBB806";
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
createNode transform -n "R_softik_output" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "511471C2-4C46-003F-73EB-7FB22251A644";
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
createNode transform -n "R_ik_shoulder_space" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "5AF2E41C-4D7A-AE50-0637-619E3C486EC2";
createNode locator -n "R_ik_shoulder_spaceShape" -p "R_ik_shoulder_space";
	rename -uid "C857B5E8-43EA-20E1-662D-0BA0C3D87F3A";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrlaim" -p "R_ik_shoulder_space";
	rename -uid "2955B39A-41DD-1ED9-B788-2FA8F42B3A5A";
createNode locator -n "R_ik_ctrlaimShape" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim";
	rename -uid "C8A1A5FB-4555-3FE0-5B75-798A650B973F";
	setAttr -k off ".v";
createNode transform -n "R_softik_output_loc" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim";
	rename -uid "A1FC5F39-44F6-AF53-F676-16B4A28BD565";
createNode locator -n "R_softik_output_locShape" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "5B4F26B9-4B33-3A9E-5DA1-99B54C91FFFC";
	setAttr -k off ".v" no;
createNode transform -n "R_stretch_output_loc" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "5E8BA031-4783-4EC8-A7E9-A2AB65D26FF5";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "R_stretch_output_locShape" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "DDE5C8F6-451A-5651-92DF-B8BDC3394A53";
	setAttr -k off ".v" no;
createNode ikHandle -n "R_ikHandle4" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "1AFE1E82-4623-C4C6-AE5C-CFA1048424F3";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_ikHandle4_poleVectorConstraint1" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4";
	rename -uid "AFE9CAED-4B89-F1B9-EA2E-639E35E2E34B";
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
	setAttr ".rst" -type "double3" 2.9999999999999982 -5.5552531578749917e-25 -7 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "R_ik_ctrlaim_aimConstraint1" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim";
	rename -uid "5098E500-4009-1538-C6D2-09B1353B3C1B";
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
	setAttr ".rsrr" -type "double3" -2.2537509537656059e-07 -30.873793714113745 8.1616585403735916e-07 ;
	setAttr -k on ".w0";
createNode transform -n "R_ik_shoulder_space_upVec" -p "R_ik_shoulder_space";
	rename -uid "36B18F4B-466F-0343-57EC-24AB95FA5D1D";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "R_ik_shoulder_space_upVecShape" -p "R_ik_shoulder_space_upVec";
	rename -uid "9D2C7C40-40A8-3279-E3C8-06AE34B5F37D";
	setAttr -k off ".v";
createNode transform -n "R_stretchik_input" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "29D4F2BD-49C3-AECA-67B7-EEB3C0D5C349";
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
createNode transform -n "R_stretchik_output" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "B8A138B3-43E8-E868-6233-DDAF166364DB";
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
createNode joint -n "R_ik_shoulder" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "1A059B3B-40FE-69CD-65FF-0998A50B6AA2";
	setAttr ".r" -type "double3" -179.99999988017962 4.8597647922012221e-05 179.99999999359767 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_elbow" -p "R_ik_shoulder";
	rename -uid "D90B3C3E-43AB-3EFD-E20A-F8B23DFAD82F";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 0.00010082841459724588 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_wrist" -p "R_ik_elbow";
	rename -uid "7F6572B3-4E14-4641-8484-62900AC1AE67";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "R_effector4" -p "R_ik_elbow";
	rename -uid "602BEBFF-436B-29E7-D2FD-A689CACFC22F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "R_motion_fk_grp" -p "R_arm_motion_grp";
	rename -uid "B5EED020-4422-98B3-D8B6-8E8680F7D374";
createNode joint -n "R_fk_shoulder" -p "|R_arm|R_arm_motion_grp|R_motion_fk_grp";
	rename -uid "019DCFED-4D55-B57D-EBB8-229C1CA80600";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_elbow" -p "R_fk_shoulder";
	rename -uid "F548815B-4E87-7584-565B-EABA4EE0152A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_wrist" -p "R_fk_elbow";
	rename -uid "BD1CB6CA-4B26-7A66-51CF-BCA8ECFAE46F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_output_grp" -p "R_arm";
	rename -uid "B5271056-4019-5144-2196-6EA11EA283E2";
createNode joint -n "R_output_shoulder" -p "|R_arm|R_output_grp";
	rename -uid "09B4EE0B-4D78-5826-C9E6-76A9378B30E5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_elbow" -p "R_output_shoulder";
	rename -uid "997F3938-4960-0371-D817-06916C45C6A3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_wrist" -p "R_output_elbow";
	rename -uid "0F5B14B4-42CD-34EB-CAB1-AB96E85AE21D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_arm_ctrl_grp" -p "R_arm";
	rename -uid "C054DF39-437C-7686-1E34-FF96D7DDE397";
createNode transform -n "R_ik_shoulder_ctrl_space" -p "R_arm_ctrl_grp";
	rename -uid "A6CB3B3E-466C-4C03-CE16-4E9D503359D5";
createNode transform -n "R_ik_elbow_polevector_space" -p "R_ik_shoulder_ctrl_space";
	rename -uid "FA70A75E-4D36-A05D-1DC9-07B8AA1C701B";
createNode transform -n "R_ik_polevector_space" -p "R_ik_elbow_polevector_space";
	rename -uid "BBBC08AF-4F91-9AD6-1E1E-CA9E01E7F84B";
	setAttr ".t" -type "double3" 3 -5.5552531578749917e-25 4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "R_ik_polevector" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space";
	rename -uid "05DE408A-4D9F-9175-864C-A1A66D5CB7F2";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "R_ik_polevectorShape" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space|R_ik_polevector";
	rename -uid "95E3C0DB-4F2A-AC97-AFAE-8F9750AF8DDE";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrl_space" -p "R_ik_shoulder_ctrl_space";
	rename -uid "BC4BE5B6-42EE-AAB8-182C-AEBC9CF0331F";
createNode transform -n "R_ik_ctrl" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space";
	rename -uid "F6985942-4884-A285-58A4-0680F5F57110";
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
createNode renderBox -n "R_ik_ctrlShape" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl";
	rename -uid "75E75520-4D6C-3C32-AE13-8B913B6EFF48";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "R_ik_fk_blend_ctrl_space" -p "R_arm_ctrl_grp";
	rename -uid "4B20E38E-400D-DFC8-9AB6-D9BC0EDDE820";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_ik_fk_blend_ctrl" -p "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space";
	rename -uid "7C45CC26-459A-B514-4FDD-C5B704CDA080";
	addAttr -ci true -sn "ik_fk_blend" -ln "ik_fk_blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fit_on_off" -ln "fit_on_off" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.987846675914698e-16 0 -1.987846675914698e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ik_fk_blend" 1;
	setAttr -k on ".fit_on_off" yes;
createNode nurbsCurve -n "R_ik_fk_blend_ctrlShape" -p "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl";
	rename -uid "26E9E1BF-4DD7-E234-3713-6CA6EC89057D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		;
createNode transform -n "R_fk_shoulder_ctrl_space" -p "R_arm_ctrl_grp";
	rename -uid "5FC55BE6-4859-5F65-BE10-89AEC0085901";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_shoulder_ctrl" -p "R_fk_shoulder_ctrl_space";
	rename -uid "C61DEF10-45C2-3C3D-A0A5-BAB1A89FD4DA";
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
createNode nurbsCurve -n "R_fk_shoulder_ctrlShape" -p "R_fk_shoulder_ctrl";
	rename -uid "FD68A6EA-4BFD-EA59-B161-2392A2320A40";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-16 1.1081941875543879 -3.2112695072372299e-16
		-3.3306690738754696e-16 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-16 2.2289823389653639e-16 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-16 -1.1081941875543884 5.9521325992805852e-16
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "R_fk_elbow_ctrl_space" -p "R_fk_shoulder_ctrl";
	rename -uid "CA57E4F6-44F9-01BE-3874-FFA649D49DE5";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_elbow_ctrl" -p "R_fk_elbow_ctrl_space";
	rename -uid "345D7742-4508-A213-C750-9A8FC67884F7";
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
createNode nurbsCurve -n "R_fk_elbow_ctrlShape" -p "R_fk_elbow_ctrl";
	rename -uid "A435F359-4560-9740-110C-8D9124E47213";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910707351847e-16 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-17 3.3392053635905205e-16 1.1081941875543881
		1.260143602537489e-16 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-16 -1.1081941875543881 5.9521325992805852e-16
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "R_fk_wrist_ctrl_space" -p "R_fk_elbow_ctrl";
	rename -uid "C84A1E18-469E-C165-2438-DC93097B64AC";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_wrist_ctrl" -p "R_fk_wrist_ctrl_space";
	rename -uid "8E52809F-4621-D4EB-0A74-3B861B8BE524";
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
createNode nurbsCurve -n "R_fk_wrist_ctrlShape" -p "R_fk_wrist_ctrl";
	rename -uid "592EF2EC-4202-B5E8-A757-AA8D59C5D939";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910541915725e-16 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-17 3.3392053470469082e-16 1.1081941875543881
		1.2601436190811012e-16 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-16 -1.1081941875543881 5.9521325992805852e-16
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "L_leg";
	rename -uid "C9CBFDD5-4494-7527-92AB-77829A86513B";
createNode transform -n "L_input_leg_grp" -p "L_leg";
	rename -uid "BC210694-4F98-CBEB-C994-7FA77CE10915";
createNode transform -n "L_input_leg" -p "L_input_leg_grp";
	rename -uid "C998068E-469C-77D3-AED6-79B407DFE049";
createNode transform -n "L_input_leg_space" -p "L_input_leg";
	rename -uid "829F6E6A-43B2-8FFB-3428-198F59FC8DAD";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 1 12 0 ;
createNode nurbsCurve -n "L_input_leg_spaceShape" -p "L_input_leg_space";
	rename -uid "429B2433-481C-4D4C-D30A-28B1DAC50B48";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.37297424974844756 0
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		0 0.37297424974844756 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		0 0.37297424974844756 0
		-0.37141068195303772 0.0017109454156154248 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-0.37141068195303772 0.0017109454156154248 0
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-4.5580985937280648e-17 -0.36969974937842187 0
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		-4.5580985937280648e-17 -0.36969974937842187 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		;
createNode transform -n "L_fit_space" -p "L_input_leg_grp";
	rename -uid "BAA8A1C3-4E3F-1CDB-FD15-4E956A97EDFF";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "L_fit_thigh" -p "|L_leg|L_input_leg_grp|L_fit_space";
	rename -uid "4A1B2EDF-4A5B-3C7C-BCEF-F586B2C7112F";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 1 -1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_fit_thighShape" -p "L_fit_thigh";
	rename -uid "FC26AACE-42BD-6593-EE42-EEA0F9ABAB16";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "L_fit_knee" -p "|L_leg|L_input_leg_grp|L_fit_space";
	rename -uid "ED646AB7-4944-4F95-F8EA-E785959CD406";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 1 -6 0.32804284195477718 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_fit_kneeShape" -p "L_fit_knee";
	rename -uid "141B2712-4CCB-EB5B-4080-B4A653ED64FB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "L_fit_ankle" -p "|L_leg|L_input_leg_grp|L_fit_space";
	rename -uid "88E63DC7-4B16-55D0-D475-5884E0997059";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 1 -11 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_fit_ankleShape" -p "L_fit_ankle";
	rename -uid "F0716604-4B08-1289-8F45-85B2BA05B98D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode nurbsCurve -n "L_fit_spaceShape" -p "|L_leg|L_input_leg_grp|L_fit_space";
	rename -uid "23FEF215-4B11-FF5F-87E0-3AA4D389BFE4";
	setAttr -k off ".v" no;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "L_leg_motion_grp" -p "L_leg";
	rename -uid "3C28ABE8-441D-0BF2-F86B-22BDFA16822A";
	setAttr ".v" no;
createNode transform -n "L_init_space" -p "L_leg_motion_grp";
	rename -uid "E086BACB-45CD-135D-C851-25BED83B5323";
createNode transform -n "L_init_thigh" -p "|L_leg|L_leg_motion_grp|L_init_space";
	rename -uid "9F7421DB-493A-6B99-1222-A395BEA0103D";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "L_init_knee" -p "L_init_thigh";
	rename -uid "79A9EA62-4F1C-6204-0EA8-6D8E39D47B0B";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "L_init_ankle" -p "L_init_knee";
	rename -uid "6930D586-4A94-3C5C-0715-1793C022160F";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "L_motion_ik_grp" -p "L_leg_motion_grp";
	rename -uid "544940C0-43D2-F5A9-4695-7ABDA52F4E07";
createNode transform -n "L_softik_input" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "AB8F1C64-4553-299F-9A42-A28257FDF056";
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
createNode transform -n "L_softik_output" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "48744D31-4731-A79C-4DED-61B658F9B75C";
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
createNode transform -n "L_ik_thigh_space" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "11E458F7-4961-EB03-95ED-ECB1A7BABA7A";
createNode locator -n "L_ik_thigh_spaceShape" -p "L_ik_thigh_space";
	rename -uid "EA651BA4-4E92-A9AE-CE6A-98B37593B74B";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrlaim" -p "L_ik_thigh_space";
	rename -uid "721F74DA-4C11-AB64-56A9-23BB29EAB3FB";
createNode locator -n "L_ik_ctrlaimShape" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim";
	rename -uid "D1C599C3-43FF-94EE-71C5-DA8BEC169479";
	setAttr -k off ".v";
createNode transform -n "L_softik_output_loc" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim";
	rename -uid "AEB84C5E-48DD-748E-2760-CAB10AEC0269";
createNode locator -n "L_softik_output_locShape" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "E5CA0DEC-49A5-E31C-BE57-7F97471B463A";
	setAttr -k off ".v" no;
createNode transform -n "L_stretch_output_loc" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "C3A15793-4EC7-5D8D-1C72-2F8FB14C26D9";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "L_stretch_output_locShape" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "C4C5FAF3-4FB1-78CB-3049-4284EE1CD94B";
	setAttr -k off ".v" no;
createNode ikHandle -n "L_ikHandle4" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "3CA12158-4DDC-D1FF-BFDB-53A650BB88A0";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_ikHandle4_poleVectorConstraint1" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4";
	rename -uid "1C3BAB08-4E75-C30E-76C2-D4A71E1A2CF5";
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
	setAttr ".rst" -type "double3" 2.9999999999999982 -5.5552531578749917e-25 -7 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "L_ik_ctrlaim_aimConstraint1" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim";
	rename -uid "825BB61B-4D23-1733-1407-0EAE79FF8F5B";
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
	setAttr ".rsrr" -type "double3" -2.2537509537656059e-07 -30.873793714113745 8.1616585403735916e-07 ;
	setAttr -k on ".w0";
createNode transform -n "L_ik_thigh_space_upVec" -p "L_ik_thigh_space";
	rename -uid "EB540C60-42A3-546E-6413-F8A5B1488195";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "L_ik_thigh_space_upVecShape" -p "L_ik_thigh_space_upVec";
	rename -uid "BABE0C85-4425-57D9-50CD-40A037DDC482";
	setAttr -k off ".v";
createNode transform -n "L_stretchik_input" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "47B093F1-408D-7C35-B042-3BAEDC912F75";
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
createNode transform -n "L_stretchik_output" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "BB522E99-47DD-1075-1AAE-8685A5C6C1E2";
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
createNode joint -n "L_ik_thigh" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "45244628-4661-EB10-24E7-3AA66453C5A7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_knee" -p "L_ik_thigh";
	rename -uid "DF83786E-47B4-3C1E-3FCF-22AF00386B05";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 -7.2488836440859685e-06 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_ankle" -p "L_ik_knee";
	rename -uid "D1AE7796-4610-4942-E1A5-7490A388E605";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "L_effector4" -p "L_ik_knee";
	rename -uid "4866BF35-4B67-B697-C27E-4992509EA5C2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "L_motion_fk_grp" -p "L_leg_motion_grp";
	rename -uid "727BB451-41E0-03D0-CCAA-1D9527C1F21B";
createNode joint -n "L_fk_thigh" -p "|L_leg|L_leg_motion_grp|L_motion_fk_grp";
	rename -uid "74FC3455-47CD-D5E1-9EAD-E882F1D58B9D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_knee" -p "L_fk_thigh";
	rename -uid "E0678F6A-4116-E92C-8FCD-46B3653DED95";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_ankle" -p "L_fk_knee";
	rename -uid "01F99B41-470E-766C-BE71-4BA1F1B43445";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_output_grp" -p "L_leg";
	rename -uid "F395E6EE-4723-EBA4-DB85-3F982AC4F34D";
createNode joint -n "L_output_thigh" -p "|L_leg|L_output_grp";
	rename -uid "1C420B0F-4EC2-A43D-5EF4-05A812620429";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_knee" -p "L_output_thigh";
	rename -uid "DA723825-4E4C-E3B1-DC5D-BF8040A30982";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_ankle" -p "L_output_knee";
	rename -uid "DCA5567B-439D-155E-C289-BDB496157D3C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_leg_ctrl_grp" -p "L_leg";
	rename -uid "D77EE366-49F4-D422-5A30-E9873C2822D3";
createNode transform -n "L_ik_thigh_ctrl_space" -p "L_leg_ctrl_grp";
	rename -uid "818C80E4-43FF-5DAC-CD56-85950E043C84";
createNode transform -n "L_ik_knee_polevector_space" -p "L_ik_thigh_ctrl_space";
	rename -uid "EA40AD56-472C-E628-A69E-53B9FF35BE40";
createNode transform -n "L_ik_polevector_space" -p "L_ik_knee_polevector_space";
	rename -uid "F668A7B7-4309-7FB9-3648-E2A1E93011BD";
	setAttr ".t" -type "double3" -3.0000000476837152 -5.5552531578749917e-25 -3.9999999642372126 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "L_ik_polevector" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space";
	rename -uid "0F3A519D-4F1D-54A6-47D5-26A3210750D0";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "L_ik_polevectorShape" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space|L_ik_polevector";
	rename -uid "B36D2651-4FE9-CF23-A225-91BF64382258";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrl_space" -p "L_ik_thigh_ctrl_space";
	rename -uid "BCC00B6D-4682-3A21-3DA6-2AB366965401";
createNode transform -n "L_ik_ctrl" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space";
	rename -uid "93C05BF3-4C9B-53C7-9685-5F9EA03C3C80";
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
createNode renderBox -n "L_ik_ctrlShape" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl";
	rename -uid "2C185586-440B-1006-ECE4-C4B40EC80C52";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "L_ik_fk_blend_ctrl_space" -p "L_leg_ctrl_grp";
	rename -uid "2C6A7C39-474C-A7DF-771E-358893FD491E";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "L_ik_fk_blend_ctrl" -p "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space";
	rename -uid "3612C35A-42D5-F217-6955-F28B1ADE0322";
	addAttr -ci true -sn "ik_fk_blend" -ln "ik_fk_blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fit_on_off" -ln "fit_on_off" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.987846675914698e-16 0 -1.987846675914698e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ik_fk_blend" 1;
	setAttr -k on ".fit_on_off" yes;
createNode nurbsCurve -n "L_ik_fk_blend_ctrlShape" -p "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl";
	rename -uid "3DF93EBE-41DF-7871-14C9-0397BEDB590E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		;
createNode transform -n "L_fk_thigh_ctrl_space" -p "L_leg_ctrl_grp";
	rename -uid "5C56EB97-4127-7367-2212-EFB40E3EEA87";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_thigh_ctrl" -p "L_fk_thigh_ctrl_space";
	rename -uid "3AD65441-49D6-70D5-230A-C8872A7F1C64";
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
createNode nurbsCurve -n "L_fk_thigh_ctrlShape" -p "L_fk_thigh_ctrl";
	rename -uid "E83AE663-4EB7-795E-869F-E3A7F6EDF1EA";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-16 1.1081941875543879 -3.2112695072372299e-16
		-3.3306690738754696e-16 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-16 2.2289823389653639e-16 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-16 -1.1081941875543884 5.9521325992805852e-16
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "L_fk_knee_ctrl_space" -p "L_fk_thigh_ctrl";
	rename -uid "A6CCD1ED-44D8-D64C-4861-5F9A9DCD7BB7";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_knee_ctrl" -p "L_fk_knee_ctrl_space";
	rename -uid "DCA7BDFC-44A2-5742-C415-B99EE1BFF6D8";
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
createNode nurbsCurve -n "L_fk_knee_ctrlShape" -p "L_fk_knee_ctrl";
	rename -uid "84D5664B-4BDF-7D0F-7720-5A97489B87F6";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910707351847e-16 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-17 3.3392053635905205e-16 1.1081941875543881
		1.260143602537489e-16 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-16 -1.1081941875543881 5.9521325992805852e-16
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "L_fk_ankle_ctrl_space" -p "L_fk_knee_ctrl";
	rename -uid "511E0D62-47F5-2C10-974C-4193A343E6D9";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_ankle_ctrl" -p "L_fk_ankle_ctrl_space";
	rename -uid "0EA6047A-4081-4D22-517D-6CA49559A1E5";
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
createNode nurbsCurve -n "L_fk_ankle_ctrlShape" -p "L_fk_ankle_ctrl";
	rename -uid "3DA813FE-4933-0BEC-B0F1-3A84FFFF8E5E";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910541915725e-16 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-17 3.3392053470469082e-16 1.1081941875543881
		1.2601436190811012e-16 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-16 -1.1081941875543881 5.9521325992805852e-16
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "R_leg";
	rename -uid "D3C02300-4B58-917D-76D2-B58EC0590CBC";
createNode transform -n "R_input_leg_grp" -p "R_leg";
	rename -uid "671E7081-4901-AEF1-E3EC-AA852F9C9A35";
createNode transform -n "R_input_leg" -p "R_input_leg_grp";
	rename -uid "A6F67E72-4CA6-AEB7-3DE4-B083FA52ECA9";
createNode transform -n "R_input_leg_space" -p "R_input_leg";
	rename -uid "3B3B5E6F-417C-1F34-4E4C-CE8221C8935E";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -1 12 0 ;
createNode nurbsCurve -n "R_input_leg_spaceShape" -p "R_input_leg_space";
	rename -uid "B90D61E6-4EF5-7E5E-C78F-E5816642BFE2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.37297424974844756 0
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		0 0.37297424974844756 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0.37141068195303772 0.0017109454156154248 -3.2469754242007696e-08
		0 0.37297424974844756 0
		-0.37141068195303772 0.0017109454156154248 0
		1.6234877121003848e-08 0.0017109454156154248 0.37141068195303772
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-0.37141068195303772 0.0017109454156154248 0
		0 0.37297424974844756 0
		-4.8704625764779988e-08 0.0017109454156154248 -0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-4.5580985937280648e-17 -0.36969974937842187 0
		4.8704625764779988e-08 0.0015635521416198163 -0.37141068195303772
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-4.5580985937280648e-17 -0.36969974937842187 0
		0.37141068195303772 0.0015635521416198163 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		-4.5580985937280648e-17 -0.36969974937842187 0
		-1.6234877121003848e-08 0.0015635521416198163 0.37141068195303772
		-0.37141068195303772 0.0015635521416198163 -3.2469754242007696e-08
		;
createNode transform -n "R_fit_space" -p "R_input_leg_grp";
	rename -uid "1A072F13-4A9A-00F3-9A60-77A174AFF36F";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "R_fit_thigh" -p "|R_leg|R_input_leg_grp|R_fit_space";
	rename -uid "1105B764-4D04-4E2E-D12C-0F86543D8275";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -1 -1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_fit_thighShape" -p "R_fit_thigh";
	rename -uid "E6898A84-400C-DD79-D90F-FCA1EB451FAC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "R_fit_knee" -p "|R_leg|R_input_leg_grp|R_fit_space";
	rename -uid "12B2C7E5-4D1F-C946-BED3-B88B5F2430CC";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -1 -6 0.32804284195477718 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_fit_kneeShape" -p "R_fit_knee";
	rename -uid "8D109B3C-4ADC-18E8-2DC5-E4953BBDDC40";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "R_fit_ankle" -p "|R_leg|R_input_leg_grp|R_fit_space";
	rename -uid "6FA0FB2F-436F-1CEA-A6D2-D6B3CEA17496";
	setAttr -l on -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -1 -11 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_fit_ankleShape" -p "R_fit_ankle";
	rename -uid "42CCF8BF-4895-7A28-4FDC-B0A858B13083";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode nurbsCurve -n "R_fit_spaceShape" -p "|R_leg|R_input_leg_grp|R_fit_space";
	rename -uid "DBDD17A6-4117-BBC3-35A0-E48EAE628428";
	setAttr -k off ".v" no;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		0 0.70860373973846436 0
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		0 0.70860373973846436 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0.70710676908493042 0.0017775541637092829 -6.1817239327410789e-08
		0 0.70860373973846436 0
		-0.70710676908493042 0.0017775541637092829 0
		3.0908619663705394e-08 0.0017775541637092829 0.70710676908493042
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-0.70710676908493042 0.0017775541637092829 0
		0 0.70860373973846436 0
		-9.2725848332975147e-08 0.0017775541637092829 -0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-8.6778935727786896e-17 -0.70532923936843872 0
		9.2725848332975147e-08 0.0014969408512115479 -0.70710676908493042
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-8.6778935727786896e-17 -0.70532923936843872 0
		0.70710676908493042 0.0014969408512115479 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		-8.6778935727786896e-17 -0.70532923936843872 0
		-3.0908619663705394e-08 0.0014969408512115479 0.70710676908493042
		-0.70710676908493042 0.0014969408512115479 -6.1817239327410789e-08
		;
createNode transform -n "R_leg_motion_grp" -p "R_leg";
	rename -uid "C9C70321-4A8C-963A-5588-ED890370C738";
	setAttr ".v" no;
createNode transform -n "R_init_space" -p "R_leg_motion_grp";
	rename -uid "2BBB0133-4B2E-2FF6-CA16-96B6B317CFC9";
createNode transform -n "R_init_thigh" -p "|R_leg|R_leg_motion_grp|R_init_space";
	rename -uid "748607C2-4162-B1E7-1062-578D45ED73DD";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "R_init_knee" -p "R_init_thigh";
	rename -uid "A8BAA179-4A50-66F4-9B9B-B89C6A2E5DAD";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "R_init_ankle" -p "R_init_knee";
	rename -uid "159EFCB1-4E43-4CDC-EE02-2BA2617594E0";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "R_motion_ik_grp" -p "R_leg_motion_grp";
	rename -uid "2713DCDF-4CA9-5C1A-5E14-039529FA41D4";
createNode transform -n "R_softik_input" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "6EF62509-41BB-3F7F-AED8-5F8F2A044806";
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
createNode transform -n "R_softik_output" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "3F47EC78-4D26-CD83-EF96-6787CE5D2356";
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
createNode transform -n "R_ik_thigh_space" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "0991918E-45A9-6900-7198-E8AE34B125E9";
createNode locator -n "R_ik_thigh_spaceShape" -p "R_ik_thigh_space";
	rename -uid "332E2E43-4AB1-EF80-5DFC-4EB50E90BD82";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrlaim" -p "R_ik_thigh_space";
	rename -uid "FF53C0EA-493E-C257-ACF5-209F595134AA";
createNode locator -n "R_ik_ctrlaimShape" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim";
	rename -uid "615C0F90-4CC4-1C74-7A76-0CA8C6FDBC41";
	setAttr -k off ".v";
createNode transform -n "R_softik_output_loc" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim";
	rename -uid "932A4DDF-4CD3-ADAE-16C0-C69A1F2F5893";
createNode locator -n "R_softik_output_locShape" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "29FA288E-43A7-FF2B-B708-968904214C7F";
	setAttr -k off ".v" no;
createNode transform -n "R_stretch_output_loc" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "4D7D4A83-4C79-1CD9-D692-1999ECA20804";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "R_stretch_output_locShape" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "94F0BE8C-4BFD-C6C2-7B0B-9EB5F9955230";
	setAttr -k off ".v" no;
createNode ikHandle -n "R_ikHandle4" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "E3D5658B-45BC-620C-71F5-61AC3876633F";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_ikHandle4_poleVectorConstraint1" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4";
	rename -uid "F2C47779-4635-9343-6420-6581DC6E07F9";
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
	setAttr ".rst" -type "double3" 2.9999999999999982 -5.5552531578749917e-25 -7 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "R_ik_ctrlaim_aimConstraint1" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim";
	rename -uid "05CAF99C-49E5-6587-E032-FFAD4EBD63B1";
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
	setAttr ".rsrr" -type "double3" -2.2537509537656059e-07 -30.873793714113745 8.1616585403735916e-07 ;
	setAttr -k on ".w0";
createNode transform -n "R_ik_thigh_space_upVec" -p "R_ik_thigh_space";
	rename -uid "B87AC20C-4EB9-A204-EAB2-CF943D261E7A";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "R_ik_thigh_space_upVecShape" -p "R_ik_thigh_space_upVec";
	rename -uid "F906728A-4017-54B0-0C08-0E83920E4BD0";
	setAttr -k off ".v";
createNode transform -n "R_stretchik_input" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "53DCA472-44B7-7217-2C3D-658AAED7ADAE";
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
createNode transform -n "R_stretchik_output" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "AC9696DD-4112-02C7-D6B4-2FAF4A841DD7";
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
createNode joint -n "R_ik_thigh" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "CE6A9644-4D83-33CB-2D65-32AC177FEB65";
	setAttr ".r" -type "double3" 0 179.99999494900698 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_knee" -p "R_ik_thigh";
	rename -uid "F754EC57-4BE5-A9A6-BE3F-F4B3EB1667F8";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 -7.2488837015375172e-06 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_ankle" -p "R_ik_knee";
	rename -uid "170ECE10-456A-3730-1DF8-3EAF4245C978";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "R_effector4" -p "R_ik_knee";
	rename -uid "EFB1E536-40F9-5E0F-9150-6A862179CCDC";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "R_motion_fk_grp" -p "R_leg_motion_grp";
	rename -uid "E060BF65-491A-0DB1-4CB6-7E9BF6DD2176";
createNode joint -n "R_fk_thigh" -p "|R_leg|R_leg_motion_grp|R_motion_fk_grp";
	rename -uid "E52C7817-47E8-11A2-FBB7-9A85CD8DF5D4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_knee" -p "R_fk_thigh";
	rename -uid "9ABD539D-481D-9C13-8770-FF83F1171261";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_ankle" -p "R_fk_knee";
	rename -uid "C5CA99B0-487A-F48E-6F84-18989354560A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_output_grp" -p "R_leg";
	rename -uid "98A17C2C-4163-33E9-25C2-74BAAEC03633";
createNode joint -n "R_output_thigh" -p "|R_leg|R_output_grp";
	rename -uid "58DF0106-4111-D2C2-73C7-A0B303C0E6EB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_knee" -p "R_output_thigh";
	rename -uid "35A36FEA-485F-FC55-E0DE-D68553B777D2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_ankle" -p "R_output_knee";
	rename -uid "BC862445-48B4-94EA-B8DB-95B517FE18EB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_leg_ctrl_grp" -p "R_leg";
	rename -uid "583BED56-4824-81AB-DE38-F18B8B446C5D";
createNode transform -n "R_ik_thigh_ctrl_space" -p "R_leg_ctrl_grp";
	rename -uid "BCE433F3-49E3-F128-7F97-EE8510EF45BB";
createNode transform -n "R_ik_knee_polevector_space" -p "R_ik_thigh_ctrl_space";
	rename -uid "71EA6639-47E0-8926-487B-FDB0E6BB5509";
createNode transform -n "R_ik_polevector_space" -p "R_ik_knee_polevector_space";
	rename -uid "E0F4A53C-42F4-0B33-5C07-CE96A7457AF7";
	setAttr ".t" -type "double3" 3 -5.5552531578749917e-25 4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "R_ik_polevector" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space";
	rename -uid "35FF2AF8-4AB6-BE9D-A0C8-BE926B92F31B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "R_ik_polevectorShape" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space|R_ik_polevector";
	rename -uid "266E0B95-4759-5282-E164-1D8E5B73F505";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrl_space" -p "R_ik_thigh_ctrl_space";
	rename -uid "A4651138-479F-195E-5CBD-209095EA5A8D";
createNode transform -n "R_ik_ctrl" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space";
	rename -uid "DCE61630-4399-C04F-4756-58B25D01FAD5";
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
createNode renderBox -n "R_ik_ctrlShape" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl";
	rename -uid "3FA04C7D-4281-C8F1-2D50-0BBF754C02B8";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "R_ik_fk_blend_ctrl_space" -p "R_leg_ctrl_grp";
	rename -uid "65080B26-4C42-06CB-3C08-B096A5906CD9";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_ik_fk_blend_ctrl" -p "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space";
	rename -uid "A8C58AD5-4F34-66C6-8F17-6F9DB555FF1E";
	addAttr -ci true -sn "ik_fk_blend" -ln "ik_fk_blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fit_on_off" -ln "fit_on_off" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.987846675914698e-16 0 -1.987846675914698e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".ik_fk_blend" 1;
	setAttr -k on ".fit_on_off" yes;
createNode nurbsCurve -n "R_ik_fk_blend_ctrlShape" -p "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl";
	rename -uid "680F53BD-47B3-0F95-1508-7E8A6A927F45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		4.4235448637408581e-16 2.0816681711721685e-17 -3.3306690738754696e-16
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		0.016266037396141159 -0.52217157014952587 -3.0485434199298469
		0.4868334842725347 -0.056354681933546064 -3.1013155598090445
		0.01815046941042716 0.40946232845145847 -3.1688049346225391
		-0.45241701860428191 -0.056354600487527808 -3.1160327901298528
		;
createNode transform -n "R_fk_thigh_ctrl_space" -p "R_leg_ctrl_grp";
	rename -uid "B4F0076B-4669-CABA-9A70-F9A8C9F16B06";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_thigh_ctrl" -p "R_fk_thigh_ctrl_space";
	rename -uid "98344F49-4F17-E390-154F-44894C16CC50";
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
createNode nurbsCurve -n "R_fk_thigh_ctrlShape" -p "R_fk_thigh_ctrl";
	rename -uid "EE36968A-4361-3A72-06DD-BCBB57902160";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		-4.4408920985006262e-16 1.1081941875543879 -3.2112695072372299e-16
		-3.3306690738754696e-16 0.7836116248912246 0.78361162489122405
		-1.7887962569362486e-16 2.2289823389653639e-16 1.1081941875543881
		0 -0.78361162489122416 0.78361162489122438
		2.2204460492503131e-16 -1.1081941875543884 5.9521325992805852e-16
		1.1102230246251565e-16 -0.78361162489122538 -0.78361162489122382
		-4.3164979231406495e-17 1.5409403615777631e-17 -1.1081941875543879
		-2.2204460492503131e-16 0.78361162489122438 -0.78361162489122427
		;
createNode transform -n "R_fk_knee_ctrl_space" -p "R_fk_thigh_ctrl";
	rename -uid "8090833B-4528-8091-75F7-95BF096965BD";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_knee_ctrl" -p "R_fk_knee_ctrl_space";
	rename -uid "794F28F5-4339-A287-8641-02841C252580";
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
createNode nurbsCurve -n "R_fk_knee_ctrlShape" -p "R_fk_knee_ctrl";
	rename -uid "DD729C3E-4CBE-01C9-451A-9F8717815640";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		-2.4606854055573011e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910707351847e-16 0.78361162489122471 0.78361162489122405
		-6.785732323110922e-17 3.3392053635905205e-16 1.1081941875543881
		1.260143602537489e-16 -0.78361162489122405 0.78361162489122438
		2.4606854055573006e-16 -1.1081941875543881 5.9521325992805852e-16
		2.219791070735186e-16 -0.78361162489122527 -0.78361162489122382
		6.7857323231109134e-17 1.2643170607829331e-16 -1.1081941875543879
		-1.26014360253749e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "R_fk_ankle_ctrl_space" -p "R_fk_knee_ctrl";
	rename -uid "4D406637-462E-301F-CAC4-548FBD87F6D4";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_ankle_ctrl" -p "R_fk_ankle_ctrl_space";
	rename -uid "AC6FA89B-4C0B-01FD-6698-2C99165B5800";
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
createNode nurbsCurve -n "R_fk_ankle_ctrlShape" -p "R_fk_ankle_ctrl";
	rename -uid "B5C23EB1-45C2-D609-132B-CFA70A123277";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		-2.4606853890136889e-16 1.1081941875543881 -3.2112695072372299e-16
		-2.2197910541915725e-16 0.78361162489122471 0.78361162489122405
		-6.7857321576748008e-17 3.3392053470469082e-16 1.1081941875543881
		1.2601436190811012e-16 -0.78361162489122405 0.78361162489122438
		2.4606854221009129e-16 -1.1081941875543881 5.9521325992805852e-16
		2.2197910872787982e-16 -0.78361162489122527 -0.78361162489122382
		6.7857324885470347e-17 1.2643170442393208e-16 -1.1081941875543879
		-1.2601435859938777e-16 0.78361162489122449 -0.78361162489122427
		;
createNode transform -n "component_space";
	rename -uid "A00DB927-492A-3D30-D4EB-A196120FC066";
createNode transform -n "input_space" -p "component_space";
	rename -uid "B96887BE-419E-5CBC-D364-D199E33D9B30";
createNode transform -n "parent_space_LOC" -p "input_space";
	rename -uid "D7F4FED0-447C-4C6F-14EE-08B12877353F";
createNode locator -n "parent_space_LOCShape" -p "parent_space_LOC";
	rename -uid "3A6AD02B-4A26-A989-C45C-AEBCBC050499";
	setAttr -k off ".v";
createNode transform -n "fit_space" -p "input_space";
	rename -uid "354B3EDF-4ED4-974A-43B2-00BEB0F46BF4";
createNode transform -n "fit_spine" -p "fit_space";
	rename -uid "B50FC8BB-4E1C-5D2C-04E7-2193E0182EFE";
	setAttr ".t" -type "double3" 0 12 0 ;
createNode locator -n "fit_spineShape" -p "fit_spine";
	rename -uid "FE8970E9-4E3F-3C21-32E9-96976C544DE2";
	setAttr -k off ".v";
createNode transform -n "fit_spine_sub_000" -p "fit_spine";
	rename -uid "67A05C69-46EA-037B-1B84-B4AFAA3EEA69";
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "fit_spine_sub_000Shape" -p "fit_spine_sub_000";
	rename -uid "BCE21DB1-49FA-00B2-9940-9FBC4823DBAD";
	setAttr -k off ".v";
createNode transform -n "fit_chest" -p "fit_space";
	rename -uid "23C8CF08-45FF-DCCF-BCBE-F29E73B068FC";
	setAttr ".t" -type "double3" 0 18 0 ;
createNode locator -n "fit_chestShape" -p "fit_chest";
	rename -uid "82D3F8B9-44D7-5E89-E661-F49BC36265C9";
	setAttr -k off ".v";
createNode transform -n "fit_chest_sub_001" -p "fit_chest";
	rename -uid "54DC61A1-402F-5ECD-873F-24877DDFC3F3";
	setAttr ".t" -type "double3" 0 -3 0 ;
createNode locator -n "fit_chest_sub_001Shape" -p "fit_chest_sub_001";
	rename -uid "5FA7249D-4C09-5789-F9B4-A79EBEF1DF32";
	setAttr -k off ".v";
createNode transform -n "ik_spine_space" -p "component_space";
	rename -uid "4EFB4E7C-4846-A16D-8731-0E92605DA54D";
createNode transform -n "spine_crv" -p "ik_spine_space";
	rename -uid "73B0EE6D-4663-F85F-264D-1C844F8BE42D";
createNode bezierCurve -n "bezierShape1" -p "spine_crv";
	rename -uid "6AF32A4B-4202-C434-9C9B-EEB96E5EB913";
	setAttr -k off ".v";
	setAttr -s 4 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 12 0
		0 13 0
		0 15 0
		0 18 0
		;
createNode transform -n "ik_ctl_space" -p "ik_spine_space";
	rename -uid "0EDBDACA-44CA-7C08-ED99-51A8C865F9D1";
createNode transform -n "M_spine_OS" -p "ik_ctl_space";
	rename -uid "86613CA6-468A-0AC5-01C6-81A3BE5D5A14";
createNode transform -n "M_spine_CTL" -p "M_spine_OS";
	rename -uid "D9F71AD7-4ADB-9243-90A7-C58BAED1C87E";
	addAttr -ci true -k true -sn "fit_vis" -ln "fit_vis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fk_vis" -ln "fk_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "sub_ctl_vis" -ln "sub_ctl_vis" -min 0 -max 1 -at "bool";
	setAttr -k on ".fit_vis" no;
	setAttr -k on ".fk_vis" yes;
	setAttr -k on ".sub_ctl_vis" yes;
createNode nurbsCurve -n "curveShape10" -p "M_spine_CTL";
	rename -uid "5464269E-4EBE-A189-7116-AB85B728BB2F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		3.6000000000000019 0 0
		2.5455840000000003 0 2.5455840000000003
		0 0 3.6000000000000019
		-2.5455840000000003 0 2.5455840000000003
		-3.6000000000000019 0 0
		-2.5455840000000003 0 -2.5455840000000003
		0 0 -3.6000000000000019
		2.5455840000000003 0 -2.5455840000000003
		3.6000000000000019 0 0
		3.8400000000000016 0 0
		2.7152904000000011 0 -2.7152904000000011
		0 0 -3.8400000000000016
		-2.7152904000000011 0 -2.7152904000000011
		-3.8400000000000016 0 0
		-2.7152904000000011 0 2.7152904000000011
		0 0 3.8400000000000016
		2.7152904000000011 0 2.7152904000000011
		3.8400000000000016 0 0
		;
createNode transform -n "spine_OS" -p "M_spine_CTL";
	rename -uid "42F0BAD0-4A7E-9D1A-E634-7BAFFA7976F9";
createNode transform -n "spine_CTL" -p "spine_OS";
	rename -uid "BF2D1D87-4046-F8E1-C6B2-5487FB55FE2D";
createNode nurbsCurve -n "curveShape1" -p "spine_CTL";
	rename -uid "3D29F9E0-4483-4D5E-14B8-F79744F247B5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		-0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 0.90000000000000024
		-0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 0.90000000000000024
		0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 -0.90000000000000024
		;
createNode transform -n "spine_sub_000_OS" -p "M_spine_CTL";
	rename -uid "79D69119-4078-18D2-1FE8-A4939115BE39";
createNode transform -n "spine_sub_000_CTL" -p "spine_sub_000_OS";
	rename -uid "21611252-4B5D-E655-1751-818CB9CB05F5";
createNode nurbsCurve -n "curveShape2" -p "spine_sub_000_CTL";
	rename -uid "09FD652E-4E65-9298-80B3-EBA0B62E33B0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		-0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 0.90000000000000024
		-0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 0.90000000000000024
		0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 -0.90000000000000024
		;
createNode transform -n "FK_hip_CTL_offGRP" -p "M_spine_CTL";
	rename -uid "43E008E6-4FB6-3AAD-FC67-52918276DE39";
	setAttr ".t" -type "double3" 0 0.515625 0 ;
createNode transform -n "FK_hip_CTL_spcGRP" -p "FK_hip_CTL_offGRP";
	rename -uid "29602B4F-49DA-874C-8888-C3912F9DA008";
createNode transform -n "FK_hip_CTL" -p "FK_hip_CTL_spcGRP";
	rename -uid "7E8B4FA1-40CC-EAF5-B65D-FD8B66A0D2DE";
createNode nurbsCurve -n "FK_hip_CTLShape" -p "FK_hip_CTL";
	rename -uid "9475779B-40A0-4AAE-1FD4-0F90405D0CF3";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -3.5942460876318223 -1.1703478295857921 
		0 -3.7039517151165948 -1.9470818707883468 0 -3.8136573426013642 -1.1703478295857923 
		0 -3.8590989013742076 8.0428575325348121e-18 0 -3.8136573426013642 -0.10970562748477219 
		0 -3.7039517151165948 -0.15514718625761503 0 -3.5942460876318223 -0.10970562748477164 
		0 -3.5488045288589798 -2.1157367010919539e-17 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "fk_init_upVec_OS" -p "M_spine_OS";
	rename -uid "ADC6359E-459C-CAF1-C24A-ADB69307C5F3";
	setAttr ".t" -type "double3" 0 6 -12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "fk_init_upVec_CTL" -p "fk_init_upVec_OS";
	rename -uid "A1DE7940-4FE0-B2A3-0AF5-08BDC451326A";
	setAttr ".t" -type "double3" 0 -3 0 ;
createNode nurbsCurve -n "curveShape14" -p "fk_init_upVec_CTL";
	rename -uid "1C166006-42EB-654B-052E-7D8089A00BD1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 3.1819815
		3.1819815 0 0
		0 0 -3.1819815
		0 0 -2.5455825000000001
		2.2273874999999999 0 -0.31819815000000001
		3.1819815 0 0
		2.2273874999999999 0 0.31819815000000001
		0 0 2.5455825000000001
		0 0 2.5455825000000001
		0 0 3.1819815
		;
createNode transform -n "M_chest_OS" -p "ik_ctl_space";
	rename -uid "F9849B54-45F0-8D16-E63D-ECBD55419730";
createNode transform -n "M_chest_CTL" -p "M_chest_OS";
	rename -uid "D380E1F6-4F51-D1F2-5D25-3D88551820D4";
createNode nurbsCurve -n "curveShape12" -p "M_chest_CTL";
	rename -uid "94B962A8-4878-CFA8-5786-ADAE39604A47";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		3.6000000000000019 0 0
		2.5455840000000003 0 2.5455840000000003
		0 0 3.6000000000000019
		-2.5455840000000003 0 2.5455840000000003
		-3.6000000000000019 0 0
		-2.5455840000000003 0 -2.5455840000000003
		0 0 -3.6000000000000019
		2.5455840000000003 0 -2.5455840000000003
		3.6000000000000019 0 0
		3.8400000000000016 0 0
		2.7152904000000011 0 -2.7152904000000011
		0 0 -3.8400000000000016
		-2.7152904000000011 0 -2.7152904000000011
		-3.8400000000000016 0 0
		-2.7152904000000011 0 2.7152904000000011
		0 0 3.8400000000000016
		2.7152904000000011 0 2.7152904000000011
		3.8400000000000016 0 0
		;
createNode transform -n "chest_sub_001_OS" -p "M_chest_CTL";
	rename -uid "DE517066-451F-2A1D-423A-CCA790399160";
createNode transform -n "chest_sub_001_CTL" -p "chest_sub_001_OS";
	rename -uid "FDA8D5ED-4BDA-790F-F9C0-BDB0095F7EE3";
createNode nurbsCurve -n "curveShape3" -p "chest_sub_001_CTL";
	rename -uid "BF42058C-4251-D821-F3E5-C39B9175D704";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		-0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 0.90000000000000024
		-0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 0.90000000000000024
		0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 -0.90000000000000024
		;
createNode transform -n "chest_OS" -p "M_chest_CTL";
	rename -uid "E77445F4-4BDD-8C41-354A-92B8BC3F1590";
createNode transform -n "chest_CTL" -p "chest_OS";
	rename -uid "778E45D6-44F8-A9D4-15E1-AD8BF3A01FFB";
createNode nurbsCurve -n "curveShape4" -p "chest_CTL";
	rename -uid "3406D823-4EFC-4F71-4C58-E3B7C6F21E7D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		-0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 0.90000000000000024
		-0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 0.90000000000000024
		0.90000000000000024 0 0
		0 0.90000000000000024 0
		0 0 -0.90000000000000024
		0.90000000000000024 0 0
		0 -0.90000000000000024 0
		0 0 -0.90000000000000024
		;
createNode transform -n "twist_spine_OS" -p "ik_spine_space";
	rename -uid "86B6E393-4A8D-786A-5DFC-769BAD1529CF";
createNode transform -n "twist_spine_CTL" -p "twist_spine_OS";
	rename -uid "B8C3B388-4189-930A-DCCB-5F846D4FF557";
	addAttr -ci true -k true -sn "end_uvalue" -ln "end_uvalue" -min 0 -max 1 -at "float";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".end_uvalue";
createNode nurbsCurve -n "curveShape11" -p "twist_spine_CTL";
	rename -uid "CBB70DFF-43D5-53F0-829A-F88622E08D3A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		2.8795612800000012 0 -0.050262912000000021
		2.036467200000001 0 -2.036467200000001
		0 0 -2.8800000000000012
		-2.036467200000001 0 -2.036467200000001
		-2.8800000000000012 0 0
		-2.036467200000001 0 2.036467200000001
		0 0 2.8800000000000012
		2.036467200000001 0 2.036467200000001
		2.8795612800000012 0 0.050262912000000021
		1.9200000000000008 0 0.050262912000000021
		1.9200000000000008 0 -0.055701120000000034
		2.8795612800000012 0 -0.050262912000000021
		;
createNode transform -n "twist_chest_OS" -p "ik_spine_space";
	rename -uid "1ACC22D5-4C91-D958-AFD6-799A04AAE4DF";
createNode transform -n "twist_chest_CTL" -p "twist_chest_OS";
	rename -uid "F910DD9B-416A-0910-2EFC-4EBFFA0468A4";
	addAttr -ci true -k true -sn "end_uvalue" -ln "end_uvalue" -dv 1 -min 0 -max 1 
		-at "float";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".end_uvalue";
createNode nurbsCurve -n "curveShape13" -p "twist_chest_CTL";
	rename -uid "58BC8945-41A6-6D4C-9FE6-C9820DC79884";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		2.8795612800000012 0 -0.050262912000000021
		2.036467200000001 0 -2.036467200000001
		0 0 -2.8800000000000012
		-2.036467200000001 0 -2.036467200000001
		-2.8800000000000012 0 0
		-2.036467200000001 0 2.036467200000001
		0 0 2.8800000000000012
		2.036467200000001 0 2.036467200000001
		2.8795612800000012 0 0.050262912000000021
		1.9200000000000008 0 0.050262912000000021
		1.9200000000000008 0 -0.055701120000000034
		2.8795612800000012 0 -0.050262912000000021
		;
createNode transform -n "fk_space" -p "component_space";
	rename -uid "9E0771C6-460D-6900-6CA0-DABB44E0295A";
createNode transform -n "on_curve_space" -p "fk_space";
	rename -uid "3F221BA4-4981-5354-6A3B-AAA25C775611";
createNode transform -n "init_spineA_space" -p "on_curve_space";
	rename -uid "E7E6A3E3-40D7-6B39-5659-2D9166CEA4BC";
createNode transform -n "twist_spineA_space" -p "init_spineA_space";
	rename -uid "7538AF19-4ADD-0EFE-E302-2594E1041C0E";
createNode aimConstraint -n "init_spineA_space_aimConstraint1" -p "init_spineA_space";
	rename -uid "7489085E-4B08-4B4F-1AD0-DF848F46EF27";
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
	setAttr -k on ".w0";
createNode transform -n "init_spineB_space" -p "on_curve_space";
	rename -uid "9E63436E-462B-F7A5-CB5C-FFBFBEF3D7A3";
createNode transform -n "twist_spineB_space" -p "init_spineB_space";
	rename -uid "D7A2CE0F-476D-E5DD-646B-FCA7AD40B5CD";
createNode aimConstraint -n "init_spineB_space_aimConstraint1" -p "init_spineB_space";
	rename -uid "52FCEECE-4BD7-9D5A-38B8-20996C7EA097";
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
	setAttr -k on ".w0";
createNode transform -n "init_spineC_space" -p "on_curve_space";
	rename -uid "FFE0DF2E-4943-FD2B-F469-AB941357454D";
createNode transform -n "twist_spineC_space" -p "init_spineC_space";
	rename -uid "47614997-41BB-2AEB-C256-E2A205EA18ED";
createNode aimConstraint -n "init_spineC_space_aimConstraint1" -p "init_spineC_space";
	rename -uid "88D4835A-4E43-8756-66CE-2F9798A623A1";
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
	setAttr -k on ".w0";
createNode transform -n "init_spineD_space" -p "on_curve_space";
	rename -uid "778553EE-481F-30C6-D2C3-1B8C6F765C57";
createNode transform -n "twist_spineD_space" -p "init_spineD_space";
	rename -uid "4CADCB13-4A64-FBC9-47F8-A2BEAE207941";
createNode aimConstraint -n "init_spineD_space_aimConstraint1" -p "init_spineD_space";
	rename -uid "CEE808A2-4FAC-C95F-AC5B-20BBDD888D3A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "output_chest_end_spaceW0" -dv 1 -at "double";
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
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr -k on ".w0";
createNode transform -n "init_chest_space" -p "on_curve_space";
	rename -uid "88BAA09E-4395-B4D8-4A69-18B6537929C9";
createNode transform -n "twist_chest_space" -p "init_chest_space";
	rename -uid "2241BBA2-4432-0EAE-196E-CC865E1A3E64";
createNode aimConstraint -n "init_chest_space_aimConstraint1" -p "init_chest_space";
	rename -uid "4930032E-4C42-A913-A20F-BE90554412C2";
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
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode transform -n "output_chest_end_space" -p "on_curve_space";
	rename -uid "61B3D5DF-4F9D-14F0-A0FB-4F87CEF9CAEC";
createNode transform -n "fk_scale_init_space" -p "fk_space";
	rename -uid "84BB090A-431E-5802-32B0-A0B86765B8FA";
createNode transform -n "FK_spineA_local_init_space" -p "fk_scale_init_space";
	rename -uid "E181478E-4F25-2429-26EB-47A54D2BA464";
createNode transform -n "FK_spineB_local_init_space" -p "fk_scale_init_space";
	rename -uid "436F442C-4FAF-E62B-AA33-07A6DEEB77C4";
createNode transform -n "FK_spineC_local_init_space" -p "fk_scale_init_space";
	rename -uid "2C1D128B-4207-52E6-6D28-F5976193E71A";
createNode transform -n "FK_spineD_local_init_space" -p "fk_scale_init_space";
	rename -uid "5238F5DF-4560-9254-3025-11BBD4BE261A";
createNode transform -n "FK_chest_local_init_space" -p "fk_scale_init_space";
	rename -uid "45917FDB-4879-AD78-8E88-C58EAF1B6930";
createNode transform -n "fk_joint_space" -p "fk_space";
	rename -uid "425F82AB-49EC-2101-5549-32943C44063F";
createNode transform -n "FK_spineA_JNT_space" -p "fk_joint_space";
	rename -uid "EF5AAA94-439B-2EF9-1574-30977AC98C06";
createNode transform -n "FK_spineA_hip_space" -p "FK_spineA_JNT_space";
	rename -uid "64E8C4AB-4510-BCA2-A801-DEAF652D7EFC";
	setAttr ".t" -type "double3" 0 1.515625 0 ;
createNode joint -n "FK_spineA_JNT" -p "FK_spineA_hip_space";
	rename -uid "2F8E4272-48A0-1B17-C8F3-069BE76879EA";
	setAttr ".t" -type "double3" 0 -1.515625 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_spineA_JNT_offGRP" -p "FK_spineA_JNT_space";
	rename -uid "08BCDC0F-4716-2DBA-AC39-A4B0EB3CDE84";
	setAttr ".t" -type "double3" 0 1.515625 0 ;
createNode transform -n "FK_spineA_JNT_cntGRP" -p "FK_spineA_JNT_offGRP";
	rename -uid "2AE989B8-4EF0-CC1D-D4CD-968DD256B6EB";
	setAttr ".t" -type "double3" 0 -1.515625 0 ;
createNode transform -n "FK_spineB_JNT_space" -p "FK_spineA_JNT_cntGRP";
	rename -uid "146E0F35-4457-E783-45A8-58A2ACB171D1";
createNode joint -n "FK_spineB_JNT" -p "FK_spineB_JNT_space";
	rename -uid "F5EB209E-40B3-B86B-AC63-39B84266C9CF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_spineC_JNT_space" -p "FK_spineB_JNT";
	rename -uid "686AAC9F-4F6F-EA9F-F91E-5CBA2B138399";
createNode joint -n "FK_spineC_JNT" -p "FK_spineC_JNT_space";
	rename -uid "C115C8BA-47DA-CD53-6D59-D8876A544466";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_spineD_JNT_space" -p "FK_spineC_JNT";
	rename -uid "C8D2BE0E-4C2F-4DB7-218E-8FA66B57B634";
createNode joint -n "FK_spineD_JNT" -p "FK_spineD_JNT_space";
	rename -uid "D4930A62-4AE0-A300-3A03-A988E059A27E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_chest_JNT_space" -p "FK_spineD_JNT";
	rename -uid "47068645-4C59-B731-D544-7E8DF8CC934B";
createNode joint -n "FK_chest_JNT" -p "FK_chest_JNT_space";
	rename -uid "E72237EB-4BE8-7FF0-49C2-9B81D33EC5D0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_hip_offset" -p "FK_spineA_JNT_space";
	rename -uid "067E0923-4F71-7ED9-37A0-A987BBB8EFAE";
	setAttr ".t" -type "double3" 0 1.515625 0 ;
createNode transform -n "FK_hip_space" -p "FK_hip_offset";
	rename -uid "4A50F863-4272-88EF-082F-389C373B026C";
createNode transform -n "fk_ctl_space" -p "fk_space";
	rename -uid "BCB46A53-4064-DC30-E58A-1AA26AB7D3B2";
createNode transform -n "FK_spineA_CTL_OS" -p "fk_ctl_space";
	rename -uid "90FAE42E-4242-C446-9996-A2B7681907F3";
createNode transform -n "FK_spineA_CTL_CTL" -p "FK_spineA_CTL_OS";
	rename -uid "F4F94A1F-4C8E-3A98-6B5F-2EA2FF298E7D";
createNode nurbsCurve -n "curveShape5" -p "FK_spineA_CTL_CTL";
	rename -uid "477281DF-40C3-B732-FAB6-07B7FB99179A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.1600000000000006 0 0
		1.5273511200000007 0 1.5273511200000007
		0 0 2.1600000000000006
		-1.5273511200000007 0 1.5273511200000007
		-2.1600000000000006 0 0
		-1.5273511200000007 0 -1.5273511200000007
		0 0 -2.1600000000000006
		1.5273511200000007 0 -1.5273511200000007
		2.1600000000000006 0 0
		;
createNode transform -n "FK_spineB_CTL_OS" -p "FK_spineA_CTL_CTL";
	rename -uid "E56EA0C9-41DA-0A9B-02C1-6294190DEB6B";
createNode transform -n "FK_spineB_CTL_CTL" -p "FK_spineB_CTL_OS";
	rename -uid "B9B3D0CD-4B8B-6D78-C6C7-4D90BDC12910";
createNode nurbsCurve -n "curveShape6" -p "FK_spineB_CTL_CTL";
	rename -uid "C366B921-4A6E-BBC4-C6EA-EA91FF9AC25A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.1600000000000006 0 0
		1.5273511200000007 0 1.5273511200000007
		0 0 2.1600000000000006
		-1.5273511200000007 0 1.5273511200000007
		-2.1600000000000006 0 0
		-1.5273511200000007 0 -1.5273511200000007
		0 0 -2.1600000000000006
		1.5273511200000007 0 -1.5273511200000007
		2.1600000000000006 0 0
		;
createNode transform -n "FK_spineC_CTL_OS" -p "FK_spineB_CTL_CTL";
	rename -uid "52CCC1CC-4583-C9A0-FF8A-1EBD9304DBC5";
createNode transform -n "FK_spineC_CTL_CTL" -p "FK_spineC_CTL_OS";
	rename -uid "F3DB44AD-4118-10BE-4DE6-2DA57044E2CA";
createNode nurbsCurve -n "curveShape7" -p "FK_spineC_CTL_CTL";
	rename -uid "0FC4873E-4F22-990B-E532-EC842736749C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.1600000000000006 0 0
		1.5273511200000007 0 1.5273511200000007
		0 0 2.1600000000000006
		-1.5273511200000007 0 1.5273511200000007
		-2.1600000000000006 0 0
		-1.5273511200000007 0 -1.5273511200000007
		0 0 -2.1600000000000006
		1.5273511200000007 0 -1.5273511200000007
		2.1600000000000006 0 0
		;
createNode transform -n "FK_spineD_CTL_OS" -p "FK_spineC_CTL_CTL";
	rename -uid "AC273B64-4C1A-F633-09A9-1F96F87E0AA8";
createNode transform -n "FK_spineD_CTL_CTL" -p "FK_spineD_CTL_OS";
	rename -uid "993297F2-4203-84EA-2720-209F2E32E334";
createNode nurbsCurve -n "curveShape8" -p "FK_spineD_CTL_CTL";
	rename -uid "32FE110D-4293-CBAE-DBB5-E39836AF22EA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.1600000000000006 0 0
		1.5273511200000007 0 1.5273511200000007
		0 0 2.1600000000000006
		-1.5273511200000007 0 1.5273511200000007
		-2.1600000000000006 0 0
		-1.5273511200000007 0 -1.5273511200000007
		0 0 -2.1600000000000006
		1.5273511200000007 0 -1.5273511200000007
		2.1600000000000006 0 0
		;
createNode transform -n "FK_chest_CTL_OS" -p "FK_spineD_CTL_CTL";
	rename -uid "88ABFA32-436F-1A1E-E5DF-C8B5DB76A1C1";
createNode transform -n "FK_chest_CTL_CTL" -p "FK_chest_CTL_OS";
	rename -uid "D6D06F79-47FA-8EA7-5A5C-EEB7F5267780";
createNode nurbsCurve -n "curveShape9" -p "FK_chest_CTL_CTL";
	rename -uid "26CE5000-457C-9F7C-ACEC-02BF1050DD80";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		2.1600000000000006 0 0
		1.5273511200000007 0 1.5273511200000007
		0 0 2.1600000000000006
		-1.5273511200000007 0 1.5273511200000007
		-2.1600000000000006 0 0
		-1.5273511200000007 0 -1.5273511200000007
		0 0 -2.1600000000000006
		1.5273511200000007 0 -1.5273511200000007
		2.1600000000000006 0 0
		;
createNode transform -n "output_space" -p "component_space";
	rename -uid "873BEE12-479C-8CC4-3651-50B020D31E7C";
createNode transform -n "end_plug_space" -p "output_space";
	rename -uid "281EF42B-4390-295F-AE6A-63B8FA8E6A9A";
createNode transform -n "chest_space";
	rename -uid "4F228FFA-4765-ECF8-94CB-4FA5D830C083";
createNode transform -n "root_space";
	rename -uid "DEF7CD7C-4D2E-4726-FD44-A6AF7681A05C";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4EAE2486-47FE-D4EA-4480-A9868448FB72";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "01567D83-4D12-B472-F17C-70B722C121C0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "47075A10-4F4A-01CE-05A8-53A4F7C1D095";
createNode displayLayerManager -n "layerManager";
	rename -uid "28ECD99D-4EF7-029B-38FD-0284FC0E8655";
createNode displayLayer -n "defaultLayer";
	rename -uid "8B63B5B6-4024-5BF9-E3FF-BBB778F29417";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "370D54E9-4D68-9C0D-097C-DAB33A802E9A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E4678DFC-4DE8-B366-4F6D-C7BE9D62F311";
	setAttr ".g" yes;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "6B5746CF-4797-E047-442D-219C2CDFEA6E";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val";
	rename -uid "00E7DA28-494E-446E-E0D8-69BCC8FEC158";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val";
	rename -uid "449E78AD-4A5C-45CD-60F9-2082D79F802C";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV";
	rename -uid "81A7C536-49F1-8FE4-CA5F-EDBB1730A1EA";
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "4BB115FA-4C22-181C-21E7-BCA5DE1A2DD0";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition";
	rename -uid "B7CE74CD-4123-65E8-DA5A-6F900D22500C";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition";
	rename -uid "2C6280DA-44E6-663C-5EC8-FB8B52FAA9CF";
	setAttr ".op" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0A7D853D-46CD-B4E1-FFBF-9695D54F0A29";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 860\n            -height 509\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 859\n            -height 509\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 860\n            -height 509\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1730\n            -height 1066\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 2\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit 2\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1730\\n    -height 1066\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1730\\n    -height 1066\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5637CAA8-4543-0450-1412-E1958A9BB8AA";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F4BBBD4C-48A5-F91E-F09A-49B992403532";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen";
	rename -uid "F20EFF70-4EAC-9FFB-EACD-9E90C1E6CFAB";
createNode distanceBetween -n "loarmLen";
	rename -uid "8A4CD53E-410B-CDBC-FE72-C581D2F8F288";
createNode plusMinusAverage -n "armLen";
	rename -uid "4272BC4B-4FBE-D667-18B2-18BD4642BA10";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen";
	rename -uid "A0036B30-4A07-DF48-D4A3-6D9500D35C99";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "47EE2E72-414F-8A6D-A167-238693D7CDC8";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "9E0107FB-4A64-77F1-97AC-A199120FEF49";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif";
	rename -uid "CFB6962C-41EB-5FDD-0BC7-89A5C0E41CD5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide";
	rename -uid "B04D6DAE-452F-E415-DF80-68AB5E49513A";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "F5470B71-4F94-0779-4648-989E264849CC";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "3E0F0F6C-4137-552E-C786-92871BF30C69";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen1";
	rename -uid "A3C18CBB-4E31-71B9-FC5E-A7B4A34113A1";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "9569E6A0-482C-3CD0-BB79-7E97C2C50714";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "55B37B39-4F32-4660-24E0-439C4138FC9E";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "0B3E79C0-408A-27A2-DB45-2FB46E24084E";
createNode plusMinusAverage -n "uparm_plus_stretch1";
	rename -uid "CF502C8F-4AAD-7453-7599-318068B150BF";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm";
	rename -uid "D3A95014-46C6-5280-B81C-F6B2CADAA04F";
	setAttr ".op" 2;
createNode condition -n "cond_loarm";
	rename -uid "C72F33AF-4760-8C62-412D-339696D6F442";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "CCF35D15-41CC-BC9B-B037-62A468B079BE";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "C7FACFD3-4A7A-891C-BBCD-67867FE7B6F6";
createNode plusMinusAverage -n "loarm_plus_stretch1";
	rename -uid "1F88DF38-4936-43E0-42B7-D28E5E8EAF5A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo5";
	rename -uid "954A82AB-4AEA-B391-282C-9B97628F6235";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "352F8DC9-4631-31C9-7638-53B90593F4B4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo3";
	rename -uid "D5FC7E90-4F77-A400-46C0-02A7FFFEFABC";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "12EE4D79-43D2-BA62-8E29-158166CE84E4";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "C4702D9F-4AA4-CC32-6449-CF9A7FE5E6DC";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "8B939F91-4474-0076-B437-E98D51DAB8AE";
createNode blendColors -n "ikfk_shoulder_t";
	rename -uid "97FD5E0F-4B22-7614-046A-1AA4D609E9FD";
createNode blendColors -n "ikfk_shoulder_r";
	rename -uid "EC5E2716-43C7-43C3-E879-DA9C7F77C082";
createNode unitConversion -n "unitConversion1";
	rename -uid "4BA5FD7A-4A8A-C3C2-949E-FEBFDBBC17CA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "0AFD966B-4C73-0990-756C-E184407B7637";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "93875C7C-4D5D-F203-ACF5-9A9B54912847";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow";
	rename -uid "3E568357-4AFB-A9A9-57BC-BC819CEFBB21";
createNode pairBlend -n "pairBlend1";
	rename -uid "53890F2E-40BB-626F-4F2F-3AA7A1149F46";
createNode reverse -n "reverse1";
	rename -uid "A2FA92C3-43BD-E455-0C5D-77A703CEAAC1";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "1E90DBFD-4FC3-55EE-9A1C-D9912C4067A5";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "97F7A6A9-42D2-7644-F014-6DAB162C4212";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "F378FB78-49F6-4CE7-0FC8-CD9F06E52E79";
createNode plusMinusAverage -n "shld2elbow_vec";
	rename -uid "869EA8CF-42FD-CF23-EB7B-03ADFADB0877";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec";
	rename -uid "900C9DF1-4B4F-B821-D9EA-9BA55111FCAE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "2583D159-4A9E-AC2D-ABFE-43AAC84DC6E2";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec";
	rename -uid "A6F939F4-44BD-4375-604E-2AA91C218DA8";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat";
	rename -uid "B22DEB9D-470F-E97D-CC7B-899E99C384D9";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "581CE70E-41C1-E062-EE56-53B0F6A1166C";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix4";
	rename -uid "C75641D9-46DD-12B7-9B3A-A1909811622C";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "094598B7-457A-DD8E-CC9E-2E925BB82859";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "B2D719F4-4931-FFDC-8E1C-2FB8B60C6BD2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "056B1A7F-4769-9323-0F31-F2AF3451BD67";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "6B29E8E8-4203-8D19-DC26-8AB66E9F247D";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "36EDB51A-4D6E-F8D8-DD6D-A0B306015266";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat";
	rename -uid "CACA7D8D-48D0-359F-7EA3-1F98F9E50C45";
createNode decomposeMatrix -n "decomposeMatrix5";
	rename -uid "75ADC353-4CB3-A3CA-3987-7D963FDED978";
createNode multMatrix -n "multMatrix1";
	rename -uid "0B3CAF5C-46E6-5B2F-34CA-BC98ABD040E2";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix6";
	rename -uid "35ED72DF-48E8-5012-D1F2-B5B42CFE4898";
createNode multMatrix -n "multMatrix2";
	rename -uid "92181D1E-4333-CD23-F7F7-6D99936AA0D4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix7";
	rename -uid "0D153B38-4672-9462-BD85-5D8A2C75D446";
createNode multMatrix -n "multMatrix3";
	rename -uid "6329F380-45A9-AAC0-48CE-3B90F310A8C6";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "7E4D928D-416F-E3E5-FEAE-49B53DC27B06";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix8";
	rename -uid "16E1D65E-47B6-2FC2-AC65-019D88CD66BF";
createNode lambert -n "lambert2";
	rename -uid "FD3D0980-4437-A2EF-02EC-66849AE3A2F5";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "7829F90A-400A-A7F8-38B0-1689B15E70A2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EF2EB980-4D7F-3150-C9EF-16A0561726F1";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "83E783FB-4DD3-15BC-C47E-04BB6A2DA336";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -74.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode decomposeMatrix -n "input_arm_space_decomp";
	rename -uid "14294BD4-4BB3-4D4A-317C-D09148F855D2";
createNode multMatrix -n "init_shoulder_localMat";
	rename -uid "C06DE662-41FA-5101-DC2F-0287A13ADB63";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat";
	rename -uid "662EDF0A-4344-0DA5-013F-0DADA3C87C10";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp";
	rename -uid "38649320-4C14-0BDE-CDBE-EFB07966CDDE";
createNode multMatrix -n "init_wrist_local";
	rename -uid "E2804808-4894-5F08-4D36-13A76AEE5D52";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local";
	rename -uid "6EC34288-40D9-9738-26EF-5F9B007BC127";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local";
	rename -uid "95624E0F-48AE-6D93-B89D-1AB0078D83B7";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local";
	rename -uid "7893C153-41D6-5EDA-3577-C68B9015737C";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix5";
	rename -uid "9042F76B-4B77-81A6-140F-31BBFF0D53F5";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix6";
	rename -uid "D69F6D5A-4429-0919-0922-1D9C5F47DB7A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix9";
	rename -uid "57A4A6C9-4848-92BD-472B-83A48BA6AA73";
createNode multMatrix -n "multMatrix7";
	rename -uid "74511A90-4865-C4CF-A5D5-FC8569912106";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix10";
	rename -uid "97233798-41A9-6EDB-72F2-59A6AD3341EC";
createNode multMatrix -n "multMatrix8";
	rename -uid "0E5711BB-48D9-85D6-A364-EE874EED0FE1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix11";
	rename -uid "77AE2346-41CC-74DE-5335-DEA10F802B24";
createNode multiplyDivide -n "divide_softikV1";
	rename -uid "D3E8790B-427D-1348-5414-A4A4EB4D81A2";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val1";
	rename -uid "330198F4-4FF2-8801-B249-24B6062ABC86";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val1";
	rename -uid "6F7733F1-44DC-5529-6E62-57B6D2273FD0";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV1";
	rename -uid "C57E5F91-4A4A-1D7C-4EF4-0D90783F21D7";
createNode plusMinusAverage -n "result_softik_len1";
	rename -uid "46C39D77-4F87-01C1-D350-B1B32EBFB8DC";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition1";
	rename -uid "8DC0598A-4CE6-1910-16C3-E297C4B750DE";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition1";
	rename -uid "8A0E3429-41FD-9A67-8072-D1A2A6AAD7ED";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo6";
	rename -uid "05E03624-400C-3440-7158-35B4FB960FDF";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen1";
	rename -uid "FAF192C3-4564-B561-E812-C9A2B6A87211";
createNode distanceBetween -n "loarmLen1";
	rename -uid "5CFA2E1D-45BA-001E-13CF-1A80B3C09F21";
createNode plusMinusAverage -n "armLen2";
	rename -uid "AEA28907-4B04-1139-F4A5-1FA1AD9F5E8B";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen1";
	rename -uid "CE847CBC-4954-FD0E-319C-2DA396625B12";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "C6497C08-4714-9809-1029-7FBBAD430C1F";
createNode plusMinusAverage -n "armlen_minus_softikV1";
	rename -uid "DD363E7E-422F-3C97-DCEF-21A935920637";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif1";
	rename -uid "7AB57FF9-4A5E-C881-5CE0-A7AFB8D22C66";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide1";
	rename -uid "28822EAA-4E5F-B101-24BA-D2AD72AFE161";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo8";
	rename -uid "54044F05-45BE-591F-A2C0-D3B503DDE133";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio1";
	rename -uid "65D480ED-47E4-B138-B498-498CCD47D98A";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen3";
	rename -uid "9E2DB9F2-4CDE-B2D1-2D76-DCA9E84B8818";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio4";
	rename -uid "504B4924-4F18-761E-91BE-D0ADCC61AF38";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen1";
	rename -uid "A812FF56-4DED-9832-44D8-C1B0E203AE80";
createNode multiplyDivide -n "stretchCtrl_uparm1";
	rename -uid "CBB7DBFE-4D0D-3471-74FF-2F9B3E846A29";
createNode plusMinusAverage -n "uparm_plus_stretch2";
	rename -uid "C0CFAE0E-4490-FE78-A20E-DBB1A4C06DB3";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm1";
	rename -uid "DA9AFCED-4CED-3A68-4B4A-B088F3C7467B";
	setAttr ".op" 2;
createNode condition -n "cond_loarm1";
	rename -uid "69CE852C-41B0-A820-8787-F3AE4CC88530";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen1";
	rename -uid "66E0920B-4236-761C-E4E4-62B079B34B2F";
createNode multiplyDivide -n "stretchCtrl_loarm1";
	rename -uid "F18B4A61-4922-0B1B-1679-89B45B0A4F27";
createNode plusMinusAverage -n "loarm_plus_stretch2";
	rename -uid "1296E4C3-4BFE-1FD8-570D-959D3983F8EC";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo11";
	rename -uid "CE4D1DCB-4596-817E-E165-6590F0B411EC";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen1";
	rename -uid "F645DD3D-45EE-3393-3EAD-15935D2CA275";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo9";
	rename -uid "2EC7FE49-4902-0C1E-DEEB-96B5282425BB";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo10";
	rename -uid "EFDFF3E9-4B08-49D7-D234-CA9FAD7DD143";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo7";
	rename -uid "8047A45E-463B-505D-33DF-CC8D838EA048";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal1";
	rename -uid "3B12FAB7-4AC9-11DA-AC61-7BA53C1DCD55";
createNode blendColors -n "ikfk_shoulder_t1";
	rename -uid "24C6D801-4A60-35D6-36AD-D6A7B1E05878";
createNode blendColors -n "ikfk_shoulder_r1";
	rename -uid "C5907EBE-40D5-A7C5-8A5D-7A93BBF6297F";
createNode unitConversion -n "unitConversion4";
	rename -uid "0924D586-4662-E417-FA5E-56B102DA2881";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "8D328FF4-45EB-7A07-A4CB-8082796AE182";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "A963CE31-47D1-B2C9-4FAC-A0B60349E6D2";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow1";
	rename -uid "7DFD5754-4F0B-15FA-0569-4CAAA28A7444";
createNode pairBlend -n "pairBlend2";
	rename -uid "289F9D71-4B4F-F540-9076-6DAC46382483";
createNode reverse -n "reverse2";
	rename -uid "464DC01F-49FB-0438-7810-E6912E235FFB";
createNode decomposeMatrix -n "decomposeMatrix12";
	rename -uid "69934F9F-40C6-7B24-E6C1-4594B8B5D83D";
createNode decomposeMatrix -n "decomposeMatrix13";
	rename -uid "CFA6345C-4447-EFE6-5475-5FB394E74618";
createNode decomposeMatrix -n "decomposeMatrix14";
	rename -uid "A40834DE-4682-C3B0-E75D-4E828FAB6E38";
createNode plusMinusAverage -n "shld2elbow_vec1";
	rename -uid "729D05E5-4D95-C4B6-1032-A7BB84E579EC";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec1";
	rename -uid "F5DCE4A6-4283-DEC6-E3CB-4C9709EEC8AA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec1";
	rename -uid "6691E09F-4C36-0DF4-1650-1798FE29274B";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec1";
	rename -uid "BA4C5CCC-40E3-A40B-0840-4BB4F83130AB";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat1";
	rename -uid "8219F9E7-4886-49B5-2CCC-11B515087160";
createNode vectorProduct -n "shoulder_x_vec1";
	rename -uid "44A0F828-4D8C-3D3F-4584-61ACACA5C279";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix15";
	rename -uid "C4EE5D04-4563-767B-B14D-D2BD70DCD857";
createNode plusMinusAverage -n "elbow2shoulder_vec1";
	rename -uid "410F771E-42CB-3FC4-9CD4-FD84A23290F6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec1";
	rename -uid "2587215D-4DB9-212E-BBE2-B3958756B7CA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec1";
	rename -uid "0760776B-488C-025A-8B8D-31A2373882F1";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec1";
	rename -uid "C04AF52B-4A8B-790E-2461-668DA4E13A57";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec1";
	rename -uid "3728E2ED-44A0-3373-418E-D9823EE803BF";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat1";
	rename -uid "68901E99-4516-B714-DD5A-F591F7100952";
createNode decomposeMatrix -n "decomposeMatrix16";
	rename -uid "F5EB2985-498E-158F-C36A-FF857527FA85";
createNode multMatrix -n "multMatrix9";
	rename -uid "3EAD4793-4717-71E7-9EF0-9F95F510EC2E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix17";
	rename -uid "BBFBC8E7-46D5-943B-08BF-EF91C9697A52";
createNode multMatrix -n "multMatrix10";
	rename -uid "4064CB81-4604-7809-D1C1-B1AA3A95D1DF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix18";
	rename -uid "3EB88D25-4AA6-D774-308D-9D98EF3D4AE1";
createNode multMatrix -n "multMatrix11";
	rename -uid "E76C1006-4EA9-55BB-0528-D589CC923672";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix12";
	rename -uid "0F578AEC-485E-2AF0-BE45-D7BB8A998A98";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix19";
	rename -uid "DA872DC9-4CAC-E83D-8D52-2EAB41D624E9";
createNode lambert -n "lambert3";
	rename -uid "3434B8E0-412D-46C9-68B0-6A8DF97C678E";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG1";
	rename -uid "8100368F-4D7C-AB87-4C2A-7CA28B46AEE0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "0B70A439-4D0A-6ABC-BEEF-2986451158B9";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "F1E117FA-4183-C0B6-506F-41A622D114FA";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -74.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode decomposeMatrix -n "input_arm_space_decomp1";
	rename -uid "192E9AA5-40A5-F355-8948-D09A4EF955E6";
createNode multMatrix -n "init_shoulder_localMat1";
	rename -uid "AC5CF035-4486-2827-3BCA-C3BFDB9AB146";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat1";
	rename -uid "987D185C-4984-AF94-9D1C-6CB100424CF6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp1";
	rename -uid "AE7BB660-47BE-8CED-3DC8-B580B077FB58";
createNode multMatrix -n "init_wrist_local1";
	rename -uid "84576334-4FD0-1712-1CAA-8FAF9D5B06E0";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local1";
	rename -uid "830838F2-42AC-2FC6-FD37-C1BBCBCA9724";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local1";
	rename -uid "ED9E67D4-4C03-41A3-96D9-BBA4B3AC6CF6";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local1";
	rename -uid "2C80F679-425F-95A3-872A-729A3643E113";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix13";
	rename -uid "C3D67C26-49AB-2388-3FD6-0FBBEB8ACB70";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix14";
	rename -uid "10C14384-420D-595B-0485-638F656D52B4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix20";
	rename -uid "E5F41063-4598-D235-8130-6CAF2082205A";
createNode multMatrix -n "multMatrix15";
	rename -uid "F1752DE4-491C-C175-FD5A-DC9090FDFB1F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix21";
	rename -uid "4B2304F6-4BDC-8FD0-F5DD-CA9EB990669E";
createNode multMatrix -n "multMatrix16";
	rename -uid "4705E10F-4953-CEB6-7112-DFA3F044DE63";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix22";
	rename -uid "67A055B8-4600-8FE4-92E9-A9873930819E";
createNode multiplyDivide -n "elbow2wrist_vec1_rvs";
	rename -uid "7F2F268F-4AF9-8354-9B38-7E88785F8910";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2elbow_vec1_rvs";
	rename -uid "87C1A795-4D95-1659-A8E3-2EAE78C37E9C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2wrist_vec1_rvs";
	rename -uid "6F983115-419D-4AD0-E024-768BF6252C4B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "87666A4C-4D6C-45E4-A82C-7E956939FCE5";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "divide_softikV2";
	rename -uid "2C98AA91-4DF3-9104-2424-B9B3EEF2D135";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val2";
	rename -uid "D03C563A-49C9-4BBD-CAB1-2D849CBF79B3";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val2";
	rename -uid "97813F9D-4A33-28FD-2E16-58AC852F647A";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV2";
	rename -uid "885E70B7-441F-1C65-AD2A-6D8E87679F00";
createNode plusMinusAverage -n "result_softik_len2";
	rename -uid "230B015D-4DDA-4C49-5725-44AF0523A0EA";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition2";
	rename -uid "CBEB1C4F-4058-EE53-66B2-8A8AA8583B57";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition2";
	rename -uid "6BD2323E-47EF-B21B-B499-4989F1C0072D";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo12";
	rename -uid "0556BB05-43DA-6E9B-A526-69955A32BDD0";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen2";
	rename -uid "B6A8F643-4F9B-4534-A53D-B9BD27FE8502";
createNode distanceBetween -n "loarmLen2";
	rename -uid "2E13B5AF-4F0B-B495-F440-13B677434841";
createNode plusMinusAverage -n "armLen4";
	rename -uid "8E353183-4977-7F66-F1DD-4D871ED735E6";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen2";
	rename -uid "F912FBCA-473B-B6B8-FCD7-369DACAFF04E";
createNode ikRPsolver -n "ikRPsolver2";
	rename -uid "A9597DFA-4C89-E702-0933-7B9C6345EDC1";
createNode plusMinusAverage -n "armlen_minus_softikV2";
	rename -uid "71DC7C5B-4716-016B-9489-DA8641ADACD4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif2";
	rename -uid "5AC58730-4459-835D-1CC0-2A9A3AC97158";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide2";
	rename -uid "53E6ACCA-4708-9920-C509-D89C66BAA112";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo14";
	rename -uid "96CF8B95-4840-CD80-0703-A78F86EBBAC0";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio2";
	rename -uid "6B0E54F4-48AA-2346-35D6-439D29E3DC5D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen5";
	rename -uid "73D9D2EB-43B4-22F6-8576-1499616A1F51";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio5";
	rename -uid "0B2E0D4C-4C3B-3183-28F7-DB9670B6E736";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen2";
	rename -uid "EE7D88D6-4C79-1B1C-3AF2-278CBA8C0FC5";
createNode multiplyDivide -n "stretchCtrl_uparm2";
	rename -uid "8B2BB2F1-4F7E-9604-B5F1-04B6A78853F0";
createNode plusMinusAverage -n "uparm_plus_stretch3";
	rename -uid "CF40B04E-45CB-A78E-4FA8-9D8F7E9AA7AA";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm2";
	rename -uid "F437E290-42B1-3712-82F2-969985B9923D";
	setAttr ".op" 2;
createNode condition -n "cond_loarm2";
	rename -uid "A815AFF3-4561-ED2A-1609-FBA06392BBBC";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen2";
	rename -uid "AE7C5D5B-43C7-EA9A-6086-EAAA405E2C2C";
createNode multiplyDivide -n "stretchCtrl_loarm2";
	rename -uid "45AA6E4A-4DE6-A451-4B11-57A46482800A";
createNode plusMinusAverage -n "loarm_plus_stretch3";
	rename -uid "3121738F-4AC4-6EA5-1EDE-FBA12C7C3AFF";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo17";
	rename -uid "957C7BFB-4AF2-371E-63EC-AC95D946D453";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen2";
	rename -uid "A429DB56-4DBE-0076-E4C5-C6B6B01CE43B";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo15";
	rename -uid "FA88121E-4B23-7590-FB10-25913F7162F7";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo16";
	rename -uid "CB9864FD-4BCF-38A0-8B81-69AF07E28FAA";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo13";
	rename -uid "B1401ED0-42E9-59F8-AE99-BE86403CD6A5";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal2";
	rename -uid "08E55670-4C91-5515-FB6B-6D93A825C6CE";
createNode blendColors -n "ikfk_shoulder_t2";
	rename -uid "1849118C-4386-8BF5-4B99-A1B18CAE80A1";
createNode blendColors -n "ikfk_shoulder_r2";
	rename -uid "9C015418-47C0-9F46-E20F-EFB9260FE592";
createNode unitConversion -n "unitConversion7";
	rename -uid "8D8A69C6-4F73-4D20-B9E3-34B7AB628532";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "DCA3A13F-4515-8B3E-B249-D2A304F23C01";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	rename -uid "8B688533-43A6-87E8-61F5-91B200226859";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow2";
	rename -uid "69D057BA-4353-FC54-BFFB-CF9EE687246A";
createNode pairBlend -n "pairBlend3";
	rename -uid "68947529-4F03-C1B4-A832-3B8AB958FAAF";
createNode reverse -n "reverse3";
	rename -uid "D7BF48C4-4DAE-622A-94CC-9E844CF770D5";
createNode decomposeMatrix -n "decomposeMatrix23";
	rename -uid "E472F680-4CC2-C449-1B73-9E851B6053C6";
createNode decomposeMatrix -n "decomposeMatrix24";
	rename -uid "6984D6F0-481C-5A3E-72CA-B88A0B34476B";
createNode decomposeMatrix -n "decomposeMatrix25";
	rename -uid "345FEA40-4C48-2288-B1D9-8E9C1464AEA4";
createNode plusMinusAverage -n "shld2elbow_vec2";
	rename -uid "316EDE25-4548-3A92-6EE3-4B89CB5F775C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec2";
	rename -uid "DAD31813-407E-E738-63E8-358F7EFF6DC2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec2";
	rename -uid "A4FAD324-4174-5BBF-E683-5DAE8967CAA6";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec2";
	rename -uid "E1C67336-49E5-C241-F3EB-20B17ED2A989";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat2";
	rename -uid "02F2515F-4835-7913-774D-10B6AD376544";
createNode vectorProduct -n "shoulder_x_vec2";
	rename -uid "C814318C-4098-1247-4CFD-2BAF55EEFA4F";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix26";
	rename -uid "7313081A-41EF-70B0-9787-21B54EA35132";
createNode plusMinusAverage -n "elbow2shoulder_vec2";
	rename -uid "B48F4804-4B43-A5BB-C997-72AA6131086C";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec2";
	rename -uid "AC26BF01-42B6-09E4-C111-84ADEFABB46B";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec2";
	rename -uid "D82B64C1-4CB3-94AA-CE9C-D8B962D77541";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec2";
	rename -uid "1869FC54-484D-B034-878B-7C8F4AC3F6A5";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec2";
	rename -uid "53808102-471E-F1BE-BA04-6DA6ED8E3741";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat2";
	rename -uid "E011316D-45A7-682E-C79C-438FEC8C321E";
createNode decomposeMatrix -n "decomposeMatrix27";
	rename -uid "3CB87D84-4838-BB25-BCEF-A9BBE14A49E8";
createNode multMatrix -n "multMatrix17";
	rename -uid "1307A9CA-4DC4-EDE0-7F71-97B7075E83F5";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix28";
	rename -uid "6A527053-43D7-96F7-B79F-67BEF78D06E4";
createNode multMatrix -n "multMatrix18";
	rename -uid "9A2A5738-4598-688F-B210-C69BEA5324D7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix29";
	rename -uid "D7001181-4D45-C310-E078-C784D80C1186";
createNode multMatrix -n "multMatrix19";
	rename -uid "E5B0FDE4-45DA-F9FD-9E17-A0988A6EEFA7";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix20";
	rename -uid "E7B2EE8C-48D8-79AF-C76D-B89D5F7C8F6B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix30";
	rename -uid "DA15A381-4427-C453-D1C9-B982EDF79F6A";
createNode lambert -n "lambert4";
	rename -uid "FB757BDE-4D79-E8FD-9BED-C787DEACA2F3";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG2";
	rename -uid "D8CE5C9C-4BA2-5D83-3171-859E070D85D6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "16E853B1-427C-6D3C-7651-4F9323E45070";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "46224857-4E17-980D-0745-B0BD84D3960A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -74.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode decomposeMatrix -n "input_arm_space_decomp2";
	rename -uid "A2DE9713-4F81-121B-7DA9-E5AC520E1F47";
createNode multMatrix -n "init_shoulder_localMat2";
	rename -uid "C0772B08-4085-6850-C7F3-9FAFBF77B9D4";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat2";
	rename -uid "F4058CF7-4891-47F4-E204-E8BEA401CF59";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp2";
	rename -uid "FAF6E027-4F49-C14B-5F6E-2E9CEE99088E";
createNode multMatrix -n "init_wrist_local2";
	rename -uid "A8DD6852-4F61-17BC-E3A5-CAAA1AA3B10B";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local2";
	rename -uid "AC2D5EF8-4295-AA71-5473-C186E9A35BF6";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local2";
	rename -uid "CEE239C7-44BB-307A-DE30-A48974FD4225";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local2";
	rename -uid "24705EB4-4DFD-5AE0-91F0-95BF6EB30DE4";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix21";
	rename -uid "BB9B06DE-47C2-73E8-65A7-F982B97AF817";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix22";
	rename -uid "ABFB40B7-49A8-4C01-F598-14A15FCD042B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix31";
	rename -uid "917F6299-4F59-1056-D0E7-AD8B49CC524F";
createNode multMatrix -n "multMatrix23";
	rename -uid "EE6881CC-446A-D0C0-3219-7D97EE95E6E3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix32";
	rename -uid "950A32A6-48AC-8206-EB7E-0CA0BAD76147";
createNode multMatrix -n "multMatrix24";
	rename -uid "825CF7A8-45CF-C347-B34E-D7896236D9B3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix33";
	rename -uid "592C5CC2-4B6D-EFEE-DD53-5BA74AFCA747";
createNode multiplyDivide -n "divide_softikV3";
	rename -uid "E4685432-4AA5-2A03-A3FC-51A1865F73ED";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val3";
	rename -uid "86E416D5-486E-F6AB-9D13-62B5CA6C393D";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val3";
	rename -uid "C385EFB8-49A7-7BFE-CB16-51A0CD2E793C";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV3";
	rename -uid "A8B9FE36-4E7C-2623-7A41-5CA5AD2E23E8";
createNode plusMinusAverage -n "result_softik_len3";
	rename -uid "28027893-4554-9601-A22C-38B740BF0E14";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition3";
	rename -uid "57E92F3F-476C-E36A-6810-55A428AC07DE";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition3";
	rename -uid "CD8EA363-4E64-F975-6F6A-FD95105FB696";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo18";
	rename -uid "03BEE3A4-47C5-255B-9664-8B9356165AF9";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen3";
	rename -uid "C7AB17D5-4F5A-0B14-3B84-FF8F5B76C630";
createNode distanceBetween -n "loarmLen3";
	rename -uid "2ACAF53D-4C52-02CF-7A54-B6A749181CF4";
createNode plusMinusAverage -n "armLen6";
	rename -uid "5941583B-406E-07A9-C621-FBA1189C6AEF";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen3";
	rename -uid "705AA7CF-4E43-8054-A70C-D09131658CC0";
createNode ikRPsolver -n "ikRPsolver3";
	rename -uid "BFF33821-44EF-72C3-3DC1-A78B6F915067";
createNode plusMinusAverage -n "armlen_minus_softikV3";
	rename -uid "B9765631-4009-0046-B602-31AC1D37A437";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif3";
	rename -uid "A0BE8ED5-4FA6-AC2E-236C-A58B60C6964B";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide3";
	rename -uid "584993C8-4B3F-7465-C8AC-A384C3BA5B38";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo20";
	rename -uid "520B300D-4BB6-716A-117E-99840864810A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio3";
	rename -uid "F88B0F9F-4764-EACC-A47D-F0B2AA2A099D";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen7";
	rename -uid "0ECC7F49-4592-F6D6-3D1F-54AF1678E093";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio6";
	rename -uid "097DE035-4921-AF79-CAF4-1D841A6A1C37";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen3";
	rename -uid "2260A4B8-4140-59BC-8A68-F18C329E8E18";
createNode multiplyDivide -n "stretchCtrl_uparm3";
	rename -uid "F5299052-45DC-AB96-2C6C-7DA7455CCA04";
createNode plusMinusAverage -n "uparm_plus_stretch4";
	rename -uid "FD12A3FA-4010-4152-5BCA-99B50EB0A8BE";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm3";
	rename -uid "6C5145F6-4C16-3ECA-E02B-619F248AD8D8";
	setAttr ".op" 2;
createNode condition -n "cond_loarm3";
	rename -uid "2907B0B2-4274-A95B-1E2F-AF8C320CDC3C";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen3";
	rename -uid "C404C3A6-4075-1B20-8BD6-9381C7318356";
createNode multiplyDivide -n "stretchCtrl_loarm3";
	rename -uid "2BC00F79-484F-F4D3-098F-20AC97BBA79D";
createNode plusMinusAverage -n "loarm_plus_stretch4";
	rename -uid "53A86CF1-4FE2-454B-BBB6-949729CDE8F3";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo23";
	rename -uid "7BDB835B-498D-A490-8DF5-59816D332055";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen3";
	rename -uid "923D67A9-4503-0199-09DF-9CAEEDF6F86A";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo21";
	rename -uid "C1A7758D-48BF-CF6A-1038-58BE3107CFBF";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo22";
	rename -uid "F11A8A64-4870-2AD5-C9D9-65AFA645D6C1";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo19";
	rename -uid "68C5D80E-4E54-A4EB-0EDD-76917DD60959";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal3";
	rename -uid "8BCD3AFD-4F0A-FEEA-6ADC-619CCBD23877";
createNode blendColors -n "ikfk_shoulder_t3";
	rename -uid "5B6F6BF1-4CDD-36A0-D37C-B3A12B07D28C";
createNode blendColors -n "ikfk_shoulder_r3";
	rename -uid "A7061BEA-46DF-1597-042D-F0B6AB9A7F8D";
createNode unitConversion -n "unitConversion10";
	rename -uid "80D78171-425D-2888-76E2-7A860CD7EFA9";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "5B929F8E-4A69-2FDB-3634-00994E3881B8";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "C299E43F-4D47-6D2F-C8F1-AB96364EE038";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow3";
	rename -uid "3FE706ED-4940-524F-9D09-64AA85F6AA55";
createNode pairBlend -n "pairBlend4";
	rename -uid "6CC8BD98-4D48-F8EA-0524-AD876FF2CAB4";
createNode reverse -n "reverse4";
	rename -uid "DACCAE85-4EC6-0D14-8A5E-19BC7D5CE048";
createNode decomposeMatrix -n "decomposeMatrix34";
	rename -uid "B4A29223-4F76-F08C-015C-A09BDD075554";
createNode decomposeMatrix -n "decomposeMatrix35";
	rename -uid "B2EDFB64-4E92-E91A-B40E-EAA282556155";
createNode decomposeMatrix -n "decomposeMatrix36";
	rename -uid "80203A09-4E41-0D52-7EFC-019AAC99A921";
createNode plusMinusAverage -n "shld2elbow_vec3";
	rename -uid "71C96372-4ABA-7E91-E0AA-EDA8CD673DDD";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec3";
	rename -uid "D601AD86-4B40-D786-C9F5-74BE2DE8F488";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec3";
	rename -uid "14BAAA6E-44EC-6AEB-DE13-BAA3B7C32DAC";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec3";
	rename -uid "552453D7-4844-FB6A-289E-34B58D0253E9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat3";
	rename -uid "7704347F-48DF-4FF3-C5F2-38ADC77A411A";
createNode vectorProduct -n "shoulder_x_vec3";
	rename -uid "CF678FEE-41A8-04F1-A891-1A947BBC2737";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix37";
	rename -uid "C4EED9EA-4836-2171-1EBC-C29951574FD6";
createNode plusMinusAverage -n "elbow2shoulder_vec3";
	rename -uid "FEA0E97C-4850-0B92-35AE-8CB0AB62F431";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec3";
	rename -uid "BC3A3B9C-4484-AA43-6D1F-56AC53578523";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec3";
	rename -uid "F3941992-4422-118A-2E48-7885A7EFA8E9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec3";
	rename -uid "F6DD5CB2-4EA4-98E2-76E1-19A9C6B4B2D2";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec3";
	rename -uid "6B0264B3-4143-5D2D-8B24-C0B2D513CC3C";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat3";
	rename -uid "0C8C8F47-46C0-EE0E-04C3-7DAC39ECD33C";
createNode decomposeMatrix -n "decomposeMatrix38";
	rename -uid "3FE33C2A-433B-86B2-EEF0-CEB5A4062B46";
createNode multMatrix -n "multMatrix25";
	rename -uid "77418AC7-4F90-A979-58BC-459860C0C5CC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix39";
	rename -uid "C5AEAC8E-4AB8-9DB6-433D-6984F6A4BDA5";
createNode multMatrix -n "multMatrix26";
	rename -uid "639A3B5C-4888-10E8-05B4-6D9E6BBBE97B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix40";
	rename -uid "F6C76107-4B40-AF7D-8827-C794BF4A6FF9";
createNode multMatrix -n "multMatrix27";
	rename -uid "C91F4747-4470-C21C-5CD6-0FAFFB8A1237";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix28";
	rename -uid "7B64590E-49A5-3E80-13C7-ABA0614E7699";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix41";
	rename -uid "5D1F8510-41D5-94E1-5943-CD8D753AC525";
createNode lambert -n "lambert5";
	rename -uid "E33B5215-481C-6C71-A4F2-8FB903277AB9";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG3";
	rename -uid "C7CFC3D1-4F59-F4F9-BCAD-FE8E1F2D007E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "0687AE7B-4699-91FB-6DDB-8BB8CA54E0BB";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo3";
	rename -uid "41F452EF-4247-85A5-53CD-8188FC218AB3";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -74.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode decomposeMatrix -n "input_arm_space_decomp3";
	rename -uid "E4F54EF3-4EA7-3C50-E5D0-65AA4C71A44B";
createNode multMatrix -n "init_shoulder_localMat3";
	rename -uid "4A486BB8-4A4F-D36A-5DB6-07838EF7419E";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat3";
	rename -uid "0D453046-4DC1-E0C2-F956-9E91AA30A3B4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp3";
	rename -uid "6FEF78B1-4D80-03BB-E1D0-E9B840FF4765";
createNode multMatrix -n "init_wrist_local3";
	rename -uid "C9D62542-4BC2-23A8-14C8-3E999D43BCA6";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local3";
	rename -uid "3F64CD03-45E5-BE87-94D9-B294E71C51BA";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local3";
	rename -uid "5805ED01-41FF-4B07-9E65-CFADA5A1EF64";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local3";
	rename -uid "6678BD50-4772-4C88-7602-0F99CDDC0A07";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix29";
	rename -uid "D72D1482-4D9E-228D-0156-1F98ADDC7C9F";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix30";
	rename -uid "3F578B65-4A42-5D56-84F1-B2AB1E34CDCA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix42";
	rename -uid "38C90C0C-4D4D-5292-B884-51A9ADEAB55C";
createNode multMatrix -n "multMatrix31";
	rename -uid "098475FB-4B43-FC3C-87FA-E3B942D9ED55";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix43";
	rename -uid "785F4955-4F20-5FA0-8804-3F81440256B4";
createNode multMatrix -n "multMatrix32";
	rename -uid "E10040CB-496B-225B-0CA5-77B518C45A3E";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix44";
	rename -uid "15D80741-465B-2EE0-F91B-0FA08EFC7CA8";
createNode multiplyDivide -n "elbow2shoulder_vec3_rvs";
	rename -uid "9697D3FB-4952-5D62-D40F-1F9CE01DD010";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2wrist_vec3_rvs";
	rename -uid "73D631BA-4FF7-8832-4543-A58D345ECCBC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "elbow2wrist_vec3_rvs";
	rename -uid "3EA53495-4FF4-42CF-5873-57BD8A6E6193";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2elbow_vec3_rvs";
	rename -uid "DC847166-482D-EF47-17ED-ADA6799AD101";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "fit_DMTX";
	rename -uid "45BCA3F9-49A6-7A1E-7597-09878655A42C";
createNode decomposeMatrix -n "fit_spine_CTL_control_DMTX";
	rename -uid "BDA41D27-4A5F-B123-2B76-B193D79BDD03";
createNode decomposeMatrix -n "fit_spine_sub_000_CTL_control_DMTX";
	rename -uid "DDF64E2C-4DBB-258F-3260-248845F7F77F";
createNode decomposeMatrix -n "fit_chest_sub_001_CTL_control_DMTX";
	rename -uid "94DCC15F-4F27-D2E8-F40A-0EABF37516B9";
createNode decomposeMatrix -n "fit_chest_CTL_control_DMTX";
	rename -uid "8E237B90-4D96-249E-5F89-B6823C03FB61";
createNode decomposeMatrix -n "ctl_DMTX";
	rename -uid "C7CE86B2-457E-B01F-D095-1D8987927FD2";
createNode decomposeMatrix -n "M_spine_CTL_localMat_DMTX";
	rename -uid "3DFE0567-4DB5-9093-C0DB-A89CBEBE79B5";
createNode multMatrix -n "M_spine_CTL_localMat_MAT";
	rename -uid "30BFA7D5-4393-44F5-AD49-169F7BC4BD6F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_chest_CTL_localMat_DMTX";
	rename -uid "BF2AD5F3-46B3-2AB9-126C-EE87F9D5855F";
createNode multMatrix -n "M_chest_CTL_localMat_MAT";
	rename -uid "9AC84EAD-4BC3-F905-577E-40B8EC62035F";
	setAttr -s 2 ".i";
createNode pointOnCurveInfo -n "twist_spine_poci";
	rename -uid "0D0BD8B6-4D2E-C574-B6C6-E5B4297686E8";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_spine_CTL_rotMat_DMTX";
	rename -uid "C758AE22-4B69-1C7A-E3A1-F3AA0D45477C";
createNode pointOnCurveInfo -n "twist_chest_poci";
	rename -uid "BEFB11C9-49A5-1823-A58C-A1B9AC8224E8";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_chest_CTL_rotMat_DMTX";
	rename -uid "49E566A5-48FD-8FED-3679-1C9B6512438D";
createNode pointOnCurveInfo -n "spineA_poci";
	rename -uid "8E40C089-45C7-2F3E-F1C4-3D9F499B099F";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineA_param_MULT";
	rename -uid "99B26FD8-47C4-A8D1-785A-CDAF465B6708";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "spine_param_MULT";
	rename -uid "006026D6-4F15-2D4C-82A8-6C99E32C2938";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "A80628E7-492B-E562-85BE-5FAE3FF5C2C3";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineA_twist_PLS";
	rename -uid "B112D51A-4CDA-DA4C-E469-5B8876EA9EE9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineA_twist_MULT";
	rename -uid "4C4F1898-4C54-9FC9-1B97-8ABCD377C3B6";
createNode remapValue -n "spine_spineA_twist_RMAP";
	rename -uid "93E69125-479E-C206-C2FF-15B5682B753C";
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
createNode unitConversion -n "unitConversion18";
	rename -uid "65E25C14-4CD5-FE5A-9876-429307C61294";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineA_twist_MULT";
	rename -uid "70A93B35-4853-41BF-D8A0-64B5DC753FEA";
createNode remapValue -n "chest_spineA_twist_RMAP";
	rename -uid "22FE6421-4F68-EC4D-1F34-8E92DA84CD2D";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion23";
	rename -uid "793C10DC-445E-1A2A-D34E-BCA47B9DE4D8";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "spineB_poci";
	rename -uid "2403C3FD-4230-09F2-F21E-E08ED92227A0";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineB_param_MULT";
	rename -uid "B8321681-4D8C-9567-CBFE-D8A0161DD737";
createNode unitConversion -n "unitConversion14";
	rename -uid "EE1F6F7A-4CD3-41E0-E77B-2F835FD7DFE1";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineB_twist_PLS";
	rename -uid "43B294E1-4F1D-1449-A3B9-6C86B64BA817";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineB_twist_MULT";
	rename -uid "D9915AD0-4A52-EBF8-BFCB-3981F08AE26D";
createNode remapValue -n "spine_spineB_twist_RMAP";
	rename -uid "B87F86BF-4018-18B4-0B6A-C2A7C82FA8C9";
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
createNode unitConversion -n "unitConversion19";
	rename -uid "0B8465EA-4846-DA27-E333-6091D0235840";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineB_twist_MULT";
	rename -uid "B042A262-4DE1-A6F9-341A-28A349177125";
createNode remapValue -n "chest_spineB_twist_RMAP";
	rename -uid "4F2B1F90-4A3F-B605-B17F-CE96568A3F3E";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion24";
	rename -uid "6E1270B1-4F5C-3D49-9063-86A09A442E66";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "spineC_poci";
	rename -uid "CF67BDA6-4059-19CD-EC43-D49A446FB7D0";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineC_param_MULT";
	rename -uid "4B203928-4978-B849-5E3D-0FBBAA9994FC";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode unitConversion -n "unitConversion15";
	rename -uid "19F27DC5-4BB3-FF19-95C8-3B84C8E187B9";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineC_twist_PLS";
	rename -uid "857DC75D-4696-0166-4A4C-56A83FC8F1C8";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineC_twist_MULT";
	rename -uid "EDC3C378-446C-355F-00D3-489E84201A56";
createNode remapValue -n "spine_spineC_twist_RMAP";
	rename -uid "71312914-4A96-118E-F453-EEB7362BD608";
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
createNode unitConversion -n "unitConversion20";
	rename -uid "1BDDE629-43FC-0013-178F-45A5D7598BCE";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineC_twist_MULT";
	rename -uid "DF7D566D-4E92-6F85-99B7-A39CB1312DD0";
createNode remapValue -n "chest_spineC_twist_RMAP";
	rename -uid "B89BFEAE-4662-1DD2-2BEC-DB96ABF62C48";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion25";
	rename -uid "EF307039-496A-8A17-14FD-7F8B6D6C78B1";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "spineD_poci";
	rename -uid "B1AB52F1-45C6-C53E-0DDB-8DA5C65D318F";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineD_param_MULT";
	rename -uid "EF32C1B1-4A35-270A-31EB-6D87B4836374";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode unitConversion -n "unitConversion16";
	rename -uid "769057DD-4DC1-E259-C1FA-5A8AF0E7207D";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineD_twist_PLS";
	rename -uid "1C16FBD6-459F-886C-8590-DB8913CB852F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineD_twist_MULT";
	rename -uid "54CEF1D8-43FA-8663-96CF-EFA1DB3E0327";
createNode remapValue -n "spine_spineD_twist_RMAP";
	rename -uid "83EA915F-4CDC-6051-F92E-EEAD951C5D7D";
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
createNode unitConversion -n "unitConversion21";
	rename -uid "04762E25-41D2-4B51-3344-588B6D577391";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineD_twist_MULT";
	rename -uid "D53B7119-4E39-5E0E-37F7-EFBF9F9B1314";
createNode remapValue -n "chest_spineD_twist_RMAP";
	rename -uid "8A6C284B-4F76-5453-EEBA-F895256A25AA";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion26";
	rename -uid "798E6FCA-437A-4C71-F211-4FA7559AA49F";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "chest_poci";
	rename -uid "1E4111D8-430D-6AB9-AD0F-85AB4933B7E2";
	setAttr ".top" yes;
createNode multiplyDivide -n "chest_param_MULT";
	rename -uid "B9E57FBC-45AD-81B3-7842-CFBF3B03006C";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode unitConversion -n "unitConversion17";
	rename -uid "434F77C5-4096-0D29-5BB9-C6BF4725C87D";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "chest_twist_PLS";
	rename -uid "62063451-40CA-D2A5-E50B-49AD6AE9175C";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_chest_twist_MULT";
	rename -uid "81BB999B-497A-2877-0341-DB9152B4F0E1";
createNode remapValue -n "spine_chest_twist_RMAP";
	rename -uid "CCBC27E8-4E03-7754-04B5-0798CB18FB55";
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
createNode unitConversion -n "unitConversion22";
	rename -uid "FAE867EB-49C1-A190-C49B-608499120662";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_chest_twist_MULT";
	rename -uid "2A208BD5-422F-15D7-995E-B2A2B82B87C5";
createNode remapValue -n "chest_chest_twist_RMAP";
	rename -uid "B6845C7A-4158-A65B-1707-49A7C8933307";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion27";
	rename -uid "BFBE6887-4867-13AF-6C28-0BAE5D9C465E";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "fk_spineA_scaleSpaceMat_DMTX";
	rename -uid "834718AB-45C1-67EA-747B-A7BA8738D7F5";
createNode multMatrix -n "fk_spineA_scaleSpaceMat_MAT";
	rename -uid "382329DC-458E-73B7-B25A-52AEB564BCC9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineB_scaleSpaceMat_DMTX";
	rename -uid "DAF54695-4D17-B41C-7937-E6A7A7E58191";
createNode multMatrix -n "fk_spineB_scaleSpaceMat_MAT";
	rename -uid "AA825852-48EA-A1FC-2D70-0FAA23EED57D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_scaleSpaceMat_DMTX";
	rename -uid "3F216852-4ABE-31F8-6CD6-B495BF8C51C2";
createNode multMatrix -n "fk_spineC_scaleSpaceMat_MAT";
	rename -uid "04DEF9DB-49BD-B100-64AB-1E87C9B557A7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_scaleSpaceMat_DMTX";
	rename -uid "208BA9BE-40D2-0FEB-70A2-B9AD8AF0A2B9";
createNode multMatrix -n "fk_spineD_scaleSpaceMat_MAT";
	rename -uid "41D3BC8B-42EB-7B98-D0C1-48ABC764FCD3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_scaleSpaceMat_DMTX";
	rename -uid "77C3C922-4F4E-873A-8B86-628B4425FD49";
createNode multMatrix -n "fk_chest_scaleSpaceMat_MAT";
	rename -uid "9596FB23-4495-CCEC-855E-C2958943030D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_joint_DMTX";
	rename -uid "CC2E49FC-46B5-6261-6345-CFAB72DB6FC0";
createNode decomposeMatrix -n "fk_spineB_localMat_DMTX";
	rename -uid "5D864D24-4387-59F8-4461-41B686001B05";
createNode multMatrix -n "fk_spineB_localMat_MAT";
	rename -uid "01AD6BCF-4A54-127B-73CE-B4B1E48869FA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_localMat_DMTX";
	rename -uid "127B98D0-458D-5B40-0345-D69ED860AF63";
createNode multMatrix -n "fk_spineC_localMat_MAT";
	rename -uid "E5093B37-44D3-7ED6-103E-E0BD9BBE3756";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_localMat_DMTX";
	rename -uid "47E87D98-4B06-6142-03B7-F48A13F93B4C";
createNode multMatrix -n "fk_spineD_localMat_MAT";
	rename -uid "7D0C58F2-4D65-987A-3B1C-2099E3F470B1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_DMTX";
	rename -uid "F51C424A-4E61-3E4F-4390-E68712EA21FF";
createNode multMatrix -n "fk_chest_localMat_MAT";
	rename -uid "3A648706-497D-4E87-DA93-12BABBED47E8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_control_DMTX";
	rename -uid "0F891E83-4116-CFF4-098C-B29A262A0529";
createNode decomposeMatrix -n "FK_spineC_JNT_DMTX";
	rename -uid "A4A962FB-4F9D-575D-8BF0-4F80C366CD6F";
createNode decomposeMatrix -n "FK_chest_JNT_DCMX";
	rename -uid "DF7F3962-4C76-5221-D63E-95BC0D2B22A6";
createNode multMatrix -n "FK_hip_space_MTMX";
	rename -uid "0388CD0C-458B-D650-8336-C4B16C929F9F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix45";
	rename -uid "B0D57416-4F24-04E9-1AB7-83A416DB8AE0";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "6429C03D-400F-7B1F-B0C1-9D8EE0755AC7";
createNode decomposeMatrix -n "FK_spineA_JNT_DCMX";
	rename -uid "DF3A19E2-4A86-E85D-22E0-7A9AD6628754";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9F95FDFD-4158-6EA7-A930-5D980DA51A6A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -657.14283103034722 -480.95236184105119 ;
	setAttr ".tgi[0].vh" -type "double2" 658.33330717351816 480.95236184105119 ;
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 321 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "input_arm_space_decomp.ot" "|L_arm|L_input_arm_grp|L_fit_space.t";
connectAttr "input_arm_space_decomp.or" "|L_arm|L_input_arm_grp|L_fit_space.r";
connectAttr "input_arm_space_decomp.os" "|L_arm|L_input_arm_grp|L_fit_space.s";
connectAttr "input_arm_space_decomp.osh" "|L_arm|L_input_arm_grp|L_fit_space.sh"
		;
connectAttr "|L_arm|L_input_arm_grp|L_fit_space.t" "|L_arm|L_arm_motion_grp|L_init_space.t"
		;
connectAttr "|L_arm|L_input_arm_grp|L_fit_space.r" "|L_arm|L_arm_motion_grp|L_init_space.r"
		;
connectAttr "|L_arm|L_input_arm_grp|L_fit_space.s" "|L_arm|L_arm_motion_grp|L_init_space.s"
		;
connectAttr "decomposeMatrix4.ot" "L_init_shoulder.t";
connectAttr "decomposeMatrix4.or" "L_init_shoulder.r";
connectAttr "decomposeMatrix5.ot" "L_init_elbow.t";
connectAttr "decomposeMatrix5.or" "L_init_elbow.r";
connectAttr "decomposeMatrix5.osh" "L_init_elbow.sh";
connectAttr "decomposeMatrix8.ot" "L_init_wrist.t";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.t" "|L_arm|L_arm_motion_grp|L_motion_ik_grp.t"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.r" "|L_arm|L_arm_motion_grp|L_motion_ik_grp.r"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.s" "|L_arm|L_arm_motion_grp|L_motion_ik_grp.s"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.softik" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value"
		;
connectAttr "ctrlLen.d" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen"
		;
connectAttr "armLen.o1" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.armLen"
		;
connectAttr "ctrllen_condition.ocr" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_output.output_softik"
		;
connectAttr "L_init_shoulder.t" "L_ik_shoulder_space.t";
connectAttr "L_init_shoulder.r" "L_ik_shoulder_space.r";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crx" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.rx"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.cry" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.ry"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crz" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.rz"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_output.output_softik" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc.tx"
		;
connectAttr "stretch_output_mul_ctrlVal.ox" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc.tx"
		;
connectAttr "L_ik_shoulder.msg" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hsj"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder|L_ik_elbow|L_effector4.hp" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hee"
		;
connectAttr "ikRPsolver.msg" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hsv"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.ctx" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pvx"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.cty" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pvy"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.ctz" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pvz"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pim" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.cpim"
		;
connectAttr "L_ik_shoulder.pm" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.ps"
		;
connectAttr "L_ik_shoulder.t" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.crp"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space|L_ik_polevector.t" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space|L_ik_polevector.rp" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space|L_ik_polevector.rpt" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space|L_ik_polevector.pm" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.w0" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.pim" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.cpim"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.t" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.ct"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.rp" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crp"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.rpt" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crt"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim.ro" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.cro"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.t" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].tt"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.rp" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].trp"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.rpt" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].trt"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.pm" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].tpm"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.w0" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].tw"
		;
connectAttr "L_ik_shoulder_space_upVec.wm" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.wum"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.stretchik" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value"
		;
connectAttr "uparmLen.d" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len"
		;
connectAttr "loarmLen.d" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len"
		;
connectAttr "ctrlLen.d" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_output.output_softik" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.softikLen"
		;
connectAttr "uparm_plus_stretch1.o1" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.uparm_stretched"
		;
connectAttr "loarm_plus_stretch1.o1" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.loarm_stretched"
		;
connectAttr "stretchedLen.o1" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.stretched_len"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.stretch_ctrl_value"
		;
connectAttr "decomposeMatrix6.ot" "L_ik_shoulder.t";
connectAttr "decomposeMatrix6.or" "L_ik_shoulder.jo";
connectAttr "L_ik_shoulder.s" "L_ik_elbow.is";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.uparm_stretched" "L_ik_elbow.tx"
		;
connectAttr "L_init_elbow.r" "L_ik_elbow.jo";
connectAttr "L_ik_elbow.s" "L_ik_wrist.is";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.loarm_stretched" "L_ik_wrist.tx"
		;
connectAttr "L_init_wrist.r" "L_ik_wrist.jo";
connectAttr "L_ik_wrist.tx" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder|L_ik_elbow|L_effector4.tx"
		;
connectAttr "L_ik_wrist.ty" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder|L_ik_elbow|L_effector4.ty"
		;
connectAttr "L_ik_wrist.tz" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder|L_ik_elbow|L_effector4.tz"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.t" "|L_arm|L_arm_motion_grp|L_motion_fk_grp.t"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.r" "|L_arm|L_arm_motion_grp|L_motion_fk_grp.r"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.s" "|L_arm|L_arm_motion_grp|L_motion_fk_grp.s"
		;
connectAttr "L_fk_shoulder_ctrl.r" "L_fk_shoulder.r";
connectAttr "decomposeMatrix11.ot" "L_fk_shoulder.t";
connectAttr "decomposeMatrix11.or" "L_fk_shoulder.jo";
connectAttr "L_fk_shoulder.s" "L_fk_elbow.is";
connectAttr "L_init_elbow.t" "L_fk_elbow.t";
connectAttr "L_fk_elbow_ctrl.r" "L_fk_elbow.r";
connectAttr "L_init_elbow.r" "L_fk_elbow.jo";
connectAttr "L_fk_elbow.s" "L_fk_wrist.is";
connectAttr "L_init_wrist.t" "L_fk_wrist.t";
connectAttr "L_fk_wrist_ctrl.r" "L_fk_wrist.r";
connectAttr "L_init_wrist.r" "L_fk_wrist.jo";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.t" "|L_arm|L_output_grp.t";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.r" "|L_arm|L_output_grp.r";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.s" "|L_arm|L_output_grp.s";
connectAttr "ikfk_shoulder_t.op" "L_output_shoulder.t";
connectAttr "unitConversion3.o" "L_output_shoulder.r";
connectAttr "decomposeMatrix6.or" "L_output_shoulder.jo";
connectAttr "L_output_shoulder.s" "L_output_elbow.is";
connectAttr "ikfk_blend_elbow.ot" "L_output_elbow.t";
connectAttr "ikfk_blend_elbow.or" "L_output_elbow.r";
connectAttr "L_init_elbow.r" "L_output_elbow.jo";
connectAttr "L_output_elbow.s" "L_output_wrist.is";
connectAttr "pairBlend1.ot" "L_output_wrist.t";
connectAttr "pairBlend1.or" "L_output_wrist.r";
connectAttr "L_init_wrist.r" "L_output_wrist.jo";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.t" "L_arm_ctrl_grp.t";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.r" "L_arm_ctrl_grp.r";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.s" "L_arm_ctrl_grp.s";
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "L_ik_shoulder_ctrl_space.v"
		;
connectAttr "L_init_shoulder.t" "L_ik_shoulder_ctrl_space.t";
connectAttr "decomposeMatrix10.ot" "L_ik_elbow_polevector_space.t";
connectAttr "decomposeMatrix10.or" "L_ik_elbow_polevector_space.r";
connectAttr "wrist_ik_ctrl_localMat_decomp.ot" "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space.t"
		;
connectAttr "decomposeMatrix9.ot" "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space.t"
		;
connectAttr "reverse1.ox" "L_fk_shoulder_ctrl_space.v";
connectAttr "L_init_shoulder.t" "L_fk_shoulder_ctrl_space.t";
connectAttr "L_init_shoulder.r" "L_fk_shoulder_ctrl_space.r";
connectAttr "L_init_elbow.t" "L_fk_elbow_ctrl_space.t";
connectAttr "L_init_elbow.r" "L_fk_elbow_ctrl_space.r";
connectAttr "L_init_wrist.t" "L_fk_wrist_ctrl_space.t";
connectAttr "L_init_wrist.r" "L_fk_wrist_ctrl_space.r";
connectAttr "input_arm_space_decomp1.ot" "|R_arm|R_input_arm_grp|R_fit_space.t";
connectAttr "input_arm_space_decomp1.or" "|R_arm|R_input_arm_grp|R_fit_space.r";
connectAttr "input_arm_space_decomp1.os" "|R_arm|R_input_arm_grp|R_fit_space.s";
connectAttr "input_arm_space_decomp1.osh" "|R_arm|R_input_arm_grp|R_fit_space.sh"
		;
connectAttr "|R_arm|R_input_arm_grp|R_fit_space.t" "|R_arm|R_arm_motion_grp|R_init_space.t"
		;
connectAttr "|R_arm|R_input_arm_grp|R_fit_space.r" "|R_arm|R_arm_motion_grp|R_init_space.r"
		;
connectAttr "|R_arm|R_input_arm_grp|R_fit_space.s" "|R_arm|R_arm_motion_grp|R_init_space.s"
		;
connectAttr "decomposeMatrix15.ot" "R_init_shoulder.t";
connectAttr "decomposeMatrix15.or" "R_init_shoulder.r";
connectAttr "decomposeMatrix16.ot" "R_init_elbow.t";
connectAttr "decomposeMatrix16.or" "R_init_elbow.r";
connectAttr "decomposeMatrix16.osh" "R_init_elbow.sh";
connectAttr "decomposeMatrix19.ot" "R_init_wrist.t";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.t" "|R_arm|R_arm_motion_grp|R_motion_ik_grp.t"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.r" "|R_arm|R_arm_motion_grp|R_motion_ik_grp.r"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.s" "|R_arm|R_arm_motion_grp|R_motion_ik_grp.s"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.softik" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value"
		;
connectAttr "ctrlLen1.d" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen"
		;
connectAttr "armLen2.o1" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.armLen"
		;
connectAttr "ctrllen_condition1.ocr" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_output.output_softik"
		;
connectAttr "R_init_shoulder.t" "R_ik_shoulder_space.t";
connectAttr "R_init_shoulder.r" "R_ik_shoulder_space.r";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crx" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.rx"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.cry" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.ry"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crz" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.rz"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_output.output_softik" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc.tx"
		;
connectAttr "stretch_output_mul_ctrlVal1.ox" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc.tx"
		;
connectAttr "R_ik_shoulder.msg" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.hsj"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder|R_ik_elbow|R_effector4.hp" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.hee"
		;
connectAttr "ikRPsolver1.msg" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.hsv"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.ctx" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pvx"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.cty" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pvy"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.ctz" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pvz"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pim" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.cpim"
		;
connectAttr "R_ik_shoulder.pm" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.ps"
		;
connectAttr "R_ik_shoulder.t" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.crp"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space|R_ik_polevector.t" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space|R_ik_polevector.rp" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space|R_ik_polevector.rpt" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space|R_ik_polevector.pm" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.w0" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.pim" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.cpim"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.t" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.ct"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.rp" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crp"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.rpt" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crt"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim.ro" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.cro"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.t" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].tt"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.rp" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].trp"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.rpt" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].trt"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.pm" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].tpm"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.w0" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].tw"
		;
connectAttr "R_ik_shoulder_space_upVec.wm" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.wum"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.stretchik" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value"
		;
connectAttr "uparmLen1.d" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len"
		;
connectAttr "loarmLen1.d" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len"
		;
connectAttr "ctrlLen1.d" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_output.output_softik" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.softikLen"
		;
connectAttr "uparm_plus_stretch2.o1" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.uparm_stretched"
		;
connectAttr "loarm_plus_stretch2.o1" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.loarm_stretched"
		;
connectAttr "stretchedLen1.o1" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.stretched_len"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.stretch_ctrl_value"
		;
connectAttr "decomposeMatrix17.ot" "R_ik_shoulder.t";
connectAttr "decomposeMatrix17.or" "R_ik_shoulder.jo";
connectAttr "R_ik_shoulder.s" "R_ik_elbow.is";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.uparm_stretched" "R_ik_elbow.tx"
		;
connectAttr "R_init_elbow.r" "R_ik_elbow.jo";
connectAttr "R_ik_elbow.s" "R_ik_wrist.is";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.loarm_stretched" "R_ik_wrist.tx"
		;
connectAttr "R_init_wrist.r" "R_ik_wrist.jo";
connectAttr "R_ik_wrist.tx" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder|R_ik_elbow|R_effector4.tx"
		;
connectAttr "R_ik_wrist.ty" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder|R_ik_elbow|R_effector4.ty"
		;
connectAttr "R_ik_wrist.tz" "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder|R_ik_elbow|R_effector4.tz"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.t" "|R_arm|R_arm_motion_grp|R_motion_fk_grp.t"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.r" "|R_arm|R_arm_motion_grp|R_motion_fk_grp.r"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.s" "|R_arm|R_arm_motion_grp|R_motion_fk_grp.s"
		;
connectAttr "R_fk_shoulder_ctrl.r" "R_fk_shoulder.r";
connectAttr "decomposeMatrix22.ot" "R_fk_shoulder.t";
connectAttr "decomposeMatrix22.or" "R_fk_shoulder.jo";
connectAttr "R_fk_shoulder.s" "R_fk_elbow.is";
connectAttr "R_init_elbow.t" "R_fk_elbow.t";
connectAttr "R_fk_elbow_ctrl.r" "R_fk_elbow.r";
connectAttr "R_init_elbow.r" "R_fk_elbow.jo";
connectAttr "R_fk_elbow.s" "R_fk_wrist.is";
connectAttr "R_init_wrist.t" "R_fk_wrist.t";
connectAttr "R_fk_wrist_ctrl.r" "R_fk_wrist.r";
connectAttr "R_init_wrist.r" "R_fk_wrist.jo";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.t" "|R_arm|R_output_grp.t";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.r" "|R_arm|R_output_grp.r";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.s" "|R_arm|R_output_grp.s";
connectAttr "ikfk_shoulder_t1.op" "R_output_shoulder.t";
connectAttr "unitConversion6.o" "R_output_shoulder.r";
connectAttr "decomposeMatrix17.or" "R_output_shoulder.jo";
connectAttr "R_output_shoulder.s" "R_output_elbow.is";
connectAttr "ikfk_blend_elbow1.ot" "R_output_elbow.t";
connectAttr "ikfk_blend_elbow1.or" "R_output_elbow.r";
connectAttr "R_init_elbow.r" "R_output_elbow.jo";
connectAttr "R_output_elbow.s" "R_output_wrist.is";
connectAttr "pairBlend2.ot" "R_output_wrist.t";
connectAttr "pairBlend2.or" "R_output_wrist.r";
connectAttr "R_init_wrist.r" "R_output_wrist.jo";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.t" "R_arm_ctrl_grp.t";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.r" "R_arm_ctrl_grp.r";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.s" "R_arm_ctrl_grp.s";
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "R_ik_shoulder_ctrl_space.v"
		;
connectAttr "R_init_shoulder.t" "R_ik_shoulder_ctrl_space.t";
connectAttr "decomposeMatrix21.ot" "R_ik_elbow_polevector_space.t";
connectAttr "decomposeMatrix21.or" "R_ik_elbow_polevector_space.r";
connectAttr "wrist_ik_ctrl_localMat_decomp1.ot" "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space.t"
		;
connectAttr "decomposeMatrix20.ot" "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space.t"
		;
connectAttr "reverse2.ox" "R_fk_shoulder_ctrl_space.v";
connectAttr "R_init_shoulder.t" "R_fk_shoulder_ctrl_space.t";
connectAttr "R_init_shoulder.r" "R_fk_shoulder_ctrl_space.r";
connectAttr "R_init_elbow.t" "R_fk_elbow_ctrl_space.t";
connectAttr "R_init_elbow.r" "R_fk_elbow_ctrl_space.r";
connectAttr "R_init_wrist.t" "R_fk_wrist_ctrl_space.t";
connectAttr "R_init_wrist.r" "R_fk_wrist_ctrl_space.r";
connectAttr "input_arm_space_decomp2.ot" "|L_leg|L_input_leg_grp|L_fit_space.t";
connectAttr "input_arm_space_decomp2.or" "|L_leg|L_input_leg_grp|L_fit_space.r";
connectAttr "input_arm_space_decomp2.os" "|L_leg|L_input_leg_grp|L_fit_space.s";
connectAttr "input_arm_space_decomp2.osh" "|L_leg|L_input_leg_grp|L_fit_space.sh"
		;
connectAttr "|L_leg|L_input_leg_grp|L_fit_space.t" "|L_leg|L_leg_motion_grp|L_init_space.t"
		;
connectAttr "|L_leg|L_input_leg_grp|L_fit_space.r" "|L_leg|L_leg_motion_grp|L_init_space.r"
		;
connectAttr "|L_leg|L_input_leg_grp|L_fit_space.s" "|L_leg|L_leg_motion_grp|L_init_space.s"
		;
connectAttr "decomposeMatrix26.ot" "L_init_thigh.t";
connectAttr "decomposeMatrix26.or" "L_init_thigh.r";
connectAttr "decomposeMatrix27.ot" "L_init_knee.t";
connectAttr "decomposeMatrix27.or" "L_init_knee.r";
connectAttr "decomposeMatrix27.osh" "L_init_knee.sh";
connectAttr "decomposeMatrix30.ot" "L_init_ankle.t";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.t" "|L_leg|L_leg_motion_grp|L_motion_ik_grp.t"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.r" "|L_leg|L_leg_motion_grp|L_motion_ik_grp.r"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.s" "|L_leg|L_leg_motion_grp|L_motion_ik_grp.s"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.softik" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value"
		;
connectAttr "ctrlLen2.d" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen"
		;
connectAttr "armLen4.o1" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.armLen"
		;
connectAttr "ctrllen_condition2.ocr" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_output.output_softik"
		;
connectAttr "L_init_thigh.t" "L_ik_thigh_space.t";
connectAttr "L_init_thigh.r" "L_ik_thigh_space.r";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crx" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.rx"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.cry" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.ry"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crz" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.rz"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_output.output_softik" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc.tx"
		;
connectAttr "stretch_output_mul_ctrlVal2.ox" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc.tx"
		;
connectAttr "L_ik_thigh.msg" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hsj"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh|L_ik_knee|L_effector4.hp" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hee"
		;
connectAttr "ikRPsolver2.msg" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hsv"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.ctx" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pvx"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.cty" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pvy"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.ctz" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pvz"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.pim" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.cpim"
		;
connectAttr "L_ik_thigh.pm" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.ps"
		;
connectAttr "L_ik_thigh.t" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.crp"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space|L_ik_polevector.t" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space|L_ik_polevector.rp" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space|L_ik_polevector.rpt" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space|L_ik_polevector.pm" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.w0" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4|L_ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.pim" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.cpim"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.t" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.ct"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.rp" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crp"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.rpt" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.crt"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim.ro" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.cro"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.t" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].tt"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.rp" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].trp"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.rpt" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].trt"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.pm" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].tpm"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.w0" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.tg[0].tw"
		;
connectAttr "L_ik_thigh_space_upVec.wm" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_ik_ctrlaim_aimConstraint1.wum"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.stretchik" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value"
		;
connectAttr "uparmLen2.d" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len"
		;
connectAttr "loarmLen2.d" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len"
		;
connectAttr "ctrlLen2.d" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_output.output_softik" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.softikLen"
		;
connectAttr "uparm_plus_stretch3.o1" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.uparm_stretched"
		;
connectAttr "loarm_plus_stretch3.o1" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.loarm_stretched"
		;
connectAttr "stretchedLen2.o1" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.stretched_len"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.stretch_ctrl_value"
		;
connectAttr "decomposeMatrix28.ot" "L_ik_thigh.t";
connectAttr "decomposeMatrix28.or" "L_ik_thigh.jo";
connectAttr "L_ik_thigh.s" "L_ik_knee.is";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.uparm_stretched" "L_ik_knee.tx"
		;
connectAttr "L_init_knee.r" "L_ik_knee.jo";
connectAttr "L_ik_knee.s" "L_ik_ankle.is";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.loarm_stretched" "L_ik_ankle.tx"
		;
connectAttr "L_init_ankle.r" "L_ik_ankle.jo";
connectAttr "L_ik_ankle.tx" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh|L_ik_knee|L_effector4.tx"
		;
connectAttr "L_ik_ankle.ty" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh|L_ik_knee|L_effector4.ty"
		;
connectAttr "L_ik_ankle.tz" "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh|L_ik_knee|L_effector4.tz"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.t" "|L_leg|L_leg_motion_grp|L_motion_fk_grp.t"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.r" "|L_leg|L_leg_motion_grp|L_motion_fk_grp.r"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.s" "|L_leg|L_leg_motion_grp|L_motion_fk_grp.s"
		;
connectAttr "L_fk_thigh_ctrl.r" "L_fk_thigh.r";
connectAttr "decomposeMatrix33.ot" "L_fk_thigh.t";
connectAttr "decomposeMatrix33.or" "L_fk_thigh.jo";
connectAttr "L_fk_thigh.s" "L_fk_knee.is";
connectAttr "L_init_knee.t" "L_fk_knee.t";
connectAttr "L_fk_knee_ctrl.r" "L_fk_knee.r";
connectAttr "L_init_knee.r" "L_fk_knee.jo";
connectAttr "L_fk_knee.s" "L_fk_ankle.is";
connectAttr "L_init_ankle.t" "L_fk_ankle.t";
connectAttr "L_fk_ankle_ctrl.r" "L_fk_ankle.r";
connectAttr "L_init_ankle.r" "L_fk_ankle.jo";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.t" "|L_leg|L_output_grp.t";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.r" "|L_leg|L_output_grp.r";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.s" "|L_leg|L_output_grp.s";
connectAttr "ikfk_shoulder_t2.op" "L_output_thigh.t";
connectAttr "unitConversion9.o" "L_output_thigh.r";
connectAttr "decomposeMatrix28.or" "L_output_thigh.jo";
connectAttr "L_output_thigh.s" "L_output_knee.is";
connectAttr "ikfk_blend_elbow2.ot" "L_output_knee.t";
connectAttr "ikfk_blend_elbow2.or" "L_output_knee.r";
connectAttr "L_init_knee.r" "L_output_knee.jo";
connectAttr "L_output_knee.s" "L_output_ankle.is";
connectAttr "pairBlend3.ot" "L_output_ankle.t";
connectAttr "pairBlend3.or" "L_output_ankle.r";
connectAttr "L_init_ankle.r" "L_output_ankle.jo";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.t" "L_leg_ctrl_grp.t";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.r" "L_leg_ctrl_grp.r";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.s" "L_leg_ctrl_grp.s";
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "L_ik_thigh_ctrl_space.v"
		;
connectAttr "L_init_thigh.t" "L_ik_thigh_ctrl_space.t";
connectAttr "decomposeMatrix32.ot" "L_ik_knee_polevector_space.t";
connectAttr "decomposeMatrix32.or" "L_ik_knee_polevector_space.r";
connectAttr "wrist_ik_ctrl_localMat_decomp2.ot" "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space.t"
		;
connectAttr "decomposeMatrix31.ot" "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space.t"
		;
connectAttr "reverse3.ox" "L_fk_thigh_ctrl_space.v";
connectAttr "L_init_thigh.t" "L_fk_thigh_ctrl_space.t";
connectAttr "L_init_thigh.r" "L_fk_thigh_ctrl_space.r";
connectAttr "L_init_knee.t" "L_fk_knee_ctrl_space.t";
connectAttr "L_init_knee.r" "L_fk_knee_ctrl_space.r";
connectAttr "L_init_ankle.t" "L_fk_ankle_ctrl_space.t";
connectAttr "L_init_ankle.r" "L_fk_ankle_ctrl_space.r";
connectAttr "input_arm_space_decomp3.ot" "|R_leg|R_input_leg_grp|R_fit_space.t";
connectAttr "input_arm_space_decomp3.or" "|R_leg|R_input_leg_grp|R_fit_space.r";
connectAttr "input_arm_space_decomp3.os" "|R_leg|R_input_leg_grp|R_fit_space.s";
connectAttr "input_arm_space_decomp3.osh" "|R_leg|R_input_leg_grp|R_fit_space.sh"
		;
connectAttr "|R_leg|R_input_leg_grp|R_fit_space.t" "|R_leg|R_leg_motion_grp|R_init_space.t"
		;
connectAttr "|R_leg|R_input_leg_grp|R_fit_space.r" "|R_leg|R_leg_motion_grp|R_init_space.r"
		;
connectAttr "|R_leg|R_input_leg_grp|R_fit_space.s" "|R_leg|R_leg_motion_grp|R_init_space.s"
		;
connectAttr "decomposeMatrix37.ot" "R_init_thigh.t";
connectAttr "decomposeMatrix37.or" "R_init_thigh.r";
connectAttr "decomposeMatrix38.ot" "R_init_knee.t";
connectAttr "decomposeMatrix38.or" "R_init_knee.r";
connectAttr "decomposeMatrix38.osh" "R_init_knee.sh";
connectAttr "decomposeMatrix41.ot" "R_init_ankle.t";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.t" "|R_leg|R_leg_motion_grp|R_motion_ik_grp.t"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.r" "|R_leg|R_leg_motion_grp|R_motion_ik_grp.r"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.s" "|R_leg|R_leg_motion_grp|R_motion_ik_grp.s"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.softik" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value"
		;
connectAttr "ctrlLen3.d" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen"
		;
connectAttr "armLen6.o1" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.armLen"
		;
connectAttr "ctrllen_condition3.ocr" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_output.output_softik"
		;
connectAttr "R_init_thigh.t" "R_ik_thigh_space.t";
connectAttr "R_init_thigh.r" "R_ik_thigh_space.r";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crx" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.rx"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.cry" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.ry"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crz" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.rz"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_output.output_softik" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc.tx"
		;
connectAttr "stretch_output_mul_ctrlVal3.ox" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc.tx"
		;
connectAttr "R_ik_thigh.msg" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.hsj"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh|R_ik_knee|R_effector4.hp" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.hee"
		;
connectAttr "ikRPsolver3.msg" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.hsv"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.ctx" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pvx"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.cty" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pvy"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.ctz" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pvz"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4.pim" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.cpim"
		;
connectAttr "R_ik_thigh.pm" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.ps"
		;
connectAttr "R_ik_thigh.t" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.crp"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space|R_ik_polevector.t" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space|R_ik_polevector.rp" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space|R_ik_polevector.rpt" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space|R_ik_polevector.pm" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.w0" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4|R_ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.pim" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.cpim"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.t" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.ct"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.rp" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crp"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.rpt" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.crt"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim.ro" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.cro"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.t" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].tt"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.rp" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].trp"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.rpt" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].trt"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.pm" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].tpm"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.w0" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.tg[0].tw"
		;
connectAttr "R_ik_thigh_space_upVec.wm" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_ik_ctrlaim_aimConstraint1.wum"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.stretchik" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value"
		;
connectAttr "uparmLen3.d" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len"
		;
connectAttr "loarmLen3.d" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len"
		;
connectAttr "ctrlLen3.d" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_output.output_softik" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.softikLen"
		;
connectAttr "uparm_plus_stretch4.o1" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.uparm_stretched"
		;
connectAttr "loarm_plus_stretch4.o1" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.loarm_stretched"
		;
connectAttr "stretchedLen3.o1" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.stretched_len"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.stretch_ctrl_value"
		;
connectAttr "decomposeMatrix39.ot" "R_ik_thigh.t";
connectAttr "decomposeMatrix39.or" "R_ik_thigh.jo";
connectAttr "R_ik_thigh.s" "R_ik_knee.is";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.uparm_stretched" "R_ik_knee.tx"
		;
connectAttr "R_init_knee.r" "R_ik_knee.jo";
connectAttr "R_ik_knee.s" "R_ik_ankle.is";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.loarm_stretched" "R_ik_ankle.tx"
		;
connectAttr "R_init_ankle.r" "R_ik_ankle.jo";
connectAttr "R_ik_ankle.tx" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh|R_ik_knee|R_effector4.tx"
		;
connectAttr "R_ik_ankle.ty" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh|R_ik_knee|R_effector4.ty"
		;
connectAttr "R_ik_ankle.tz" "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh|R_ik_knee|R_effector4.tz"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.t" "|R_leg|R_leg_motion_grp|R_motion_fk_grp.t"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.r" "|R_leg|R_leg_motion_grp|R_motion_fk_grp.r"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.s" "|R_leg|R_leg_motion_grp|R_motion_fk_grp.s"
		;
connectAttr "R_fk_thigh_ctrl.r" "R_fk_thigh.r";
connectAttr "decomposeMatrix44.ot" "R_fk_thigh.t";
connectAttr "decomposeMatrix44.or" "R_fk_thigh.jo";
connectAttr "R_fk_thigh.s" "R_fk_knee.is";
connectAttr "R_init_knee.t" "R_fk_knee.t";
connectAttr "R_fk_knee_ctrl.r" "R_fk_knee.r";
connectAttr "R_init_knee.r" "R_fk_knee.jo";
connectAttr "R_fk_knee.s" "R_fk_ankle.is";
connectAttr "R_init_ankle.t" "R_fk_ankle.t";
connectAttr "R_fk_ankle_ctrl.r" "R_fk_ankle.r";
connectAttr "R_init_ankle.r" "R_fk_ankle.jo";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.t" "|R_leg|R_output_grp.t";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.r" "|R_leg|R_output_grp.r";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.s" "|R_leg|R_output_grp.s";
connectAttr "ikfk_shoulder_t3.op" "R_output_thigh.t";
connectAttr "unitConversion12.o" "R_output_thigh.r";
connectAttr "decomposeMatrix39.or" "R_output_thigh.jo";
connectAttr "R_output_thigh.s" "R_output_knee.is";
connectAttr "ikfk_blend_elbow3.ot" "R_output_knee.t";
connectAttr "ikfk_blend_elbow3.or" "R_output_knee.r";
connectAttr "R_init_knee.r" "R_output_knee.jo";
connectAttr "R_output_knee.s" "R_output_ankle.is";
connectAttr "pairBlend4.ot" "R_output_ankle.t";
connectAttr "pairBlend4.or" "R_output_ankle.r";
connectAttr "R_init_ankle.r" "R_output_ankle.jo";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.t" "R_leg_ctrl_grp.t";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.r" "R_leg_ctrl_grp.r";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.s" "R_leg_ctrl_grp.s";
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "R_ik_thigh_ctrl_space.v"
		;
connectAttr "R_init_thigh.t" "R_ik_thigh_ctrl_space.t";
connectAttr "decomposeMatrix43.ot" "R_ik_knee_polevector_space.t";
connectAttr "decomposeMatrix43.or" "R_ik_knee_polevector_space.r";
connectAttr "wrist_ik_ctrl_localMat_decomp3.ot" "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space.t"
		;
connectAttr "decomposeMatrix42.ot" "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space.t"
		;
connectAttr "reverse4.ox" "R_fk_thigh_ctrl_space.v";
connectAttr "R_init_thigh.t" "R_fk_thigh_ctrl_space.t";
connectAttr "R_init_thigh.r" "R_fk_thigh_ctrl_space.r";
connectAttr "R_init_knee.t" "R_fk_knee_ctrl_space.t";
connectAttr "R_init_knee.r" "R_fk_knee_ctrl_space.r";
connectAttr "R_init_ankle.t" "R_fk_ankle_ctrl_space.t";
connectAttr "R_init_ankle.r" "R_fk_ankle_ctrl_space.r";
connectAttr "M_spine_CTL.fit_vis" "input_space.v";
connectAttr "fit_DMTX.ot" "fit_space.t";
connectAttr "fit_DMTX.or" "fit_space.r";
connectAttr "fit_DMTX.os" "fit_space.s";
connectAttr "fit_spine_CTL_control_DMTX.ot" "bezierShape1.cp[0]";
connectAttr "fit_spine_sub_000_CTL_control_DMTX.ot" "bezierShape1.cp[1]";
connectAttr "fit_chest_sub_001_CTL_control_DMTX.ot" "bezierShape1.cp[2]";
connectAttr "fit_chest_CTL_control_DMTX.ot" "bezierShape1.cp[3]";
connectAttr "ctl_DMTX.ot" "ik_ctl_space.t";
connectAttr "ctl_DMTX.or" "ik_ctl_space.r";
connectAttr "ctl_DMTX.os" "ik_ctl_space.s";
connectAttr "M_spine_CTL_localMat_DMTX.ot" "M_spine_OS.t";
connectAttr "M_spine_CTL.sub_ctl_vis" "spine_OS.v";
connectAttr "fit_spine_sub_000.t" "spine_sub_000_OS.t";
connectAttr "M_spine_CTL.sub_ctl_vis" "spine_sub_000_OS.v";
connectAttr "makeNurbCircle1.oc" "FK_hip_CTLShape.cr";
connectAttr "M_chest_CTL_localMat_DMTX.ot" "M_chest_OS.t";
connectAttr "fit_chest_sub_001.t" "chest_sub_001_OS.t";
connectAttr "M_spine_CTL.sub_ctl_vis" "chest_sub_001_OS.v";
connectAttr "M_spine_CTL.sub_ctl_vis" "chest_OS.v";
connectAttr "twist_spine_poci.p" "twist_spine_OS.t";
connectAttr "M_spine_CTL_rotMat_DMTX.or" "twist_spine_OS.r";
connectAttr "ctl_DMTX.os" "twist_spine_OS.s";
connectAttr "twist_chest_poci.p" "twist_chest_OS.t";
connectAttr "M_chest_CTL_rotMat_DMTX.or" "twist_chest_OS.r";
connectAttr "ctl_DMTX.os" "twist_chest_OS.s";
connectAttr "spineA_poci.p" "init_spineA_space.t";
connectAttr "init_spineA_space_aimConstraint1.crx" "init_spineA_space.rx";
connectAttr "init_spineA_space_aimConstraint1.cry" "init_spineA_space.ry";
connectAttr "init_spineA_space_aimConstraint1.crz" "init_spineA_space.rz";
connectAttr "unitConversion13.o" "twist_spineA_space.ry";
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
connectAttr "fk_init_upVec_CTL.wm" "init_spineA_space_aimConstraint1.wum";
connectAttr "spineB_poci.p" "init_spineB_space.t";
connectAttr "init_spineB_space_aimConstraint1.crx" "init_spineB_space.rx";
connectAttr "init_spineB_space_aimConstraint1.cry" "init_spineB_space.ry";
connectAttr "init_spineB_space_aimConstraint1.crz" "init_spineB_space.rz";
connectAttr "unitConversion14.o" "twist_spineB_space.ry";
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
connectAttr "fk_init_upVec_CTL.wm" "init_spineB_space_aimConstraint1.wum";
connectAttr "spineC_poci.p" "init_spineC_space.t";
connectAttr "init_spineC_space_aimConstraint1.crx" "init_spineC_space.rx";
connectAttr "init_spineC_space_aimConstraint1.cry" "init_spineC_space.ry";
connectAttr "init_spineC_space_aimConstraint1.crz" "init_spineC_space.rz";
connectAttr "unitConversion15.o" "twist_spineC_space.ry";
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
connectAttr "fk_init_upVec_CTL.wm" "init_spineC_space_aimConstraint1.wum";
connectAttr "spineD_poci.p" "init_spineD_space.t";
connectAttr "init_spineD_space_aimConstraint1.crx" "init_spineD_space.rx";
connectAttr "init_spineD_space_aimConstraint1.cry" "init_spineD_space.ry";
connectAttr "init_spineD_space_aimConstraint1.crz" "init_spineD_space.rz";
connectAttr "unitConversion16.o" "twist_spineD_space.ry";
connectAttr "init_spineD_space.pim" "init_spineD_space_aimConstraint1.cpim";
connectAttr "init_spineD_space.t" "init_spineD_space_aimConstraint1.ct";
connectAttr "init_spineD_space.rp" "init_spineD_space_aimConstraint1.crp";
connectAttr "init_spineD_space.rpt" "init_spineD_space_aimConstraint1.crt";
connectAttr "init_spineD_space.ro" "init_spineD_space_aimConstraint1.cro";
connectAttr "output_chest_end_space.t" "init_spineD_space_aimConstraint1.tg[0].tt"
		;
connectAttr "output_chest_end_space.rp" "init_spineD_space_aimConstraint1.tg[0].trp"
		;
connectAttr "output_chest_end_space.rpt" "init_spineD_space_aimConstraint1.tg[0].trt"
		;
connectAttr "output_chest_end_space.pm" "init_spineD_space_aimConstraint1.tg[0].tpm"
		;
connectAttr "init_spineD_space_aimConstraint1.w0" "init_spineD_space_aimConstraint1.tg[0].tw"
		;
connectAttr "fk_init_upVec_CTL.wm" "init_spineD_space_aimConstraint1.wum";
connectAttr "chest_poci.p" "init_chest_space.t";
connectAttr "init_chest_space_aimConstraint1.crx" "init_chest_space.rx";
connectAttr "init_chest_space_aimConstraint1.cry" "init_chest_space.ry";
connectAttr "init_chest_space_aimConstraint1.crz" "init_chest_space.rz";
connectAttr "unitConversion17.o" "twist_chest_space.ry";
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
connectAttr "fk_init_upVec_CTL.wm" "init_chest_space_aimConstraint1.wum";
connectAttr "chest_poci.p" "output_chest_end_space.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.ot" "FK_spineA_local_init_space.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.or" "FK_spineA_local_init_space.r";
connectAttr "fk_spineB_scaleSpaceMat_DMTX.ot" "FK_spineB_local_init_space.t";
connectAttr "fk_spineB_scaleSpaceMat_DMTX.or" "FK_spineB_local_init_space.r";
connectAttr "fk_spineC_scaleSpaceMat_DMTX.ot" "FK_spineC_local_init_space.t";
connectAttr "fk_spineC_scaleSpaceMat_DMTX.or" "FK_spineC_local_init_space.r";
connectAttr "fk_spineD_scaleSpaceMat_DMTX.ot" "FK_spineD_local_init_space.t";
connectAttr "fk_spineD_scaleSpaceMat_DMTX.or" "FK_spineD_local_init_space.r";
connectAttr "fk_chest_scaleSpaceMat_DMTX.ot" "FK_chest_local_init_space.t";
connectAttr "fk_chest_scaleSpaceMat_DMTX.or" "FK_chest_local_init_space.r";
connectAttr "fk_joint_DMTX.ot" "fk_joint_space.t";
connectAttr "fk_joint_DMTX.or" "fk_joint_space.r";
connectAttr "fk_joint_DMTX.os" "fk_joint_space.s";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.ot" "FK_spineA_JNT_space.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.or" "FK_spineA_JNT_space.r";
connectAttr "decomposeMatrix45.or" "FK_spineA_hip_space.r";
connectAttr "FK_spineA_CTL_CTL.r" "FK_spineA_JNT.r";
connectAttr "FK_spineA_JNT.r" "FK_spineA_JNT_cntGRP.r";
connectAttr "fk_spineB_localMat_DMTX.ot" "FK_spineB_JNT_space.t";
connectAttr "fk_spineB_localMat_DMTX.or" "FK_spineB_JNT_space.r";
connectAttr "FK_spineB_CTL_CTL.r" "FK_spineB_JNT.r";
connectAttr "fk_spineC_localMat_DMTX.ot" "FK_spineC_JNT_space.t";
connectAttr "fk_spineC_localMat_DMTX.or" "FK_spineC_JNT_space.r";
connectAttr "FK_spineC_CTL_CTL.r" "FK_spineC_JNT.r";
connectAttr "fk_spineD_localMat_DMTX.ot" "FK_spineD_JNT_space.t";
connectAttr "fk_spineD_localMat_DMTX.or" "FK_spineD_JNT_space.r";
connectAttr "FK_spineD_CTL_CTL.r" "FK_spineD_JNT.r";
connectAttr "fk_chest_localMat_DMTX.ot" "FK_chest_JNT_space.t";
connectAttr "fk_chest_localMat_DMTX.or" "FK_chest_JNT_space.r";
connectAttr "FK_chest_CTL_CTL.r" "FK_chest_JNT.r";
connectAttr "FK_hip_CTL.r" "FK_hip_space.r";
connectAttr "fk_control_DMTX.ot" "fk_ctl_space.t";
connectAttr "fk_control_DMTX.or" "fk_ctl_space.r";
connectAttr "fk_control_DMTX.os" "fk_ctl_space.s";
connectAttr "M_spine_CTL.fk_vis" "fk_ctl_space.v";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.ot" "FK_spineA_CTL_OS.t";
connectAttr "fk_spineA_scaleSpaceMat_DMTX.or" "FK_spineA_CTL_OS.r";
connectAttr "fk_spineB_localMat_DMTX.ot" "FK_spineB_CTL_OS.t";
connectAttr "fk_spineB_localMat_DMTX.or" "FK_spineB_CTL_OS.r";
connectAttr "fk_spineC_localMat_DMTX.ot" "FK_spineC_CTL_OS.t";
connectAttr "fk_spineC_localMat_DMTX.or" "FK_spineC_CTL_OS.r";
connectAttr "fk_spineD_localMat_DMTX.ot" "FK_spineD_CTL_OS.t";
connectAttr "fk_spineD_localMat_DMTX.or" "FK_spineD_CTL_OS.r";
connectAttr "fk_chest_localMat_DMTX.ot" "FK_chest_CTL_OS.t";
connectAttr "fk_chest_localMat_DMTX.or" "FK_chest_CTL_OS.r";
connectAttr "FK_spineC_JNT_DMTX.ot" "end_plug_space.t";
connectAttr "FK_spineC_JNT_DMTX.or" "end_plug_space.r";
connectAttr "FK_chest_JNT_DCMX.ot" "chest_space.t";
connectAttr "FK_chest_JNT_DCMX.or" "chest_space.r";
connectAttr "FK_chest_JNT_DCMX.os" "chest_space.s";
connectAttr "FK_spineA_JNT_DCMX.ot" "root_space.t";
connectAttr "FK_spineA_JNT_DCMX.or" "root_space.r";
connectAttr "FK_spineA_JNT_DCMX.os" "root_space.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "ctrlLen_minus_dif.o1" "divide_softikV.i1x";
connectAttr "conditionfor_zerodivide.ocr" "divide_softikV.i2x";
connectAttr "divide_softikV.ox" "negate_val.i1x";
connectAttr "negate_val.ox" "power_val.i2x";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "mult_softikV.i1x"
		;
connectAttr "power_val.ox" "mult_softikV.i2x";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.armLen" "result_softik_len.i1[0]"
		;
connectAttr "mult_softikV.ox" "result_softik_len.i1[1]";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "softikV_condition.ft"
		;
connectAttr "result_softik_len.o1" "softikV_condition.ctr";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.armLen" "softikV_condition.cfr"
		;
connectAttr "softikV_condition.ocr" "ctrllen_condition.ctr";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen" "ctrllen_condition.ft"
		;
connectAttr "armlen_minus_softikV.o1" "ctrllen_condition.st";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen" "ctrllen_condition.cfr"
		;
connectAttr "init_shoulder_local.o" "uparmLen.im1";
connectAttr "init_elbow_local.o" "uparmLen.im2";
connectAttr "init_elbow_local.o" "loarmLen.im1";
connectAttr "init_wrist_local.o" "loarmLen.im2";
connectAttr "uparmLen.d" "armLen.i1[0]";
connectAttr "loarmLen.d" "armLen.i1[1]";
connectAttr "multMatrix5.o" "ctrlLen.im1";
connectAttr "ik_ctrl_local.o" "ctrlLen.im2";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.armLen" "armlen_minus_softikV.i1[0]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "armlen_minus_softikV.i1[1]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen" "ctrlLen_minus_dif.i1[0]"
		;
connectAttr "armlen_minus_softikV.o1" "ctrlLen_minus_dif.i1[1]";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "conditionfor_zerodivide.ft"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "conditionfor_zerodivide.cfr"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "uparm_ratio.i1x"
		;
connectAttr "armLen1.o1" "uparm_ratio.i2x";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "armLen1.i1[0]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "armLen1.i1[1]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "loarm_ratio3.i1x"
		;
connectAttr "armLen1.o1" "loarm_ratio3.i2x";
connectAttr "stretchedLen.o1" "stretched_uparmLen.i1x";
connectAttr "uparm_ratio.ox" "stretched_uparmLen.i2x";
connectAttr "stretched_uparmLen.ox" "stretchCtrl_uparm.i1x";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value" "stretchCtrl_uparm.i2x"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "uparm_plus_stretch1.i1[0]"
		;
connectAttr "stretchCtrl_uparm.ox" "uparm_plus_stretch1.i1[1]";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen" "cond_uparm.ft"
		;
connectAttr "armLen1.o1" "cond_uparm.st";
connectAttr "uparm_plus_stretch1.o1" "cond_uparm.ctr";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "cond_uparm.cfr"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen" "cond_loarm.ft"
		;
connectAttr "armLen1.o1" "cond_loarm.st";
connectAttr "loarm_plus_stretch1.o1" "cond_loarm.ctr";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "cond_loarm.cfr"
		;
connectAttr "stretchedLen.o1" "stretched_loarmLen.i1x";
connectAttr "loarm_ratio3.ox" "stretched_loarmLen.i2x";
connectAttr "stretched_loarmLen.ox" "stretchCtrl_loarm.i1x";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value" "stretchCtrl_loarm.i2x"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "loarm_plus_stretch1.i1[0]"
		;
connectAttr "stretchCtrl_loarm.ox" "loarm_plus_stretch1.i1[1]";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen" "stretchedLen.i1[0]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_input.softikLen" "stretchedLen.i1[1]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.stretched_len" "stretch_output_mul_ctrlVal.i1x"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal.i2x"
		;
connectAttr "L_ik_shoulder.t" "ikfk_shoulder_t.c1";
connectAttr "L_fk_shoulder.t" "ikfk_shoulder_t.c2";
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_t.b"
		;
connectAttr "unitConversion1.o" "ikfk_shoulder_r.c1";
connectAttr "unitConversion2.o" "ikfk_shoulder_r.c2";
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_r.b"
		;
connectAttr "L_ik_shoulder.r" "unitConversion1.i";
connectAttr "L_fk_shoulder.r" "unitConversion2.i";
connectAttr "ikfk_shoulder_r.op" "unitConversion3.i";
connectAttr "L_ik_elbow.r" "ikfk_blend_elbow.ir2";
connectAttr "L_fk_elbow.r" "ikfk_blend_elbow.ir1";
connectAttr "L_fk_elbow.t" "ikfk_blend_elbow.it1";
connectAttr "L_ik_elbow.t" "ikfk_blend_elbow.it2";
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_blend_elbow.w"
		;
connectAttr "L_ik_wrist.t" "pairBlend1.it2";
connectAttr "L_ik_wrist.r" "pairBlend1.ir2";
connectAttr "L_fk_wrist.t" "pairBlend1.it1";
connectAttr "L_fk_wrist.r" "pairBlend1.ir1";
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "pairBlend1.w"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "reverse1.ix"
		;
connectAttr "L_fit_shoulder.wm" "decomposeMatrix1.imat";
connectAttr "L_fit_elbow.wm" "decomposeMatrix2.imat";
connectAttr "L_fit_wrist.wm" "decomposeMatrix3.imat";
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
connectAttr "L_init_shoulder.wm" "multMatrix1.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp.wim" "multMatrix1.i[1]";
connectAttr "multMatrix1.o" "decomposeMatrix6.imat";
connectAttr "L_init_elbow.wm" "multMatrix2.i[0]";
connectAttr "L_fk_shoulder.wim" "multMatrix2.i[1]";
connectAttr "multMatrix2.o" "decomposeMatrix7.imat";
connectAttr "elbow_aligned_mat.o" "multMatrix3.i[0]";
connectAttr "L_init_shoulder.wim" "multMatrix3.i[1]";
connectAttr "L_fit_wrist.wm" "multMatrix4.i[0]";
connectAttr "L_init_elbow.wim" "multMatrix4.i[1]";
connectAttr "multMatrix4.o" "decomposeMatrix8.imat";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert2.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "L_input_arm_space.wm" "input_arm_space_decomp.imat";
connectAttr "shoulder_aligned_mat.o" "init_shoulder_localMat.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.wim" "init_shoulder_localMat.i[1]"
		;
connectAttr "L_init_wrist.wm" "wrist_ik_ctrl_localMat.i[0]";
connectAttr "L_ik_shoulder_ctrl_space.wim" "wrist_ik_ctrl_localMat.i[1]";
connectAttr "wrist_ik_ctrl_localMat.o" "wrist_ik_ctrl_localMat_decomp.imat";
connectAttr "L_init_wrist.wm" "init_wrist_local.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.wim" "init_wrist_local.i[1]";
connectAttr "L_init_elbow.wm" "init_elbow_local.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.wim" "init_elbow_local.i[1]";
connectAttr "L_init_shoulder.wm" "init_shoulder_local.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.wim" "init_shoulder_local.i[1]"
		;
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.wm" "ik_ctrl_local.i[0]"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.wim" "ik_ctrl_local.i[1]";
connectAttr "L_init_shoulder.wm" "multMatrix5.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.wim" "multMatrix5.i[1]";
connectAttr "L_output_wrist.wm" "multMatrix6.i[0]";
connectAttr "L_arm_ctrl_grp.wim" "multMatrix6.i[1]";
connectAttr "multMatrix6.o" "decomposeMatrix9.imat";
connectAttr "L_init_elbow.wm" "multMatrix7.i[0]";
connectAttr "L_ik_shoulder_ctrl_space.wim" "multMatrix7.i[1]";
connectAttr "multMatrix7.o" "decomposeMatrix10.imat";
connectAttr "L_init_shoulder.wm" "multMatrix8.i[0]";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_fk_grp.wim" "multMatrix8.i[1]";
connectAttr "multMatrix8.o" "decomposeMatrix11.imat";
connectAttr "ctrlLen_minus_dif1.o1" "divide_softikV1.i1x";
connectAttr "conditionfor_zerodivide1.ocr" "divide_softikV1.i2x";
connectAttr "divide_softikV1.ox" "negate_val1.i1x";
connectAttr "negate_val1.ox" "power_val1.i2x";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "mult_softikV1.i1x"
		;
connectAttr "power_val1.ox" "mult_softikV1.i2x";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.armLen" "result_softik_len1.i1[0]"
		;
connectAttr "mult_softikV1.ox" "result_softik_len1.i1[1]";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "softikV_condition1.ft"
		;
connectAttr "result_softik_len1.o1" "softikV_condition1.ctr";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.armLen" "softikV_condition1.cfr"
		;
connectAttr "softikV_condition1.ocr" "ctrllen_condition1.ctr";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen" "ctrllen_condition1.ft"
		;
connectAttr "armlen_minus_softikV1.o1" "ctrllen_condition1.st";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen" "ctrllen_condition1.cfr"
		;
connectAttr "init_shoulder_local1.o" "uparmLen1.im1";
connectAttr "init_elbow_local1.o" "uparmLen1.im2";
connectAttr "init_elbow_local1.o" "loarmLen1.im1";
connectAttr "init_wrist_local1.o" "loarmLen1.im2";
connectAttr "uparmLen1.d" "armLen2.i1[0]";
connectAttr "loarmLen1.d" "armLen2.i1[1]";
connectAttr "multMatrix13.o" "ctrlLen1.im1";
connectAttr "ik_ctrl_local1.o" "ctrlLen1.im2";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.armLen" "armlen_minus_softikV1.i1[0]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "armlen_minus_softikV1.i1[1]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen" "ctrlLen_minus_dif1.i1[0]"
		;
connectAttr "armlen_minus_softikV1.o1" "ctrlLen_minus_dif1.i1[1]";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "conditionfor_zerodivide1.ft"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "conditionfor_zerodivide1.cfr"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "uparm_ratio1.i1x"
		;
connectAttr "armLen3.o1" "uparm_ratio1.i2x";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "armLen3.i1[0]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "armLen3.i1[1]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "loarm_ratio4.i1x"
		;
connectAttr "armLen3.o1" "loarm_ratio4.i2x";
connectAttr "stretchedLen1.o1" "stretched_uparmLen1.i1x";
connectAttr "uparm_ratio1.ox" "stretched_uparmLen1.i2x";
connectAttr "stretched_uparmLen1.ox" "stretchCtrl_uparm1.i1x";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value" "stretchCtrl_uparm1.i2x"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "uparm_plus_stretch2.i1[0]"
		;
connectAttr "stretchCtrl_uparm1.ox" "uparm_plus_stretch2.i1[1]";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen" "cond_uparm1.ft"
		;
connectAttr "armLen3.o1" "cond_uparm1.st";
connectAttr "uparm_plus_stretch2.o1" "cond_uparm1.ctr";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "cond_uparm1.cfr"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen" "cond_loarm1.ft"
		;
connectAttr "armLen3.o1" "cond_loarm1.st";
connectAttr "loarm_plus_stretch2.o1" "cond_loarm1.ctr";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "cond_loarm1.cfr"
		;
connectAttr "stretchedLen1.o1" "stretched_loarmLen1.i1x";
connectAttr "loarm_ratio4.ox" "stretched_loarmLen1.i2x";
connectAttr "stretched_loarmLen1.ox" "stretchCtrl_loarm1.i1x";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value" "stretchCtrl_loarm1.i2x"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "loarm_plus_stretch2.i1[0]"
		;
connectAttr "stretchCtrl_loarm1.ox" "loarm_plus_stretch2.i1[1]";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen" "stretchedLen1.i1[0]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_input.softikLen" "stretchedLen1.i1[1]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.stretched_len" "stretch_output_mul_ctrlVal1.i1x"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_stretchik_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal1.i2x"
		;
connectAttr "R_ik_shoulder.t" "ikfk_shoulder_t1.c1";
connectAttr "R_fk_shoulder.t" "ikfk_shoulder_t1.c2";
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_t1.b"
		;
connectAttr "unitConversion4.o" "ikfk_shoulder_r1.c1";
connectAttr "unitConversion5.o" "ikfk_shoulder_r1.c2";
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_r1.b"
		;
connectAttr "R_ik_shoulder.r" "unitConversion4.i";
connectAttr "R_fk_shoulder.r" "unitConversion5.i";
connectAttr "ikfk_shoulder_r1.op" "unitConversion6.i";
connectAttr "R_ik_elbow.r" "ikfk_blend_elbow1.ir2";
connectAttr "R_fk_elbow.r" "ikfk_blend_elbow1.ir1";
connectAttr "R_fk_elbow.t" "ikfk_blend_elbow1.it1";
connectAttr "R_ik_elbow.t" "ikfk_blend_elbow1.it2";
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_blend_elbow1.w"
		;
connectAttr "R_ik_wrist.t" "pairBlend2.it2";
connectAttr "R_ik_wrist.r" "pairBlend2.ir2";
connectAttr "R_fk_wrist.t" "pairBlend2.it1";
connectAttr "R_fk_wrist.r" "pairBlend2.ir1";
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "pairBlend2.w"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "reverse2.ix"
		;
connectAttr "R_fit_shoulder.wm" "decomposeMatrix12.imat";
connectAttr "R_fit_elbow.wm" "decomposeMatrix13.imat";
connectAttr "R_fit_wrist.wm" "decomposeMatrix14.imat";
connectAttr "decomposeMatrix13.ot" "shld2elbow_vec1.i3[0]";
connectAttr "decomposeMatrix12.ot" "shld2elbow_vec1.i3[1]";
connectAttr "decomposeMatrix14.ot" "shld2wrist_vec1.i3[0]";
connectAttr "decomposeMatrix12.ot" "shld2wrist_vec1.i3[1]";
connectAttr "shld2wrist_vec1_rvs.o" "shoulder_y_vec1.i1";
connectAttr "shld2elbow_vec1_rvs.o" "shoulder_y_vec1.i2";
connectAttr "shld2elbow_vec1_rvs.o" "shoulder_z_Vec1.i1";
connectAttr "shoulder_y_vec1.o" "shoulder_z_Vec1.i2";
connectAttr "shoulder_x_vec1.ox" "shoulder_aligned_mat1.i00";
connectAttr "shoulder_x_vec1.oy" "shoulder_aligned_mat1.i01";
connectAttr "shoulder_x_vec1.oz" "shoulder_aligned_mat1.i02";
connectAttr "shoulder_y_vec1.ox" "shoulder_aligned_mat1.i10";
connectAttr "shoulder_y_vec1.oy" "shoulder_aligned_mat1.i11";
connectAttr "shoulder_y_vec1.oz" "shoulder_aligned_mat1.i12";
connectAttr "shoulder_z_Vec1.oy" "shoulder_aligned_mat1.i21";
connectAttr "shoulder_z_Vec1.ox" "shoulder_aligned_mat1.i20";
connectAttr "shoulder_z_Vec1.oz" "shoulder_aligned_mat1.i22";
connectAttr "decomposeMatrix12.otx" "shoulder_aligned_mat1.i30";
connectAttr "decomposeMatrix12.oty" "shoulder_aligned_mat1.i31";
connectAttr "decomposeMatrix12.otz" "shoulder_aligned_mat1.i32";
connectAttr "shld2elbow_vec1_rvs.o" "shoulder_x_vec1.i1";
connectAttr "init_shoulder_localMat1.o" "decomposeMatrix15.imat";
connectAttr "decomposeMatrix12.ot" "elbow2shoulder_vec1.i3[0]";
connectAttr "decomposeMatrix13.ot" "elbow2shoulder_vec1.i3[1]";
connectAttr "decomposeMatrix14.ot" "elbow2wrist_vec1.i3[0]";
connectAttr "decomposeMatrix13.ot" "elbow2wrist_vec1.i3[1]";
connectAttr "multiplyDivide1.o" "elbow_y_vec1.i1";
connectAttr "elbow2wrist_vec1_rvs.o" "elbow_y_vec1.i2";
connectAttr "elbow2wrist_vec1_rvs.o" "elbow_z_vec1.i1";
connectAttr "elbow_y_vec1.o" "elbow_z_vec1.i2";
connectAttr "elbow2wrist_vec1_rvs.o" "elbow_x_vec1.i1";
connectAttr "elbow_x_vec1.ox" "elbow_aligned_mat1.i00";
connectAttr "elbow_x_vec1.oy" "elbow_aligned_mat1.i01";
connectAttr "elbow_x_vec1.oz" "elbow_aligned_mat1.i02";
connectAttr "elbow_y_vec1.ox" "elbow_aligned_mat1.i10";
connectAttr "elbow_y_vec1.oy" "elbow_aligned_mat1.i11";
connectAttr "elbow_y_vec1.oz" "elbow_aligned_mat1.i12";
connectAttr "elbow_z_vec1.ox" "elbow_aligned_mat1.i20";
connectAttr "elbow_z_vec1.oy" "elbow_aligned_mat1.i21";
connectAttr "elbow_z_vec1.oz" "elbow_aligned_mat1.i22";
connectAttr "decomposeMatrix13.otx" "elbow_aligned_mat1.i30";
connectAttr "decomposeMatrix13.oty" "elbow_aligned_mat1.i31";
connectAttr "decomposeMatrix13.otz" "elbow_aligned_mat1.i32";
connectAttr "multMatrix11.o" "decomposeMatrix16.imat";
connectAttr "R_init_shoulder.wm" "multMatrix9.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_ik_grp.wim" "multMatrix9.i[1]";
connectAttr "multMatrix9.o" "decomposeMatrix17.imat";
connectAttr "R_init_elbow.wm" "multMatrix10.i[0]";
connectAttr "R_fk_shoulder.wim" "multMatrix10.i[1]";
connectAttr "multMatrix10.o" "decomposeMatrix18.imat";
connectAttr "elbow_aligned_mat1.o" "multMatrix11.i[0]";
connectAttr "R_init_shoulder.wim" "multMatrix11.i[1]";
connectAttr "R_fit_wrist.wm" "multMatrix12.i[0]";
connectAttr "R_init_elbow.wim" "multMatrix12.i[1]";
connectAttr "multMatrix12.o" "decomposeMatrix19.imat";
connectAttr "lambert3.oc" "lambert2SG1.ss";
connectAttr "lambert2SG1.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert3.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG1.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[1].dn"
		;
connectAttr "R_input_arm_space.wm" "input_arm_space_decomp1.imat";
connectAttr "shoulder_aligned_mat1.o" "init_shoulder_localMat1.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.wim" "init_shoulder_localMat1.i[1]"
		;
connectAttr "R_init_wrist.wm" "wrist_ik_ctrl_localMat1.i[0]";
connectAttr "R_ik_shoulder_ctrl_space.wim" "wrist_ik_ctrl_localMat1.i[1]";
connectAttr "wrist_ik_ctrl_localMat1.o" "wrist_ik_ctrl_localMat_decomp1.imat";
connectAttr "R_init_wrist.wm" "init_wrist_local1.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.wim" "init_wrist_local1.i[1]";
connectAttr "R_init_elbow.wm" "init_elbow_local1.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.wim" "init_elbow_local1.i[1]";
connectAttr "R_init_shoulder.wm" "init_shoulder_local1.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.wim" "init_shoulder_local1.i[1]"
		;
connectAttr "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.wm" "ik_ctrl_local1.i[0]"
		;
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.wim" "ik_ctrl_local1.i[1]";
connectAttr "R_init_shoulder.wm" "multMatrix13.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_init_space.wim" "multMatrix13.i[1]";
connectAttr "R_output_wrist.wm" "multMatrix14.i[0]";
connectAttr "R_arm_ctrl_grp.wim" "multMatrix14.i[1]";
connectAttr "multMatrix14.o" "decomposeMatrix20.imat";
connectAttr "R_init_elbow.wm" "multMatrix15.i[0]";
connectAttr "R_ik_shoulder_ctrl_space.wim" "multMatrix15.i[1]";
connectAttr "multMatrix15.o" "decomposeMatrix21.imat";
connectAttr "R_init_shoulder.wm" "multMatrix16.i[0]";
connectAttr "|R_arm|R_arm_motion_grp|R_motion_fk_grp.wim" "multMatrix16.i[1]";
connectAttr "multMatrix16.o" "decomposeMatrix22.imat";
connectAttr "elbow2wrist_vec1.o3" "elbow2wrist_vec1_rvs.i1";
connectAttr "shld2elbow_vec1.o3" "shld2elbow_vec1_rvs.i1";
connectAttr "shld2wrist_vec1.o3" "shld2wrist_vec1_rvs.i1";
connectAttr "elbow2shoulder_vec1.o3" "multiplyDivide1.i1";
connectAttr "ctrlLen_minus_dif2.o1" "divide_softikV2.i1x";
connectAttr "conditionfor_zerodivide2.ocr" "divide_softikV2.i2x";
connectAttr "divide_softikV2.ox" "negate_val2.i1x";
connectAttr "negate_val2.ox" "power_val2.i2x";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "mult_softikV2.i1x"
		;
connectAttr "power_val2.ox" "mult_softikV2.i2x";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.armLen" "result_softik_len2.i1[0]"
		;
connectAttr "mult_softikV2.ox" "result_softik_len2.i1[1]";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "softikV_condition2.ft"
		;
connectAttr "result_softik_len2.o1" "softikV_condition2.ctr";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.armLen" "softikV_condition2.cfr"
		;
connectAttr "softikV_condition2.ocr" "ctrllen_condition2.ctr";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen" "ctrllen_condition2.ft"
		;
connectAttr "armlen_minus_softikV2.o1" "ctrllen_condition2.st";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen" "ctrllen_condition2.cfr"
		;
connectAttr "init_shoulder_local2.o" "uparmLen2.im1";
connectAttr "init_elbow_local2.o" "uparmLen2.im2";
connectAttr "init_elbow_local2.o" "loarmLen2.im1";
connectAttr "init_wrist_local2.o" "loarmLen2.im2";
connectAttr "uparmLen2.d" "armLen4.i1[0]";
connectAttr "loarmLen2.d" "armLen4.i1[1]";
connectAttr "multMatrix21.o" "ctrlLen2.im1";
connectAttr "ik_ctrl_local2.o" "ctrlLen2.im2";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.armLen" "armlen_minus_softikV2.i1[0]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "armlen_minus_softikV2.i1[1]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.ctrlLen" "ctrlLen_minus_dif2.i1[0]"
		;
connectAttr "armlen_minus_softikV2.o1" "ctrlLen_minus_dif2.i1[1]";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "conditionfor_zerodivide2.ft"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_softik_input.softik_ctrl_value" "conditionfor_zerodivide2.cfr"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "uparm_ratio2.i1x"
		;
connectAttr "armLen5.o1" "uparm_ratio2.i2x";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "armLen5.i1[0]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "armLen5.i1[1]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "loarm_ratio5.i1x"
		;
connectAttr "armLen5.o1" "loarm_ratio5.i2x";
connectAttr "stretchedLen2.o1" "stretched_uparmLen2.i1x";
connectAttr "uparm_ratio2.ox" "stretched_uparmLen2.i2x";
connectAttr "stretched_uparmLen2.ox" "stretchCtrl_uparm2.i1x";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value" "stretchCtrl_uparm2.i2x"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "uparm_plus_stretch3.i1[0]"
		;
connectAttr "stretchCtrl_uparm2.ox" "uparm_plus_stretch3.i1[1]";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen" "cond_uparm2.ft"
		;
connectAttr "armLen5.o1" "cond_uparm2.st";
connectAttr "uparm_plus_stretch3.o1" "cond_uparm2.ctr";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.uparm_len" "cond_uparm2.cfr"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen" "cond_loarm2.ft"
		;
connectAttr "armLen5.o1" "cond_loarm2.st";
connectAttr "loarm_plus_stretch3.o1" "cond_loarm2.ctr";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "cond_loarm2.cfr"
		;
connectAttr "stretchedLen2.o1" "stretched_loarmLen2.i1x";
connectAttr "loarm_ratio5.ox" "stretched_loarmLen2.i2x";
connectAttr "stretched_loarmLen2.ox" "stretchCtrl_loarm2.i1x";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.stretch_ctrl_value" "stretchCtrl_loarm2.i2x"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.loarm_len" "loarm_plus_stretch3.i1[0]"
		;
connectAttr "stretchCtrl_loarm2.ox" "loarm_plus_stretch3.i1[1]";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.ctrlLen" "stretchedLen2.i1[0]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_input.softikLen" "stretchedLen2.i1[1]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.stretched_len" "stretch_output_mul_ctrlVal2.i1x"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_stretchik_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal2.i2x"
		;
connectAttr "L_ik_thigh.t" "ikfk_shoulder_t2.c1";
connectAttr "L_fk_thigh.t" "ikfk_shoulder_t2.c2";
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_t2.b"
		;
connectAttr "unitConversion7.o" "ikfk_shoulder_r2.c1";
connectAttr "unitConversion8.o" "ikfk_shoulder_r2.c2";
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_r2.b"
		;
connectAttr "L_ik_thigh.r" "unitConversion7.i";
connectAttr "L_fk_thigh.r" "unitConversion8.i";
connectAttr "ikfk_shoulder_r2.op" "unitConversion9.i";
connectAttr "L_ik_knee.r" "ikfk_blend_elbow2.ir2";
connectAttr "L_fk_knee.r" "ikfk_blend_elbow2.ir1";
connectAttr "L_fk_knee.t" "ikfk_blend_elbow2.it1";
connectAttr "L_ik_knee.t" "ikfk_blend_elbow2.it2";
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_blend_elbow2.w"
		;
connectAttr "L_ik_ankle.t" "pairBlend3.it2";
connectAttr "L_ik_ankle.r" "pairBlend3.ir2";
connectAttr "L_fk_ankle.t" "pairBlend3.it1";
connectAttr "L_fk_ankle.r" "pairBlend3.ir1";
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "pairBlend3.w"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "reverse3.ix"
		;
connectAttr "L_fit_thigh.wm" "decomposeMatrix23.imat";
connectAttr "L_fit_knee.wm" "decomposeMatrix24.imat";
connectAttr "L_fit_ankle.wm" "decomposeMatrix25.imat";
connectAttr "decomposeMatrix24.ot" "shld2elbow_vec2.i3[0]";
connectAttr "decomposeMatrix23.ot" "shld2elbow_vec2.i3[1]";
connectAttr "decomposeMatrix25.ot" "shld2wrist_vec2.i3[0]";
connectAttr "decomposeMatrix23.ot" "shld2wrist_vec2.i3[1]";
connectAttr "shld2wrist_vec2.o3" "shoulder_y_vec2.i1";
connectAttr "shld2elbow_vec2.o3" "shoulder_y_vec2.i2";
connectAttr "shld2elbow_vec2.o3" "shoulder_z_Vec2.i1";
connectAttr "shoulder_y_vec2.o" "shoulder_z_Vec2.i2";
connectAttr "shoulder_x_vec2.ox" "shoulder_aligned_mat2.i00";
connectAttr "shoulder_x_vec2.oy" "shoulder_aligned_mat2.i01";
connectAttr "shoulder_x_vec2.oz" "shoulder_aligned_mat2.i02";
connectAttr "shoulder_y_vec2.ox" "shoulder_aligned_mat2.i10";
connectAttr "shoulder_y_vec2.oy" "shoulder_aligned_mat2.i11";
connectAttr "shoulder_y_vec2.oz" "shoulder_aligned_mat2.i12";
connectAttr "shoulder_z_Vec2.oy" "shoulder_aligned_mat2.i21";
connectAttr "shoulder_z_Vec2.ox" "shoulder_aligned_mat2.i20";
connectAttr "shoulder_z_Vec2.oz" "shoulder_aligned_mat2.i22";
connectAttr "decomposeMatrix23.otx" "shoulder_aligned_mat2.i30";
connectAttr "decomposeMatrix23.oty" "shoulder_aligned_mat2.i31";
connectAttr "decomposeMatrix23.otz" "shoulder_aligned_mat2.i32";
connectAttr "shld2elbow_vec2.o3" "shoulder_x_vec2.i1";
connectAttr "init_shoulder_localMat2.o" "decomposeMatrix26.imat";
connectAttr "decomposeMatrix23.ot" "elbow2shoulder_vec2.i3[0]";
connectAttr "decomposeMatrix24.ot" "elbow2shoulder_vec2.i3[1]";
connectAttr "decomposeMatrix25.ot" "elbow2wrist_vec2.i3[0]";
connectAttr "decomposeMatrix24.ot" "elbow2wrist_vec2.i3[1]";
connectAttr "elbow2shoulder_vec2.o3" "elbow_y_vec2.i1";
connectAttr "elbow2wrist_vec2.o3" "elbow_y_vec2.i2";
connectAttr "elbow2wrist_vec2.o3" "elbow_z_vec2.i1";
connectAttr "elbow_y_vec2.o" "elbow_z_vec2.i2";
connectAttr "elbow2wrist_vec2.o3" "elbow_x_vec2.i1";
connectAttr "elbow_x_vec2.ox" "elbow_aligned_mat2.i00";
connectAttr "elbow_x_vec2.oy" "elbow_aligned_mat2.i01";
connectAttr "elbow_x_vec2.oz" "elbow_aligned_mat2.i02";
connectAttr "elbow_y_vec2.ox" "elbow_aligned_mat2.i10";
connectAttr "elbow_y_vec2.oy" "elbow_aligned_mat2.i11";
connectAttr "elbow_y_vec2.oz" "elbow_aligned_mat2.i12";
connectAttr "elbow_z_vec2.ox" "elbow_aligned_mat2.i20";
connectAttr "elbow_z_vec2.oy" "elbow_aligned_mat2.i21";
connectAttr "elbow_z_vec2.oz" "elbow_aligned_mat2.i22";
connectAttr "decomposeMatrix24.otx" "elbow_aligned_mat2.i30";
connectAttr "decomposeMatrix24.oty" "elbow_aligned_mat2.i31";
connectAttr "decomposeMatrix24.otz" "elbow_aligned_mat2.i32";
connectAttr "multMatrix19.o" "decomposeMatrix27.imat";
connectAttr "L_init_thigh.wm" "multMatrix17.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_ik_grp.wim" "multMatrix17.i[1]";
connectAttr "multMatrix17.o" "decomposeMatrix28.imat";
connectAttr "L_init_knee.wm" "multMatrix18.i[0]";
connectAttr "L_fk_thigh.wim" "multMatrix18.i[1]";
connectAttr "multMatrix18.o" "decomposeMatrix29.imat";
connectAttr "elbow_aligned_mat2.o" "multMatrix19.i[0]";
connectAttr "L_init_thigh.wim" "multMatrix19.i[1]";
connectAttr "L_fit_ankle.wm" "multMatrix20.i[0]";
connectAttr "L_init_knee.wim" "multMatrix20.i[1]";
connectAttr "multMatrix20.o" "decomposeMatrix30.imat";
connectAttr "lambert4.oc" "lambert2SG2.ss";
connectAttr "lambert2SG2.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert4.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo2.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG2.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo2.tgi[0].ni[1].dn"
		;
connectAttr "L_input_leg_space.wm" "input_arm_space_decomp2.imat";
connectAttr "shoulder_aligned_mat2.o" "init_shoulder_localMat2.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.wim" "init_shoulder_localMat2.i[1]"
		;
connectAttr "L_init_ankle.wm" "wrist_ik_ctrl_localMat2.i[0]";
connectAttr "L_ik_thigh_ctrl_space.wim" "wrist_ik_ctrl_localMat2.i[1]";
connectAttr "wrist_ik_ctrl_localMat2.o" "wrist_ik_ctrl_localMat_decomp2.imat";
connectAttr "L_init_ankle.wm" "init_wrist_local2.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.wim" "init_wrist_local2.i[1]";
connectAttr "L_init_knee.wm" "init_elbow_local2.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.wim" "init_elbow_local2.i[1]";
connectAttr "L_init_thigh.wm" "init_shoulder_local2.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.wim" "init_shoulder_local2.i[1]"
		;
connectAttr "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space|L_ik_ctrl.wm" "ik_ctrl_local2.i[0]"
		;
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.wim" "ik_ctrl_local2.i[1]";
connectAttr "L_init_thigh.wm" "multMatrix21.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_init_space.wim" "multMatrix21.i[1]";
connectAttr "L_output_ankle.wm" "multMatrix22.i[0]";
connectAttr "L_leg_ctrl_grp.wim" "multMatrix22.i[1]";
connectAttr "multMatrix22.o" "decomposeMatrix31.imat";
connectAttr "L_init_knee.wm" "multMatrix23.i[0]";
connectAttr "L_ik_thigh_ctrl_space.wim" "multMatrix23.i[1]";
connectAttr "multMatrix23.o" "decomposeMatrix32.imat";
connectAttr "L_init_thigh.wm" "multMatrix24.i[0]";
connectAttr "|L_leg|L_leg_motion_grp|L_motion_fk_grp.wim" "multMatrix24.i[1]";
connectAttr "multMatrix24.o" "decomposeMatrix33.imat";
connectAttr "ctrlLen_minus_dif3.o1" "divide_softikV3.i1x";
connectAttr "conditionfor_zerodivide3.ocr" "divide_softikV3.i2x";
connectAttr "divide_softikV3.ox" "negate_val3.i1x";
connectAttr "negate_val3.ox" "power_val3.i2x";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "mult_softikV3.i1x"
		;
connectAttr "power_val3.ox" "mult_softikV3.i2x";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.armLen" "result_softik_len3.i1[0]"
		;
connectAttr "mult_softikV3.ox" "result_softik_len3.i1[1]";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "softikV_condition3.ft"
		;
connectAttr "result_softik_len3.o1" "softikV_condition3.ctr";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.armLen" "softikV_condition3.cfr"
		;
connectAttr "softikV_condition3.ocr" "ctrllen_condition3.ctr";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen" "ctrllen_condition3.ft"
		;
connectAttr "armlen_minus_softikV3.o1" "ctrllen_condition3.st";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen" "ctrllen_condition3.cfr"
		;
connectAttr "init_shoulder_local3.o" "uparmLen3.im1";
connectAttr "init_elbow_local3.o" "uparmLen3.im2";
connectAttr "init_elbow_local3.o" "loarmLen3.im1";
connectAttr "init_wrist_local3.o" "loarmLen3.im2";
connectAttr "uparmLen3.d" "armLen6.i1[0]";
connectAttr "loarmLen3.d" "armLen6.i1[1]";
connectAttr "multMatrix29.o" "ctrlLen3.im1";
connectAttr "ik_ctrl_local3.o" "ctrlLen3.im2";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.armLen" "armlen_minus_softikV3.i1[0]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "armlen_minus_softikV3.i1[1]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.ctrlLen" "ctrlLen_minus_dif3.i1[0]"
		;
connectAttr "armlen_minus_softikV3.o1" "ctrlLen_minus_dif3.i1[1]";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "conditionfor_zerodivide3.ft"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_softik_input.softik_ctrl_value" "conditionfor_zerodivide3.cfr"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "uparm_ratio3.i1x"
		;
connectAttr "armLen7.o1" "uparm_ratio3.i2x";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "armLen7.i1[0]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "armLen7.i1[1]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "loarm_ratio6.i1x"
		;
connectAttr "armLen7.o1" "loarm_ratio6.i2x";
connectAttr "stretchedLen3.o1" "stretched_uparmLen3.i1x";
connectAttr "uparm_ratio3.ox" "stretched_uparmLen3.i2x";
connectAttr "stretched_uparmLen3.ox" "stretchCtrl_uparm3.i1x";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value" "stretchCtrl_uparm3.i2x"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "uparm_plus_stretch4.i1[0]"
		;
connectAttr "stretchCtrl_uparm3.ox" "uparm_plus_stretch4.i1[1]";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen" "cond_uparm3.ft"
		;
connectAttr "armLen7.o1" "cond_uparm3.st";
connectAttr "uparm_plus_stretch4.o1" "cond_uparm3.ctr";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.uparm_len" "cond_uparm3.cfr"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen" "cond_loarm3.ft"
		;
connectAttr "armLen7.o1" "cond_loarm3.st";
connectAttr "loarm_plus_stretch4.o1" "cond_loarm3.ctr";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "cond_loarm3.cfr"
		;
connectAttr "stretchedLen3.o1" "stretched_loarmLen3.i1x";
connectAttr "loarm_ratio6.ox" "stretched_loarmLen3.i2x";
connectAttr "stretched_loarmLen3.ox" "stretchCtrl_loarm3.i1x";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.stretch_ctrl_value" "stretchCtrl_loarm3.i2x"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.loarm_len" "loarm_plus_stretch4.i1[0]"
		;
connectAttr "stretchCtrl_loarm3.ox" "loarm_plus_stretch4.i1[1]";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.ctrlLen" "stretchedLen3.i1[0]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_input.softikLen" "stretchedLen3.i1[1]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.stretched_len" "stretch_output_mul_ctrlVal3.i1x"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_stretchik_output.stretch_ctrl_value" "stretch_output_mul_ctrlVal3.i2x"
		;
connectAttr "R_ik_thigh.t" "ikfk_shoulder_t3.c1";
connectAttr "R_fk_thigh.t" "ikfk_shoulder_t3.c2";
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_t3.b"
		;
connectAttr "unitConversion10.o" "ikfk_shoulder_r3.c1";
connectAttr "unitConversion11.o" "ikfk_shoulder_r3.c2";
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_shoulder_r3.b"
		;
connectAttr "R_ik_thigh.r" "unitConversion10.i";
connectAttr "R_fk_thigh.r" "unitConversion11.i";
connectAttr "ikfk_shoulder_r3.op" "unitConversion12.i";
connectAttr "R_ik_knee.r" "ikfk_blend_elbow3.ir2";
connectAttr "R_fk_knee.r" "ikfk_blend_elbow3.ir1";
connectAttr "R_fk_knee.t" "ikfk_blend_elbow3.it1";
connectAttr "R_ik_knee.t" "ikfk_blend_elbow3.it2";
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_blend_elbow3.w"
		;
connectAttr "R_ik_ankle.t" "pairBlend4.it2";
connectAttr "R_ik_ankle.r" "pairBlend4.ir2";
connectAttr "R_fk_ankle.t" "pairBlend4.it1";
connectAttr "R_fk_ankle.r" "pairBlend4.ir1";
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "pairBlend4.w"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space|R_ik_fk_blend_ctrl.ik_fk_blend" "reverse4.ix"
		;
connectAttr "R_fit_thigh.wm" "decomposeMatrix34.imat";
connectAttr "R_fit_knee.wm" "decomposeMatrix35.imat";
connectAttr "R_fit_ankle.wm" "decomposeMatrix36.imat";
connectAttr "decomposeMatrix35.ot" "shld2elbow_vec3.i3[0]";
connectAttr "decomposeMatrix34.ot" "shld2elbow_vec3.i3[1]";
connectAttr "decomposeMatrix36.ot" "shld2wrist_vec3.i3[0]";
connectAttr "decomposeMatrix34.ot" "shld2wrist_vec3.i3[1]";
connectAttr "shld2wrist_vec3_rvs.o" "shoulder_y_vec3.i1";
connectAttr "shld2elbow_vec3_rvs.o" "shoulder_y_vec3.i2";
connectAttr "shld2elbow_vec3_rvs.o" "shoulder_z_Vec3.i1";
connectAttr "shoulder_y_vec3.o" "shoulder_z_Vec3.i2";
connectAttr "shoulder_x_vec3.ox" "shoulder_aligned_mat3.i00";
connectAttr "shoulder_x_vec3.oy" "shoulder_aligned_mat3.i01";
connectAttr "shoulder_x_vec3.oz" "shoulder_aligned_mat3.i02";
connectAttr "shoulder_y_vec3.ox" "shoulder_aligned_mat3.i10";
connectAttr "shoulder_y_vec3.oy" "shoulder_aligned_mat3.i11";
connectAttr "shoulder_y_vec3.oz" "shoulder_aligned_mat3.i12";
connectAttr "shoulder_z_Vec3.oy" "shoulder_aligned_mat3.i21";
connectAttr "shoulder_z_Vec3.ox" "shoulder_aligned_mat3.i20";
connectAttr "shoulder_z_Vec3.oz" "shoulder_aligned_mat3.i22";
connectAttr "decomposeMatrix34.otx" "shoulder_aligned_mat3.i30";
connectAttr "decomposeMatrix34.oty" "shoulder_aligned_mat3.i31";
connectAttr "decomposeMatrix34.otz" "shoulder_aligned_mat3.i32";
connectAttr "shld2elbow_vec3_rvs.o" "shoulder_x_vec3.i1";
connectAttr "init_shoulder_localMat3.o" "decomposeMatrix37.imat";
connectAttr "decomposeMatrix34.ot" "elbow2shoulder_vec3.i3[0]";
connectAttr "decomposeMatrix35.ot" "elbow2shoulder_vec3.i3[1]";
connectAttr "decomposeMatrix36.ot" "elbow2wrist_vec3.i3[0]";
connectAttr "decomposeMatrix35.ot" "elbow2wrist_vec3.i3[1]";
connectAttr "elbow2shoulder_vec3_rvs.o" "elbow_y_vec3.i1";
connectAttr "elbow2wrist_vec3_rvs.o" "elbow_y_vec3.i2";
connectAttr "elbow2wrist_vec3_rvs.o" "elbow_z_vec3.i1";
connectAttr "elbow_y_vec3.o" "elbow_z_vec3.i2";
connectAttr "elbow2wrist_vec3_rvs.o" "elbow_x_vec3.i1";
connectAttr "elbow_x_vec3.ox" "elbow_aligned_mat3.i00";
connectAttr "elbow_x_vec3.oy" "elbow_aligned_mat3.i01";
connectAttr "elbow_x_vec3.oz" "elbow_aligned_mat3.i02";
connectAttr "elbow_y_vec3.ox" "elbow_aligned_mat3.i10";
connectAttr "elbow_y_vec3.oy" "elbow_aligned_mat3.i11";
connectAttr "elbow_y_vec3.oz" "elbow_aligned_mat3.i12";
connectAttr "elbow_z_vec3.ox" "elbow_aligned_mat3.i20";
connectAttr "elbow_z_vec3.oy" "elbow_aligned_mat3.i21";
connectAttr "elbow_z_vec3.oz" "elbow_aligned_mat3.i22";
connectAttr "decomposeMatrix35.otx" "elbow_aligned_mat3.i30";
connectAttr "decomposeMatrix35.oty" "elbow_aligned_mat3.i31";
connectAttr "decomposeMatrix35.otz" "elbow_aligned_mat3.i32";
connectAttr "multMatrix27.o" "decomposeMatrix38.imat";
connectAttr "R_init_thigh.wm" "multMatrix25.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_ik_grp.wim" "multMatrix25.i[1]";
connectAttr "multMatrix25.o" "decomposeMatrix39.imat";
connectAttr "R_init_knee.wm" "multMatrix26.i[0]";
connectAttr "R_fk_thigh.wim" "multMatrix26.i[1]";
connectAttr "multMatrix26.o" "decomposeMatrix40.imat";
connectAttr "elbow_aligned_mat3.o" "multMatrix27.i[0]";
connectAttr "R_init_thigh.wim" "multMatrix27.i[1]";
connectAttr "R_fit_ankle.wm" "multMatrix28.i[0]";
connectAttr "R_init_knee.wim" "multMatrix28.i[1]";
connectAttr "multMatrix28.o" "decomposeMatrix41.imat";
connectAttr "lambert5.oc" "lambert2SG3.ss";
connectAttr "lambert2SG3.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "lambert5.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo3.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG3.msg" "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo3.tgi[0].ni[1].dn"
		;
connectAttr "R_input_leg_space.wm" "input_arm_space_decomp3.imat";
connectAttr "shoulder_aligned_mat3.o" "init_shoulder_localMat3.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.wim" "init_shoulder_localMat3.i[1]"
		;
connectAttr "R_init_ankle.wm" "wrist_ik_ctrl_localMat3.i[0]";
connectAttr "R_ik_thigh_ctrl_space.wim" "wrist_ik_ctrl_localMat3.i[1]";
connectAttr "wrist_ik_ctrl_localMat3.o" "wrist_ik_ctrl_localMat_decomp3.imat";
connectAttr "R_init_ankle.wm" "init_wrist_local3.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.wim" "init_wrist_local3.i[1]";
connectAttr "R_init_knee.wm" "init_elbow_local3.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.wim" "init_elbow_local3.i[1]";
connectAttr "R_init_thigh.wm" "init_shoulder_local3.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.wim" "init_shoulder_local3.i[1]"
		;
connectAttr "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space|R_ik_ctrl.wm" "ik_ctrl_local3.i[0]"
		;
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.wim" "ik_ctrl_local3.i[1]";
connectAttr "R_init_thigh.wm" "multMatrix29.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_init_space.wim" "multMatrix29.i[1]";
connectAttr "R_output_ankle.wm" "multMatrix30.i[0]";
connectAttr "R_leg_ctrl_grp.wim" "multMatrix30.i[1]";
connectAttr "multMatrix30.o" "decomposeMatrix42.imat";
connectAttr "R_init_knee.wm" "multMatrix31.i[0]";
connectAttr "R_ik_thigh_ctrl_space.wim" "multMatrix31.i[1]";
connectAttr "multMatrix31.o" "decomposeMatrix43.imat";
connectAttr "R_init_thigh.wm" "multMatrix32.i[0]";
connectAttr "|R_leg|R_leg_motion_grp|R_motion_fk_grp.wim" "multMatrix32.i[1]";
connectAttr "multMatrix32.o" "decomposeMatrix44.imat";
connectAttr "elbow2shoulder_vec3.o3" "elbow2shoulder_vec3_rvs.i1";
connectAttr "shld2wrist_vec3.o3" "shld2wrist_vec3_rvs.i1";
connectAttr "elbow2wrist_vec3.o3" "elbow2wrist_vec3_rvs.i1";
connectAttr "shld2elbow_vec3.o3" "shld2elbow_vec3_rvs.i1";
connectAttr "parent_space_LOC.wm" "fit_DMTX.imat";
connectAttr "spine_CTL.wm" "fit_spine_CTL_control_DMTX.imat";
connectAttr "spine_sub_000_CTL.wm" "fit_spine_sub_000_CTL_control_DMTX.imat";
connectAttr "chest_sub_001_CTL.wm" "fit_chest_sub_001_CTL_control_DMTX.imat";
connectAttr "chest_CTL.wm" "fit_chest_CTL_control_DMTX.imat";
connectAttr "parent_space_LOC.wm" "ctl_DMTX.imat";
connectAttr "M_spine_CTL_localMat_MAT.o" "M_spine_CTL_localMat_DMTX.imat";
connectAttr "fit_spine.wm" "M_spine_CTL_localMat_MAT.i[0]";
connectAttr "fit_space.wim" "M_spine_CTL_localMat_MAT.i[1]";
connectAttr "M_chest_CTL_localMat_MAT.o" "M_chest_CTL_localMat_DMTX.imat";
connectAttr "fit_chest.wm" "M_chest_CTL_localMat_MAT.i[0]";
connectAttr "fit_space.wim" "M_chest_CTL_localMat_MAT.i[1]";
connectAttr "bezierShape1.ws" "twist_spine_poci.ic";
connectAttr "twist_spine_CTL.end_uvalue" "twist_spine_poci.pr";
connectAttr "M_spine_CTL.wm" "M_spine_CTL_rotMat_DMTX.imat";
connectAttr "bezierShape1.ws" "twist_chest_poci.ic";
connectAttr "twist_chest_CTL.end_uvalue" "twist_chest_poci.pr";
connectAttr "M_chest_CTL.wm" "M_chest_CTL_rotMat_DMTX.imat";
connectAttr "bezierShape1.ws" "spineA_poci.ic";
connectAttr "spineA_param_MULT.ox" "spineA_poci.pr";
connectAttr "spine_param_MULT.ox" "spineA_param_MULT.i1x";
connectAttr "spineA_twist_PLS.o1" "unitConversion13.i";
connectAttr "spine_spineA_twist_MULT.ox" "spineA_twist_PLS.i1[0]";
connectAttr "chest_spineA_twist_MULT.ox" "spineA_twist_PLS.i1[1]";
connectAttr "spine_spineA_twist_RMAP.ov" "spine_spineA_twist_MULT.i2x";
connectAttr "unitConversion18.o" "spine_spineA_twist_MULT.i1x";
connectAttr "spineA_param_MULT.ox" "spine_spineA_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spineA_twist_RMAP.imn";
connectAttr "M_spine_CTL.ry" "unitConversion18.i";
connectAttr "chest_spineA_twist_RMAP.ov" "chest_spineA_twist_MULT.i2x";
connectAttr "unitConversion23.o" "chest_spineA_twist_MULT.i1x";
connectAttr "spineA_param_MULT.ox" "chest_spineA_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spineA_twist_RMAP.imx";
connectAttr "M_chest_CTL.ry" "unitConversion23.i";
connectAttr "bezierShape1.ws" "spineB_poci.ic";
connectAttr "spineB_param_MULT.ox" "spineB_poci.pr";
connectAttr "spine_param_MULT.ox" "spineB_param_MULT.i1x";
connectAttr "spineB_twist_PLS.o1" "unitConversion14.i";
connectAttr "spine_spineB_twist_MULT.ox" "spineB_twist_PLS.i1[0]";
connectAttr "chest_spineB_twist_MULT.ox" "spineB_twist_PLS.i1[1]";
connectAttr "spine_spineB_twist_RMAP.ov" "spine_spineB_twist_MULT.i2x";
connectAttr "unitConversion19.o" "spine_spineB_twist_MULT.i1x";
connectAttr "spineB_param_MULT.ox" "spine_spineB_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spineB_twist_RMAP.imn";
connectAttr "M_spine_CTL.ry" "unitConversion19.i";
connectAttr "chest_spineB_twist_RMAP.ov" "chest_spineB_twist_MULT.i2x";
connectAttr "unitConversion24.o" "chest_spineB_twist_MULT.i1x";
connectAttr "spineB_param_MULT.ox" "chest_spineB_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spineB_twist_RMAP.imx";
connectAttr "M_chest_CTL.ry" "unitConversion24.i";
connectAttr "bezierShape1.ws" "spineC_poci.ic";
connectAttr "spineC_param_MULT.ox" "spineC_poci.pr";
connectAttr "spine_param_MULT.ox" "spineC_param_MULT.i1x";
connectAttr "spineC_twist_PLS.o1" "unitConversion15.i";
connectAttr "spine_spineC_twist_MULT.ox" "spineC_twist_PLS.i1[0]";
connectAttr "chest_spineC_twist_MULT.ox" "spineC_twist_PLS.i1[1]";
connectAttr "spine_spineC_twist_RMAP.ov" "spine_spineC_twist_MULT.i2x";
connectAttr "unitConversion20.o" "spine_spineC_twist_MULT.i1x";
connectAttr "spineC_param_MULT.ox" "spine_spineC_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spineC_twist_RMAP.imn";
connectAttr "M_spine_CTL.ry" "unitConversion20.i";
connectAttr "chest_spineC_twist_RMAP.ov" "chest_spineC_twist_MULT.i2x";
connectAttr "unitConversion25.o" "chest_spineC_twist_MULT.i1x";
connectAttr "spineC_param_MULT.ox" "chest_spineC_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spineC_twist_RMAP.imx";
connectAttr "M_chest_CTL.ry" "unitConversion25.i";
connectAttr "bezierShape1.ws" "spineD_poci.ic";
connectAttr "spineD_param_MULT.ox" "spineD_poci.pr";
connectAttr "spine_param_MULT.ox" "spineD_param_MULT.i1x";
connectAttr "spineD_twist_PLS.o1" "unitConversion16.i";
connectAttr "spine_spineD_twist_MULT.ox" "spineD_twist_PLS.i1[0]";
connectAttr "chest_spineD_twist_MULT.ox" "spineD_twist_PLS.i1[1]";
connectAttr "spine_spineD_twist_RMAP.ov" "spine_spineD_twist_MULT.i2x";
connectAttr "unitConversion21.o" "spine_spineD_twist_MULT.i1x";
connectAttr "spineD_param_MULT.ox" "spine_spineD_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_spineD_twist_RMAP.imn";
connectAttr "M_spine_CTL.ry" "unitConversion21.i";
connectAttr "chest_spineD_twist_RMAP.ov" "chest_spineD_twist_MULT.i2x";
connectAttr "unitConversion26.o" "chest_spineD_twist_MULT.i1x";
connectAttr "spineD_param_MULT.ox" "chest_spineD_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_spineD_twist_RMAP.imx";
connectAttr "M_chest_CTL.ry" "unitConversion26.i";
connectAttr "bezierShape1.ws" "chest_poci.ic";
connectAttr "chest_param_MULT.ox" "chest_poci.pr";
connectAttr "spine_param_MULT.ox" "chest_param_MULT.i1x";
connectAttr "chest_twist_PLS.o1" "unitConversion17.i";
connectAttr "spine_chest_twist_MULT.ox" "chest_twist_PLS.i1[0]";
connectAttr "chest_chest_twist_MULT.ox" "chest_twist_PLS.i1[1]";
connectAttr "spine_chest_twist_RMAP.ov" "spine_chest_twist_MULT.i2x";
connectAttr "unitConversion22.o" "spine_chest_twist_MULT.i1x";
connectAttr "chest_param_MULT.ox" "spine_chest_twist_RMAP.i";
connectAttr "twist_spine_CTL.end_uvalue" "spine_chest_twist_RMAP.imn";
connectAttr "M_spine_CTL.ry" "unitConversion22.i";
connectAttr "chest_chest_twist_RMAP.ov" "chest_chest_twist_MULT.i2x";
connectAttr "unitConversion27.o" "chest_chest_twist_MULT.i1x";
connectAttr "chest_param_MULT.ox" "chest_chest_twist_RMAP.i";
connectAttr "twist_chest_CTL.end_uvalue" "chest_chest_twist_RMAP.imx";
connectAttr "M_chest_CTL.ry" "unitConversion27.i";
connectAttr "fk_spineA_scaleSpaceMat_MAT.o" "fk_spineA_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spineA_space.wm" "fk_spineA_scaleSpaceMat_MAT.i[0]";
connectAttr "parent_space_LOC.wim" "fk_spineA_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_spineB_scaleSpaceMat_MAT.o" "fk_spineB_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spineB_space.wm" "fk_spineB_scaleSpaceMat_MAT.i[0]";
connectAttr "parent_space_LOC.wim" "fk_spineB_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_spineC_scaleSpaceMat_MAT.o" "fk_spineC_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spineC_space.wm" "fk_spineC_scaleSpaceMat_MAT.i[0]";
connectAttr "parent_space_LOC.wim" "fk_spineC_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_spineD_scaleSpaceMat_MAT.o" "fk_spineD_scaleSpaceMat_DMTX.imat";
connectAttr "twist_spineD_space.wm" "fk_spineD_scaleSpaceMat_MAT.i[0]";
connectAttr "parent_space_LOC.wim" "fk_spineD_scaleSpaceMat_MAT.i[1]";
connectAttr "fk_chest_scaleSpaceMat_MAT.o" "fk_chest_scaleSpaceMat_DMTX.imat";
connectAttr "twist_chest_space.wm" "fk_chest_scaleSpaceMat_MAT.i[0]";
connectAttr "parent_space_LOC.wim" "fk_chest_scaleSpaceMat_MAT.i[1]";
connectAttr "parent_space_LOC.wm" "fk_joint_DMTX.imat";
connectAttr "fk_spineB_localMat_MAT.o" "fk_spineB_localMat_DMTX.imat";
connectAttr "FK_spineB_local_init_space.wm" "fk_spineB_localMat_MAT.i[0]";
connectAttr "FK_spineA_local_init_space.wim" "fk_spineB_localMat_MAT.i[1]";
connectAttr "fk_spineC_localMat_MAT.o" "fk_spineC_localMat_DMTX.imat";
connectAttr "FK_spineC_local_init_space.wm" "fk_spineC_localMat_MAT.i[0]";
connectAttr "FK_spineB_local_init_space.wim" "fk_spineC_localMat_MAT.i[1]";
connectAttr "fk_spineD_localMat_MAT.o" "fk_spineD_localMat_DMTX.imat";
connectAttr "FK_spineD_local_init_space.wm" "fk_spineD_localMat_MAT.i[0]";
connectAttr "FK_spineC_local_init_space.wim" "fk_spineD_localMat_MAT.i[1]";
connectAttr "fk_chest_localMat_MAT.o" "fk_chest_localMat_DMTX.imat";
connectAttr "FK_chest_local_init_space.wm" "fk_chest_localMat_MAT.i[0]";
connectAttr "FK_spineD_local_init_space.wim" "fk_chest_localMat_MAT.i[1]";
connectAttr "parent_space_LOC.wm" "fk_control_DMTX.imat";
connectAttr "FK_spineC_JNT.wm" "FK_spineC_JNT_DMTX.imat";
connectAttr "FK_chest_JNT.wm" "FK_chest_JNT_DCMX.imat";
connectAttr "FK_hip_space.wm" "FK_hip_space_MTMX.i[0]";
connectAttr "FK_spineA_JNT_space.pim" "FK_hip_space_MTMX.i[1]";
connectAttr "FK_hip_space_MTMX.o" "decomposeMatrix45.imat";
connectAttr "FK_spineA_JNT.wm" "FK_spineA_JNT_DCMX.imat";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
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
connectAttr "armlen_minus_softikV1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minus_dif1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "conditionfor_zerodivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_uparm1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_loarm1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ikfk_shoulder_t1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikfk_shoulder_r1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2elbow_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2wrist_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_Vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_mat1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_vec1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_mat1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_arm_space_decomp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_localMat1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat_decomp1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "init_wrist_local1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_elbow_local1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec1_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2elbow_vec1_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2wrist_vec1_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armlen_minus_softikV2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minus_dif2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "conditionfor_zerodivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_uparm2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_loarm2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ikfk_shoulder_t2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikfk_shoulder_r2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2elbow_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2wrist_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_Vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_mat2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_vec2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_mat2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix30.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_arm_space_decomp2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_localMat2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat_decomp2.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "init_wrist_local2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_elbow_local2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix31.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix32.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix33.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armlen_minus_softikV3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen_minus_dif3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "divide_softikV3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "conditionfor_zerodivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "negate_val3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "power_val3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mult_softikV3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "result_softik_len3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "softikV_condition3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrllen_condition3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparmLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarmLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctrlLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_ratio3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armLen7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_ratio6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_uparmLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_uparm3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "uparm_plus_stretch4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_uparm3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "cond_loarm3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretched_loarmLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchCtrl_loarm3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "loarm_plus_stretch4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretchedLen3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "stretch_output_mul_ctrlVal3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ikfk_shoulder_t3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ikfk_shoulder_r3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix34.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix35.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix36.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2elbow_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2wrist_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_y_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_z_Vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_aligned_mat3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_x_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix37.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_y_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_z_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_x_vec3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow_aligned_mat3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix38.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix39.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix40.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix41.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "input_arm_space_decomp3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_localMat3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wrist_ik_ctrl_localMat_decomp3.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "init_wrist_local3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_elbow_local3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "init_shoulder_local3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_ctrl_local3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix30.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix42.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix31.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix43.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix32.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix44.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2shoulder_vec3_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2wrist_vec3_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elbow2wrist_vec3_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shld2elbow_vec3_rvs.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ctl_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_joint_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_control_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_spine_CTL_control_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fit_spine_sub_000_CTL_control_DMTX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_chest_sub_001_CTL_control_DMTX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "fit_chest_CTL_control_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineA_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineA_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineB_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineB_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineC_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "FK_spineC_JNT_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineC_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineD_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_spineD_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_spineD_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_scaleSpaceMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "fk_chest_scaleSpaceMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "fk_chest_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_spine_CTL_rotMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_chest_CTL_localMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_chest_CTL_localMat_MAT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "M_chest_CTL_rotMat_DMTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_chest_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_hip_space_MTMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix45.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FK_spineA_JNT_DCMX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver2.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver3.msg" ":ikSystem.sol" -na;
// End of protoBody01.ma
