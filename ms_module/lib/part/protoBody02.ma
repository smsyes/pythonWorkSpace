//Maya ASCII 2019 scene
//Name: protoBody02.ma
//Last modified: Mon, Apr 12, 2021 12:55:09 AM
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
	rename -uid "13F8E040-407E-6901-6FEF-C18157FFE82E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.8944780611397389 13.775787664365414 36.773322184093459 ;
	setAttr ".r" -type "double3" 2.061647270389765 7.4000000000007686 -2.5056777278086018e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E64AD648-4DDC-A3DF-8498-D2AC9064F49E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 36.766031564104495;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1 20 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B9729BA5-4C9E-AB40-2DFA-4682E7D7D1A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B5105A00-4B25-E081-9DB7-B08E8CC4F5E0";
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
	rename -uid "A9CCAB73-4929-AA41-2691-73830B3A6465";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B1C9F65D-4E9E-6AE5-EFF9-0885D82FF1E3";
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
	rename -uid "2813B08D-458D-486D-6BC4-D0A7EFA869D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "343FDFF6-4E25-EA32-4177-EC98B887D3B5";
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
createNode transform -n "L_arm";
	rename -uid "CF85D5EE-4FEE-9664-4266-88AEDD15C32A";
createNode transform -n "L_input_arm_grp" -p "L_arm";
	rename -uid "457A5DA7-40C4-807D-0471-148F663E87FD";
	setAttr ".v" no;
createNode transform -n "L_input_arm" -p "L_input_arm_grp";
	rename -uid "662768CB-4317-4A1B-F3B9-63A399D5A537";
createNode transform -n "L_input_arm_space" -p "L_input_arm";
	rename -uid "BB0C000F-47DB-4E78-DE93-379402109E9A";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 1 20 0 ;
createNode nurbsCurve -n "L_input_arm_spaceShape" -p "L_input_arm_space";
	rename -uid "FD3F4B1A-4584-DDED-A57A-DE9A33BA5E54";
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
	rename -uid "190F2258-4FD9-3586-9EAF-BFBB32D47CD4";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "L_fit_shoulder" -p "|L_arm|L_input_arm_grp|L_fit_space";
	rename -uid "234E7987-4978-4835-8803-E69297D61419";
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
	rename -uid "4DC062DE-46EF-4FCA-77BD-96BF64D04279";
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
	rename -uid "71F52488-487E-0E9E-1393-C591898E89AE";
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
	rename -uid "52A266DC-420E-96A3-F0C2-5398D567E47F";
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
	rename -uid "DBBAC44F-4A1B-640C-52BA-F3855D8B5551";
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
	rename -uid "B6460A1E-4844-DF00-2CDE-C1A00053514C";
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
	rename -uid "FAD6EDCC-4C8E-F41C-0D58-76A31A78E6F1";
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
	rename -uid "318900B1-4FC5-B843-4FBF-02A1627A6D7E";
	setAttr ".v" no;
createNode transform -n "L_init_space" -p "L_arm_motion_grp";
	rename -uid "49EF7A44-48A1-0692-6590-3FA733E51B54";
	setAttr ".t" -type "double3" 1 20 0 ;
createNode transform -n "L_init_shoulder" -p "|L_arm|L_arm_motion_grp|L_init_space";
	rename -uid "45473A66-4E72-B5A0-A521-82853B5114AE";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".r" -type "double3" 0 3.0586426394651971 0 ;
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "L_init_elbow" -p "L_init_shoulder";
	rename -uid "31043D42-4175-CF66-1857-FD8A3B99713D";
	setAttr ".t" -type "double3" 4.0057065396137475 -3.5527136788005009e-15 3.9371147730893341e-09 ;
	setAttr ".r" -type "double3" 0 -6.1172852789303951 0 ;
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "L_init_wrist" -p "L_init_elbow";
	rename -uid "D05F7628-47C9-6F38-6720-1F9B2D774E8B";
	setAttr ".t" -type "double3" 4.0057063169363554 3.5527136788005009e-15 -3.9371144122668511e-09 ;
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "L_motion_ik_grp" -p "L_arm_motion_grp";
	rename -uid "182AAF25-452F-6B9A-CD97-1AAA1C038F24";
createNode transform -n "L_softik_input" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "5DD3B265-430B-5508-7CD2-F4981722DB57";
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
	rename -uid "9D3C02E0-4800-1861-E4E0-80BA915E1DBC";
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
	rename -uid "286F5812-4EF3-DAD4-1360-B993B472C26D";
createNode locator -n "L_ik_shoulder_spaceShape" -p "L_ik_shoulder_space";
	rename -uid "3D2857CF-4F28-1349-7FDF-67B43DE4A4A8";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrlaim" -p "L_ik_shoulder_space";
	rename -uid "0BC85AB0-4936-0F0D-AAAB-E1BD4ECC291A";
createNode locator -n "L_ik_ctrlaimShape" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim";
	rename -uid "87167E3D-40E1-2932-A194-59A8592C1495";
	setAttr -k off ".v";
createNode transform -n "L_softik_output_loc" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim";
	rename -uid "8CB443A5-46DA-AA49-5523-37B83F9BD9FC";
createNode locator -n "L_softik_output_locShape" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "A8DC0D10-40AB-DC25-4CFC-6888F0F20269";
	setAttr -k off ".v" no;
createNode transform -n "L_stretch_output_loc" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "4FB02917-4A27-F4F9-E9C7-AA8A1A43EA0A";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "L_stretch_output_locShape" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "2F535885-4BF3-D862-7EB5-1CAF23C0A428";
	setAttr -k off ".v" no;
createNode ikHandle -n "L_ikHandle4" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "00A90A8B-4492-D78B-09BB-C5A81C9E4322";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_ikHandle4_poleVectorConstraint1" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4";
	rename -uid "B61E55CD-4907-B76A-F60E-04936AFF6953";
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
	rename -uid "BE130AD0-4C78-4D80-E416-6BAE13BB6D8F";
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
	rename -uid "2A3FD0E4-469F-BE06-E221-1FA2BD623310";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "L_ik_shoulder_space_upVecShape" -p "L_ik_shoulder_space_upVec";
	rename -uid "D0A3E175-4937-50A4-4220-C3A850330858";
	setAttr -k off ".v";
createNode transform -n "L_stretchik_input" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "F9528537-49BB-6BA7-7D6E-3284E9286B29";
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
	rename -uid "93E2984B-4D15-DB63-3EE7-D8B81A0BF422";
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
createNode joint -n "L_ik_scapula" -p "|L_arm|L_arm_motion_grp|L_motion_ik_grp";
	rename -uid "819E3513-4C70-885D-361A-9C941ED695F5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "L_ik_shoulder" -p "L_ik_scapula";
	rename -uid "17C9A266-4D8F-19A3-A0F7-F49E6BCDC7A3";
	setAttr ".r" -type "double3" -9.9405635643459271e-15 -4.8597647910875947e-05 -7.6971545051646337e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_elbow" -p "L_ik_shoulder";
	rename -uid "694D0742-4965-F7D9-B4DC-7F8C481218D1";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 0.00010082841269434661 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_wrist" -p "L_ik_elbow";
	rename -uid "7700A190-4184-5D3C-61EE-68B8A61DC416";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "L_effector4" -p "L_ik_elbow";
	rename -uid "5A5B0AEB-4B8F-4C59-2E48-A394B67B11BA";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "L_motion_fk_grp" -p "L_arm_motion_grp";
	rename -uid "41C30870-4453-B98A-611E-E6B529283C14";
createNode joint -n "L_fk_scapula" -p "|L_arm|L_arm_motion_grp|L_motion_fk_grp";
	rename -uid "9E721F63-4333-C801-C08F-D0970CAA2274";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "L_fk_shoulder" -p "L_fk_scapula";
	rename -uid "9A92303B-4A59-5CEE-6013-EA84A8DD488F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_elbow" -p "L_fk_shoulder";
	rename -uid "5A6B21DD-4AF7-D187-F90C-6DBA3778804B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_wrist" -p "L_fk_elbow";
	rename -uid "7F22F3E9-4248-197E-7DB0-D3853941442B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_output_grp" -p "L_arm";
	rename -uid "CD725F17-42B3-739C-61A3-C0811EB47E7E";
createNode joint -n "L_output_scapula" -p "|L_arm|L_output_grp";
	rename -uid "11D00881-48EE-8050-FAC5-42A67522A16A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "L_output_shoulder" -p "L_output_scapula";
	rename -uid "382E4885-488D-3824-83F8-CEBBB285B28D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_elbow" -p "L_output_shoulder";
	rename -uid "10E9D927-4EAA-901F-2B70-F4961D9A7BA8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_wrist" -p "L_output_elbow";
	rename -uid "D1C76ABD-40F2-2A64-B6BA-368597465CF1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_arm_ctrl_grp" -p "L_arm";
	rename -uid "7D2B0106-40C6-BF5A-42C4-1BBEFA93E2E2";
createNode transform -n "L_ik_shoulder_ctrl_space" -p "L_arm_ctrl_grp";
	rename -uid "F008BB99-4215-E199-A58F-9CB3E1FA419E";
createNode transform -n "L_ik_elbow_polevector_space" -p "L_ik_shoulder_ctrl_space";
	rename -uid "BB42816D-4F0C-4217-B8F3-B4800B8EB0D6";
createNode transform -n "L_ik_polevector_space" -p "L_ik_elbow_polevector_space";
	rename -uid "6F9C0719-4D7F-E034-7B63-9A9445FA0B94";
	setAttr ".t" -type "double3" -3.0000000476837152 -5.5552531578749917e-25 -3.9999999642372126 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "L_ik_polevector" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space";
	rename -uid "43C4144B-4BC3-AD54-B31A-8B8790B2F488";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "L_ik_polevectorShape" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_elbow_polevector_space|L_ik_polevector_space|L_ik_polevector";
	rename -uid "484735F3-4CFC-5694-2899-C29B7925F20A";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrl_space" -p "L_ik_shoulder_ctrl_space";
	rename -uid "8C7E796B-4404-36C2-E489-218DB25EE429";
createNode transform -n "L_ik_ctrl" -p "|L_arm|L_arm_ctrl_grp|L_ik_shoulder_ctrl_space|L_ik_ctrl_space";
	rename -uid "8527DECF-4B91-320D-043E-EBAFE1A7816D";
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
	rename -uid "46FCA372-49F0-2340-8443-A2A44E78D89F";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "L_ik_scapula_ctrl_offGRP" -p "L_ik_shoulder_ctrl_space";
	rename -uid "0763BF16-40AC-2EBF-8E90-4882C8DF366D";
createNode transform -n "L_ik_scapula_ctrl_spcGRP" -p "L_ik_scapula_ctrl_offGRP";
	rename -uid "E626EC57-410A-7EE4-EF17-EABA9FC4EBBA";
createNode transform -n "L_ik_scapula_ctrl" -p "L_ik_scapula_ctrl_spcGRP";
	rename -uid "8BF13A18-4A29-DE3C-0169-90B1D9209B80";
createNode nurbsCurve -n "L_ik_scapula_ctrlShape" -p "L_ik_scapula_ctrl";
	rename -uid "5A948B4A-4056-6D38-B3ED-94BD2CDF1084";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78361162489122516 0.47016697493473436 
		-1.253778599825959 -6.7857323231109159e-17 0.66491651253263395 -1.0857171716977467e-16 
		0.78361162489122516 0.47016697493473436 1.253778599825959 1.108194187554389 3.4469389425149066e-17 
		1.7731107000870225 0.78361162489122516 -0.47016697493473436 1.253778599825959 1.1100856969603232e-16 
		-0.66491651253263373 1.7761371151365172e-16 -0.78361162489122516 -0.47016697493473436 
		-1.253778599825959 -1.108194187554389 -9.0674430046797638e-17 -1.7731107000870225 
		0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_ik_scapula_ctrl_offGRP_parentConstraint1" -p "L_ik_scapula_ctrl_offGRP";
	rename -uid "8FF09A9A-4386-23D2-36CA-2795FA7E87D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FK_chest_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.0000000000000013 2 0 ;
	setAttr ".rst" -type "double3" -1.9999999999999987 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_ik_fk_blend_ctrl_space" -p "L_arm_ctrl_grp";
	rename -uid "1CD4A515-4319-DC11-68DB-C1B92E554587";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "L_ik_fk_blend_ctrl" -p "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space";
	rename -uid "FBC96378-44E5-A76D-3DDF-35968378EA3F";
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
	setAttr -k on ".fit_on_off";
createNode nurbsCurve -n "L_ik_fk_blend_ctrlShape" -p "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl";
	rename -uid "CD0D658B-4B92-8D6E-3D43-E08459DEF6CC";
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
createNode transform -n "L_fk_scapula_ctrl_offGRP" -p "L_arm_ctrl_grp";
	rename -uid "3298B20B-48A9-2791-1BCD-49A4FE7E8AA0";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 0 0 ;
createNode transform -n "L_fk_scapula_ctrl_spcGRP" -p "L_fk_scapula_ctrl_offGRP";
	rename -uid "16C54DD6-49D0-567C-2612-D8AA9BF10D2F";
createNode transform -n "L_fk_scapula_ctrl" -p "L_fk_scapula_ctrl_spcGRP";
	rename -uid "291E85D2-4C3E-EA71-8D8C-D680D70E3685";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "L_fk_scapula_ctrlShape" -p "L_fk_scapula_ctrl";
	rename -uid "69CEEC13-480C-1912-F9AE-76BEA6F06FC0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.6613381477509392e-16 1.253778599825959 -1.253778599825959
		-3.6977854932234928e-32 1.7731107000870217 -1.0857171716977467e-16
		6.6613381477509392e-16 1.2537785998259587 1.253778599825959
		8.8817841970012523e-16 9.191837180039737e-17 1.7731107000870225
		6.6613381477509392e-16 -1.2537785998259587 1.253778599825959
		7.3955709864469857e-32 -1.7731107000870221 1.7761371151365172e-16
		-6.6613381477509392e-16 -1.2537785998259587 -1.253778599825959
		-8.8817841970012523e-16 -2.4179848012479354e-16 -1.7731107000870225
		-6.6613381477509392e-16 1.253778599825959 -1.253778599825959
		-3.6977854932234928e-32 1.7731107000870217 -1.0857171716977467e-16
		6.6613381477509392e-16 1.2537785998259587 1.253778599825959
		;
createNode transform -n "L_fk_shoulder_ctrl_space" -p "L_fk_scapula_ctrl";
	rename -uid "B3558211-42C3-D0E8-AC98-41B3170F8DB0";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_shoulder_ctrl" -p "L_fk_shoulder_ctrl_space";
	rename -uid "D21E5A20-4BE4-C258-D5D0-E4B631DB498E";
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
	rename -uid "8C393EE3-417E-5C07-68C6-ACA133FB72C7";
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
	rename -uid "044053A3-4604-5EEE-AC10-A3A4ACC0A2AA";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_elbow_ctrl" -p "L_fk_elbow_ctrl_space";
	rename -uid "8706C09B-4E7C-DC9A-5B2C-C0BE15050872";
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
	rename -uid "A19D3189-48B6-E0ED-184C-27BF189D4C49";
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
	rename -uid "8DF44605-4485-1C48-67C9-BFAB4E88F8FC";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_wrist_ctrl" -p "L_fk_wrist_ctrl_space";
	rename -uid "7C5E4F1A-4A41-5931-A489-DC83AFB3EBB8";
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
	rename -uid "CA3D42B3-47D4-0640-8445-1C9E104E5AE3";
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
	rename -uid "F4A0E042-41EC-102D-085F-EFBE9986C371";
createNode transform -n "R_input_arm_grp" -p "R_arm";
	rename -uid "90D299BC-4AD3-EAE5-FF03-33A8F0008036";
createNode transform -n "R_input_arm" -p "R_input_arm_grp";
	rename -uid "B6284BFB-4A93-43EA-32F3-A59F20DD33DC";
createNode transform -n "R_input_arm_space" -p "R_input_arm";
	rename -uid "00F5F31C-4698-3B0B-37E8-B1A29354D6C0";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -1 20 0 ;
createNode nurbsCurve -n "R_input_arm_spaceShape" -p "R_input_arm_space";
	rename -uid "D3F156FF-4686-1C8A-C30A-BFA6498DD2C6";
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
	rename -uid "512D6E83-483F-52C3-217E-3C893BAB4886";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "R_fit_shoulder" -p "|R_arm|R_input_arm_grp|R_fit_space";
	rename -uid "A48B39B1-4D8F-DFC6-0FD9-0F9FC4CF4FB0";
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
	rename -uid "35BEFD58-43B7-8D27-8320-AC9BC4B2D40F";
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
	rename -uid "A98806BF-4D8F-8D0F-5FB6-DE9038651B17";
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
	rename -uid "01A548DF-47E9-2067-6A6A-5CBFA8FCDCE3";
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
	rename -uid "F38B5EE4-42D9-2DB5-E437-EDA195CECD2F";
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
	rename -uid "83775961-47FA-269B-BCDD-9F8E4883B880";
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
	rename -uid "502E28F9-47A3-1580-7D21-03B3B2AB7842";
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
	rename -uid "974A8928-4A5C-3294-2EDA-75A3F9F557D6";
	setAttr ".v" no;
createNode transform -n "R_init_space" -p "R_arm_motion_grp";
	rename -uid "BE29382B-40B4-ACD8-32B8-84B63C2EF2CC";
createNode transform -n "R_init_shoulder" -p "|R_arm|R_arm_motion_grp|R_init_space";
	rename -uid "40878C89-459F-C1B9-8CE4-5DB80328A4AB";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "R_init_elbow" -p "R_init_shoulder";
	rename -uid "1D8D1A0B-4880-A343-64BE-80ABFF81EFC8";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "R_init_wrist" -p "R_init_elbow";
	rename -uid "E2A90B89-4CD6-BEEA-FA94-8AA54FCB72C7";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "R_motion_ik_grp" -p "R_arm_motion_grp";
	rename -uid "B174F51F-43D5-7389-8221-79A667DFD86A";
createNode transform -n "R_softik_input" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "595CB5A0-4977-6333-9BD1-DEAF7ADAB1AD";
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
	rename -uid "0E57F54A-41D6-5EA9-9A62-589765962C73";
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
	rename -uid "E2DAD29D-4240-A39E-3B46-A3A8BEB1C9DE";
createNode locator -n "R_ik_shoulder_spaceShape" -p "R_ik_shoulder_space";
	rename -uid "8DDCE024-4F6B-BF4C-03EA-9CB92022A951";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrlaim" -p "R_ik_shoulder_space";
	rename -uid "7A9A56E4-4035-610F-F849-8880062CA052";
createNode locator -n "R_ik_ctrlaimShape" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim";
	rename -uid "369AD2FF-4903-A969-D828-A8A9ED15D606";
	setAttr -k off ".v";
createNode transform -n "R_softik_output_loc" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim";
	rename -uid "A6484FB4-4E78-2BA0-B685-7493E3937E82";
createNode locator -n "R_softik_output_locShape" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "B6934C23-4DEA-F713-4DAE-198D29071934";
	setAttr -k off ".v" no;
createNode transform -n "R_stretch_output_loc" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "02E03979-4E5B-DF0E-8BA4-E6A62CE55AB7";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "R_stretch_output_locShape" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "D6D30CC9-4B00-D406-EE0E-D7811918C5AF";
	setAttr -k off ".v" no;
createNode ikHandle -n "R_ikHandle4" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "66255978-427B-D141-A040-B7995FD86682";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_ikHandle4_poleVectorConstraint1" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp|R_ik_shoulder_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4";
	rename -uid "B7680537-4C41-52E2-5216-629E68B892AE";
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
	rename -uid "2AA95063-4B19-705A-02EB-2891A7DBB975";
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
	rename -uid "93E8677E-4106-562E-450B-F4BC5451E675";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "R_ik_shoulder_space_upVecShape" -p "R_ik_shoulder_space_upVec";
	rename -uid "3062813F-44C5-4B84-DB94-FD96D9C5875A";
	setAttr -k off ".v";
createNode transform -n "R_stretchik_input" -p "|R_arm|R_arm_motion_grp|R_motion_ik_grp";
	rename -uid "21D147FC-4443-C19A-C734-8DB034C7CDB4";
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
	rename -uid "3715912C-4E55-0B49-466C-D4AE3748CF15";
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
	rename -uid "9F4FCEAA-4EAA-1F4B-3021-3DB3FDD0EB9B";
	setAttr ".r" -type "double3" -179.99999988017962 4.8597647922012221e-05 179.99999999359767 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_elbow" -p "R_ik_shoulder";
	rename -uid "28FF7297-4E40-5177-238F-B59E98F02F26";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 0.00010082841459724588 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_wrist" -p "R_ik_elbow";
	rename -uid "D38B2670-467F-BBE3-01A8-979BE7EF961B";
	setAttr ".t" -type "double3" 4.0057063102722168 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "R_effector4" -p "R_ik_elbow";
	rename -uid "EAD7885E-4DCC-CEB3-E12D-139C65399072";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "R_motion_fk_grp" -p "R_arm_motion_grp";
	rename -uid "DFCD1D1B-460D-D168-05C0-0891DF6F5C25";
createNode joint -n "R_fk_shoulder" -p "|R_arm|R_arm_motion_grp|R_motion_fk_grp";
	rename -uid "6B163F3B-46FD-370A-ADA1-D1ACDB198604";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_elbow" -p "R_fk_shoulder";
	rename -uid "700DA821-4332-9E18-F384-D584514A262E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_wrist" -p "R_fk_elbow";
	rename -uid "E5B257B1-4FB1-91A3-2A15-25B3B3C94A4A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_output_grp" -p "R_arm";
	rename -uid "4E286D65-4040-DA6D-8CF3-2CA8EC2BFCFA";
createNode joint -n "R_output_shoulder" -p "|R_arm|R_output_grp";
	rename -uid "8FB82C76-43A5-7D19-BB43-0D8B1F20E908";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_elbow" -p "R_output_shoulder";
	rename -uid "B19291EE-4B18-ACCF-315A-809AE846B98A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_wrist" -p "R_output_elbow";
	rename -uid "7528BE45-4B95-7A14-0D09-C5878883AF52";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_arm_ctrl_grp" -p "R_arm";
	rename -uid "ECBEE3D5-4D1C-0F2D-7DC1-E2BDD7982601";
createNode transform -n "R_ik_shoulder_ctrl_space" -p "R_arm_ctrl_grp";
	rename -uid "B038BD1E-4D97-40E9-D509-429D2D7C7290";
createNode transform -n "R_ik_elbow_polevector_space" -p "R_ik_shoulder_ctrl_space";
	rename -uid "700FDC62-42A8-F12D-3A52-02B660D6C9B7";
createNode transform -n "R_ik_polevector_space" -p "R_ik_elbow_polevector_space";
	rename -uid "96A48873-4FEF-A69A-FB0E-D3BA01D9BD27";
	setAttr ".t" -type "double3" 3 -5.5552531578749917e-25 4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "R_ik_polevector" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space";
	rename -uid "E6B358F9-427C-3503-CD13-20AA469994AA";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "R_ik_polevectorShape" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_elbow_polevector_space|R_ik_polevector_space|R_ik_polevector";
	rename -uid "84A15C95-4E80-6346-A53F-C988C4D7654D";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrl_space" -p "R_ik_shoulder_ctrl_space";
	rename -uid "4507391A-433D-5C0F-A5B3-058E163ADF6C";
createNode transform -n "R_ik_ctrl" -p "|R_arm|R_arm_ctrl_grp|R_ik_shoulder_ctrl_space|R_ik_ctrl_space";
	rename -uid "005C92D0-4D6D-A5BE-8966-A79055AC5D6D";
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
	rename -uid "82F8ADA9-4DCB-9AF0-E7B7-5493E106213A";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "R_ik_fk_blend_ctrl_space" -p "R_arm_ctrl_grp";
	rename -uid "6E36C64A-4B11-79D4-AA83-3DB8DE80A2A7";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_ik_fk_blend_ctrl" -p "|R_arm|R_arm_ctrl_grp|R_ik_fk_blend_ctrl_space";
	rename -uid "CD868E7A-4B8B-F75C-18B8-E6B97B062F25";
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
	rename -uid "160CE2AA-43EF-38A0-F8F2-F588E443C513";
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
	rename -uid "ED9F61B8-4D83-B0C6-18D7-068DA71B66BC";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_shoulder_ctrl" -p "R_fk_shoulder_ctrl_space";
	rename -uid "69BB5CE8-4AD5-F94F-FD31-9E98ED5DE10D";
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
	rename -uid "5C65B061-48B0-4885-11A4-BA9D5F6F6169";
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
	rename -uid "D04536C1-4AAB-AA61-18EC-8D96CBC19937";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_elbow_ctrl" -p "R_fk_elbow_ctrl_space";
	rename -uid "AB33D276-4C0C-51EC-2BE9-56ACE2EDA856";
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
	rename -uid "7839C8D9-4640-1CBE-45DF-2AAAC551A4A7";
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
	rename -uid "B59A0587-4C1B-EB02-2E20-B4829FFED2E8";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_wrist_ctrl" -p "R_fk_wrist_ctrl_space";
	rename -uid "AB54515C-4C43-4A63-7264-D79AC6A41B54";
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
	rename -uid "891D4CB9-4534-2658-D186-BDBAB3B9DE12";
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
	rename -uid "78D20839-4FD8-7C7A-D943-8C84191716FA";
createNode transform -n "L_input_leg_grp" -p "L_leg";
	rename -uid "4C484F2B-4CDF-630F-976A-8A99C828318D";
createNode transform -n "L_input_leg" -p "L_input_leg_grp";
	rename -uid "FEA9F0EB-4029-7B70-2A22-238A455403E1";
createNode transform -n "L_input_leg_space" -p "L_input_leg";
	rename -uid "A305EF6C-4E5F-C9BE-57C4-1BADC02289A0";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" 1 12 0 ;
createNode nurbsCurve -n "L_input_leg_spaceShape" -p "L_input_leg_space";
	rename -uid "39E7F046-44C4-6CC8-F2EA-C1AA30254CED";
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
	rename -uid "302121C8-4B5F-3913-71C4-D8B0AABDC619";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "L_fit_thigh" -p "|L_leg|L_input_leg_grp|L_fit_space";
	rename -uid "B25EEDF0-4078-6E42-2F84-BE87CA5D0E15";
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
	rename -uid "1A08F6FC-4A82-6308-FB4F-2AA1367F7B31";
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
	rename -uid "A9F298A8-41F1-6413-FE33-4FAD71540BEE";
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
	rename -uid "3ED84166-4E0E-E9F8-9E19-5BA61B504C7B";
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
	rename -uid "0601E0BF-4440-B803-CBEF-1CB7CE5656FC";
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
	rename -uid "AA6BFCE1-43D1-B3B3-5CF1-D7A7D7863EF7";
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
	rename -uid "A5C2F6C0-4535-6E05-4691-DC8DDF039381";
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
	rename -uid "4A7AC9D5-4D4C-EE04-CBAA-47A62FECC68B";
	setAttr ".v" no;
createNode transform -n "L_init_space" -p "L_leg_motion_grp";
	rename -uid "88F33D50-42C5-8F6D-EED2-3194972DD7C7";
createNode transform -n "L_init_thigh" -p "|L_leg|L_leg_motion_grp|L_init_space";
	rename -uid "8C50B884-469E-066C-CA87-E5A6574CE42D";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "L_init_knee" -p "L_init_thigh";
	rename -uid "A0B1C21F-49B5-7B9C-61EE-2FA163B181F9";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "L_init_ankle" -p "L_init_knee";
	rename -uid "493E49E0-4852-CC9F-85EC-9FAF1460C352";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "L_motion_ik_grp" -p "L_leg_motion_grp";
	rename -uid "6A45DE19-42EA-9C30-8210-3DBBD05E85CA";
createNode transform -n "L_softik_input" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "FDE31A32-4525-4E52-6C7D-CE9708DBA5DE";
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
	rename -uid "70700613-4DA7-5ED8-36AE-2E8DD5209BDE";
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
	rename -uid "782D73AD-4819-0331-82F2-DEB9BE94B94B";
createNode locator -n "L_ik_thigh_spaceShape" -p "L_ik_thigh_space";
	rename -uid "EFB51192-478B-64A1-87FB-51BD4EB872BF";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrlaim" -p "L_ik_thigh_space";
	rename -uid "5F809216-4AFE-E889-BCD4-198E91414E55";
createNode locator -n "L_ik_ctrlaimShape" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim";
	rename -uid "10CFB642-4CC8-4776-3A38-C28959719D62";
	setAttr -k off ".v";
createNode transform -n "L_softik_output_loc" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim";
	rename -uid "1BF65B04-45FF-2B8C-BCC3-E0B391A971B4";
createNode locator -n "L_softik_output_locShape" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "33B10FCC-43CE-5A5A-F190-4C9E2F7CD24D";
	setAttr -k off ".v" no;
createNode transform -n "L_stretch_output_loc" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc";
	rename -uid "BCE3205F-434E-A8A3-D0D4-118FD94B0A09";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "L_stretch_output_locShape" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "CB7D6A08-4762-8857-F975-3CA2FB7C6146";
	setAttr -k off ".v" no;
createNode ikHandle -n "L_ikHandle4" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc";
	rename -uid "232E5051-4FB0-89EF-B8B0-89BC261F3ED9";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_ikHandle4_poleVectorConstraint1" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp|L_ik_thigh_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4";
	rename -uid "324AD0E1-4A44-751A-8128-0CA6E22F6353";
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
	rename -uid "852DC977-4B81-CAC4-3828-5EA375B5A2AD";
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
	rename -uid "7EB8CA3D-4B03-C7D5-0045-9D85C6E068AA";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "L_ik_thigh_space_upVecShape" -p "L_ik_thigh_space_upVec";
	rename -uid "D6574EE6-49B8-E1FF-80A6-E986C247DD63";
	setAttr -k off ".v";
createNode transform -n "L_stretchik_input" -p "|L_leg|L_leg_motion_grp|L_motion_ik_grp";
	rename -uid "4CBBC927-4BE1-154E-7A90-E49D0E62B393";
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
	rename -uid "BC34C8EA-4129-F382-D93A-F282D618E6F3";
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
	rename -uid "EBEAD861-47C9-BEE0-89B9-8D8F7D33EF1F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_knee" -p "L_ik_thigh";
	rename -uid "42C424EA-44E1-D551-CA33-0D8D7989ED75";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 -7.2488836440859685e-06 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_ik_ankle" -p "L_ik_knee";
	rename -uid "2DFBCA3B-4302-5DB6-A111-2680CB16FEC9";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "L_effector4" -p "L_ik_knee";
	rename -uid "F712FA3F-4FD9-48A4-E466-079A7F144621";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "L_motion_fk_grp" -p "L_leg_motion_grp";
	rename -uid "330DA284-4F35-7E47-BEC6-38B7B19C2130";
createNode joint -n "L_fk_thigh" -p "|L_leg|L_leg_motion_grp|L_motion_fk_grp";
	rename -uid "BC211F89-4973-AEF4-25D7-0DA75603ADCE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_knee" -p "L_fk_thigh";
	rename -uid "C5BA509F-45CA-C5F1-B8D4-9C8477CF2163";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_fk_ankle" -p "L_fk_knee";
	rename -uid "ABEE6140-4232-25C8-95CE-C39C4B754504";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_output_grp" -p "L_leg";
	rename -uid "3FB6B7F6-471D-1DE6-938E-A8AC83C93C78";
createNode joint -n "L_output_thigh" -p "|L_leg|L_output_grp";
	rename -uid "4A826164-437F-7935-B058-88BCF7A89003";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_knee" -p "L_output_thigh";
	rename -uid "EDFAF248-46E1-ABCC-1828-CE99CA5F75ED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "L_output_ankle" -p "L_output_knee";
	rename -uid "A4AE1EC5-442C-35B5-EFF1-9AB7542DECE8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "L_leg_ctrl_grp" -p "L_leg";
	rename -uid "CC38DD40-4B77-DFE7-180D-699BF8BA08C1";
createNode transform -n "L_ik_thigh_ctrl_space" -p "L_leg_ctrl_grp";
	rename -uid "39210500-4BA3-08AD-72B0-3DA6D8EE10D4";
createNode transform -n "L_ik_knee_polevector_space" -p "L_ik_thigh_ctrl_space";
	rename -uid "B3A65317-47CB-4B0F-016E-EA8F9C31D4A5";
createNode transform -n "L_ik_polevector_space" -p "L_ik_knee_polevector_space";
	rename -uid "033B069A-4880-9975-C6D5-7491044C7B47";
	setAttr ".t" -type "double3" -3.0000000476837152 -5.5552531578749917e-25 -3.9999999642372126 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "L_ik_polevector" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space";
	rename -uid "6B20144F-458D-85E7-14FF-1EAD2AC5BEC7";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "L_ik_polevectorShape" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_knee_polevector_space|L_ik_polevector_space|L_ik_polevector";
	rename -uid "C0725DCD-4E67-1211-71BD-5088539A4599";
	setAttr -k off ".v";
createNode transform -n "L_ik_ctrl_space" -p "L_ik_thigh_ctrl_space";
	rename -uid "C1220864-44A5-5DD8-9405-EE8EB582BC16";
createNode transform -n "L_ik_ctrl" -p "|L_leg|L_leg_ctrl_grp|L_ik_thigh_ctrl_space|L_ik_ctrl_space";
	rename -uid "27F5E0A0-410F-5E8A-2DBB-91BF3FFCE26E";
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
	rename -uid "3961A2F2-45D7-168A-ABEB-EFB5CB54273B";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "L_ik_fk_blend_ctrl_space" -p "L_leg_ctrl_grp";
	rename -uid "83AF2439-477F-26AA-389B-B2917444A709";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "L_ik_fk_blend_ctrl" -p "|L_leg|L_leg_ctrl_grp|L_ik_fk_blend_ctrl_space";
	rename -uid "1459D0FC-4D90-15AB-5704-7CBFD8942CB9";
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
	rename -uid "164EA912-42DA-8421-ACDF-C9A185B8E458";
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
	rename -uid "BF1AB4B1-4D07-BC07-584F-F0966D528242";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_thigh_ctrl" -p "L_fk_thigh_ctrl_space";
	rename -uid "E6008410-4854-2E23-3202-C0981EB14085";
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
	rename -uid "FBAF2423-4C30-DE5C-44AD-4D95492B9378";
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
	rename -uid "0A49D530-4F16-E10A-7027-07BA7597BCDA";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_knee_ctrl" -p "L_fk_knee_ctrl_space";
	rename -uid "A17AE8B8-4A43-881C-EE62-BEB5502A4B19";
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
	rename -uid "40F79E2D-4C7E-793C-495C-68B98E57B30D";
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
	rename -uid "9C0047AF-4DC1-20F8-FFFF-96871FE18BFC";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "L_fk_ankle_ctrl" -p "L_fk_ankle_ctrl_space";
	rename -uid "C771C176-411B-3448-0382-0BB1739E63A0";
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
	rename -uid "454F87ED-4D55-6E83-8A74-DE857A29E6D0";
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
	rename -uid "85DF18F2-45D0-D8E1-0EFF-2998A3B0B261";
createNode transform -n "R_input_leg_grp" -p "R_leg";
	rename -uid "D90B001D-40D5-B192-63B1-2AB52481BAF5";
createNode transform -n "R_input_leg" -p "R_input_leg_grp";
	rename -uid "6F58033D-4685-20AB-F7F7-5C92345EC38D";
createNode transform -n "R_input_leg_space" -p "R_input_leg";
	rename -uid "CA89477D-4E3A-6123-2185-78B752DE513D";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 20;
	setAttr ".t" -type "double3" -1 12 0 ;
createNode nurbsCurve -n "R_input_leg_spaceShape" -p "R_input_leg_space";
	rename -uid "E19F5F63-4D0D-DDD0-6F75-40AA00E95848";
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
	rename -uid "D4625971-40C9-394B-E03E-F18BFB38F699";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
createNode transform -n "R_fit_thigh" -p "|R_leg|R_input_leg_grp|R_fit_space";
	rename -uid "0AA98784-43ED-740E-843E-9F8B988DE8E4";
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
	rename -uid "85B7306C-4B4D-280D-1578-11AFB9351792";
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
	rename -uid "8B5E3A01-4AB1-A896-3878-F4BBC9E03788";
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
	rename -uid "738BF990-4043-7C7B-B73C-0B8BBAB29596";
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
	rename -uid "B9B55CAC-4A8F-B954-441E-D1A58D75C034";
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
	rename -uid "ADC5EA24-45DD-35D9-0033-03956DFD8867";
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
	rename -uid "544E365F-490E-FDEA-644D-98B8AE1AE8BF";
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
	rename -uid "76197B87-49D2-30B6-4A59-D4A28A33DA4A";
	setAttr ".v" no;
createNode transform -n "R_init_space" -p "R_leg_motion_grp";
	rename -uid "3C340E93-44EC-CBED-654F-61B4D01B9E8E";
createNode transform -n "R_init_thigh" -p "|R_leg|R_leg_motion_grp|R_init_space";
	rename -uid "18CE7708-42E9-10F4-D9FB-0DA24DCB1193";
	setAttr ".s" -type "double3" 0.99999995188982171 1 0.99999995188982171 ;
createNode transform -n "R_init_knee" -p "R_init_thigh";
	rename -uid "2AA93CD2-4608-7F66-CF94-D89DB56011B4";
	setAttr ".s" -type "double3" 1.0000000555900448 1 1.0000000555900448 ;
createNode transform -n "R_init_ankle" -p "R_init_knee";
	rename -uid "FD6357EE-440E-EB12-3891-F8B09414FEEF";
	setAttr ".s" -type "double3" 0.99999999252013594 1 0.99999999252013594 ;
createNode transform -n "R_motion_ik_grp" -p "R_leg_motion_grp";
	rename -uid "EE528405-4EA6-B04F-C39E-90A9562A3D04";
createNode transform -n "R_softik_input" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "292B69A4-451F-3B41-E308-31B32041323C";
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
	rename -uid "251D4317-4661-B224-46E8-FF8B2E5F6E98";
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
	rename -uid "6E421F33-4CBF-E75A-EBF4-5DB55EED0C39";
createNode locator -n "R_ik_thigh_spaceShape" -p "R_ik_thigh_space";
	rename -uid "CB8B052D-47DE-666E-91F4-778DC5F9F915";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrlaim" -p "R_ik_thigh_space";
	rename -uid "074EAF27-4FDF-D9C5-8B2B-8CAFECC3EFA1";
createNode locator -n "R_ik_ctrlaimShape" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim";
	rename -uid "FD40FC9E-4E1B-CA0C-B35F-D4B35F0D27D6";
	setAttr -k off ".v";
createNode transform -n "R_softik_output_loc" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim";
	rename -uid "36737F53-4966-BF1C-4A80-4EB2BF0EDA46";
createNode locator -n "R_softik_output_locShape" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "C056E855-4290-4B08-3BA1-3CBF7A130378";
	setAttr -k off ".v" no;
createNode transform -n "R_stretch_output_loc" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc";
	rename -uid "DB7EF963-4140-1073-373E-6C9D2B4C36A5";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
createNode locator -n "R_stretch_output_locShape" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "E4ABE456-4DA7-E1CD-7BB2-E7AB99535298";
	setAttr -k off ".v" no;
createNode ikHandle -n "R_ikHandle4" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc";
	rename -uid "D634E0F8-47F3-B7D6-920A-819921799DA6";
	setAttr ".t" -type "double3" 1.1467630933736928e-07 0 -2.5347791732244218e-07 ;
	setAttr ".r" -type "double3" 1.5902773407317584e-15 0 2.3854160110976376e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_ikHandle4_poleVectorConstraint1" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp|R_ik_thigh_space|R_ik_ctrlaim|R_softik_output_loc|R_stretch_output_loc|R_ikHandle4";
	rename -uid "96C37B3B-4CC4-536C-7409-BFA87BB9D22C";
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
	rename -uid "444F2198-40C8-A3A3-BC6F-FDAABF03EE81";
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
	rename -uid "3E6F548A-489F-32F3-E305-4CBAA40B7FDA";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode locator -n "R_ik_thigh_space_upVecShape" -p "R_ik_thigh_space_upVec";
	rename -uid "5BDD6D77-4D11-2EE0-D9DD-38AA956E30C7";
	setAttr -k off ".v";
createNode transform -n "R_stretchik_input" -p "|R_leg|R_leg_motion_grp|R_motion_ik_grp";
	rename -uid "E9985F77-479F-75B6-B82A-E4826947F55A";
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
	rename -uid "8B2A28E0-4216-F921-8A3C-92B814ED26D8";
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
	rename -uid "61D116C8-482C-3B1A-8F56-DEB642F53CBB";
	setAttr ".r" -type "double3" 0 179.99999494900698 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_knee" -p "R_ik_thigh";
	rename -uid "29022F6C-44FD-B8AA-25B6-22AA3E563974";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 -7.2488837015375172e-06 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_ik_ankle" -p "R_ik_knee";
	rename -uid "7D856D68-4BA7-2D5B-D7A3-1B9F59D05B8E";
	setAttr ".t" -type "double3" 5.0107498168945313 0 -6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode ikEffector -n "R_effector4" -p "R_ik_knee";
	rename -uid "335D835D-432D-295C-B610-C88FE48C63DB";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "R_motion_fk_grp" -p "R_leg_motion_grp";
	rename -uid "C8CE7370-4A6D-BE40-CD18-EF8F0041C204";
createNode joint -n "R_fk_thigh" -p "|R_leg|R_leg_motion_grp|R_motion_fk_grp";
	rename -uid "8EAE11EF-4E7D-E3B6-4D22-03ADD96DFC62";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_knee" -p "R_fk_thigh";
	rename -uid "C5E25E32-45B1-E096-92BA-FFAB48D3A1FF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_fk_ankle" -p "R_fk_knee";
	rename -uid "652425EC-4D5A-1DF7-04AD-48A2E6F03DE0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_output_grp" -p "R_leg";
	rename -uid "24F501BA-4D95-8DDE-EA20-1CAD8D87F93A";
createNode joint -n "R_output_thigh" -p "|R_leg|R_output_grp";
	rename -uid "DFE22792-41A6-5B5B-43E5-56B85CCF7FBD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_knee" -p "R_output_thigh";
	rename -uid "46362EE3-4678-047A-C6CB-0A94E573C14E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode joint -n "R_output_ankle" -p "R_output_knee";
	rename -uid "5AC0110B-4CBF-DE47-A215-E1A77E0E3F90";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.63476989355848235;
createNode transform -n "R_leg_ctrl_grp" -p "R_leg";
	rename -uid "886890E8-4AB1-D8B4-1B74-DFA3BD3EA91F";
createNode transform -n "R_ik_thigh_ctrl_space" -p "R_leg_ctrl_grp";
	rename -uid "6DBF28C5-4AED-463E-F4B9-D093834A4B8B";
createNode transform -n "R_ik_knee_polevector_space" -p "R_ik_thigh_ctrl_space";
	rename -uid "B39598DF-4A3A-B43C-4571-5289AE13B5AD";
createNode transform -n "R_ik_polevector_space" -p "R_ik_knee_polevector_space";
	rename -uid "ED4F9F3E-4E6E-2451-621F-6C85C7F1D27B";
	setAttr ".t" -type "double3" 3 -5.5552531578749917e-25 4 ;
	setAttr ".r" -type "double3" 0 36.87 0 ;
createNode transform -n "R_ik_polevector" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space";
	rename -uid "9A5C42E2-4588-C471-57FF-269E000AC6BD";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
createNode locator -n "R_ik_polevectorShape" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_knee_polevector_space|R_ik_polevector_space|R_ik_polevector";
	rename -uid "706AD97E-4657-8CCD-DF20-37888A2097E4";
	setAttr -k off ".v";
createNode transform -n "R_ik_ctrl_space" -p "R_ik_thigh_ctrl_space";
	rename -uid "F67A88D3-4A2F-D04E-0923-AAB41E1A6AEE";
createNode transform -n "R_ik_ctrl" -p "|R_leg|R_leg_ctrl_grp|R_ik_thigh_ctrl_space|R_ik_ctrl_space";
	rename -uid "6468F3FD-469A-BDEA-27BA-46A846820FE1";
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
	rename -uid "FC6BA861-44A2-981B-CEC9-15B344F0DCDC";
	setAttr -k off ".v";
	setAttr ".rt" 1;
createNode transform -n "R_ik_fk_blend_ctrl_space" -p "R_leg_ctrl_grp";
	rename -uid "00290666-4FD0-6F45-C0DC-BAAD06A68D1F";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_ik_fk_blend_ctrl" -p "|R_leg|R_leg_ctrl_grp|R_ik_fk_blend_ctrl_space";
	rename -uid "B3C15F73-46DB-01A1-1746-01A82D57010D";
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
	rename -uid "2FD00CCF-423C-3154-E0A8-F5AB95D04F3A";
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
	rename -uid "A2D81526-4629-9924-90FB-DCBD5D5FAC86";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_thigh_ctrl" -p "R_fk_thigh_ctrl_space";
	rename -uid "4794236D-4334-23A3-038A-9484F3DE98AE";
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
	rename -uid "67B20634-4599-6416-086C-F687DA76CC10";
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
	rename -uid "A6BDF9C7-409F-9E1B-5DF5-78BE6E1A470E";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_knee_ctrl" -p "R_fk_knee_ctrl_space";
	rename -uid "F96FA665-42B3-C80F-0E22-28B551F5554E";
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
	rename -uid "0E9E4F43-4B3F-7E71-D037-77B2A3100384";
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
	rename -uid "2AF200FC-483F-5C9A-8BCC-68B10DB3956D";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
createNode transform -n "R_fk_ankle_ctrl" -p "R_fk_ankle_ctrl_space";
	rename -uid "F90AEA8E-4C7C-14BE-B656-BE9732318B76";
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
	rename -uid "53F3ABFA-4D29-DC9A-EA29-7C90ACAF718C";
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
	rename -uid "7D2FF1F8-4A0F-2245-FC69-01A49CC0506E";
createNode transform -n "input_space" -p "component_space";
	rename -uid "C89EC84A-4A6C-D22A-C4C7-72A49E080BDE";
createNode transform -n "parent_space_LOC" -p "input_space";
	rename -uid "3F77FC35-4100-026A-D5BE-10A7F228F1E7";
createNode locator -n "parent_space_LOCShape" -p "parent_space_LOC";
	rename -uid "5CBBD9E8-4DFC-F032-4B85-A2B08F29496E";
	setAttr -k off ".v";
createNode transform -n "fit_space" -p "input_space";
	rename -uid "A98250CD-41AC-460F-0555-DE87A8B38E16";
createNode transform -n "fit_spine" -p "fit_space";
	rename -uid "D11EEF23-417D-C5E2-066C-A3A0C905057A";
	setAttr ".t" -type "double3" 0 12 0 ;
createNode locator -n "fit_spineShape" -p "fit_spine";
	rename -uid "BEEB1C87-4F29-8310-03C8-3092316A46F3";
	setAttr -k off ".v";
createNode transform -n "fit_spine_sub_000" -p "fit_spine";
	rename -uid "2BD01334-4839-026D-C9BE-E78612D35558";
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "fit_spine_sub_000Shape" -p "fit_spine_sub_000";
	rename -uid "4113AF3E-4B81-09EE-D566-709545F97D23";
	setAttr -k off ".v";
createNode transform -n "fit_chest" -p "fit_space";
	rename -uid "551F4A89-4918-541F-E17D-73843B47C7F5";
	setAttr ".t" -type "double3" 0 18 0 ;
createNode locator -n "fit_chestShape" -p "fit_chest";
	rename -uid "D24071D5-4A2E-88A2-E8B8-30AD8AD2C2AA";
	setAttr -k off ".v";
createNode transform -n "fit_chest_sub_001" -p "fit_chest";
	rename -uid "B65FF857-4CDD-648C-EF1D-439BC4C0D068";
	setAttr ".t" -type "double3" 0 -3 0 ;
createNode locator -n "fit_chest_sub_001Shape" -p "fit_chest_sub_001";
	rename -uid "41CC2B6A-42D8-6E03-747B-A384E7E9AFC0";
	setAttr -k off ".v";
createNode transform -n "ik_spine_space" -p "component_space";
	rename -uid "DE648669-4F2D-D855-EBBB-B496A2372875";
createNode transform -n "spine_crv" -p "ik_spine_space";
	rename -uid "84923B2B-42E2-CC4D-C037-989AAB5FE9D8";
createNode bezierCurve -n "bezierShape1" -p "spine_crv";
	rename -uid "F34659B4-4D5D-03B2-AC82-6F9ED4BD0B19";
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
	rename -uid "FFE113AA-45EC-7BFD-FD52-C29BBB22191E";
createNode transform -n "M_spine_OS" -p "ik_ctl_space";
	rename -uid "4506E993-47C8-CD3D-F5DB-989C2E0E7B61";
createNode transform -n "M_spine_CTL" -p "M_spine_OS";
	rename -uid "23B2C3E5-4192-986D-9A1F-A5BEA7DAF4BC";
	addAttr -ci true -k true -sn "fit_vis" -ln "fit_vis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fk_vis" -ln "fk_vis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "sub_ctl_vis" -ln "sub_ctl_vis" -min 0 -max 1 -at "bool";
	setAttr -k on ".fit_vis";
	setAttr -k on ".fk_vis";
	setAttr -k on ".sub_ctl_vis";
createNode nurbsCurve -n "curveShape10" -p "M_spine_CTL";
	rename -uid "22F6E208-4AB6-3609-0297-C8969F6BB866";
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
	rename -uid "E26E18D9-4BF1-793B-2E00-569DE4A955A3";
createNode transform -n "spine_CTL" -p "spine_OS";
	rename -uid "DD37C378-43B2-035A-06B6-E3ADB9AE13F5";
createNode nurbsCurve -n "curveShape1" -p "spine_CTL";
	rename -uid "F88A8363-4E69-BA66-DB3E-7AA03041027C";
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
	rename -uid "584181B3-461F-8973-7AEC-7EBAC35427F7";
createNode transform -n "spine_sub_000_CTL" -p "spine_sub_000_OS";
	rename -uid "CE78435C-42EA-1B66-8ECC-70B70125BBED";
createNode nurbsCurve -n "curveShape2" -p "spine_sub_000_CTL";
	rename -uid "40C6F89F-4637-8FD6-7DE1-E5A4E2FAF297";
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
	rename -uid "B65BD2C5-43C2-5FD4-69EF-9C989E862F32";
	setAttr ".t" -type "double3" 0 0.515625 0 ;
createNode transform -n "FK_hip_CTL_spcGRP" -p "FK_hip_CTL_offGRP";
	rename -uid "D7DC31D4-4D87-23A1-EBFE-A3BB93656949";
createNode transform -n "FK_hip_CTL" -p "FK_hip_CTL_spcGRP";
	rename -uid "BAB253DB-4264-0E2A-A921-43BD99C0BF6D";
createNode nurbsCurve -n "FK_hip_CTLShape" -p "FK_hip_CTL";
	rename -uid "7543226E-4A3C-7BCF-BD91-D486B86D015F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -3.5942460876318223 -1.1703478295857921 
		0 -3.7039517151165948 -1.9470818707883468 0 -3.8136573426013642 -1.1703478295857923 
		0 -3.8590989013742076 8.0428575325348121e-18 0 -3.8136573426013642 -0.10970562748477219 
		0 -3.7039517151165948 -0.15514718625761503 0 -3.5942460876318223 -0.10970562748477164 
		0 -3.5488045288589798 -2.1157367010919539e-17 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "fk_init_upVec_OS" -p "M_spine_OS";
	rename -uid "485B9E71-49B5-298F-57D2-7E855AE5425F";
	setAttr ".t" -type "double3" 0 6 -12 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode transform -n "fk_init_upVec_CTL" -p "fk_init_upVec_OS";
	rename -uid "5AD47280-4526-4499-583F-DDA5D37F15AF";
	setAttr ".t" -type "double3" 0 -3 0 ;
createNode nurbsCurve -n "curveShape14" -p "fk_init_upVec_CTL";
	rename -uid "F2E16D9B-4487-AC79-C189-F0920EE35DA1";
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
	rename -uid "3F4893BF-405C-1E77-2C8B-A58FC6791C6D";
createNode transform -n "M_chest_CTL" -p "M_chest_OS";
	rename -uid "F5988984-49DF-C3BF-9C76-C18D7F6743EB";
createNode nurbsCurve -n "curveShape12" -p "M_chest_CTL";
	rename -uid "83C2AF43-43CA-3FF7-44C4-969C991979A1";
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
	rename -uid "F0843036-4605-922A-C186-1A8449614E6E";
createNode transform -n "chest_sub_001_CTL" -p "chest_sub_001_OS";
	rename -uid "2EB27B89-4284-83D1-39CA-DBBD88049CB6";
createNode nurbsCurve -n "curveShape3" -p "chest_sub_001_CTL";
	rename -uid "CB9F837D-4E20-B7B2-AB8B-E9A40EFC684E";
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
	rename -uid "774628DB-4D40-CD58-2F8D-D1B51FBBBF77";
createNode transform -n "chest_CTL" -p "chest_OS";
	rename -uid "1FF26717-4B2E-5DC8-FEDD-E6BE18BF0AC2";
createNode nurbsCurve -n "curveShape4" -p "chest_CTL";
	rename -uid "A01B6496-4F05-35A6-8E8F-048231A66FE4";
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
	rename -uid "70C9C261-4FA8-F5A9-2E58-6988FDF6944E";
createNode transform -n "twist_spine_CTL" -p "twist_spine_OS";
	rename -uid "03949356-4671-1727-2ABF-7E8B49716F14";
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
	rename -uid "FFCBD1B1-4EB9-1B91-623A-0E90D906AEC4";
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
	rename -uid "5E0EC63E-4893-366A-172E-9C95A0C94E0F";
createNode transform -n "twist_chest_CTL" -p "twist_chest_OS";
	rename -uid "239C4857-4298-0EF8-47E9-C684F58E8CF3";
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
	rename -uid "BEAC66D0-4523-6787-6302-CCB46C94160A";
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
	rename -uid "1654174A-49F1-5BFA-8D55-8E96807EA5FE";
createNode transform -n "on_curve_space" -p "fk_space";
	rename -uid "E7E50C3A-40E5-4BCF-5DDD-C3A4B620D1F0";
createNode transform -n "init_spineA_space" -p "on_curve_space";
	rename -uid "379E5ACB-481A-29B7-4AD4-86953209558B";
createNode transform -n "twist_spineA_space" -p "init_spineA_space";
	rename -uid "4593956F-4AB4-91DA-DD77-C6A0EAC45FFB";
createNode aimConstraint -n "init_spineA_space_aimConstraint1" -p "init_spineA_space";
	rename -uid "4703D63A-474A-A08C-9557-B8A467402392";
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
	rename -uid "50DD9B03-4B37-A55C-A390-239037F5EB4E";
createNode transform -n "twist_spineB_space" -p "init_spineB_space";
	rename -uid "5192C058-4635-5D27-1696-4E9FC3A500CB";
createNode aimConstraint -n "init_spineB_space_aimConstraint1" -p "init_spineB_space";
	rename -uid "BA1E09AF-4D75-2D64-EB38-C6B415A37DC9";
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
	rename -uid "DD7564CF-4CA0-DB61-753D-40B9C3CC4EAB";
createNode transform -n "twist_spineC_space" -p "init_spineC_space";
	rename -uid "A1BA5694-42AC-701F-B199-C89F86B60E7D";
createNode aimConstraint -n "init_spineC_space_aimConstraint1" -p "init_spineC_space";
	rename -uid "B88A3517-40C6-F60D-5E12-C0AC7CEE0EDF";
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
	rename -uid "5385BEBF-4FD2-99E4-9B9E-B0A070D09958";
createNode transform -n "twist_spineD_space" -p "init_spineD_space";
	rename -uid "A50D3F2D-47A9-D22C-014D-0B91B06C058B";
createNode aimConstraint -n "init_spineD_space_aimConstraint1" -p "init_spineD_space";
	rename -uid "C53A3315-4B03-A257-A5D2-57BEB35124F9";
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
	rename -uid "4695673F-4C84-475F-B128-89B903B03F3B";
createNode transform -n "twist_chest_space" -p "init_chest_space";
	rename -uid "7CD0B306-49CB-5173-82A5-B4A5B5088900";
createNode aimConstraint -n "init_chest_space_aimConstraint1" -p "init_chest_space";
	rename -uid "19977CFA-497C-E774-4951-D1A6CD8C7788";
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
	rename -uid "1B22E45D-476D-47BB-682B-23897A3F6D35";
createNode transform -n "fk_scale_init_space" -p "fk_space";
	rename -uid "6A523044-4A25-DC7D-3821-B1BFBD263FA1";
createNode transform -n "FK_spineA_local_init_space" -p "fk_scale_init_space";
	rename -uid "F84882FE-4416-CEFF-C0B6-B98507F2F57C";
createNode transform -n "FK_spineB_local_init_space" -p "fk_scale_init_space";
	rename -uid "F31D9185-424B-8DC2-19CD-53AC1F982687";
createNode transform -n "FK_spineC_local_init_space" -p "fk_scale_init_space";
	rename -uid "ACB7576F-4F86-D3AC-61D9-D196F028737A";
createNode transform -n "FK_spineD_local_init_space" -p "fk_scale_init_space";
	rename -uid "2FEB5140-4C37-4E31-DEEB-848DB4E8721D";
createNode transform -n "FK_chest_local_init_space" -p "fk_scale_init_space";
	rename -uid "6CE64319-4726-B7E3-BC7D-ECAA3CC697BA";
createNode transform -n "fk_joint_space" -p "fk_space";
	rename -uid "C95B8483-4D42-B398-ACFB-6280B508F00A";
createNode transform -n "FK_spineA_JNT_space" -p "fk_joint_space";
	rename -uid "AF046DCF-438C-D87C-00EF-4CBA522B7EAF";
createNode transform -n "FK_spineA_hip_space" -p "FK_spineA_JNT_space";
	rename -uid "29ED9BDB-43EF-0482-F21A-B08FDF8A4CF6";
	setAttr ".t" -type "double3" 0 1.515625 0 ;
createNode joint -n "FK_spineA_JNT" -p "FK_spineA_hip_space";
	rename -uid "E5C88FCA-4903-16E0-7D11-308C441D798A";
	setAttr ".t" -type "double3" 0 -1.515625 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_spineA_JNT_offGRP" -p "FK_spineA_JNT_space";
	rename -uid "BC083B50-4202-0334-F6CA-99B0D6578615";
	setAttr ".t" -type "double3" 0 1.515625 0 ;
createNode transform -n "FK_spineA_JNT_cntGRP" -p "FK_spineA_JNT_offGRP";
	rename -uid "08F4CEB7-45B1-C540-F465-E68E0FCA75E1";
	setAttr ".t" -type "double3" 0 -1.515625 0 ;
createNode transform -n "FK_spineB_JNT_space" -p "FK_spineA_JNT_cntGRP";
	rename -uid "31BDDA9E-4295-D1C6-4A32-40A80C0B42A9";
createNode joint -n "FK_spineB_JNT" -p "FK_spineB_JNT_space";
	rename -uid "F48867D4-411B-C9C2-1E39-6994378D76A8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_spineC_JNT_space" -p "FK_spineB_JNT";
	rename -uid "979D76F4-4273-F9A3-0FFE-ADB879607517";
createNode joint -n "FK_spineC_JNT" -p "FK_spineC_JNT_space";
	rename -uid "BE559BDD-493E-B056-DAA3-3BA72B7D66BC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_spineD_JNT_space" -p "FK_spineC_JNT";
	rename -uid "7B5A2EE1-4A3B-34E8-3FA8-DF8B0C2BB5E6";
createNode joint -n "FK_spineD_JNT" -p "FK_spineD_JNT_space";
	rename -uid "4A239D8B-491D-61A4-5A32-78BB1008B5C2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_chest_JNT_space" -p "FK_spineD_JNT";
	rename -uid "F2ED8135-4E01-73EF-0BF2-5CB959D7E2DB";
createNode joint -n "FK_chest_JNT" -p "FK_chest_JNT_space";
	rename -uid "BDB809C7-469A-E93D-435F-1AAA08BA8906";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FK_hip_offset" -p "FK_spineA_JNT_space";
	rename -uid "1E00C27A-4F2F-2A2E-D356-B28EC84C3759";
	setAttr ".t" -type "double3" 0 1.515625 0 ;
createNode transform -n "FK_hip_space" -p "FK_hip_offset";
	rename -uid "D98955E0-4E3F-64E0-87F5-5E85B9FE3A07";
createNode transform -n "fk_ctl_space" -p "fk_space";
	rename -uid "F4C7F098-4949-14C3-E263-B9B183B033FE";
createNode transform -n "FK_spineA_CTL_OS" -p "fk_ctl_space";
	rename -uid "5D88DE43-49CF-36F8-2D04-E1BBBF01C1D7";
createNode transform -n "FK_spineA_CTL_CTL" -p "FK_spineA_CTL_OS";
	rename -uid "A40709F3-4B7E-1B1C-EBF5-F89BCB6E3998";
createNode nurbsCurve -n "curveShape5" -p "FK_spineA_CTL_CTL";
	rename -uid "B26E4B8E-43A0-9137-8B63-4A8FFA683F48";
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
	rename -uid "D6ADDAE1-4B17-F1C5-79AC-119CDDC03586";
createNode transform -n "FK_spineB_CTL_CTL" -p "FK_spineB_CTL_OS";
	rename -uid "00F2C86C-4B9C-CE10-643D-0EB1C2F55135";
createNode nurbsCurve -n "curveShape6" -p "FK_spineB_CTL_CTL";
	rename -uid "0CC98B1C-4EE3-4A68-FE7C-FAB89F322879";
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
	rename -uid "24367BC6-4F8F-5D20-9087-ADA99D4B0AE7";
createNode transform -n "FK_spineC_CTL_CTL" -p "FK_spineC_CTL_OS";
	rename -uid "DAB221E4-4BF0-6BF2-A88E-E1A0954A1AAD";
createNode nurbsCurve -n "curveShape7" -p "FK_spineC_CTL_CTL";
	rename -uid "DA48115A-49BB-C704-5D96-A6AF0DFF42BB";
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
	rename -uid "0708D216-4160-FCA9-ADCE-A6847752D22B";
createNode transform -n "FK_spineD_CTL_CTL" -p "FK_spineD_CTL_OS";
	rename -uid "AABC14E7-497D-5EE5-EA00-1FB3E3ECAAB8";
createNode nurbsCurve -n "curveShape8" -p "FK_spineD_CTL_CTL";
	rename -uid "D69CCB9E-4603-C062-0DD4-149EA667EC12";
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
	rename -uid "870009BE-4FC0-DE26-29D5-B69608A4368B";
createNode transform -n "FK_chest_CTL_CTL" -p "FK_chest_CTL_OS";
	rename -uid "3A2C8335-4CCE-350F-F0A9-108F0AAF1122";
createNode nurbsCurve -n "curveShape9" -p "FK_chest_CTL_CTL";
	rename -uid "F7F7EE06-40D4-5B0E-8A4D-B19D347D4EDF";
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
	rename -uid "BE8656FC-44BC-3BE1-BB87-2393B6688717";
createNode transform -n "end_plug_space" -p "output_space";
	rename -uid "746A9353-46A4-7E34-0A70-A4B76D40A861";
createNode transform -n "chest_space";
	rename -uid "C57FEA30-4466-4F7D-FB75-E89191810DB9";
	setAttr ".v" no;
createNode transform -n "root_space";
	rename -uid "46BF0140-48B1-FCA4-CA81-58A5AE1896D9";
	setAttr ".v" no;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "54EC30CA-446A-838A-A4C4-23A9768E9B0B";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6E8F1BAE-49CE-98AA-366F-E5B8B80669AD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E85E6751-4194-607C-E667-0AAE952FA67C";
createNode displayLayerManager -n "layerManager";
	rename -uid "EC5418C3-45CD-1459-68F5-31BA0504BEE7";
createNode displayLayer -n "defaultLayer";
	rename -uid "BADE58BB-40A7-FCB7-D97C-6FAADF94EAAC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "813D51CE-4BBE-AE65-FDCD-A09A91BA334E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "019AB867-4289-2BA7-C9E7-50A6B79D9FFC";
	setAttr ".g" yes;
createNode multiplyDivide -n "divide_softikV";
	rename -uid "255A4EFC-45E5-EE7D-8616-C2BD9CD26056";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val";
	rename -uid "2AF84588-4AB2-5F71-CD1E-CFB73A05D384";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val";
	rename -uid "5325A7BC-4074-DB13-3BC2-8D8ECC76374E";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV";
	rename -uid "AC40AE22-464A-D50A-4DF3-C4B120C44F58";
createNode plusMinusAverage -n "result_softik_len";
	rename -uid "299B737F-4D9D-FB2B-00E7-549FA9198FFD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition";
	rename -uid "040D6AD9-4E7B-E86F-DF74-7ABB0B5C54BA";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition";
	rename -uid "45B0A622-405C-C7FC-3135-AA8A1C16E750";
	setAttr ".op" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5B08E138-4005-9AB0-C76D-FEABA9579C78";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 836\n            -height 1066\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 836\\n    -height 1066\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 836\\n    -height 1066\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A404FFCB-4C67-25DD-A4CF-B28A453DAA73";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B4FA8AAB-4130-93F4-086C-12AEED9EDAEE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen";
	rename -uid "6A6D34EB-4BC7-D603-EA56-559CFD147604";
createNode distanceBetween -n "loarmLen";
	rename -uid "D6A20DAF-4225-5B97-8222-53970ED61632";
createNode plusMinusAverage -n "armLen";
	rename -uid "7EC2097A-4A6D-3BA4-C9A2-D4A80A10602F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen";
	rename -uid "E90C300F-4379-CDE7-3E48-288F803A49A3";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "EFCCDA29-46B3-DC5A-E1D9-05A57655B04D";
createNode plusMinusAverage -n "armlen_minus_softikV";
	rename -uid "2F28BB15-4A48-087E-BF0B-54B1317F7FF3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif";
	rename -uid "BE43C983-4CE2-46DA-18DF-4F8B68B80FF6";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide";
	rename -uid "FD2321BD-41DD-46EC-1822-1DA77A3595F1";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "46BAB027-4FCC-FD5B-C0BC-E589400C18BE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio";
	rename -uid "D7AD1175-4265-BAE6-4566-368B53B97AAE";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen1";
	rename -uid "DF1B0EC2-4D0E-C239-6AB1-8498092AB47F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio3";
	rename -uid "1B3E06A4-4FBD-537C-64C2-4A8453B26276";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen";
	rename -uid "DAB17233-4F12-EEE2-A3D0-1598591D0D1C";
createNode multiplyDivide -n "stretchCtrl_uparm";
	rename -uid "F22CCA82-485D-947C-9769-85B57BC66D40";
createNode plusMinusAverage -n "uparm_plus_stretch1";
	rename -uid "D3C02F4E-401F-EC10-4904-C497C23E90AA";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm";
	rename -uid "6BC7918B-44C8-0BBA-0C96-6BADB603C256";
	setAttr ".op" 2;
createNode condition -n "cond_loarm";
	rename -uid "F74EE177-43A2-575B-AE41-57AB906B9C12";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen";
	rename -uid "5DE49503-4F73-86B4-C3DC-F7AEB643D0E9";
createNode multiplyDivide -n "stretchCtrl_loarm";
	rename -uid "5007A45B-4BDC-20E9-F88A-45A391773C65";
createNode plusMinusAverage -n "loarm_plus_stretch1";
	rename -uid "B5CAEE45-4809-41B5-85D2-D88B72CA3A05";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo5";
	rename -uid "0FB07008-405A-E8BF-CB3D-A6828928D8F4";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen";
	rename -uid "8000BFAD-4CA0-DDD8-F362-D6B2240D1F9D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo3";
	rename -uid "3ADEEB19-4F9F-0F36-096F-70BD86289989";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo4";
	rename -uid "D1E31154-4332-9F03-5818-CD98E67B05A1";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "E1B20B1E-4C6D-5721-5C23-B1A9CCBB156B";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal";
	rename -uid "15600301-4AF5-C1F1-8F86-34B5B1ED0D40";
createNode blendColors -n "ikfk_shoulder_t";
	rename -uid "CEA3B863-446C-8F9B-D4C1-87B93362D536";
createNode blendColors -n "ikfk_shoulder_r";
	rename -uid "C56156D9-4C0E-17B7-7C52-B5A1DDCC7EEC";
createNode unitConversion -n "unitConversion1";
	rename -uid "7B1E0DC4-4E8B-FD16-C9C0-E3A196D78790";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "0C874958-46AA-2556-E2F5-4D81ACF5CB80";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "6053A629-4678-C598-F14F-A29F511BA7FA";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow";
	rename -uid "274C96EC-4A8A-592E-F1D0-DBB60B1EBE36";
createNode pairBlend -n "pairBlend1";
	rename -uid "CC1DE575-4F38-01E3-1D9D-CEAFC75B4509";
createNode reverse -n "reverse1";
	rename -uid "6F1F6A14-4F2A-5F1A-D7B5-758343D04FC5";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "1FB65171-48C2-CD1B-8229-4EA6764C537B";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "CBC2EB86-4005-05E5-DAD8-CDBAB772F4D8";
createNode decomposeMatrix -n "decomposeMatrix3";
	rename -uid "4E768552-46E7-AA2C-72A6-3BACA5FAACA6";
createNode plusMinusAverage -n "shld2elbow_vec";
	rename -uid "82040C35-4135-3CD1-2C04-96A104BA1D6B";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec";
	rename -uid "50C22C88-4312-5DED-2718-9298E36C3D51";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec";
	rename -uid "58A9F0F9-4A15-D1A6-6E2F-12A3AAB4E210";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec";
	rename -uid "EE746F39-47A5-E487-1621-F8BE801391FA";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat";
	rename -uid "BCFB5C58-49B7-5AF2-1B79-2C8B0092F47B";
createNode vectorProduct -n "shoulder_x_vec";
	rename -uid "E121FADE-4A88-5CA7-8284-14B66CD2E610";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix4";
	rename -uid "22453C69-4E2E-3B70-5FF9-46886ABEF67A";
createNode plusMinusAverage -n "elbow2shoulder_vec";
	rename -uid "3710D1A4-4192-8270-408E-ED972267D1C6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec";
	rename -uid "EE166D04-4AAD-EC5A-DA54-88AEC64841B5";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec";
	rename -uid "B5DA1BD8-4676-40EC-0299-F0816060EF3C";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec";
	rename -uid "3AED19F8-4B1E-3C8B-37A2-01952491B2EE";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec";
	rename -uid "92AD4FB0-4E00-9460-A492-C2B1C13448CA";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat";
	rename -uid "D1035CD8-4C5A-35A5-847B-DE911F8CDB43";
createNode decomposeMatrix -n "decomposeMatrix5";
	rename -uid "FCB1A431-4A37-2D2D-BF12-C19C522CF380";
createNode multMatrix -n "multMatrix1";
	rename -uid "3981C922-4746-BF6D-3F48-AD827EB973F7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix6";
	rename -uid "006D77BF-4D22-1995-8881-EF8B83D44850";
createNode multMatrix -n "multMatrix2";
	rename -uid "8436250E-4940-F12E-6961-489D53C71B21";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix7";
	rename -uid "147ED063-423C-548C-F734-5EBB80380F14";
createNode multMatrix -n "multMatrix3";
	rename -uid "1752822B-41BC-5DAC-BC4E-9ABF7918CBC2";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix4";
	rename -uid "CB48C82C-48E9-CAE1-205E-F4B197E516A3";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix8";
	rename -uid "1CAE830B-4129-9A59-07C5-08B1DD988404";
createNode lambert -n "lambert2";
	rename -uid "555558E7-46FF-C39F-5EDA-A6BA1A91586B";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "3CF6E91D-4BAF-DAB7-8266-89844446B9C0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "1176F1BB-4BDE-7696-8FF7-CEADDA43067F";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4FB1C74D-494B-29E0-3454-7CA48EF4C0BD";
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
	rename -uid "15F6D490-4DFC-2BFE-877C-46BBD9A60787";
createNode multMatrix -n "init_shoulder_localMat";
	rename -uid "39A6599D-4033-038A-CA7C-4BA5682EE589";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat";
	rename -uid "9282143B-4DBA-3C8A-7A7D-6A8E12BF582B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp";
	rename -uid "AA4E26E3-421A-E772-F4D9-3B97734A6EF9";
createNode multMatrix -n "init_wrist_local";
	rename -uid "9D91FB7E-4756-27DC-3805-35902FD3F964";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local";
	rename -uid "85D97831-4214-C259-AEE3-5EAD4B96FB14";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local";
	rename -uid "154FDAB4-4EC9-D949-4109-C1B08447170F";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local";
	rename -uid "83877C53-4C35-D21B-22C6-A9822AF35410";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix5";
	rename -uid "E2964E96-4831-7B43-E3F0-70B38BA03ABC";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix6";
	rename -uid "216F1D97-44E8-B6B7-9710-BDBCE0B79922";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix9";
	rename -uid "AEA889A9-440E-780C-BE75-DE95B73FE00E";
createNode multMatrix -n "multMatrix7";
	rename -uid "AE231FAC-45C0-5401-A3F2-2F9A713ABFDE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix10";
	rename -uid "2E360A08-4833-F828-F53F-598312005267";
createNode multMatrix -n "multMatrix8";
	rename -uid "35980D9E-450F-89AC-F369-E385C1E16559";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix11";
	rename -uid "415FD35C-4EF1-5D51-994E-18B4DDB39188";
createNode multiplyDivide -n "divide_softikV1";
	rename -uid "D1982A7F-4F55-31FC-C77B-5BB12BA2C028";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val1";
	rename -uid "58AAC3D1-42C5-B77A-2D4B-6D975612D3C1";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val1";
	rename -uid "3B9B4629-424C-9972-0BD8-75A4EA881EEB";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV1";
	rename -uid "BD13EE9F-48F6-543A-87D0-19AE90FA8351";
createNode plusMinusAverage -n "result_softik_len1";
	rename -uid "8B4FB788-4BF7-3C87-820B-6BAC38B8FD74";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition1";
	rename -uid "29D96213-480E-DA1E-7F58-40924F6BD9F7";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition1";
	rename -uid "9B3FF344-4B08-AFAB-E361-89B31C2F7CC5";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo6";
	rename -uid "BE9DA667-4A67-56AF-7D5A-9DA4AB8D66EB";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen1";
	rename -uid "38FCA6A0-45BF-C09B-2B9F-7CAA805335FC";
createNode distanceBetween -n "loarmLen1";
	rename -uid "F31E68AB-4A55-471B-0581-0D84283D0B27";
createNode plusMinusAverage -n "armLen2";
	rename -uid "8DF9729B-4F94-D262-0ED3-1BB7490D1823";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen1";
	rename -uid "7E977A72-4EF2-DF5A-81F2-A2BA5C26BF08";
createNode ikRPsolver -n "ikRPsolver1";
	rename -uid "54F1D87B-4816-F86C-0C92-21ACDC4DBEC6";
createNode plusMinusAverage -n "armlen_minus_softikV1";
	rename -uid "B812E4D9-4C42-F02B-A536-D48E17EDA4BC";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif1";
	rename -uid "3F576BC1-405B-900E-7475-CD91E3F5D6F2";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide1";
	rename -uid "8D30DA77-4902-7F80-F760-8A9CEBC3FCAA";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo8";
	rename -uid "562C8F86-4171-7AB9-9BE0-88A21A6B5A74";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio1";
	rename -uid "B18FBF51-441C-C116-17D6-59AE6181CBE9";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen3";
	rename -uid "D45B761B-4398-971E-5C09-028B6E5E9FD2";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio4";
	rename -uid "31E55347-4087-5C51-6E80-4BA802B51A1C";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen1";
	rename -uid "DEA80159-465C-8B26-B9D1-C1B3DE053BBC";
createNode multiplyDivide -n "stretchCtrl_uparm1";
	rename -uid "FCC06458-45E6-3018-4324-649CF3BC2A08";
createNode plusMinusAverage -n "uparm_plus_stretch2";
	rename -uid "AD44EC98-4B09-99E4-BC40-4C806855CD5D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm1";
	rename -uid "90B58E72-4019-BC26-F74F-71BD5FE92CF1";
	setAttr ".op" 2;
createNode condition -n "cond_loarm1";
	rename -uid "605DC090-48AA-9F8E-3707-76BDB369C739";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen1";
	rename -uid "2209832E-41C8-FFF8-D591-46B622D1EE69";
createNode multiplyDivide -n "stretchCtrl_loarm1";
	rename -uid "220BE0A2-496E-840E-687D-8CBC0B2D92A6";
createNode plusMinusAverage -n "loarm_plus_stretch2";
	rename -uid "EBA6BE53-4663-0C00-6577-E5ABF3E16CB1";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo11";
	rename -uid "54E24594-43B1-8E8F-8CAF-0C85ACA46ABB";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen1";
	rename -uid "596C2BE9-4600-31D9-0157-F5822881D62F";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo9";
	rename -uid "8B31AEB4-4010-F28E-237D-44AC46B26BE2";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo10";
	rename -uid "7F4DEFEB-42A1-F432-5E46-368544ECA75E";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo7";
	rename -uid "CFED173B-41AF-CE31-C00A-AF811990931C";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal1";
	rename -uid "0D899B86-4943-DD10-3045-67885F6A8ADF";
createNode blendColors -n "ikfk_shoulder_t1";
	rename -uid "47A7B8F5-4885-BFC1-DECE-3EAF0DD741F6";
createNode blendColors -n "ikfk_shoulder_r1";
	rename -uid "25ADED40-473A-1BDB-14ED-7D92BBBE7B7A";
createNode unitConversion -n "unitConversion4";
	rename -uid "95B08943-443A-B859-9AAD-3386381BF95E";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "A1CAFEDB-46F3-7F2D-2DE1-F39A0BD8E6C1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "0229BABA-4F04-5C0F-2FD2-57990DCFC6A2";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow1";
	rename -uid "4E6E74C6-428A-1D3B-98A1-8F82185F5763";
createNode pairBlend -n "pairBlend2";
	rename -uid "3A40FB9B-4D08-78A4-CF76-6D92BEAC2F0D";
createNode reverse -n "reverse2";
	rename -uid "5A773600-4643-B898-8AAF-4E918130CE91";
createNode decomposeMatrix -n "decomposeMatrix12";
	rename -uid "9E4B0377-4A79-694D-D2F8-F68B44FE8046";
createNode decomposeMatrix -n "decomposeMatrix13";
	rename -uid "C036DA39-4B85-05EF-1FB3-79AAEF4D635A";
createNode decomposeMatrix -n "decomposeMatrix14";
	rename -uid "A132CEEA-4B0B-0852-776A-0B9B84839D6C";
createNode plusMinusAverage -n "shld2elbow_vec1";
	rename -uid "1E1C14A4-46F9-FEDC-A384-6CAE734686C2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec1";
	rename -uid "E241A1A7-4619-EB27-F8CE-4CAE11F72E4F";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec1";
	rename -uid "EC42A768-4D80-F787-18E9-2C8BBC2F7889";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec1";
	rename -uid "CEF7DA0F-46DE-33CB-A4DF-A78E1846DD87";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat1";
	rename -uid "7F9B3EEA-4CD2-5BA5-39E1-8C84FE7672B1";
createNode vectorProduct -n "shoulder_x_vec1";
	rename -uid "3182484F-4C94-45D3-AF8F-888C021BECBB";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix15";
	rename -uid "0954EE61-4930-7DC0-2EC6-18B4BC620C9A";
createNode plusMinusAverage -n "elbow2shoulder_vec1";
	rename -uid "17443225-4D15-332D-0527-339374C3B8FD";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec1";
	rename -uid "2C88C569-45A1-4FA8-829C-E8A50991D3AF";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec1";
	rename -uid "9AC4C443-4B7E-993C-D9B1-91B1D47FA802";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec1";
	rename -uid "3AD2B4AD-4A99-C30F-FEC2-089A2F25D8E3";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec1";
	rename -uid "576827B2-4C7D-199E-3F97-5286BBFD2CFB";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat1";
	rename -uid "A76CD721-4964-0B60-1315-AFAF02FE0127";
createNode decomposeMatrix -n "decomposeMatrix16";
	rename -uid "707D7E05-4F99-C87D-4513-AF976A03D219";
createNode multMatrix -n "multMatrix9";
	rename -uid "39F43639-4E1F-5896-77D7-99B0F26DEAE0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix17";
	rename -uid "DCE13E70-4848-C9C6-BD2E-85ADC1CD37FD";
createNode multMatrix -n "multMatrix10";
	rename -uid "08669CBD-46B6-9575-0B5C-39AC251B63AB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix18";
	rename -uid "8A3175EB-49EA-FB5C-5B8F-BDBA8357AF79";
createNode multMatrix -n "multMatrix11";
	rename -uid "BE592D0D-40E4-AB8D-B6B2-3BAFE661BFBB";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix12";
	rename -uid "9AB8BC0B-4139-8485-D44C-A69D3E01BCFA";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix19";
	rename -uid "0C3E964D-4B8B-37FF-6FF8-E483451463CA";
createNode lambert -n "lambert3";
	rename -uid "65C583A8-4567-002B-1C2E-5CA04C727D68";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG1";
	rename -uid "6D92F343-4D9A-7442-4EFC-1097052BD4A4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "CCFB2A88-4D00-0BD1-C757-A89B52AFFE05";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "47018266-4D46-7F9E-289B-298F6513DE09";
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
	rename -uid "9C3CEDD5-49D2-E265-0276-F59861525BCE";
createNode multMatrix -n "init_shoulder_localMat1";
	rename -uid "3662A6CF-4A7D-25FA-EA08-3BBCB4F5248C";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat1";
	rename -uid "AAF0F481-4BE2-6F86-C564-248CB5433ABF";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp1";
	rename -uid "E6C3018F-491F-6E4F-3180-E4ABA62F747E";
createNode multMatrix -n "init_wrist_local1";
	rename -uid "9C6B67D6-4B05-3858-D2B7-B6A4964818F6";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local1";
	rename -uid "D99CD372-46E6-C4E4-350E-959A17C1CD6A";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local1";
	rename -uid "ACBCD344-4553-B4DF-B0AE-0FB25E5B43E2";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local1";
	rename -uid "5308FA22-45C7-7319-2056-7287C8A27FE6";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix13";
	rename -uid "98685BA1-42AE-34FD-7102-8AAE687722C3";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix14";
	rename -uid "E7E3F2B5-46C1-80E0-2BC6-5DBFC19DDE49";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix20";
	rename -uid "48A14ED8-42CE-1DF9-20EE-AA83A8FFCB4C";
createNode multMatrix -n "multMatrix15";
	rename -uid "A05EF07A-4396-FEE9-715D-02830AA8D890";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix21";
	rename -uid "6EF932E9-4AB2-1509-04C0-66BA64DA01A8";
createNode multMatrix -n "multMatrix16";
	rename -uid "5E0E6B8E-43EE-067B-C325-E8A9E86C7D74";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix22";
	rename -uid "73DBD5F1-4A92-12DE-DAE9-018A9A64BC2C";
createNode multiplyDivide -n "elbow2wrist_vec1_rvs";
	rename -uid "BFE54552-4D75-EAAC-61C0-1BB551D3BFF0";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2elbow_vec1_rvs";
	rename -uid "2F073667-4F62-A7D1-71E8-D3811A1C03BD";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2wrist_vec1_rvs";
	rename -uid "2F50D876-4AB5-536C-EF88-E39E421ACC93";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "029CC0B6-4885-C994-D4EC-28B9F03DB785";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "divide_softikV2";
	rename -uid "78A6D54A-470B-1870-898E-54AF0C6E8F6F";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val2";
	rename -uid "79F52D3F-4A2B-A60C-2A57-EFB2B46A8C61";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val2";
	rename -uid "A0A76929-4A11-F269-A7E8-0A8470690BBA";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV2";
	rename -uid "DDC8EAD5-4E4D-E590-9DCD-CD9DF3EF00B5";
createNode plusMinusAverage -n "result_softik_len2";
	rename -uid "BAB00553-4F3D-9E27-0C31-0E98AEFD6BA5";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition2";
	rename -uid "8CF5CD95-4AEA-6963-F024-739594A403B5";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition2";
	rename -uid "A9106F41-4044-2DF7-AC92-C3800E8D6BBF";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo12";
	rename -uid "1484BDE1-4C5F-F39A-66D7-51A88635B053";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen2";
	rename -uid "CC23B23A-4161-E2F2-60A6-6799CEE606FA";
createNode distanceBetween -n "loarmLen2";
	rename -uid "02F66448-4316-51B1-130C-05ACB8B46FB7";
createNode plusMinusAverage -n "armLen4";
	rename -uid "7AB08A9B-4ED6-3061-7597-B29654EE944A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen2";
	rename -uid "3C9BA243-4194-DA77-F13B-9D8BB1970E3C";
createNode ikRPsolver -n "ikRPsolver2";
	rename -uid "F8654342-4E1E-F333-61F4-BE86FABA9F95";
createNode plusMinusAverage -n "armlen_minus_softikV2";
	rename -uid "B6324D19-4469-47DE-0124-A68C627B575D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif2";
	rename -uid "71815CA0-4973-F838-5153-2FBFE05EDFD0";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide2";
	rename -uid "E138E2C7-4F0F-AF31-59A7-4881B2C6BD1B";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo14";
	rename -uid "E715E4F1-486F-D920-C59E-F0BAF7F00D1B";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio2";
	rename -uid "E5732B1B-4047-C38A-B5A3-B08D776F199B";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen5";
	rename -uid "86A8D041-42A7-9D28-9AAB-B89C210DD592";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio5";
	rename -uid "E215636C-4F04-061B-0596-36A208411C82";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen2";
	rename -uid "85216A82-451F-8F0C-1651-CCB876BC48BE";
createNode multiplyDivide -n "stretchCtrl_uparm2";
	rename -uid "B1F255A5-4FF9-E77F-F109-F0A64DE83FFA";
createNode plusMinusAverage -n "uparm_plus_stretch3";
	rename -uid "2FB78E54-4575-15AF-B441-C4BC69A99F95";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm2";
	rename -uid "C2DC8A15-4D16-A948-6398-A192D49080A3";
	setAttr ".op" 2;
createNode condition -n "cond_loarm2";
	rename -uid "476D37A0-4EE1-D613-674D-F5B771D4EBE6";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen2";
	rename -uid "9843AFA4-43F9-66EB-6B33-C182F3C33F77";
createNode multiplyDivide -n "stretchCtrl_loarm2";
	rename -uid "53BE4E56-40B4-D9B5-E418-44A12C7C8C26";
createNode plusMinusAverage -n "loarm_plus_stretch3";
	rename -uid "3DDB67A1-490C-9FD5-B96D-239A6306748C";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo17";
	rename -uid "B2913C5D-47CC-42E1-EF7A-129B1C298AEC";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen2";
	rename -uid "D9A8FA9E-4A65-C2DD-7E5E-C39C09F569B7";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo15";
	rename -uid "6BCB729C-4AB6-3B91-F7F6-669817F9BBE7";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo16";
	rename -uid "06C65A2A-4FED-29ED-5DA5-B9A972EC98BA";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo13";
	rename -uid "9EEC38CF-4016-914D-3963-8AAF20849E92";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal2";
	rename -uid "6190C9B3-4630-6185-1F04-4E9FA8D8D6F0";
createNode blendColors -n "ikfk_shoulder_t2";
	rename -uid "29AEAFB0-45F2-5769-8C55-EBBAB3065878";
createNode blendColors -n "ikfk_shoulder_r2";
	rename -uid "D0EA08E2-467F-F913-59B9-7FA373F69DFA";
createNode unitConversion -n "unitConversion7";
	rename -uid "2EEFF010-4E11-6299-17D6-DB8E7C32D219";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "9684257F-4AE2-1901-A6E9-148044339CD4";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	rename -uid "A5224E6D-437B-EB19-2E72-539295447EC9";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow2";
	rename -uid "E964B39C-47AD-D67A-24B4-0B81108634B6";
createNode pairBlend -n "pairBlend3";
	rename -uid "78CA8550-4480-0274-5DB8-D8B1BE989710";
createNode reverse -n "reverse3";
	rename -uid "CD363362-4C7B-AEB4-1DF4-C68E81487796";
createNode decomposeMatrix -n "decomposeMatrix23";
	rename -uid "5016EE18-4C1A-3D2A-2A5D-F2B1B6B44005";
createNode decomposeMatrix -n "decomposeMatrix24";
	rename -uid "026424F8-4046-CD94-A85F-ECA4139A8818";
createNode decomposeMatrix -n "decomposeMatrix25";
	rename -uid "A9A48C83-4EE1-254B-7EB4-08AD51B8CCE7";
createNode plusMinusAverage -n "shld2elbow_vec2";
	rename -uid "028CA668-4719-2C95-A782-F2A72DB4BD28";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec2";
	rename -uid "90C34243-45A5-6DB7-228C-01AE36B0B2ED";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec2";
	rename -uid "B607AAE4-4148-2786-77F6-A2991E49F7F4";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec2";
	rename -uid "A6D68488-48AB-9B61-2188-63BCDB5707F7";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat2";
	rename -uid "C1B29B7E-4D5D-DA1C-11DE-FB990A8C5D95";
createNode vectorProduct -n "shoulder_x_vec2";
	rename -uid "8035C894-408D-3DEF-F9D0-C2B958B72CD1";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix26";
	rename -uid "7AE49100-4CA5-DC58-4B75-959E8F6A26AD";
createNode plusMinusAverage -n "elbow2shoulder_vec2";
	rename -uid "874BE966-4408-16BE-43EE-26B62D01A204";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec2";
	rename -uid "70A5B098-4E57-36FB-C5B1-5FAA5841C0A2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec2";
	rename -uid "F5D27376-4361-1AC9-8357-83B3E995F4C1";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec2";
	rename -uid "E4F1D346-4606-DB6E-E79B-838E5B892D71";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec2";
	rename -uid "C3F802A4-4D7F-2035-FB0F-3FBA1007DB34";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat2";
	rename -uid "CD64F7B7-45C7-8D93-6C90-8381940DD9E6";
createNode decomposeMatrix -n "decomposeMatrix27";
	rename -uid "443ED94B-42DA-DDA6-9708-AF9A784176D0";
createNode multMatrix -n "multMatrix17";
	rename -uid "32A91176-4837-C4E5-09C7-62B21B983C95";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix28";
	rename -uid "841A4576-42B3-F513-28FB-A9BDF06A2123";
createNode multMatrix -n "multMatrix18";
	rename -uid "BB94D0F1-4D24-0D86-7D49-D6A81B56E08A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix29";
	rename -uid "8BAEA9D8-4122-8F06-368D-D099995C0D1E";
createNode multMatrix -n "multMatrix19";
	rename -uid "67BCE727-49CD-0DA3-5D2F-DDAE2C1F7DA3";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix20";
	rename -uid "8B401D99-4D43-4E7D-FF3F-EBA523C15E0D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix30";
	rename -uid "B5C588F3-435E-8F36-9E05-93957D3E31EF";
createNode lambert -n "lambert4";
	rename -uid "A307902E-422A-FD7A-6272-B7933CD62E5E";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG2";
	rename -uid "3D0484F8-4299-3C7F-0C0E-E29D6E17954A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "7A8AE499-4321-573F-25DF-9087A7AD0E0A";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "C5DC7887-4D21-F88C-795B-F8AEF7E8BCA1";
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
	rename -uid "AAEBB644-437A-28D2-C97E-7E8E69C740A6";
createNode multMatrix -n "init_shoulder_localMat2";
	rename -uid "83A5EB3D-410D-7502-14B1-5097D51CAD15";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat2";
	rename -uid "C5484B47-4BB1-DEB0-A8D3-64BE57FFDFFC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp2";
	rename -uid "0FA69723-4319-BB43-213E-89BF5054F68F";
createNode multMatrix -n "init_wrist_local2";
	rename -uid "C43D7A6E-473A-7558-D12F-02997DB53A37";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local2";
	rename -uid "8FB72DBF-4999-A2FC-FC64-0F814FD656A0";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local2";
	rename -uid "3D21274A-4036-A4E3-17CB-9297338B45D1";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local2";
	rename -uid "CDB012CF-43AD-7658-8FC5-509931A9CCBD";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix21";
	rename -uid "4D0E6BBC-49EB-BC40-028F-7E9DD9539296";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix22";
	rename -uid "1C701379-423F-D60F-DA42-81BA4E910D3F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix31";
	rename -uid "CA9121AF-4B19-D9F0-9093-AF8F5E460FFB";
createNode multMatrix -n "multMatrix23";
	rename -uid "ACD8347C-46D7-758C-0EDE-6EBEAAC07C17";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix32";
	rename -uid "49A22F12-4776-59F2-8ABE-6C8EF5F76101";
createNode multMatrix -n "multMatrix24";
	rename -uid "56548615-4EAF-AA66-78EA-9DA11DC3066C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix33";
	rename -uid "DED0D572-400A-E805-851C-0CA03DA5F528";
createNode multiplyDivide -n "divide_softikV3";
	rename -uid "EEA30C36-4807-6F88-308F-B8AFBE3D304B";
	setAttr ".op" 2;
createNode multiplyDivide -n "negate_val3";
	rename -uid "B4AEF5E5-4296-7D43-EEA3-23A399069203";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "power_val3";
	rename -uid "0D816D7B-4C86-104C-6822-F4AE9F69860E";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 2.7179999 0 0 ;
createNode multiplyDivide -n "mult_softikV3";
	rename -uid "917EF160-4223-8A56-595B-EA89BD1E9050";
createNode plusMinusAverage -n "result_softik_len3";
	rename -uid "B326ED6E-4557-AB5B-D6B1-97AA765BB4AB";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "softikV_condition3";
	rename -uid "0F5EAF92-44A8-8E22-7374-2C8AEF8A6855";
	setAttr ".op" 2;
createNode condition -n "ctrllen_condition3";
	rename -uid "939C3D2E-4690-79AF-3B24-8BAA001FEEA7";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo18";
	rename -uid "B971643F-4959-B2B6-F209-2FB50769C570";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode distanceBetween -n "uparmLen3";
	rename -uid "A45FC653-4F11-E0C2-99F3-748910491DCA";
createNode distanceBetween -n "loarmLen3";
	rename -uid "5AAAB43D-4009-49BC-A8F7-75BCC8FE5F78";
createNode plusMinusAverage -n "armLen6";
	rename -uid "F7F5A262-4806-C276-610A-96908E953577";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode distanceBetween -n "ctrlLen3";
	rename -uid "2CA246CF-42E6-80C3-9AA3-609EDC688B1F";
createNode ikRPsolver -n "ikRPsolver3";
	rename -uid "D94D9A46-45BD-6E13-92E9-E8BB6142458A";
createNode plusMinusAverage -n "armlen_minus_softikV3";
	rename -uid "FDC01323-4136-B6DA-8948-EB9F262D1C96";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "ctrlLen_minus_dif3";
	rename -uid "E6E73313-43F7-BB77-C12D-CAA54AF88D73";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "conditionfor_zerodivide3";
	rename -uid "7FCFFED1-4EEE-BD78-15C4-BB84E4E74804";
	setAttr ".ct" -type "float3" 1 0 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo20";
	rename -uid "5513EBE9-4C87-6993-2CFA-C6A4FA3CED16";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "uparm_ratio3";
	rename -uid "8065757D-4C96-F016-F68C-2097F5EB8FD0";
	setAttr ".op" 2;
createNode plusMinusAverage -n "armLen7";
	rename -uid "CFC9E465-4F86-DCF1-EBDD-63A74A1C367B";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "loarm_ratio6";
	rename -uid "D4341C28-4C62-249C-38F3-E49742B5999A";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_uparmLen3";
	rename -uid "75DE2CE1-4F73-5CB9-BE0C-8D884760A2FA";
createNode multiplyDivide -n "stretchCtrl_uparm3";
	rename -uid "E3A8B670-4EFD-1F33-9694-27B6EA11F387";
createNode plusMinusAverage -n "uparm_plus_stretch4";
	rename -uid "CCD9606A-4BB3-0606-DCEF-989103FBF73D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "cond_uparm3";
	rename -uid "1333FE3A-4087-FED5-DEE9-F2B58B0D918D";
	setAttr ".op" 2;
createNode condition -n "cond_loarm3";
	rename -uid "DAA66E93-403F-B134-A723-43906BE187EB";
	setAttr ".op" 2;
createNode multiplyDivide -n "stretched_loarmLen3";
	rename -uid "D062F967-463E-FE50-F6EC-BE935D721AFE";
createNode multiplyDivide -n "stretchCtrl_loarm3";
	rename -uid "F6112133-4044-C259-E976-6887A8D558C2";
createNode plusMinusAverage -n "loarm_plus_stretch4";
	rename -uid "CF02509D-408E-C1CE-DF34-5CBA6CB5BD7A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo23";
	rename -uid "C20A2B76-4911-AEB5-4563-A7BCA5A43379";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode plusMinusAverage -n "stretchedLen3";
	rename -uid "447620E6-4CA1-CE07-29F8-3A86523E54CD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo21";
	rename -uid "94830B39-4B7D-E324-16D5-31B8F6855D6A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo22";
	rename -uid "104D4937-42D9-4E43-209C-999965185F51";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo19";
	rename -uid "4CC4E90E-413E-D451-4BA3-80BC7A7ACA02";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -651.19045031449264 -530.95235985422983 ;
	setAttr ".tgi[0].vh" -type "double2" 888.09520280550521 555.95235886081912 ;
createNode multiplyDivide -n "stretch_output_mul_ctrlVal3";
	rename -uid "5C8B2FE5-42E6-3D7A-3A91-8799B225680B";
createNode blendColors -n "ikfk_shoulder_t3";
	rename -uid "84897447-45BF-F18E-B063-25BCB2ACDA3B";
createNode blendColors -n "ikfk_shoulder_r3";
	rename -uid "BFE4BD10-42F1-33C8-1682-49A222F49938";
createNode unitConversion -n "unitConversion10";
	rename -uid "4273F754-4059-0956-D631-92BC5B94D42A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	rename -uid "02A3EA7A-4B47-6C5B-FC08-B897CC8EA040";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "A3A1BB98-4F87-2B2A-78FE-C1866F85138D";
	setAttr ".cf" 0.017453292519943295;
createNode pairBlend -n "ikfk_blend_elbow3";
	rename -uid "4F764392-4492-BD0B-C68D-B78D22BBA316";
createNode pairBlend -n "pairBlend4";
	rename -uid "B5677940-4133-12D1-B739-82BF2E35656A";
createNode reverse -n "reverse4";
	rename -uid "50B22E3F-4FA7-0D42-17F9-6BA0438732C3";
createNode decomposeMatrix -n "decomposeMatrix34";
	rename -uid "93060A09-4AB1-EBA8-82CB-66A7BF7AE8CC";
createNode decomposeMatrix -n "decomposeMatrix35";
	rename -uid "CB3D90A2-403B-0395-E158-D3B259AD336B";
createNode decomposeMatrix -n "decomposeMatrix36";
	rename -uid "2D867DB6-4623-4BF7-2CF3-6392B682E0BF";
createNode plusMinusAverage -n "shld2elbow_vec3";
	rename -uid "43D89F84-4A5D-F9FF-951D-F2B328B500E7";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "shld2wrist_vec3";
	rename -uid "8C5C1AB9-46DB-6A07-0FD4-CF8FCD03F3C1";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_y_vec3";
	rename -uid "9FB62D0E-46B8-61B9-FC1C-B0B2BACF0194";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "shoulder_z_Vec3";
	rename -uid "1BA70A5E-49D5-5121-C441-65ACE65B0BA9";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "shoulder_aligned_mat3";
	rename -uid "FC35A593-418D-C1E4-3C24-E5A54949B39E";
createNode vectorProduct -n "shoulder_x_vec3";
	rename -uid "A0F3CFCA-41D7-17FC-FDD6-EEB6E6562F73";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode decomposeMatrix -n "decomposeMatrix37";
	rename -uid "28A3AB4D-4A29-819C-33BB-68B27D595539";
createNode plusMinusAverage -n "elbow2shoulder_vec3";
	rename -uid "32C6EC3F-4705-C6FF-6C02-F39C8664F810";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode plusMinusAverage -n "elbow2wrist_vec3";
	rename -uid "89DD14F1-485C-9EB4-F36B-BF9F58FD70CA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "elbow_y_vec3";
	rename -uid "F3493BE0-4ACC-32F5-2AA1-8F9E2D13EC2D";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_z_vec3";
	rename -uid "C1F4A324-48B8-2D81-B740-928991BC74BC";
	setAttr ".op" 2;
	setAttr ".no" yes;
createNode vectorProduct -n "elbow_x_vec3";
	rename -uid "AAA1182A-4D66-0FFB-172E-A3B66190F846";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode fourByFourMatrix -n "elbow_aligned_mat3";
	rename -uid "AAB63B52-421E-B3BA-602F-EA84EC282FA4";
createNode decomposeMatrix -n "decomposeMatrix38";
	rename -uid "D19F6720-4AAE-1C34-897E-D8B8C38CAD5C";
createNode multMatrix -n "multMatrix25";
	rename -uid "137561ED-497F-FF09-1443-0486500D2CE9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix39";
	rename -uid "154421A5-4FA6-03FD-EB2B-05B45E2AC211";
createNode multMatrix -n "multMatrix26";
	rename -uid "4A551FE6-4651-9B65-37F5-978AFF8C4D77";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix40";
	rename -uid "E3FD0D2C-403D-1B65-0D8F-66AFD120EB2D";
createNode multMatrix -n "multMatrix27";
	rename -uid "B6AAC46D-4EB2-392C-256C-42A8389406AA";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix28";
	rename -uid "92C4B776-40F7-ED33-3D99-0685CBE8A8A1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix41";
	rename -uid "8DD84749-404A-021C-D864-6A8D65B8625A";
createNode lambert -n "lambert5";
	rename -uid "9F07FA5C-41F7-ABF8-7B68-E4A4BDB79350";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".it" -type "float3" 0.85926604 0.85926604 0.85926604 ;
createNode shadingEngine -n "lambert2SG3";
	rename -uid "A219AA17-43A0-C721-877A-858196328550";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "1E55DEA9-4DEC-8F2F-4059-A4AC8F889672";
createNode nodeGraphEditorInfo -n "alignment_hyperShadePrimaryNodeEditorSavedTabsInfo3";
	rename -uid "C223575E-4D92-F032-1D17-FDAFE69F436C";
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
	rename -uid "E3D2C7EA-4DA9-BA29-4C76-9684F75E8D0B";
createNode multMatrix -n "init_shoulder_localMat3";
	rename -uid "07B5F3DD-4C0F-C7A6-6853-12A65CDAA01F";
	setAttr -s 2 ".i";
createNode multMatrix -n "wrist_ik_ctrl_localMat3";
	rename -uid "C32FE949-4A3F-721D-EE1B-CBAB401B02B8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wrist_ik_ctrl_localMat_decomp3";
	rename -uid "A50BFC01-41C3-A5ED-4B44-139088084352";
createNode multMatrix -n "init_wrist_local3";
	rename -uid "EE0FE7B8-453B-570D-9A5E-96B799D53D59";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_elbow_local3";
	rename -uid "CC1D4C95-46A8-CA44-F208-6F81B3807756";
	setAttr -s 2 ".i";
createNode multMatrix -n "init_shoulder_local3";
	rename -uid "2243CD7C-408D-C462-6648-E988E5AB6F39";
	setAttr -s 2 ".i";
createNode multMatrix -n "ik_ctrl_local3";
	rename -uid "B5A39BE4-48D2-0627-6E75-54B4EFE96755";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix29";
	rename -uid "7A8F65C6-494C-413C-7368-C1A55E80728E";
	setAttr -s 2 ".i";
createNode multMatrix -n "multMatrix30";
	rename -uid "D1674AEA-4C59-DE16-4BEC-18A932BE8BF6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix42";
	rename -uid "2F81B328-483E-89C2-D658-E6BFD109F597";
createNode multMatrix -n "multMatrix31";
	rename -uid "05903E06-4ABE-4BCB-37B9-30967097E140";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix43";
	rename -uid "0F4FE611-42B5-B603-9E40-F7BAA0CCCF74";
createNode multMatrix -n "multMatrix32";
	rename -uid "1E9EA719-49A6-2BA3-515E-23BA7FDC4E13";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix44";
	rename -uid "9FB3E0D9-446E-E638-BF8C-8C8497FE3D67";
createNode multiplyDivide -n "elbow2shoulder_vec3_rvs";
	rename -uid "64254E0E-4239-7458-8BEB-47B7E8D6F5FF";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2wrist_vec3_rvs";
	rename -uid "8B502C3A-4AD2-3A1C-E5AA-5FB4C180D4BC";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "elbow2wrist_vec3_rvs";
	rename -uid "0DA9D16C-44B1-9D3D-2C0A-B6B1C6CA03DE";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "shld2elbow_vec3_rvs";
	rename -uid "F43C702E-4AD4-1FAE-6F1E-AE87F60B7E4C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode decomposeMatrix -n "fit_DMTX";
	rename -uid "148BAA86-4AC9-1371-7819-8C94D524C0B3";
createNode decomposeMatrix -n "fit_spine_CTL_control_DMTX";
	rename -uid "D55A7971-4805-9312-2A69-6A8771DD1531";
createNode decomposeMatrix -n "fit_spine_sub_000_CTL_control_DMTX";
	rename -uid "B06E37DF-4D30-98CC-A1F2-6C88019378A5";
createNode decomposeMatrix -n "fit_chest_sub_001_CTL_control_DMTX";
	rename -uid "2A34ACD5-4B8B-7271-B00A-73A84E9F59C6";
createNode decomposeMatrix -n "fit_chest_CTL_control_DMTX";
	rename -uid "CF593116-4415-9702-39FD-F1B4346EF1CF";
createNode decomposeMatrix -n "ctl_DMTX";
	rename -uid "B04834C8-457C-5A77-15AC-04ABA748F4BA";
createNode decomposeMatrix -n "M_spine_CTL_localMat_DMTX";
	rename -uid "1A4C3A60-4946-7391-DD28-53A6C48CC888";
createNode multMatrix -n "M_spine_CTL_localMat_MAT";
	rename -uid "1BABC22A-47A2-B68E-814B-4EBF88086985";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "M_chest_CTL_localMat_DMTX";
	rename -uid "A808F8EE-498B-43C3-F437-8B902E07B99D";
createNode multMatrix -n "M_chest_CTL_localMat_MAT";
	rename -uid "D3FC952A-46F8-EA65-EB0F-0F9DF47CF481";
	setAttr -s 2 ".i";
createNode pointOnCurveInfo -n "twist_spine_poci";
	rename -uid "0099D4CD-4F99-C986-3441-23A653B553AB";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_spine_CTL_rotMat_DMTX";
	rename -uid "5356EAB3-441C-D78D-D421-1BB21ABC9A79";
createNode pointOnCurveInfo -n "twist_chest_poci";
	rename -uid "B7D4461F-4442-FD7C-EF3D-B29665525682";
	setAttr ".top" yes;
createNode decomposeMatrix -n "M_chest_CTL_rotMat_DMTX";
	rename -uid "40E54490-4000-E106-D8B4-0D8BD4034EEB";
createNode pointOnCurveInfo -n "spineA_poci";
	rename -uid "3044F585-48D6-AC5E-8988-819D43011FF3";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineA_param_MULT";
	rename -uid "E25E50CF-496C-E04A-8CDD-F6BAD70B1471";
	setAttr ".i2" -type "float3" 0 1 1 ;
createNode multiplyDivide -n "spine_param_MULT";
	rename -uid "DDDFCCA4-4A3C-E9CF-06D6-61800753C732";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "D932B2F4-4252-B061-0F96-77969DA4A6DF";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineA_twist_PLS";
	rename -uid "E78A26C6-4C4F-E484-228D-F0ABB009160D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineA_twist_MULT";
	rename -uid "679F19D5-43A6-2137-9C6C-0B868FEFC82F";
createNode remapValue -n "spine_spineA_twist_RMAP";
	rename -uid "651BFFAD-488E-566C-F91C-0E8EA592123B";
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
	rename -uid "C307D9C6-47F1-15E7-5E32-DA9698D859E0";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineA_twist_MULT";
	rename -uid "F0BC4E17-44D3-27D2-ABB4-DA96E030863F";
createNode remapValue -n "chest_spineA_twist_RMAP";
	rename -uid "163BA99A-4F13-F485-0021-9699AF4E92C3";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion23";
	rename -uid "08809AB3-42E9-19F5-DB18-0586588F8901";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "spineB_poci";
	rename -uid "CC5CF23B-4332-D377-5FD6-4693DDEC4AE6";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineB_param_MULT";
	rename -uid "C2BDC662-4F36-FE16-414B-59ACA23652EB";
createNode unitConversion -n "unitConversion14";
	rename -uid "202BA0AF-4D33-3616-559D-F9A3B0D087CC";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineB_twist_PLS";
	rename -uid "3D0AE7C4-45E1-38BF-AB6E-BB81146F62A6";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineB_twist_MULT";
	rename -uid "6E6BC542-41BF-7A0F-A3B5-D48037817B8D";
createNode remapValue -n "spine_spineB_twist_RMAP";
	rename -uid "7B10DEC2-4D47-DC81-B9C1-30AAFE7C8136";
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
	rename -uid "D1832A20-4A34-01D1-0B75-72AA6FC06C0B";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineB_twist_MULT";
	rename -uid "CD995A02-45B4-08C4-A011-A3A3D0BE87D5";
createNode remapValue -n "chest_spineB_twist_RMAP";
	rename -uid "D05918CC-40C9-B4BE-8869-A79823E1C0E2";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion24";
	rename -uid "D60722F9-4A01-BE7B-AE37-1A96072F5D90";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "spineC_poci";
	rename -uid "E7587739-4D41-1A93-F113-E0B6CB3FBF35";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineC_param_MULT";
	rename -uid "DB22ACD5-4F32-FBD7-0E77-AA8F4C5C161B";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode unitConversion -n "unitConversion15";
	rename -uid "942B45F9-413C-84CF-876D-8B842B766AD0";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineC_twist_PLS";
	rename -uid "13718E36-437E-95C3-BFD1-53911C6CFC36";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineC_twist_MULT";
	rename -uid "132AF407-45E4-A6DA-5E31-6F9F62728ABC";
createNode remapValue -n "spine_spineC_twist_RMAP";
	rename -uid "7865BDA4-46DD-5CDE-0AB5-A88FA1D5AE99";
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
	rename -uid "41B7AE5D-40A1-FDF9-BAE1-F78F7131E8B8";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineC_twist_MULT";
	rename -uid "DB96CEFC-407B-3828-F2FF-2E88D2D8280A";
createNode remapValue -n "chest_spineC_twist_RMAP";
	rename -uid "8B5548CF-4C80-FD93-50BC-3E9829EA54E6";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion25";
	rename -uid "5E6C7AA5-41EF-D50B-A069-A29461E9C563";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "spineD_poci";
	rename -uid "87611E38-44A0-C8C3-295F-039A514B25AF";
	setAttr ".top" yes;
createNode multiplyDivide -n "spineD_param_MULT";
	rename -uid "85C85899-4F52-04E9-CA2B-4E8285F04909";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode unitConversion -n "unitConversion16";
	rename -uid "6B9989B7-428F-9E8E-CA80-09BF816DD5F9";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "spineD_twist_PLS";
	rename -uid "2F5A0C17-4CB6-E022-2364-97BF3D5EE750";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_spineD_twist_MULT";
	rename -uid "19DCB06A-4051-F953-97A1-3EA4DC3A1E21";
createNode remapValue -n "spine_spineD_twist_RMAP";
	rename -uid "3E43351E-4D01-1819-DB1D-1084B8BA4E3C";
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
	rename -uid "3BC696D8-49C4-F4DE-788F-86804A7EFA93";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_spineD_twist_MULT";
	rename -uid "28A15274-456E-CE52-7FB0-F280707B4D82";
createNode remapValue -n "chest_spineD_twist_RMAP";
	rename -uid "14C804AF-4B76-0E98-1002-93AFA3D1BE0A";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion26";
	rename -uid "C2F21A7B-4EC8-F306-D337-548EC7D984C6";
	setAttr ".cf" 57.295779513082323;
createNode pointOnCurveInfo -n "chest_poci";
	rename -uid "0D4E6978-4F2D-7C70-22C2-C59EEF8414F2";
	setAttr ".top" yes;
createNode multiplyDivide -n "chest_param_MULT";
	rename -uid "BE20059D-4C7F-14DA-BE3C-E5B48AA23054";
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode unitConversion -n "unitConversion17";
	rename -uid "A545DFE7-4DE9-0295-A00B-7096BE3535BF";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "chest_twist_PLS";
	rename -uid "94F8401C-446A-B312-A5CA-B3997F0FE2F9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "spine_chest_twist_MULT";
	rename -uid "155749BE-4219-D049-8EA3-6FAB6136A9F7";
createNode remapValue -n "spine_chest_twist_RMAP";
	rename -uid "B16A511F-4491-0622-0491-B68A42F3A037";
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
	rename -uid "C8B61E8D-4333-2B87-3080-1FB1074ACBE5";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "chest_chest_twist_MULT";
	rename -uid "CB496037-4CEA-0226-D546-DD89DBF08EF3";
createNode remapValue -n "chest_chest_twist_RMAP";
	rename -uid "03F325CA-4244-4950-3EE3-51B4AD043BF1";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion27";
	rename -uid "0108565C-44B1-8E43-9078-0CAE2F96D959";
	setAttr ".cf" 57.295779513082323;
createNode decomposeMatrix -n "fk_spineA_scaleSpaceMat_DMTX";
	rename -uid "6CAFB4FE-4598-A541-376F-82B6985E7946";
createNode multMatrix -n "fk_spineA_scaleSpaceMat_MAT";
	rename -uid "0FC0622B-466C-5432-7399-31A417890725";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineB_scaleSpaceMat_DMTX";
	rename -uid "EA973398-4456-593E-EF5A-7BBBAA36CD46";
createNode multMatrix -n "fk_spineB_scaleSpaceMat_MAT";
	rename -uid "D0CA9D14-4902-CC71-5C21-2F93947A97CC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_scaleSpaceMat_DMTX";
	rename -uid "ECF6B2C7-4816-1092-D369-808A9BDA6B9B";
createNode multMatrix -n "fk_spineC_scaleSpaceMat_MAT";
	rename -uid "31FFA5DB-44E2-6805-8628-F4937A1C1734";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_scaleSpaceMat_DMTX";
	rename -uid "F80E258D-46F0-8D6E-9E20-CAB0BD62DB7B";
createNode multMatrix -n "fk_spineD_scaleSpaceMat_MAT";
	rename -uid "50B23D40-40D6-9B35-5EAC-B7A84FE9162D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_scaleSpaceMat_DMTX";
	rename -uid "26F1D35C-4E65-ABCC-31AC-ADAB385E9ED0";
createNode multMatrix -n "fk_chest_scaleSpaceMat_MAT";
	rename -uid "9C41FCB3-4D95-5341-684D-598A1EEDE8FE";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_joint_DMTX";
	rename -uid "E0242EF5-432F-E779-B7BD-089637D9D307";
createNode decomposeMatrix -n "fk_spineB_localMat_DMTX";
	rename -uid "96363484-4E77-B684-5E9C-05A7DA0F43DB";
createNode multMatrix -n "fk_spineB_localMat_MAT";
	rename -uid "182B524D-4CF8-5F58-FF23-54A88233AEBC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineC_localMat_DMTX";
	rename -uid "86F9893B-463F-4D1A-8C82-08A2A92EB201";
createNode multMatrix -n "fk_spineC_localMat_MAT";
	rename -uid "ED783AD0-462B-E592-B82E-A3AFC89D9DB9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_spineD_localMat_DMTX";
	rename -uid "D4D5E62A-456C-C976-4EFB-70811CF2A5A2";
createNode multMatrix -n "fk_spineD_localMat_MAT";
	rename -uid "7434A679-41D7-8B6B-014D-EF98B70F6E55";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_chest_localMat_DMTX";
	rename -uid "5F1EDD85-43DA-DD4C-6BE3-A4A7B0D667E2";
createNode multMatrix -n "fk_chest_localMat_MAT";
	rename -uid "F5A6B571-44E2-E2A3-FE55-2AA16BC1459A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "fk_control_DMTX";
	rename -uid "362E3747-4424-854E-813A-40B648C4B07F";
createNode decomposeMatrix -n "FK_spineC_JNT_DMTX";
	rename -uid "07CB3688-4DD7-7A50-2DA4-CFAAC0EB35A1";
createNode decomposeMatrix -n "FK_chest_JNT_DCMX";
	rename -uid "46B41AF3-4AFA-EE0B-018E-2587E7FED8F3";
createNode multMatrix -n "FK_hip_space_MTMX";
	rename -uid "120B96CF-4FF7-73CC-A493-369D4F2E84F9";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix45";
	rename -uid "555D79DB-4512-9AA4-F80D-3CAE336281F9";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "2DC9A267-4A81-0466-8A90-7D96E3BA2C1F";
createNode decomposeMatrix -n "FK_spineA_JNT_DCMX";
	rename -uid "04BD55B6-4622-F6F6-70CE-00BB46D02EBD";
createNode pairBlend -n "ikfk_scapula_PRBD";
	rename -uid "4F229FCE-475A-5669-DC64-818D35E629ED";
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "F352D538-445E-A3CD-3B20-54A6B04CB148";
createNode multMatrix -n "multMatrix33";
	rename -uid "5BD25D10-49D5-E797-5DCC-8C86131EBF35";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "decomposeMatrix46";
	rename -uid "7E019AEB-49BA-E0FD-4FED-66A02969849C";
createNode decomposeMatrix -n "decomposeMatrix47";
	rename -uid "EC392EEA-42A4-1E88-0038-BB8E606659EE";
createNode multMatrix -n "multMatrix34";
	rename -uid "BDF907F9-4C6B-8964-1F7D-4291BB4243CF";
	setAttr -s 2 ".i";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "96F3E730-49DB-CA1F-0853-99B822DE1D5A";
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
	setAttr -s 325 ".u";
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
connectAttr "input_arm_space_decomp.ot" "|L_arm|L_input_arm_grp|L_fit_space.t";
connectAttr "input_arm_space_decomp.or" "|L_arm|L_input_arm_grp|L_fit_space.r";
connectAttr "input_arm_space_decomp.os" "|L_arm|L_input_arm_grp|L_fit_space.s";
connectAttr "input_arm_space_decomp.osh" "|L_arm|L_input_arm_grp|L_fit_space.sh"
		;
connectAttr "decomposeMatrix5.osh" "L_init_elbow.sh";
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
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_scapula|L_ik_shoulder|L_ik_elbow|L_effector4.hp" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_shoulder_space|L_ik_ctrlaim|L_softik_output_loc|L_stretch_output_loc|L_ikHandle4.hee"
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
connectAttr "decomposeMatrix46.ot" "L_ik_scapula.t";
connectAttr "decomposeMatrix46.or" "L_ik_scapula.r";
connectAttr "decomposeMatrix6.ot" "L_ik_shoulder.t";
connectAttr "decomposeMatrix6.or" "L_ik_shoulder.jo";
connectAttr "L_ik_scapula.s" "L_ik_shoulder.is";
connectAttr "L_ik_shoulder.s" "L_ik_elbow.is";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.uparm_stretched" "L_ik_elbow.tx"
		;
connectAttr "L_init_elbow.r" "L_ik_elbow.jo";
connectAttr "L_ik_elbow.s" "L_ik_wrist.is";
connectAttr "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_stretchik_output.loarm_stretched" "L_ik_wrist.tx"
		;
connectAttr "L_init_wrist.r" "L_ik_wrist.jo";
connectAttr "L_ik_wrist.tx" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_scapula|L_ik_shoulder|L_ik_elbow|L_effector4.tx"
		;
connectAttr "L_ik_wrist.ty" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_scapula|L_ik_shoulder|L_ik_elbow|L_effector4.ty"
		;
connectAttr "L_ik_wrist.tz" "|L_arm|L_arm_motion_grp|L_motion_ik_grp|L_ik_scapula|L_ik_shoulder|L_ik_elbow|L_effector4.tz"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.t" "|L_arm|L_arm_motion_grp|L_motion_fk_grp.t"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.r" "|L_arm|L_arm_motion_grp|L_motion_fk_grp.r"
		;
connectAttr "|L_arm|L_arm_motion_grp|L_init_space.s" "|L_arm|L_arm_motion_grp|L_motion_fk_grp.s"
		;
connectAttr "decomposeMatrix47.ot" "L_fk_scapula.t";
connectAttr "L_fk_scapula_ctrl.r" "L_fk_scapula.r";
connectAttr "L_fk_shoulder_ctrl.r" "L_fk_shoulder.r";
connectAttr "decomposeMatrix11.ot" "L_fk_shoulder.t";
connectAttr "decomposeMatrix11.or" "L_fk_shoulder.jo";
connectAttr "L_fk_scapula.s" "L_fk_shoulder.is";
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
connectAttr "ikfk_scapula_PRBD.ot" "L_output_scapula.t";
connectAttr "ikfk_scapula_PRBD.or" "L_output_scapula.r";
connectAttr "ikfk_shoulder_t.op" "L_output_shoulder.t";
connectAttr "unitConversion3.o" "L_output_shoulder.r";
connectAttr "decomposeMatrix6.or" "L_output_shoulder.jo";
connectAttr "L_output_scapula.s" "L_output_shoulder.is";
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
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.ctx" "L_ik_scapula_ctrl_offGRP.tx"
		;
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.cty" "L_ik_scapula_ctrl_offGRP.ty"
		;
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.ctz" "L_ik_scapula_ctrl_offGRP.tz"
		;
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.crx" "L_ik_scapula_ctrl_offGRP.rx"
		;
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.cry" "L_ik_scapula_ctrl_offGRP.ry"
		;
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.crz" "L_ik_scapula_ctrl_offGRP.rz"
		;
connectAttr "makeNurbCircle2.oc" "L_ik_scapula_ctrlShape.cr";
connectAttr "L_ik_scapula_ctrl_offGRP.ro" "L_ik_scapula_ctrl_offGRP_parentConstraint1.cro"
		;
connectAttr "L_ik_scapula_ctrl_offGRP.pim" "L_ik_scapula_ctrl_offGRP_parentConstraint1.cpim"
		;
connectAttr "L_ik_scapula_ctrl_offGRP.rp" "L_ik_scapula_ctrl_offGRP_parentConstraint1.crp"
		;
connectAttr "L_ik_scapula_ctrl_offGRP.rpt" "L_ik_scapula_ctrl_offGRP_parentConstraint1.crt"
		;
connectAttr "FK_chest_JNT.t" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tt"
		;
connectAttr "FK_chest_JNT.rp" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].trp"
		;
connectAttr "FK_chest_JNT.rpt" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].trt"
		;
connectAttr "FK_chest_JNT.r" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tr"
		;
connectAttr "FK_chest_JNT.ro" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tro"
		;
connectAttr "FK_chest_JNT.s" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].ts"
		;
connectAttr "FK_chest_JNT.pm" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tpm"
		;
connectAttr "FK_chest_JNT.jo" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tjo"
		;
connectAttr "FK_chest_JNT.ssc" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tsc"
		;
connectAttr "FK_chest_JNT.is" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tis"
		;
connectAttr "L_ik_scapula_ctrl_offGRP_parentConstraint1.w0" "L_ik_scapula_ctrl_offGRP_parentConstraint1.tg[0].tw"
		;
connectAttr "decomposeMatrix9.ot" "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space.t"
		;
connectAttr "reverse1.ox" "L_fk_scapula_ctrl_offGRP.v";
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
connectAttr "L_fk_scapula.t" "ikfk_scapula_PRBD.it1";
connectAttr "L_fk_scapula.r" "ikfk_scapula_PRBD.ir1";
connectAttr "L_ik_scapula.t" "ikfk_scapula_PRBD.it2";
connectAttr "L_ik_scapula.r" "ikfk_scapula_PRBD.ir2";
connectAttr "|L_arm|L_arm_ctrl_grp|L_ik_fk_blend_ctrl_space|L_ik_fk_blend_ctrl.ik_fk_blend" "ikfk_scapula_PRBD.w"
		;
connectAttr "L_ik_scapula_ctrl.wm" "multMatrix33.i[0]";
connectAttr "L_ik_scapula.pim" "multMatrix33.i[1]";
connectAttr "multMatrix33.o" "decomposeMatrix46.imat";
connectAttr "multMatrix34.o" "decomposeMatrix47.imat";
connectAttr "L_fk_scapula_ctrl.wm" "multMatrix34.i[0]";
connectAttr "L_fk_scapula.pim" "multMatrix34.i[1]";
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
connectAttr "multMatrix33.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix46.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "decomposeMatrix47.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multMatrix34.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver1.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver2.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver3.msg" ":ikSystem.sol" -na;
// End of protoBody02.ma
