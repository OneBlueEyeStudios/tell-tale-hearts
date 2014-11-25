//Maya ASCII 2015 scene
//Name: House Layout_polished3.ma
//Last modified: Mon, Nov 24, 2014 10:05:28 PM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1276.5278422439746 1577.0151822963958 1059.021712606994 ;
	setAttr ".r" -type "double3" 311.6616472714511 -14820.599999995657 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 1753.0078857422839;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1045.0886588514911 168.57220458984375 30.816421126058685 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 658.65151165299631 3480.4671662812566 -145.68461631512312 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1337.4415527343749;
	setAttr ".ow" 3405.8178051722157;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -517.38702800586634 179.51633693520375 2293.4182161741278 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1337.4415527343749;
	setAttr ".ow" 841.20082219693995;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4636.2430257951137 185.83773803710938 -172.06289672851472 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1337.4415527343749;
	setAttr ".ow" 3371.6391355108281;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "House_Main_Group";
createNode transform -n "ceiling_wooden_bars" -p "House_Main_Group";
createNode transform -n "ceiling_wbar13" -p "ceiling_wooden_bars";
	setAttr ".t" -type "double3" 0 0 13.310814246058953 ;
	setAttr ".rp" -type "double3" -1055.9973032796606 498.96249848410241 597.96470828229963 ;
	setAttr ".sp" -type "double3" -1055.9973032796606 498.96249848410241 597.96470828229963 ;
createNode mesh -n "ceiling_wbarShape13" -p "ceiling_wbar13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape165" -p "ceiling_wbar13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1194.9998 481.37521 575.25677 
		-1195.9996 481.37521 619.67267 -1194.9998 516.5498 575.25677 -1195.9996 516.5498 
		619.67267 -27.163828 516.5498 576.25671 -28.163826 516.5498 620.67267 -27.163828 
		481.37521 576.25671 -28.163826 481.37521 620.67267;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "ceiling_wbar14" -p "ceiling_wooden_bars";
	setAttr ".t" -type "double3" 0 0 95.507115278040033 ;
	setAttr ".rp" -type "double3" -1055.9973032796606 498.96249848410241 -50.462381788542992 ;
	setAttr ".sp" -type "double3" -1055.9973032796606 498.96249848410241 -50.462381788542992 ;
createNode mesh -n "ceiling_wbarShape14" -p "ceiling_wbar14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape163" -p "ceiling_wbar14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1194.9998 481.37521 -73.170341 
		-1195.9996 481.37521 -28.754417 -1194.9998 516.5498 -73.170341 -1195.9996 516.5498 
		-28.754417 -27.163828 516.5498 -72.170349 -28.163826 516.5498 -27.754417 -27.163828 
		481.37521 -72.170349 -28.163826 481.37521 -27.754417;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "ceiling_wbar15" -p "ceiling_wooden_bars";
	setAttr ".t" -type "double3" 0 0 53.273951409174515 ;
	setAttr ".rp" -type "double3" -1055.9973032796604 498.96249848410241 272.5891075299055 ;
	setAttr ".sp" -type "double3" -1055.9973032796604 498.96249848410241 272.5891075299055 ;
createNode mesh -n "ceiling_wbarShape15" -p "ceiling_wbar15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape164" -p "ceiling_wbar15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1194.9998 481.37521 249.88115 
		-1195.9996 481.37521 294.29709 -1194.9998 516.5498 249.88115 -1195.9996 516.5498 
		294.29709 -27.163828 516.5498 250.88115 -28.163826 516.5498 295.29709 -27.163828 
		481.37521 250.88115 -28.163826 481.37521 295.29709;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe" -p "House_Main_Group";
createNode transform -n "doorframe1" -p "doorframe";
	setAttr ".rp" -type "double3" 528.5847404830289 355.94225406213332 281.39628767030445 ;
	setAttr ".sp" -type "double3" 528.5847404830289 355.94225406213332 281.39628767030445 ;
createNode mesh -n "doorframeShape1" -p "doorframe1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  509.86948 337.79004 80.35392 
		547.29999 337.79004 80.35392 509.86948 336.79004 481.43866 547.29999 336.79004 481.43866 
		509.86948 374.09448 482.43866 547.29999 374.09448 482.43866 509.86948 375.09448 81.35392 
		547.29999 375.09448 81.35392;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
	setAttr ".dr" 1;
createNode transform -n "doorframe2" -p "doorframe";
	setAttr ".rp" -type "double3" -17.495061063938095 355.94225406213337 264.63846212366201 ;
	setAttr ".sp" -type "double3" -17.495061063938095 355.94225406213337 264.63846212366201 ;
createNode mesh -n "doorframeShape2" -p "doorframe2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -30.961868 337.79004 78.030785 
		-4.028254 337.79004 78.030785 -30.961868 336.79004 450.24612 -4.028254 336.79004 
		450.24612 -30.961868 374.09448 451.24612 -4.028254 374.09448 451.24612 -30.961868 
		375.09448 79.030785 -4.028254 375.09448 79.030785;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
	setAttr ".dr" 1;
createNode transform -n "doorframe3" -p "doorframe";
	setAttr ".rp" -type "double3" 529.68648101064719 355.94225406213332 -540.91585866313585 ;
	setAttr ".sp" -type "double3" 529.68648101064719 355.94225406213332 -540.91585866313585 ;
createNode mesh -n "doorframeShape3" -p "doorframe3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  512.62463 337.79004 -674.39178 
		546.74835 337.79004 -674.39178 512.62463 336.79004 -408.43991 546.74835 336.79004 
		-408.43991 512.62463 374.09448 -407.43991 546.74835 374.09448 -407.43991 512.62463 
		375.09448 -673.39178 546.74835 375.09448 -673.39178;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
	setAttr ".dr" 1;
createNode transform -n "doorframe4" -p "doorframe";
	setAttr ".rp" -type "double3" 323.77957110289071 185.83773803710938 -172.0629039197986 ;
	setAttr ".sp" -type "double3" 323.77957110289071 185.83773803710938 -172.0629039197986 ;
createNode mesh -n "doorframe4Shape" -p "doorframe4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  356.98517 0 372.15805 356.98517 
		0 372.15805 356.98517 -14.227686 372.15805 356.98517 -14.227686 372.15805 356.98517 
		-14.227686 387.27493 356.98517 -14.227686 387.27493 356.98517 0 387.27493 356.98517 
		0 387.27493 356.98517 0 400.61337 356.98517 0 400.61337 356.98517 0 372.15805 356.98517 
		0 372.15805 356.98517 -14.227686 372.15805 356.98517 -14.227686 372.15805 356.98517 
		-14.227686 400.61337 356.98517 -14.227686 400.61337 356.98517 0 387.27493 356.98517 
		0 387.27493 356.98517 -14.227686 387.27493 356.98517 -14.227686 387.27493 356.98517 
		-14.227686 400.61337 356.98517 -14.227686 400.61337 356.98517 0 400.61337 356.98517 
		0 400.61337;
	setAttr -s 24 ".vt[0:23]"  -55.85011292 -2.91900635 -417.92788696 -10.56108665 -2.91900635 -417.92788696
		 -55.85011292 368.17999268 -417.92788696 -10.56108665 368.17999268 -417.92788696 -55.85011292 368.17999268 -455.23233032
		 -10.56108665 368.17999268 -455.23233032 -55.85011292 -2.91900635 -455.23233032 -10.56108665 -2.91900635 -455.23233032
		 -59.78315735 337.29003906 -721.024169922 -6.62804413 337.29003906 -721.024169922
		 -59.78315735 337.29003906 -397.65148926 -6.62804413 337.29003906 -397.65148926 -59.78315735 374.59448242 -397.65148926
		 -6.62804413 374.59448242 -397.65148926 -59.78315735 374.59448242 -721.024169922 -6.62804413 374.59448242 -721.024169922
		 -55.85011292 -2.91900635 -663.98730469 -10.56108665 -2.91900635 -663.98730469 -55.85011292 368.17999268 -663.98730469
		 -10.56108665 368.17999268 -663.98730469 -55.85011292 368.17999268 -701.29174805 -10.56108665 368.17999268 -701.29174805
		 -55.85011292 -2.91900635 -701.29174805 -10.56108665 -2.91900635 -701.29174805;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe5" -p "doorframe";
	setAttr ".rp" -type "double3" 519.22706604003906 185.83773803710938 -572.01045227050781 ;
	setAttr ".sp" -type "double3" 519.22706604003906 185.83773803710938 -572.01045227050781 ;
createNode mesh -n "doorframe5Shape" -p "doorframe5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  496.58255005 -2.91900635 -426.60189819 541.87158203 -2.91900635 -426.60189819
		 496.58255005 368.17999268 -426.60189819 541.87158203 368.17999268 -426.60189819 496.58255005 368.17999268 -463.90634155
		 541.87158203 368.17999268 -463.90634155 496.58255005 -2.91900635 -463.90634155 541.87158203 -2.91900635 -463.90634155
		 492.64950562 337.29003906 -717.41900635 545.80462646 337.29003906 -717.41900635 492.64950562 337.29003906 -451.46710205
		 545.80462646 337.29003906 -451.46710205 492.64950562 374.59448242 -451.46710205 545.80462646 374.59448242 -451.46710205
		 492.64950562 374.59448242 -717.41900635 545.80462646 374.59448242 -717.41900635 496.58255005 -2.91900635 -659.7835083
		 541.87158203 -2.91900635 -659.7835083 496.58255005 368.17999268 -659.7835083 541.87158203 368.17999268 -659.7835083
		 496.58255005 368.17999268 -697.08795166 541.87158203 368.17999268 -697.08795166 496.58255005 -2.91900635 -697.08795166
		 541.87158203 -2.91900635 -697.08795166;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe6" -p "doorframe";
	setAttr ".rp" -type "double3" 519.54493713378906 185.83773803710938 -845.28350830078125 ;
	setAttr ".sp" -type "double3" 519.54493713378906 185.83773803710938 -845.28350830078125 ;
createNode mesh -n "doorframe6Shape" -p "doorframe6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0.017725876 0.625 0.017725876
		 0.625 0.73227429 0.875 0.017725751 0.125 0.017725751 0.375 0.73227429 0.375 0.024671825
		 0.625 0.024671825 0.625 0.72532821 0.875 0.024671748 0.125 0.024671748 0.375 0.72532821;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  497.47689819 -2.91900635 -710.044006348 542.76593018 -2.91900635 -710.044006348
		 497.47689819 368.17999268 -710.044006348 542.76593018 368.17999268 -710.044006348
		 497.47689819 368.17999268 -747.34844971 542.76593018 368.17999268 -747.34844971 497.47689819 -2.91900635 -747.34844971
		 542.76593018 -2.91900635 -747.34844971 492.96737671 337.29003906 -980.52301025 546.12249756 337.29003906 -980.52301025
		 492.96737671 337.29003906 -715.5713501 546.12249756 337.29003906 -715.5713501 492.96737671 374.59448242 -715.5713501
		 546.12249756 374.59448242 -715.5713501 492.96737671 374.59448242 -980.52301025 546.12249756 374.59448242 -980.52301025
		 497.47689819 -2.91900635 -925.67181396 542.76593018 -2.91900635 -925.67181396 497.47689819 368.17999268 -925.67181396
		 542.76593018 368.17999268 -925.67181396 497.47689819 368.17999268 -962.97625732 542.76593018 368.17999268 -962.97625732
		 497.47689819 -2.91900635 -962.97625732 542.76593018 -2.91900635 -962.97625732 497.47689819 10.40774059 -925.67181396
		 542.76593018 10.40774059 -925.67181396 542.76593018 10.40774059 -962.97625732 497.47689819 10.40774059 -962.97625732
		 497.47692871 10.40773582 -710.044006348 542.76593018 10.40773582 -710.044006348 542.76593018 10.40773582 -747.34838867
		 497.47686768 10.40773582 -747.34838867;
	setAttr -s 56 ".ed[0:55]"  0 1 0 2 3 0 4 5 0 6 7 1 0 28 0 1 29 0 2 4 0
		 3 5 0 4 31 0 5 30 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 1 18 19 0 20 21 0 22 23 0 16 24 1 17 25 1
		 18 20 0 19 21 0 20 27 0 21 26 0 22 16 0 23 17 0 24 18 0 25 19 0 26 23 0 27 22 0 24 25 0
		 25 26 1 26 27 1 27 24 1 28 2 0 29 3 0 30 7 1 31 6 1 28 29 1 29 30 1 30 31 0 31 28 1
		 7 17 0 6 16 0 31 24 0 30 25 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 48 45 -2 -45
		mu 0 4 48 49 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 50 -9
		mu 0 4 4 5 50 53
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 49 -10 -8 -46
		mu 0 4 49 51 11 3
		f 4 51 44 6 8
		mu 0 4 52 48 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 40 37 -26 -37
		mu 0 4 42 43 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 42 -33
		mu 0 4 33 32 44 47
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 41 -34 -32 -38
		mu 0 4 43 45 39 30
		f 4 43 36 30 32
		mu 0 4 46 42 31 41
		f 4 -36 -39 -42 -30
		mu 0 4 29 38 45 43
		f 4 -43 38 -28 -40
		mu 0 4 47 44 34 35
		f 4 34 28 -44 39
		mu 0 4 40 28 42 46
		f 4 0 5 -49 -5
		mu 0 4 0 1 49 48
		f 4 -12 -47 -50 -6
		mu 0 4 1 10 51 49
		f 4 10 4 -52 47
		mu 0 4 12 0 48 52
		f 4 -4 53 24 -53
		mu 0 4 7 6 37 36
		f 4 -48 54 -29 -54
		mu 0 4 12 52 42 28
		f 4 -51 55 -41 -55
		mu 0 4 53 50 43 42
		f 4 46 52 29 -56
		mu 0 4 51 10 29 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe7" -p "doorframe";
	setAttr ".rp" -type "double3" -33.205600738525391 185.83773803710938 -559.33782958984375 ;
	setAttr ".sp" -type "double3" -33.205600738525391 185.83773803710938 -559.33782958984375 ;
createNode mesh -n "doorframe7Shape" -p "doorframe7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -55.85011292 -2.91900635 -417.92788696 -10.56108665 -2.91900635 -417.92788696
		 -55.85011292 368.17999268 -417.92788696 -10.56108665 368.17999268 -417.92788696 -55.85011292 368.17999268 -455.23233032
		 -10.56108665 368.17999268 -455.23233032 -55.85011292 -2.91900635 -455.23233032 -10.56108665 -2.91900635 -455.23233032
		 -59.78315735 337.29003906 -721.024169922 -6.62804413 337.29003906 -721.024169922
		 -59.78315735 337.29003906 -397.65148926 -6.62804413 337.29003906 -397.65148926 -59.78315735 374.59448242 -397.65148926
		 -6.62804413 374.59448242 -397.65148926 -59.78315735 374.59448242 -721.024169922 -6.62804413 374.59448242 -721.024169922
		 -55.85011292 -2.91900635 -663.98730469 -10.56108665 -2.91900635 -663.98730469 -55.85011292 368.17999268 -663.98730469
		 -10.56108665 368.17999268 -663.98730469 -55.85011292 368.17999268 -701.29174805 -10.56108665 368.17999268 -701.29174805
		 -55.85011292 -2.91900635 -701.29174805 -10.56108665 -2.91900635 -701.29174805;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe8" -p "doorframe";
	setAttr ".rp" -type "double3" -35.660731315612793 185.83773803710938 278.28192138671875 ;
	setAttr ".sp" -type "double3" -35.660731315612793 185.83773803710938 278.28192138671875 ;
createNode mesh -n "doorframe8Shape" -p "doorframe8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape162" -p "doorframe8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -55.85011292 -2.91900635 136.065032959 -10.56108665 -2.91900635 136.065032959
		 -55.85011292 368.17999268 136.065032959 -10.56108665 368.17999268 136.065032959 -55.85011292 368.17999268 98.76060486
		 -10.56108665 368.17999268 98.76060486 -55.85011292 -2.91900635 98.76060486 -10.56108665 -2.91900635 98.76060486
		 -60.76037598 337.29003906 77.73956299 -32.82676697 337.29003906 77.73956299 -60.76037598 337.29003906 478.82427979
		 -32.82676697 337.29003906 478.82427979 -60.76037598 374.59448242 478.82427979 -32.82676697 374.59448242 478.82427979
		 -60.76037598 374.59448242 77.73956299 -32.82676697 374.59448242 77.73956299 -55.85011292 -2.91900635 449.2911377
		 -10.56108665 -2.91900635 449.2911377 -55.85011292 368.17999268 449.2911377 -10.56108665 368.17999268 449.2911377
		 -55.85011292 368.17999268 419.96710205 -10.56108665 368.17999268 419.96710205 -55.85011292 -2.91900635 419.96710205
		 -10.56108665 -2.91900635 419.96710205;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0
		f 4 16 13 -18 -13
		mu 0 4 14 17 16 15
		f 4 18 14 -20 -14
		mu 0 4 17 19 18 16
		f 4 20 15 -22 -15
		mu 0 4 19 21 20 18
		f 4 22 12 -24 -16
		mu 0 4 21 23 22 20
		f 4 17 19 21 23
		mu 0 4 15 16 25 24
		f 4 -21 -19 -17 -23
		mu 0 4 26 27 17 14
		f 4 28 25 -30 -25
		mu 0 4 28 31 30 29
		f 4 30 26 -32 -26
		mu 0 4 31 33 32 30
		f 4 32 27 -34 -27
		mu 0 4 33 35 34 32
		f 4 34 24 -36 -28
		mu 0 4 35 37 36 34
		f 4 29 31 33 35
		mu 0 4 29 30 39 38
		f 4 -33 -31 -29 -35
		mu 0 4 40 41 31 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe9" -p "doorframe";
	setAttr ".rp" -type "double3" -527.62498474121094 185.28713989257812 -256.66262817382812 ;
	setAttr ".sp" -type "double3" -527.62498474121094 185.28713989257812 -256.66262817382812 ;
createNode mesh -n "doorframe9Shape" -p "doorframe9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -324.35171509 -2.91900635 -233.060821533
		 -324.35171509 -2.91900635 -280.91012573 -324.35171509 368.17999268 -233.060821533
		 -324.35171509 368.17999268 -280.91012573 -361.65615845 368.17999268 -233.060821533
		 -361.65615845 368.17999268 -280.91012573 -361.65615845 -2.91900635 -233.060821533
		 -361.65615845 -2.91900635 -280.91012573 -307.19747925 373.49328613 -227.074859619
		 -307.19747925 373.49328613 -286.25039673 -748.052490234 373.49328613 -227.074859619
		 -748.052490234 373.49328613 -286.25039673 -748.052490234 336.18884277 -227.074859619
		 -748.052490234 336.18884277 -286.25039673 -307.19747925 336.18884277 -227.074859619
		 -307.19747925 336.18884277 -286.25039673 -694.59747314 -2.91900635 -232.73797607
		 -694.59747314 -2.91900635 -280.58728027 -694.59747314 368.17999268 -232.73797607
		 -694.59747314 368.17999268 -280.58728027 -731.9019165 368.17999268 -232.73797607
		 -731.9019165 368.17999268 -280.58728027 -731.9019165 -2.91900635 -232.73797607 -731.9019165 -2.91900635 -280.58728027;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe10" -p "doorframe";
	setAttr ".rp" -type "double3" 152.55247497558594 185.7435302734375 442.6697998046875 ;
	setAttr ".sp" -type "double3" 152.55247497558594 185.7435302734375 442.6697998046875 ;
createNode mesh -n "doorframe10Shape" -p "doorframe10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  309.78399658 374.40606689 472.25756836 309.78399658 374.40606689 413.08203125
		 -4.67904663 374.40606689 472.25756836 -4.67904663 374.40606689 413.08203125 -4.67904663 337.10162354 472.25756836
		 -4.67904663 337.10162354 413.08203125 309.78399658 337.10162354 472.25756836 309.78399658 337.10162354 413.08203125
		 283.95291138 -2.91900635 463.73379517 283.95291138 -2.91900635 415.88449097 283.95291138 368.17999268 463.73379517
		 283.95291138 368.17999268 415.88449097 246.64846802 368.17999268 463.73379517 246.64846802 368.17999268 415.88449097
		 246.64846802 -2.91900635 463.73379517 246.64846802 -2.91900635 415.88449097 57.056816101 -2.91900635 468.33810425
		 57.056816101 -2.91900635 420.48880005 57.056816101 368.17999268 468.33810425 57.056816101 368.17999268 420.48880005
		 19.752388 368.17999268 468.33810425 19.752388 368.17999268 420.48880005 19.752388 -2.91900635 468.33810425
		 19.752388 -2.91900635 420.48880005;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe11" -p "doorframe";
	setAttr ".rp" -type "double3" 513.41529846191406 185.83773803710938 281.39630889892578 ;
	setAttr ".sp" -type "double3" 513.41529846191406 185.83773803710938 281.39630889892578 ;
createNode mesh -n "doorframe11Shape" -p "doorframe11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  494.48147583 -2.91900635 181.45361328 539.77050781 -2.91900635 181.45361328
		 494.48147583 368.17999268 181.45361328 539.77050781 368.17999268 181.45361328 494.48147583 368.17999268 127.68215942
		 539.77050781 368.17999268 127.68215942 494.48147583 -2.91900635 127.68215942 539.77050781 -2.91900635 127.68215942
		 487.060089111 337.29003906 117.028030396 512.53875732 337.29003906 117.028030396
		 487.060089111 337.29003906 445.7645874 512.53875732 337.29003906 445.7645874 487.060089111 374.59448242 445.7645874
		 512.53875732 374.59448242 445.7645874 487.060089111 374.59448242 117.028030396 512.53875732 374.59448242 117.028030396
		 494.48147583 -2.91900635 429.14016724 539.77050781 -2.91900635 429.14016724 494.48147583 368.17999268 429.14016724
		 539.77050781 368.17999268 429.14016724 494.48147583 368.17999268 378.60177612 539.77050781 368.17999268 378.60177612
		 494.48147583 -2.91900635 378.60177612 539.77050781 -2.91900635 378.60177612;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe12" -p "doorframe";
	setAttr ".rp" -type "double3" 858.90606689453125 184.75152587890625 525.365966796875 ;
	setAttr ".sp" -type "double3" 858.90606689453125 184.75152587890625 525.365966796875 ;
createNode mesh -n "doorframe12Shape" -p "doorframe12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  779.060974121 -2.91900635 549.93267822 779.060974121 -2.91900635 502.083404541
		 779.060974121 368.17999268 549.93267822 779.060974121 368.17999268 502.083404541
		 741.75653076 368.17999268 549.93267822 741.75653076 368.17999268 502.083404541 741.75653076 -2.91900635 549.93267822
		 741.75653076 -2.91900635 502.083404541 1016.13757324 372.42205811 554.95373535 1016.13757324 372.42205811 495.77819824
		 701.67456055 372.42205811 554.95373535 701.67456055 372.42205811 495.77819824 701.67456055 335.11761475 554.95373535
		 701.67456055 335.11761475 495.77819824 1016.13757324 335.11761475 554.95373535 1016.13757324 335.11761475 495.77819824
		 982.58349609 -2.91900635 549.60980225 982.58349609 -2.91900635 501.76052856 982.58349609 368.17999268 549.60980225
		 982.58349609 368.17999268 501.76052856 945.27905273 368.17999268 549.60980225 945.27905273 368.17999268 501.76052856
		 945.27905273 -2.91900635 549.60980225 945.27905273 -2.91900635 501.76052856;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe13" -p "doorframe";
	setAttr ".rp" -type "double3" 705.99560546875 184.75152587890625 4.0780935287475586 ;
	setAttr ".sp" -type "double3" 705.99560546875 184.75152587890625 4.0780935287475586 ;
createNode mesh -n "doorframe13Shape" -p "doorframe13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[2:23]" -type "float3"  0 -8.2697239 0 0 -8.2697239 
		0 14.038404 -8.2697239 0 14.038404 -8.2697239 0 14.038404 0 0 14.038404 0 0 -12.283593 
		-8.2697239 0 -12.283593 -8.2697239 0 14.038396 -8.2697239 0 14.038396 -8.2697239 
		0 14.038396 3.1364794 0 14.038396 3.1364794 0 -12.283593 3.1364794 0 -12.283593 3.1364794 
		0 -12.283593 0 0 -12.283593 0 0 -12.283593 -8.2697239 0 -12.283593 -8.2697239 0 -3.8146973e-06 
		-8.2697239 0 -3.8146973e-06 -8.2697239 0 -3.8146973e-06 0 0 -3.8146973e-06 0 0;
	setAttr -s 24 ".vt[0:23]"  610.49993896 -2.91900635 31.55334091 610.49993896 -2.91900635 -16.29594803
		 610.49993896 368.17999268 31.55334091 610.49993896 368.17999268 -16.29594803 573.19549561 368.17999268 31.55334091
		 573.19549561 368.17999268 -16.29594803 573.19549561 -2.91900635 31.55334091 573.19549561 -2.91900635 -16.29594803
		 863.22711182 372.42205811 33.66586304 863.22711182 372.42205811 -25.50967598 548.76409912 372.42205811 33.66586304
		 548.76409912 372.42205811 -25.50967598 548.76409912 335.11761475 33.66586304 548.76409912 335.11761475 -25.50967598
		 863.22711182 335.11761475 33.66586304 863.22711182 335.11761475 -25.50967598 837.39605713 -2.91900635 31.23049355
		 837.39605713 -2.91900635 -16.61879539 837.39605713 368.17999268 31.23049355 837.39605713 368.17999268 -16.61879539
		 800.09161377 368.17999268 31.23049355 800.09161377 368.17999268 -16.61879539 800.09161377 -2.91900635 31.23049355
		 800.09161377 -2.91900635 -16.61879539;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe14" -p "doorframe";
	setAttr ".t" -type "double3" -722.00885187444578 0 -216.34688583549917 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -157.35137176513672 185.7435302734375 810.1573486328125 ;
	setAttr ".sp" -type "double3" -157.35137176513672 185.7435302734375 810.1573486328125 ;
createNode mesh -n "doorframe14Shape" -p "doorframe14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -13.862955 0 ;
	setAttr ".pt[3]" -type "float3" 0 -13.862955 0 ;
	setAttr ".pt[4]" -type "float3" 14.556102 -13.862955 0 ;
	setAttr ".pt[5]" -type "float3" 14.556102 -13.862955 0 ;
	setAttr ".pt[6]" -type "float3" 14.556102 0 0 ;
	setAttr ".pt[7]" -type "float3" 14.556102 0 0 ;
	setAttr ".pt[8]" -type "float3" -2.7725911 0 0 ;
	setAttr ".pt[9]" -type "float3" -2.7725911 0 0 ;
	setAttr ".pt[10]" -type "float3" -2.7725911 -13.862955 0 ;
	setAttr ".pt[11]" -type "float3" -2.7725911 -13.862955 0 ;
	setAttr ".pt[12]" -type "float3" 0 -13.862955 0 ;
	setAttr ".pt[13]" -type "float3" 0 -13.862955 0 ;
	setAttr ".pt[16]" -type "float3" -2.7725911 -13.862955 0 ;
	setAttr ".pt[17]" -type "float3" -2.7725911 -13.862955 0 ;
	setAttr ".pt[18]" -type "float3" 37.832985 -13.862955 0 ;
	setAttr ".pt[19]" -type "float3" 37.832985 -13.862955 0 ;
	setAttr ".pt[20]" -type "float3" 37.832985 0 0 ;
	setAttr ".pt[21]" -type "float3" 37.832985 0 0 ;
	setAttr ".pt[22]" -type "float3" -2.7725911 0 0 ;
	setAttr ".pt[23]" -type "float3" -2.7725911 0 0 ;
	setAttr -s 24 ".vt[0:23]"  -223.89855957 -2.91900635 835.82562256 -223.89855957 -2.91900635 787.97631836
		 -223.89855957 368.17999268 835.82562256 -223.89855957 368.17999268 787.97631836 -261.20300293 368.17999268 835.82562256
		 -261.20300293 368.17999268 787.97631836 -261.20300293 -2.91900635 835.82562256 -261.20300293 -2.91900635 787.97631836
		 -30.17082214 -2.91900635 831.22131348 -30.17082214 -2.91900635 783.37200928 -30.17082214 368.17999268 831.22131348
		 -30.17082214 368.17999268 783.37200928 -56.53839111 368.17999268 831.22131348 -56.53839111 368.17999268 783.37200928
		 -56.53839111 -2.91900635 831.22131348 -56.53839111 -2.91900635 783.37200928 -30.85490417 374.40606689 839.74511719
		 -30.85490417 374.40606689 780.56958008 -284.53192139 374.40606689 839.74511719 -284.53192139 374.40606689 780.56958008
		 -284.53192139 337.10162354 839.74511719 -284.53192139 337.10162354 780.56958008 -30.85490417 337.10162354 839.74511719
		 -30.85490417 337.10162354 780.56958008;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "doorframe15" -p "doorframe";
	setAttr ".t" -type "double3" -904.5682437370499 0 -776.8861892422176 ;
	setAttr ".rp" -type "double3" -157.35137176513672 185.7435302734375 810.1573486328125 ;
	setAttr ".sp" -type "double3" -157.35137176513672 185.7435302734375 810.1573486328125 ;
createNode mesh -n "doorframe15Shape" -p "doorframe15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  3.4106051e-12 0 -10.109644 
		3.4106051e-12 0 8.7361717 3.4106051e-12 -13.862955 -10.109644 3.4106051e-12 -13.862955 
		8.7361717 14.556102 -13.862955 -10.109644 14.556102 -13.862955 8.7361717 14.556102 
		0 -10.109644 14.556102 0 8.7361717 -2.7725911 0 -8.2961912 -2.7725911 0 10.549625 
		-2.7725911 -13.862955 -8.2961912 -2.7725911 -13.862955 10.549625 3.4106051e-12 -13.862955 
		-8.2961912 3.4106051e-12 -13.862955 10.549625 3.4106051e-12 0 -8.2961912 3.4106051e-12 
		0 10.549625 -2.7725911 -13.862955 -11.653371 -2.7725911 -13.862955 11.653371 37.832985 
		-13.862955 -11.653371 37.832985 -13.862955 11.653371 37.832985 0 -11.653371 37.832985 
		0 11.653371 -2.7725911 0 -11.653371 -2.7725911 0 11.653371;
	setAttr -s 24 ".vt[0:23]"  -223.89855957 -2.91900635 835.82562256 -223.89855957 -2.91900635 787.97631836
		 -223.89855957 368.17999268 835.82562256 -223.89855957 368.17999268 787.97631836 -261.20300293 368.17999268 835.82562256
		 -261.20300293 368.17999268 787.97631836 -261.20300293 -2.91900635 835.82562256 -261.20300293 -2.91900635 787.97631836
		 -30.17082214 -2.91900635 831.22131348 -30.17082214 -2.91900635 783.37200928 -30.17082214 368.17999268 831.22131348
		 -30.17082214 368.17999268 783.37200928 -56.53839111 368.17999268 831.22131348 -56.53839111 368.17999268 783.37200928
		 -56.53839111 -2.91900635 831.22131348 -56.53839111 -2.91900635 783.37200928 -30.85490417 374.40606689 839.74511719
		 -30.85490417 374.40606689 780.56958008 -284.53192139 374.40606689 839.74511719 -284.53192139 374.40606689 780.56958008
		 -284.53192139 337.10162354 839.74511719 -284.53192139 337.10162354 780.56958008 -30.85490417 337.10162354 839.74511719
		 -30.85490417 337.10162354 780.56958008;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_Structure" -p "House_Main_Group";
createNode transform -n "HouseWindows" -p "House_Structure";
	setAttr ".rp" -type "double3" -1274.5985057057667 261.42486572265619 -554.1187744140625 ;
	setAttr ".sp" -type "double3" -1274.5985057057667 261.42486572265619 -554.1187744140625 ;
createNode mesh -n "HouseWindowsShape" -p "HouseWindows";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.17092226445674896 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 112 ".uvst[0].uvsp[0:111]" -type "float2" 0.97067755 0.41072732
		 0.99800801 0.41007432 0.99800801 0.66338104 0.97067767 0.66335499 0.95072973 0.64209485
		 0.95072973 0.43136042 0.85195255 0.66335499 0.8719005 0.64209485 0.85195255 0.41072732
		 0.8719005 0.43136042 0.8203187 0.66272807 0.82031858 0.41010907 0.84581727 0.41007432
		 0.84581715 0.66338104 0.79987895 0.64178926 0.79987895 0.42977929 0.7015937 0.66272807
		 0.72203356 0.64178926 0.7015937 0.41010907 0.72203356 0.42977923 0.87005156 0.40608284
		 0.67652446 0.40608284 0.67652446 0.001782939 0.87005156 0.001782939 0.029322617 0.4060829
		 0.0019921295 0.41098064 0.0048830383 0.0030374927 0.030381484 0.001782939 0.18556044
		 0.61403686 0.18556044 0.41371754 0.37974051 0.41371754 0.37974051 0.61403686 0.98036009
		 0.40608284 0.87726653 0.40608284 0.87726653 0.0017829225 0.98036009 0.0017829225
		 0.064598545 0.4060829 0.037268192 0.41098049 0.040158968 0.0030374927 0.065657414
		 0.001782939 0.076296836 0.61529106 0.076296836 0.41497177 0.17942527 0.41497177 0.17941648
		 0.61529106 0.072349288 0.0017828734 0.099679641 0.0066804653 0.10073864 0.41098037
		 0.075239934 0.40972587 0.22615522 0.40972608 0.10743025 0.30507281 0.11032116 0.10475345
		 0.22904614 0.001782939 0.55841893 0.40972587 0.43969411 0.3067553 0.43680319 0.10643602
		 0.55552828 0.0017828734 0.49513933 0.66634506 0.49513933 0.41371742 0.54200435 0.43436167
		 0.54200435 0.64564568 0.69545859 0.41372612 0.6485936 0.43436167 0.69545859 0.66634506
		 0.64859372 0.64564568 0.38587579 0.61403692 0.38587579 0.41371754 0.48899543 0.41371754
		 0.48900411 0.61403692 0.56543416 0.40972596 0.56543416 0.0017829225 0.66856229 0.0017829225
		 0.66855365 0.40972596 0.43024138 0.00178307 0.43024138 0.40972608 0.23606126 0.40972608
		 0.23606126 0.001782939 0.19617206 0.61928254 0.19617206 0.81960183 0.0019919984 0.81960183
		 0.0019919984 0.61928254 0.32165393 0.81220841 0.20292896 0.81220841 0.20292896 0.61802828
		 0.32165405 0.61802828 0.43258148 0.81220847 0.32961091 0.81220847 0.32961091 0.6180284
		 0.43258148 0.6180284 0.77769506 0.67033654 0.77769506 0.78906161 0.67457539 0.78906161
		 0.67457539 0.67033654 0.88875312 0.89321703 0.78578258 0.89321703 0.78578258 0.79008871
		 0.88875312 0.79008871 0.888794 0.66737247 0.888794 0.78609729 0.78566569 0.78609729
		 0.78566569 0.66737247 0.89488834 0.77202559 0.89488834 0.66737247 0.99800801 0.66737247
		 0.99800801 0.77202559 0.54172283 0.86451674 0.43875226 0.86451674 0.43875226 0.6703366
		 0.54172283 0.6703366 0.54789358 0.6703366 0.6666187 0.6703366 0.66661859 0.86451674
		 0.54789358 0.86451674;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -4.2106314 0 0 -4.2106314 
		0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 
		0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 
		0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 
		0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 
		0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 
		0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0 -4.2106314 0 0;
	setAttr -s 36 ".vt[0:35]"  -1227.44421387 338.23077393 -359.59411621
		 -1201.45935059 338.85165405 -364.25067139 -1201.45935059 98.017372131 -364.25067139
		 -1227.4440918 98.042152405 -359.59417725 -1224.69555664 338.23077393 -747.45068359
		 -1224.69567871 98.05040741 -747.45062256 -1200.45251465 98.017372131 -748.64343262
		 -1200.45263672 338.85165405 -748.64343262 -1201.45935059 522.84973145 -364.25067139
		 -1200.45263672 522.84973145 -748.64343262 -1340.32324219 338.23077393 -459.094360352
		 -1337.57470703 338.23077393 -649.55029297 -1337.57470703 522.84973145 -649.55029297
		 -1340.32324219 522.84973145 -459.094421387 -1227.4440918 522.84973145 -359.59417725
		 -1224.69555664 522.84973145 -747.45068359 -1201.45935059 -7.8941052e-14 -364.25067139
		 -1200.45263672 -8.3897414e-14 -748.64343262 -1227.4440918 -8.887294e-14 -359.59417725
		 -1224.69555664 -8.0707325e-14 -747.45068359 -1340.32324219 -9.0196805e-14 -459.094421387
		 -1337.57470703 -7.8441953e-14 -649.55029297 -1337.57470703 98.050415039 -649.55029297
		 -1340.32324219 98.042160034 -459.094421387 -1246.40979004 118.25540924 -376.31195068
		 -1246.40979004 318.61361694 -376.31195068 -1321.35754395 118.25540161 -442.37664795
		 -1321.35754395 318.61361694 -442.37664795 -1340.13110352 117.66989899 -503.6517334
		 -1340.13110352 318.55059814 -503.6517334 -1337.7668457 117.66989899 -604.99285889
		 -1337.7668457 318.55059814 -604.99291992 -1318.14135742 116.75206757 -666.40490723
		 -1318.14135742 318.32299805 -666.4050293 -1244.12890625 116.7520752 -730.59594727
		 -1244.12890625 318.32299805 -730.59594727;
	setAttr -s 68 ".ed[0:67]"  1 0 0 1 2 0 2 3 0 3 0 0 4 5 0 6 5 0 6 7 0
		 7 4 0 8 1 0 1 7 0 7 9 0 8 9 0 0 4 0 10 11 0 12 11 0 13 12 0 10 13 0 14 15 0 2 16 0
		 16 17 0 17 6 0 2 6 0 16 18 0 18 19 0 19 17 1 20 21 0 22 21 0 23 22 0 20 23 0 3 5 0
		 0 10 0 14 13 0 0 14 0 4 11 0 15 12 0 15 4 0 18 20 0 3 23 0 18 3 0 5 22 0 19 21 0
		 5 19 0 3 24 1 25 24 0 0 25 1 23 26 1 24 26 0 10 23 0 10 27 1 27 26 0 25 27 0 23 28 1
		 29 28 0 10 29 1 22 30 1 28 30 0 11 22 0 11 31 1 31 30 0 29 31 0 22 32 1 33 32 0 11 33 1
		 5 34 1 34 32 0 4 35 1 35 34 0 35 33 0;
	setAttr -s 35 -ch 140 ".fc[0:34]" -type "polyFaces" 
		f 4 -1 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -6 6 7
		mu 0 4 10 11 12 13
		f 4 8 9 10 -12
		mu 0 4 20 21 22 23
		f 4 0 12 -8 -10
		mu 0 4 24 25 26 27
		f 4 13 -15 -16 -17
		mu 0 4 28 29 30 31
		f 4 18 19 20 -22
		mu 0 4 32 33 34 35
		f 4 22 23 24 -20
		mu 0 4 36 37 38 39
		f 4 25 -27 -28 -29
		mu 0 4 40 41 42 43
		f 4 -3 21 5 -30
		mu 0 4 44 45 46 47
		f 4 30 16 -32 -33
		mu 0 4 80 81 82 83
		f 4 30 13 -34 -13
		mu 0 4 48 49 50 51
		f 4 34 14 -34 -36
		mu 0 4 84 85 86 87
		f 4 36 28 -38 -39
		mu 0 4 88 89 90 91
		f 4 39 26 -41 -42
		mu 0 4 92 93 94 95
		f 4 39 -28 -38 29
		mu 0 4 52 53 54 55
		f 4 -4 42 -44 -45
		mu 0 4 0 3 4 5
		f 4 37 45 -47 -43
		mu 0 4 3 6 7 4
		f 4 -48 48 49 -46
		mu 0 4 6 8 9 7
		f 4 -31 44 50 -49
		mu 0 4 8 0 5 9
		f 4 47 51 -53 -54
		mu 0 4 56 57 58 59
		f 4 27 54 -56 -52
		mu 0 4 57 60 61 58
		f 4 -57 57 58 -55
		mu 0 4 60 62 63 61
		f 4 -14 53 59 -58
		mu 0 4 62 56 59 63
		f 4 56 60 -62 -63
		mu 0 4 16 18 19 17
		f 4 -40 63 64 -61
		mu 0 4 18 11 15 19
		f 4 -5 65 66 -64
		mu 0 4 11 10 14 15
		f 4 33 62 -68 -66
		mu 0 4 10 16 17 14
		f 4 40 -27 -40 41
		mu 0 4 96 97 98 99
		f 4 -26 28 27 26
		mu 0 4 64 65 66 67
		f 4 -37 38 37 -29
		mu 0 4 100 101 102 103
		f 4 23 -42 -30 -39
		mu 0 4 68 69 70 71
		f 4 17 35 -13 32
		mu 0 4 72 73 74 75
		f 4 34 14 -34 -36
		mu 0 4 104 105 106 107
		f 4 -16 -17 13 -15
		mu 0 4 76 77 78 79
		f 4 -32 -33 30 16
		mu 0 4 108 109 110 111;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "HouseWindows1" -p "House_Structure";
	setAttr ".rp" -type "double3" 1292.5927318348563 260.45285409433615 -380.87917975507821 ;
	setAttr ".sp" -type "double3" 1292.5927318348563 260.45285409433615 -380.87917975507821 ;
createNode mesh -n "HouseWindowsShape1" -p "HouseWindows1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.69264966 0.62774593
		 0.66691065 0.62836087 0.66691065 0.38980576 0.69264954 0.38983032 0.71143574 0.40985227
		 0.71143574 0.60831439 0.80446041 0.38983032 0.78567415 0.40985227 0.80446041 0.62774593
		 0.78567415 0.60831439 0.6373204 0.62774616 0.63732028 0.38983876 0.66133404 0.38980603
		 0.66133392 0.62836117 0.6180709 0.60802674 0.6180709 0.40836343 0.52550942 0.62774616
		 0.54475892 0.60802674 0.52550942 0.38983876 0.54475892 0.4083634 0.85209101 0.38274717
		 0.66983414 0.38274717 0.66983414 0.0019920608 0.85209101 0.0019920608 0.027549611
		 0.3827472 0.0018106261 0.38735956 0.0045333025 0.003173616 0.028546816 0.0019920608
		 0.14283083 0.5784595 0.14283083 0.38980603 0.32570264 0.38980603 0.32570264 0.5784595
		 0.06238189 0.38735956 0.036643028 0.3827472 0.035645824 0.0019920608 0.059659336
		 0.003173616 0.9071269 0.7671302 0.81003714 0.7671302 0.81003714 0.38637519 0.9071269
		 0.38637519 0.095042713 0.3827472 0.069303848 0.38735956 0.072026402 0.003173616 0.096039914
		 0.0019920608 0.040131696 0.57964104 0.040131696 0.39098755 0.13725419 0.39098755
		 0.13724601 0.57964104 0.1296981 0.38735956 0.10395923 0.3827472 0.1029619 0.0019920608
		 0.12697566 0.003173616 0.24843068 0.38617802 0.13661993 0.28761947 0.13934235 0.098965898
		 0.25115335 0.0019920608 0.54937381 0.0019920608 0.66118473 0.098966017 0.66390711
		 0.28761947 0.55209625 0.3861779 0.33127928 0.62772161 0.33127934 0.38980603 0.37541497
		 0.40924802 0.37541497 0.60822767 0.51993281 0.3898142 0.47579706 0.40924802 0.51993281
		 0.62772161 0.47579715 0.60822767 0.098933145 0.58326906 0.098933145 0.77192247 0.0018187911
		 0.77192247 0.0018106416 0.58326906 0.25708038 0.38617799 0.25708038 0.0019920298
		 0.35420287 0.0019920608 0.35419467 0.38617799 0.35982597 0.38617802 0.35982597 0.0019920608
		 0.54269779 0.0019920608 0.54269779 0.38617802 0.28760517 0.58326906 0.28760517 0.77192247
		 0.10473337 0.77192247 0.10473337 0.58326906 0.29428145 0.63134968 0.4060922 0.63134968
		 0.4060922 0.81422144 0.29428133 0.81422144 0.52478129 0.81486094 0.41297027 0.81486094
		 0.41297027 0.63198912 0.52478129 0.63198912 0.81001258 0.99800813 0.81001258 0.88619727
		 0.9071269 0.88619727 0.9071269 0.99800813 0.8661592 0.77075833 0.8661592 0.88256925
		 0.76903671 0.88256925 0.76903671 0.77075821 0.70174491 0.91561145 0.60477102 0.91561145
		 0.60477102 0.81848896 0.70174485 0.81848896 0.80443585 0.88619727 0.80443585 0.98475593
		 0.70732147 0.98475593 0.70732147 0.88619727 0.64347005 0.81486094 0.53165907 0.81486094
		 0.53165907 0.63198912 0.64347005 0.63198912 0.76215887 0.81486094 0.65034801 0.81486094
		 0.65034813 0.63198912 0.76215887 0.63198912;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  1935.6648 -0.97201163 895.45044 
		1905.0234 -0.97201163 864.80896 1905.0234 -0.97201163 864.80896 1935.6647 -0.97201163 
		895.4502 1545.0596 -0.97201163 504.84521 1545.0598 -0.97201163 504.84537 1519.6238 
		-0.97201163 479.40939 1519.6239 -0.97201163 479.40952 1905.0234 -0.97201163 864.80896 
		1519.6239 -0.97201163 479.40952 1949.0436 -0.97201163 908.82922 1755.8391 -0.97201163 
		715.62476 1755.8391 -0.97201163 715.62476 1949.0436 -0.97201163 908.8291 1935.6647 
		-0.97201163 895.4502 1545.0596 -0.97201163 504.84521 1905.0234 -0.97201163 864.80896 
		1519.6239 -0.97201163 479.40952 1935.6647 -0.97201163 895.4502 1545.0596 -0.97201163 
		504.84521 1949.0436 -0.97201163 908.8291 1755.8391 -0.97201163 715.62476 1755.8391 
		-0.97201163 715.62476 1949.0436 -0.97201163 908.8291 1937.9126 -0.97201163 897.69812 
		1937.9126 -0.97201163 897.69812 1946.7957 -0.97201163 906.58118 1946.7957 -0.97201163 
		906.58118 1904.2941 -0.97201163 864.07971 1904.2941 -0.97201163 864.07971 1800.5886 
		-0.97201163 760.37427 1800.5886 -0.97201163 760.37427 1719.5511 -0.97201163 679.33673 
		1719.551 -0.97201163 679.33667 1581.3477 -0.97201163 541.1333 1581.3477 -0.97201163 
		541.13324;
	setAttr -s 36 ".vt[0:35]"  -686.01574707 338.23077393 -1081.80493164
		 -681.35919189 338.85165405 -1055.82006836 -681.35919189 98.017372131 -1055.82006836
		 -686.015686035 98.042152405 -1081.80480957 -298.15921021 338.23077393 -1079.056274414
		 -298.15924072 98.05040741 -1079.056396484 -296.96643066 98.017372131 -1054.81323242
		 -296.96643066 338.85165405 -1054.81335449 -681.35919189 522.84973145 -1055.82006836
		 -296.96643066 522.84973145 -1054.81335449 -586.51550293 338.23077393 -1194.68395996
		 -396.059570313 338.23077393 -1191.9354248 -396.059570313 522.84973145 -1191.9354248
		 -586.51544189 522.84973145 -1194.68395996 -686.015686035 522.84973145 -1081.80480957
		 -298.15921021 522.84973145 -1079.056274414 -681.35919189 -7.8941052e-14 -1055.82006836
		 -296.96643066 -8.3897414e-14 -1054.81335449 -686.015686035 -8.887294e-14 -1081.80480957
		 -298.15921021 -8.0707325e-14 -1079.056274414 -586.51544189 -9.0196805e-14 -1194.68395996
		 -396.059570313 -7.8441953e-14 -1191.9354248 -396.059570313 98.050415039 -1191.9354248
		 -586.51544189 98.042160034 -1194.68395996 -669.2979126 118.25540924 -1100.77050781
		 -669.2979126 318.61361694 -1100.77050781 -603.23321533 118.25540161 -1175.71826172
		 -603.23321533 318.61361694 -1175.71826172 -541.95812988 117.66989899 -1194.49182129
		 -541.95812988 318.55059814 -1194.49182129 -440.61697388 117.66989899 -1192.12756348
		 -440.61691284 318.55059814 -1192.12756348 -379.20492554 116.75206757 -1172.5020752
		 -379.2048645 318.32299805 -1172.5020752 -315.013946533 116.7520752 -1098.48962402
		 -315.013885498 318.32299805 -1098.48962402;
	setAttr -s 70 ".ed[0:69]"  1 0 0 1 2 0 2 3 0 3 0 0 4 5 0 6 5 0 6 7 0
		 7 4 0 8 1 0 1 7 0 7 9 0 8 9 0 0 4 0 10 11 0 12 11 0 13 12 0 10 13 0 14 8 0 9 15 0
		 14 15 0 2 16 0 16 17 0 17 6 0 2 6 0 16 18 0 18 19 0 19 17 0 20 21 0 22 21 0 23 22 0
		 20 23 0 3 5 0 0 10 0 14 13 0 0 14 0 4 11 0 15 12 0 15 4 0 18 20 0 3 23 0 18 3 0 5 22 0
		 19 21 0 5 19 0 3 24 1 25 24 0 0 25 1 23 26 1 24 26 0 10 23 0 10 27 1 27 26 0 25 27 0
		 23 28 1 29 28 0 10 29 1 22 30 1 28 30 0 11 22 0 11 31 1 31 30 0 29 31 0 22 32 1 33 32 0
		 11 33 1 5 34 1 34 32 0 4 35 1 35 34 0 35 33 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 -4 -3 -2 0
		mu 0 4 0 3 2 1
		f 4 -8 -7 5 -5
		mu 0 4 10 13 12 11
		f 4 11 -11 -10 -9
		mu 0 4 20 23 22 21
		f 4 9 7 -13 -1
		mu 0 4 24 27 26 25
		f 4 16 15 14 -14
		mu 0 4 28 31 30 29
		f 4 19 -19 -12 -18
		mu 0 4 32 35 34 33
		f 4 23 -23 -22 -21
		mu 0 4 36 39 38 37
		f 4 21 -27 -26 -25
		mu 0 4 40 43 42 41
		f 4 30 29 28 -28
		mu 0 4 44 47 46 45
		f 4 31 -6 -24 2
		mu 0 4 48 51 50 49
		f 4 34 33 -17 -33
		mu 0 4 84 87 86 85
		f 4 12 35 -14 -33
		mu 0 4 52 55 54 53
		f 4 37 35 -15 -37
		mu 0 4 88 91 90 89
		f 4 40 39 -31 -39
		mu 0 4 92 95 94 93
		f 4 43 42 -29 -42
		mu 0 4 96 99 98 97
		f 4 -32 39 29 -42
		mu 0 4 56 59 58 57
		f 4 46 45 -45 3
		mu 0 4 0 5 4 3
		f 4 44 48 -48 -40
		mu 0 4 3 4 7 6
		f 4 47 -52 -51 49
		mu 0 4 6 7 9 8
		f 4 50 -53 -47 32
		mu 0 4 8 9 5 0
		f 4 55 54 -54 -50
		mu 0 4 60 63 62 61
		f 4 53 57 -57 -30
		mu 0 4 61 62 65 64
		f 4 56 -61 -60 58
		mu 0 4 64 65 67 66
		f 4 59 -62 -56 13
		mu 0 4 66 67 63 60
		f 4 64 63 -63 -59
		mu 0 4 16 17 19 18
		f 4 62 -67 -66 41
		mu 0 4 18 19 15 11
		f 4 65 -69 -68 4
		mu 0 4 11 15 14 10
		f 4 67 69 -65 -36
		mu 0 4 10 14 17 16
		f 4 -44 41 28 -43
		mu 0 4 100 103 102 101
		f 4 -29 -30 -31 27
		mu 0 4 68 71 70 69
		f 4 30 -40 -41 38
		mu 0 4 104 107 106 105
		f 4 40 31 43 -26
		mu 0 4 72 75 74 73
		f 4 -35 12 -38 -20
		mu 0 4 76 79 78 77
		f 4 37 35 -15 -37
		mu 0 4 108 111 110 109
		f 4 14 -14 16 15
		mu 0 4 80 83 82 81
		f 4 -17 -33 34 33
		mu 0 4 112 115 114 113;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "HouseWindows2" -p "House_Structure";
	setAttr ".rp" -type "double3" -491.4910888671875 261.42486572265619 -1136.9254027165507 ;
	setAttr ".sp" -type "double3" -491.4910888671875 261.42486572265619 -1136.9254027165507 ;
createNode transform -n "polySurface127" -p "HouseWindows2";
createNode mesh -n "polySurfaceShape125" -p "polySurface127";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.68924505 0.66617948
		 0.66192627 0.66683221 0.66192627 0.41363505 0.68924493 0.41366109 0.63030344 0.66617948
		 0.63030332 0.41366976 0.65579098 0.41363505 0.65579087 0.66683221 0.99800801 0.81776011
		 0.80456465 0.81776011 0.80456465 0.41363505 0.99800801 0.41363505 0.02931083 0.40600222
		 0.0019920375 0.4108977 0.0048818262 0.0031311943 0.030369239 0.0018771177 0.43007195
		 0.6138677 0.43007195 0.41363508 0.62416804 0.41363508 0.62416804 0.6138677 0.065645121
		 0.4108977 0.038326465 0.40600222 0.037268054 0.0018771177 0.062755466 0.0031311943
		 0.79842925 0.81776005 0.69538033 0.81776005 0.69538033 0.41363505 0.79842925 0.41363505
		 0.09966787 0.40600222 0.072349206 0.4108977 0.075238861 0.0031311943 0.10072628 0.0018771177
		 0.32085294 0.61386776 0.32085294 0.41363513 0.42393661 0.41363513 0.42392793 0.61386776
		 0.13580753 0.4108977 0.10848887 0.40600222 0.10743032 0.0018771177 0.132918 0.0031311943
		 0.0019921851 0.61911321 0.12066565 0.61911321 0.12066565 0.8132093 0.0019920541 0.8132093
		 0.52039564 0.40964362 0.40172219 0.30503577 0.40461171 0.10480301 0.52328545 0.0018771177
		 0.24559365 0.8132093 0.12691993 0.8132093 0.12691993 0.61911321 0.24559365 0.61911321
		 0.61805582 0.94042516 0.61805582 0.82175153 0.72113091 0.82175153 0.72113091 0.94042516
		 0.61004925 0.61785924 0.61004925 0.73653287 0.50696558 0.73653287 0.50696558 0.61785913
		 0.84218538 0.0018771177 0.960859 0.10480314 0.96374851 0.30503577 0.84507489 0.4096435
		 0.39502984 0.40964368 0.14251147 0.40964356 0.16376233 0.39206761 0.37440565 0.39206761
		 0.14251147 0.30503568 0.16376233 0.32261163 0.39502984 0.30503568 0.37440565 0.32261163
		 0.16314679 0.25819111 0.3743394 0.25819111 0.14252016 0.10480304 0.16314679 0.15164773
		 0.39502984 0.10480304 0.3743394 0.15164767 0.16218182 0.087083161 0.37410009 0.087083101
		 0.14252016 0.0018771177 0.16218187 0.019597061 0.39502984 0.001877085 0.37410009
		 0.019596994 0.94316238 0.92483532 0.84023643 0.92483532 0.84023643 0.82175159 0.94316232
		 0.82175159 0.31471759 0.41363519 0.31471759 0.61386782 0.21164256 0.61386782 0.21163392
		 0.41363519 0.83222115 0.82175159 0.83222115 0.92635959 0.72914612 0.92635959 0.72914612
		 0.82175159 0.53035307 0.40964359 0.53035307 0.0018770931 0.63343674 0.0018771259
		 0.6334281 0.40964359 0.64144325 0.40964362 0.64144325 0.0018771177 0.8355394 0.0018771177
		 0.8355394 0.40964362 0.37227556 0.81195539 0.25360185 0.81195539 0.25360185 0.61785924
		 0.37227556 0.61785924 0.20549862 0.41488916 0.20549862 0.61512178 0.01140251 0.61512178
		 0.01140251 0.41488916 0.49895737 0.81195539 0.38028377 0.81195539 0.38028389 0.61785924
		 0.49895737 0.61785924;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -669.2979126 318.61361694 -1112.94726563
		 -669.2979126 118.25540924 -1112.94726563 -603.23321533 118.25540161 -1187.89501953
		 -603.23321533 318.61361694 -1187.89501953 -541.95812988 318.55059814 -1206.6685791
		 -541.95812988 117.66989899 -1206.6685791 -440.61697388 117.66989899 -1204.30432129
		 -440.61691284 318.55059814 -1204.30432129 -379.2048645 318.32299805 -1184.67883301
		 -379.20492554 116.75206757 -1184.67883301 -315.013946533 116.7520752 -1110.66638184
		 -315.013885498 318.32299805 -1110.66638184 -686.01574707 338.23077393 -1093.98168945
		 -681.35919189 338.85165405 -1067.99682617 -681.35919189 98.017372131 -1067.99682617
		 -686.015686035 98.042152405 -1093.98156738 -298.15921021 338.23077393 -1091.23303223
		 -298.15924072 98.05040741 -1091.2331543 -296.96643066 98.017372131 -1066.98999023
		 -296.96643066 338.85165405 -1066.9901123 -681.35919189 522.84973145 -1067.99682617
		 -296.96643066 522.84973145 -1066.9901123 -586.51550293 338.23077393 -1206.86071777
		 -396.059570313 338.23077393 -1204.11218262 -396.059570313 522.84973145 -1204.11218262
		 -586.51544189 522.84973145 -1206.86071777 -686.015686035 522.84973145 -1093.98156738
		 -298.15921021 522.84973145 -1091.23303223 -681.35919189 -7.768461e-14 -1067.99682617
		 -296.96643066 -8.5276668e-14 -1066.9901123 -686.015686035 -8.7374627e-14 -1093.98156738
		 -298.15921021 -8.0138871e-14 -1091.23303223 -586.51544189 -8.6145114e-14 -1206.86071777
		 -396.059570313 -7.2182826e-14 -1204.11218262 -396.059570313 98.050415039 -1204.11218262
		 -586.51544189 98.042160034 -1206.86071777;
	setAttr -s 80 ".ed[0:79]"  13 12 0 14 15 0 19 16 0 18 17 0 20 21 0 13 19 0
		 12 16 0 26 27 0 15 17 0 14 18 0 28 29 0 30 31 0 12 22 0 26 25 0 22 25 0 27 24 0 25 24 0
		 16 23 0 24 23 0 22 23 0 30 32 0 15 35 0 32 35 0 17 34 0 35 34 0 31 33 0 34 33 0 32 33 0
		 22 35 0 23 34 0 12 0 1 15 1 1 0 1 0 35 2 1 1 2 0 22 3 1 3 2 0 0 3 0 22 4 1 35 5 1
		 4 5 0 34 6 1 5 6 0 23 7 1 7 6 0 4 7 0 23 8 1 34 9 1 8 9 0 17 10 1 10 9 0 16 11 1
		 11 10 0 11 8 0 13 14 0 15 12 0 16 17 0 18 19 0 20 13 0 19 21 0 26 20 1 21 27 0 14 28 0
		 29 18 0 28 30 0 31 29 1 12 26 0 27 16 0 30 15 0 17 31 0 15 12 0 16 17 0 17 31 0 30 15 0
		 17 31 0 30 15 0 27 16 0 12 26 0 27 16 0 12 26 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 -1 54 1 55
		mu 0 4 0 1 2 3
		f 4 56 -4 57 2
		mu 0 4 4 5 6 7
		f 4 58 5 59 -5
		mu 0 4 8 9 10 11
		f 4 0 6 -3 -6
		mu 0 4 12 13 14 15
		f 4 19 -19 -17 -15
		mu 0 4 16 17 18 19
		f 4 60 4 61 -8
		mu 0 4 20 21 22 23
		f 4 62 10 63 -10
		mu 0 4 24 25 26 27
		f 4 64 11 65 -11
		mu 0 4 28 29 30 31
		f 4 27 -27 -25 -23
		mu 0 4 32 33 34 35
		f 4 -2 9 3 -9
		mu 0 4 36 37 38 39
		f 4 12 14 -14 -67
		mu 0 4 40 41 42 43
		f 4 12 19 -18 -7
		mu 0 4 44 45 46 47
		f 4 15 18 -18 -68
		mu 0 4 48 49 50 51
		f 4 20 22 -22 -69
		mu 0 4 52 53 54 55
		f 4 23 26 -26 -70
		mu 0 4 56 57 58 59
		f 4 23 -25 -22 8
		mu 0 4 60 61 62 63
		f 4 -71 31 -33 -31
		mu 0 4 64 65 66 67
		f 4 21 33 -35 -32
		mu 0 4 65 68 69 66
		f 4 -29 35 36 -34
		mu 0 4 68 70 71 69
		f 4 -13 30 37 -36
		mu 0 4 70 64 67 71
		f 4 28 39 -41 -39
		mu 0 4 70 68 72 73
		f 4 24 41 -43 -40
		mu 0 4 68 74 75 72
		f 4 -30 43 44 -42
		mu 0 4 74 76 77 75
		f 4 -20 38 45 -44
		mu 0 4 76 70 73 77
		f 4 29 47 -49 -47
		mu 0 4 76 74 78 79
		f 4 -24 49 50 -48
		mu 0 4 74 80 81 78
		f 4 -72 51 52 -50
		mu 0 4 80 82 83 81
		f 4 17 46 -54 -52
		mu 0 4 82 76 79 83
		f 4 25 -27 -24 72
		mu 0 4 84 85 86 87
		f 4 -28 22 24 26
		mu 0 4 88 89 90 91
		f 4 -21 73 21 -23
		mu 0 4 92 93 94 95
		f 4 11 -75 -9 -76
		mu 0 4 96 97 98 99
		f 4 7 76 -7 77
		mu 0 4 100 101 102 103
		f 4 15 18 -18 -79
		mu 0 4 104 105 106 107
		f 4 -17 -15 19 -19
		mu 0 4 108 109 110 111
		f 4 -14 -80 12 14
		mu 0 4 112 113 114 115;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface128" -p "HouseWindows2";
	setAttr ".t" -type "double3" 0 -0.18194519053021452 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape126" -p "polySurface128";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10876278579235077 0.20408239390235394 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 0.010271778 0 0 -0.020575834 
		3.1836874 0 -0.020575834 3.1836874 0 0.020547606 0 0 0.020566011 0 0 0.010291224 
		0 0 6.7279663 0 0 6.7382441 0 0 6.7382631 0 0 6.7279878 0 0 6.6989369 3.1836874 0 
		3.1773984 3.1836874 0 6.6996379 3.1836874 0 3.1773984 3.1836874;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.042144775 -1093.98156738
		 -681.35919189 98.017364502 -1046.12438965 -296.96643066 98.017364502 -1045.11755371
		 -298.15924072 98.05039978 -1091.2331543 -396.059570313 98.050415039 -1204.11218262
		 -586.51544189 98.042160034 -1206.86071777 -686.015808105 103.43864441 -1093.97851563
		 -298.15936279 103.44689941 -1091.23010254 -396.059753418 103.44691467 -1204.11218262
		 -586.51556396 103.43865967 -1206.86071777 -681.63311768 103.41532135 -1048.93249512
		 -681.35925293 100.58638 -1046.12145996 -297.039611816 103.41588593 -1047.93798828
		 -296.96646118 100.58638 -1045.11462402;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 -18 21 19 -12
		mu 0 4 14 15 19 13
		f 4 13 -16 -17 11
		mu 0 4 7 8 9 10
		f 4 3 -3 -2 0
		mu 0 4 3 12 16 11
		f 4 -4 6 5 -5
		mu 0 4 4 2 6 5
		f 5 -1 7 18 17 -9
		mu 0 5 3 11 18 15 14
		f 4 1 9 22 -8
		mu 0 4 11 16 17 18
		f 5 2 10 -20 20 -10
		mu 0 5 16 12 13 19 17
		f 4 4 12 -14 -11
		mu 0 4 4 0 8 7
		f 4 -6 14 15 -13
		mu 0 4 0 1 9 8
		f 4 -7 8 16 -15
		mu 0 4 1 2 10 9
		f 4 -19 -23 -21 -22
		mu 0 4 15 18 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface129" -p "HouseWindows2";
	setAttr ".t" -type "double3" 0 235.44088818704853 -7.4734727153020231 ;
	setAttr ".r" -type "double3" 0 -1 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape129" -p "polySurface129";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10876278579235077 0.20408239390235394 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 0.0044889757 0 0 -0.0089928219 
		3.1836874 0 -0.0089928219 3.1836874 0 0.0089805117 0 0 0.0089883842 0 0 0.0044974829 
		0 0 2.9404464 0 0 2.9449379 0 0 2.9449458 0 0 2.940455 0 0 2.927758 3.1836874 0 1.3886766 
		3.1836874 0 2.9280648 3.1836874 0 1.3886766 3.1836874;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.042144775 -1093.98156738
		 -681.35919189 98.017364502 -1046.12438965 -296.96643066 98.017364502 -1045.11755371
		 -298.15924072 98.05039978 -1091.2331543 -396.059570313 98.050415039 -1204.11218262
		 -586.51544189 98.042160034 -1206.86071777 -686.015808105 103.43864441 -1093.97851563
		 -298.15936279 103.44689941 -1091.23010254 -396.059753418 103.44691467 -1204.11218262
		 -586.51556396 103.43865967 -1206.86071777 -681.63311768 103.41532135 -1048.93249512
		 -681.35925293 100.58638 -1046.12145996 -297.039611816 103.41588593 -1047.93798828
		 -296.96646118 100.58638 -1045.11462402;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 -18 21 19 -12
		mu 0 4 14 15 19 13
		f 4 13 -16 -17 11
		mu 0 4 7 8 9 10
		f 4 3 -3 -2 0
		mu 0 4 3 12 16 11
		f 4 -4 6 5 -5
		mu 0 4 4 2 6 5
		f 5 -1 7 18 17 -9
		mu 0 5 3 11 18 15 14
		f 4 1 9 22 -8
		mu 0 4 11 16 17 18
		f 5 2 10 -20 20 -10
		mu 0 5 16 12 13 19 17
		f 4 4 12 -14 -11
		mu 0 4 4 0 8 7
		f 4 -6 14 15 -13
		mu 0 4 0 1 9 8
		f 4 -7 8 16 -15
		mu 0 4 1 2 10 9
		f 4 -19 -23 -21 -22
		mu 0 4 15 18 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface130" -p "HouseWindows2";
	setAttr ".t" -type "double3" -795.77968831146541 232.17513448533322 577.97791348970645 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape130" -p "polySurface130";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10876278579235077 0.20408239390235394 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 0.0044889757 0 0 -0.0089928219 
		3.1836874 0 -0.0089928219 3.1836874 0 0.0089805117 0 0 0.0089883842 0 0 0.0044974829 
		0 0 2.9404464 0 0 2.9449379 0 0 2.9449458 0 0 2.940455 0 0 2.927758 3.1836874 0 1.3886766 
		3.1836874 0 2.9280648 3.1836874 0 1.3886766 3.1836874;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.042144775 -1093.98156738
		 -681.35919189 98.017364502 -1046.12438965 -296.96643066 98.017364502 -1045.11755371
		 -298.15924072 98.05039978 -1091.2331543 -396.059570313 98.050415039 -1204.11218262
		 -586.51544189 98.042160034 -1206.86071777 -686.015808105 103.43864441 -1093.97851563
		 -298.15936279 103.44689941 -1091.23010254 -396.059753418 103.44691467 -1204.11218262
		 -586.51556396 103.43865967 -1206.86071777 -681.63311768 103.41532135 -1048.93249512
		 -681.35925293 100.58638 -1046.12145996 -297.039611816 103.41588593 -1047.93798828
		 -296.96646118 100.58638 -1045.11462402;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 -18 21 19 -12
		mu 0 4 14 15 19 13
		f 4 13 -16 -17 11
		mu 0 4 7 8 9 10
		f 4 3 -3 -2 0
		mu 0 4 3 12 16 11
		f 4 -4 6 5 -5
		mu 0 4 4 2 6 5
		f 5 -1 7 18 17 -9
		mu 0 5 3 11 18 15 14
		f 4 1 9 22 -8
		mu 0 4 11 16 17 18
		f 5 2 10 -20 20 -10
		mu 0 5 16 12 13 19 17
		f 4 4 12 -14 -11
		mu 0 4 4 0 8 7
		f 4 -6 14 15 -13
		mu 0 4 0 1 9 8
		f 4 -7 8 16 -15
		mu 0 4 1 2 10 9
		f 4 -19 -23 -21 -22
		mu 0 4 15 18 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface131" -p "HouseWindows2";
	setAttr ".t" -type "double3" -791.69698532713005 -0.18194519053021452 585.52983328380049 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape131" -p "polySurface131";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10876278579235077 0.20408239390235394 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -1.5347723e-11 0.0076467497 
		3.4106051e-12 -1.3642421e-11 -0.015318308 3.1836874 -1.4495072e-11 -0.015318308 3.1836874 
		-1.4495072e-11 0.01529766 3.4106051e-12 -1.5347723e-11 0.015311075 3.4106051e-12 
		-1.5347723e-11 0.007661182 3.4106051e-12 -1.5347723e-11 5.008832 3.4106051e-12 -1.4495072e-11 
		5.0164838 3.4106051e-12 -1.5347723e-11 5.0164971 3.4106051e-12 -1.5347723e-11 5.0088472 
		3.4106051e-12 -1.3642421e-11 4.9872189 3.1836874 -1.3642421e-11 2.3655076 3.1836874 
		-1.4495072e-11 4.9877424 3.1836874 -1.4495072e-11 2.3655076 3.1836874;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.042144775 -1093.98156738
		 -681.35919189 98.017364502 -1046.12438965 -296.96643066 98.017364502 -1045.11755371
		 -298.15924072 98.05039978 -1091.2331543 -396.059570313 98.050415039 -1204.11218262
		 -586.51544189 98.042160034 -1206.86071777 -686.015808105 103.43864441 -1093.97851563
		 -298.15936279 103.44689941 -1091.23010254 -396.059753418 103.44691467 -1204.11218262
		 -586.51556396 103.43865967 -1206.86071777 -681.63311768 103.41532135 -1048.93249512
		 -681.35925293 100.58638 -1046.12145996 -297.039611816 103.41588593 -1047.93798828
		 -296.96646118 100.58638 -1045.11462402;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 -18 21 19 -12
		mu 0 4 14 15 19 13
		f 4 13 -16 -17 11
		mu 0 4 7 8 9 10
		f 4 3 -3 -2 0
		mu 0 4 3 12 16 11
		f 4 -4 6 5 -5
		mu 0 4 4 2 6 5
		f 5 -1 7 18 17 -9
		mu 0 5 3 11 18 15 14
		f 4 1 9 22 -8
		mu 0 4 11 16 17 18
		f 5 2 10 -20 20 -10
		mu 0 5 16 12 13 19 17
		f 4 4 12 -14 -11
		mu 0 4 4 0 8 7
		f 4 -6 14 15 -13
		mu 0 4 0 1 9 8
		f 4 -7 8 16 -15
		mu 0 4 1 2 10 9
		f 4 -19 -23 -21 -22
		mu 0 4 15 18 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "group1" -p "HouseWindows2";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "polySurface132" -p "group1";
	setAttr ".t" -type "double3" -806.26254068542494 232.17513448533322 755.04919754524269 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape132" -p "polySurface132";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53558941558003426 0.20638740982394665 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.046630859 -1093.98156738
		 -681.35919189 98.0083694458 -1042.94067383 -296.96643066 98.0083694458 -1041.93383789
		 -298.15924072 98.059379578 -1091.2331543 -396.059570313 98.059402466 -1204.11218262
		 -586.51544189 98.046653748 -1206.86071777 -686.015808105 106.37908936 -1093.97851563
		 -298.15936279 106.39183807 -1091.23010254 -396.059753418 106.39186096 -1204.11218262
		 -586.51556396 106.37911224 -1206.86071777 -681.63311768 106.34307861 -1045.7487793
		 -681.35925293 101.97505951 -1042.93774414 -297.039611816 106.34394836 -1044.75427246
		 -296.96646118 101.97505951 -1041.9309082;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 -20 -22 17
		mu 0 4 14 13 19 15
		f 4 -12 16 15 -14
		mu 0 4 7 10 9 8
		f 4 -1 1 2 -4
		mu 0 4 3 11 16 12
		f 4 4 -6 -7 3
		mu 0 4 4 5 6 2
		f 5 8 -18 -19 -8 0
		mu 0 5 3 14 15 18 11
		f 4 7 -23 -10 -2
		mu 0 4 11 18 17 16
		f 5 9 -21 19 -11 -3
		mu 0 5 16 17 19 13 12
		f 4 10 13 -13 -5
		mu 0 4 4 7 8 0
		f 4 12 -16 -15 5
		mu 0 4 0 8 9 1
		f 4 14 -17 -9 6
		mu 0 4 1 9 10 2
		f 4 21 20 22 18
		mu 0 4 15 19 17 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface133" -p "group1";
	setAttr ".t" -type "double3" -802.17983770108958 -0.18194519053021452 762.60111733933672 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape133" -p "polySurface133";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53558941558003426 0.20638740982394665 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  2.0463631e-12 0.0035643147 
		0 2.0463631e-12 -0.0071421852 0 2.0463631e-12 -0.0071421852 0 2.0463631e-12 0.0071314704 
		0 2.5579538e-12 0.0071383128 0 2.0463631e-12 0.0035705697 0 2.0463631e-12 2.3351438 
		0 2.0463631e-12 2.3387115 0 2.5579538e-12 2.3387179 0 2.0463631e-12 2.3351502 0 2.0463631e-12 
		2.3250673 0 2.0463631e-12 1.102813 0 2.0463631e-12 2.3253112 0 2.0463631e-12 1.102813 
		0;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.049873352 -1093.98156738
		 -681.35919189 98.0018768311 -1042.94067383 -296.96643066 98.0018768311 -1041.93383789
		 -298.15924072 98.065864563 -1091.2331543 -396.059570313 98.065895081 -1204.11218262
		 -586.51544189 98.04990387 -1206.86071777 -686.015808105 108.50261688 -1093.97851563
		 -298.15936279 108.51860809 -1091.23010254 -396.059753418 108.51863861 -1204.11218262
		 -586.51556396 108.5026474 -1206.86071777 -681.63311768 108.45744324 -1045.7487793
		 -681.35925293 102.97793579 -1042.93774414 -297.039611816 108.45853424 -1044.75427246
		 -296.96646118 102.97793579 -1041.9309082;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 -20 -22 17
		mu 0 4 14 13 19 15
		f 4 -12 16 15 -14
		mu 0 4 7 10 9 8
		f 4 -1 1 2 -4
		mu 0 4 3 11 16 12
		f 4 4 -6 -7 3
		mu 0 4 4 5 6 2
		f 5 8 -18 -19 -8 0
		mu 0 5 3 14 15 18 11
		f 4 7 -23 -10 -2
		mu 0 4 11 18 17 16
		f 5 9 -21 19 -11 -3
		mu 0 5 16 17 19 13 12
		f 4 10 13 -13 -5
		mu 0 4 4 7 8 0
		f 4 12 -16 -15 5
		mu 0 4 0 8 9 1
		f 4 14 -17 -9 6
		mu 0 4 1 9 10 2
		f 4 21 20 22 18
		mu 0 4 15 19 17 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface134" -p "group1";
	setAttr ".t" -type "double3" -806.26254068542471 232.17513448533322 1377.5108000510811 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape134" -p "polySurface134";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53558941558003426 0.20638740982394665 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.046630859 -1093.98156738
		 -681.35919189 98.0083694458 -1042.94067383 -296.96643066 98.0083694458 -1041.93383789
		 -298.15924072 98.059379578 -1091.2331543 -396.059570313 98.059402466 -1204.11218262
		 -586.51544189 98.046653748 -1206.86071777 -686.015808105 106.37908936 -1093.97851563
		 -298.15936279 106.39183807 -1091.23010254 -396.059753418 106.39186096 -1204.11218262
		 -586.51556396 106.37911224 -1206.86071777 -681.63311768 106.34307861 -1045.7487793
		 -681.35925293 101.97505951 -1042.93774414 -297.039611816 106.34394836 -1044.75427246
		 -296.96646118 101.97505951 -1041.9309082;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 -20 -22 17
		mu 0 4 14 13 19 15
		f 4 -12 16 15 -14
		mu 0 4 7 10 9 8
		f 4 -1 1 2 -4
		mu 0 4 3 11 16 12
		f 4 4 -6 -7 3
		mu 0 4 4 5 6 2
		f 5 8 -18 -19 -8 0
		mu 0 5 3 14 15 18 11
		f 4 7 -23 -10 -2
		mu 0 4 11 18 17 16
		f 5 9 -21 19 -11 -3
		mu 0 5 16 17 19 13 12
		f 4 10 13 -13 -5
		mu 0 4 4 7 8 0
		f 4 12 -16 -15 5
		mu 0 4 0 8 9 1
		f 4 14 -17 -9 6
		mu 0 4 1 9 10 2
		f 4 21 20 22 18
		mu 0 4 15 19 17 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape136" -p "polySurface134";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53558941558003426 0.20638740982394665 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.046630859 -1093.98156738
		 -681.35919189 98.0083694458 -1042.94067383 -296.96643066 98.0083694458 -1041.93383789
		 -298.15924072 98.059379578 -1091.2331543 -396.059570313 98.059402466 -1204.11218262
		 -586.51544189 98.046653748 -1206.86071777 -686.015808105 106.37908936 -1093.97851563
		 -298.15936279 106.39183807 -1091.23010254 -396.059753418 106.39186096 -1204.11218262
		 -586.51556396 106.37911224 -1206.86071777 -681.63311768 106.34307861 -1045.7487793
		 -681.35925293 101.97505951 -1042.93774414 -297.039611816 106.34394836 -1044.75427246
		 -296.96646118 101.97505951 -1041.9309082;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 -20 -22 17
		mu 0 4 14 13 19 15
		f 4 -12 16 15 -14
		mu 0 4 7 10 9 8
		f 4 -1 1 2 -4
		mu 0 4 3 11 16 12
		f 4 4 -6 -7 3
		mu 0 4 4 5 6 2
		f 5 8 -18 -19 -8 0
		mu 0 5 3 14 15 18 11
		f 4 7 -23 -10 -2
		mu 0 4 11 18 17 16
		f 5 9 -21 19 -11 -3
		mu 0 5 16 17 19 13 12
		f 4 10 13 -13 -5
		mu 0 4 4 7 8 0
		f 4 12 -16 -15 5
		mu 0 4 0 8 9 1
		f 4 14 -17 -9 6
		mu 0 4 1 9 10 2
		f 4 21 20 22 18
		mu 0 4 15 19 17 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface135" -p "group1";
	setAttr ".t" -type "double3" -802.17983770108935 -0.18194519053021452 1385.062719845175 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
	setAttr ".sp" -type "double3" -491.49105834960938 98.033893585205078 -1136.9253540039062 ;
createNode mesh -n "polySurfaceShape135" -p "polySurface135";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53558941558003426 0.20638740982394665 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  2.0463631e-12 0.0035643147 
		0 2.0463631e-12 -0.0071421852 0 2.0463631e-12 -0.0071421852 0 2.0463631e-12 0.0071314704 
		0 2.5579538e-12 0.0071383128 0 2.0463631e-12 0.0035705697 0 2.0463631e-12 2.3351438 
		0 2.0463631e-12 2.3387115 0 2.5579538e-12 2.3387179 0 2.0463631e-12 2.3351502 0 2.0463631e-12 
		2.3250673 0 2.0463631e-12 1.102813 0 2.0463631e-12 2.3253112 0 2.0463631e-12 1.102813 
		0;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.049873352 -1093.98156738
		 -681.35919189 98.0018768311 -1042.94067383 -296.96643066 98.0018768311 -1041.93383789
		 -298.15924072 98.065864563 -1091.2331543 -396.059570313 98.065895081 -1204.11218262
		 -586.51544189 98.04990387 -1206.86071777 -686.015808105 108.50261688 -1093.97851563
		 -298.15936279 108.51860809 -1091.23010254 -396.059753418 108.51863861 -1204.11218262
		 -586.51556396 108.5026474 -1206.86071777 -681.63311768 108.45744324 -1045.7487793
		 -681.35925293 102.97793579 -1042.93774414 -297.039611816 108.45853424 -1044.75427246
		 -296.96646118 102.97793579 -1041.9309082;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 11 -20 -22 17
		mu 0 4 14 13 19 15
		f 4 -12 16 15 -14
		mu 0 4 7 10 9 8
		f 4 -1 1 2 -4
		mu 0 4 3 11 16 12
		f 4 4 -6 -7 3
		mu 0 4 4 5 6 2
		f 5 8 -18 -19 -8 0
		mu 0 5 3 14 15 18 11
		f 4 7 -23 -10 -2
		mu 0 4 11 18 17 16
		f 5 9 -21 19 -11 -3
		mu 0 5 16 17 19 13 12
		f 4 10 13 -13 -5
		mu 0 4 4 7 8 0
		f 4 12 -16 -15 5
		mu 0 4 0 8 9 1
		f 4 14 -17 -9 6
		mu 0 4 1 9 10 2
		f 4 21 20 22 18
		mu 0 4 15 19 17 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape137" -p "polySurface135";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53558941558003426 0.20638740982394665 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.13580753 0.4108977 0.84218538 0.0018771177
		 0.960859 0.10480314 0.96374851 0.30503577 0.84218538 0.0018771177 0.960859 0.10480314
		 0.96374851 0.30503577 0.84507489 0.4096435 0.10848887 0.40600222 0.132918 0.0031311943
		 0.132918 0.0031311943 0.13580753 0.4108977 0.11009526 0.40628767 0.10743032 0.0018771177
		 0.10743032 0.0018771192 0.10848887 0.40600222 0.10899241 0.0019539895;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  2.0463631e-12 0.0032413411 
		0 2.0463631e-12 -0.0064949095 0 2.0463631e-12 -0.0064949095 0 2.0463631e-12 0.0064853104 
		0 2.5579538e-12 0.006491038 0 2.0463631e-12 0.0032468475 0 2.0463631e-12 2.1235259 
		0 2.0463631e-12 2.12677 0 2.5579538e-12 2.1267762 0 2.0463631e-12 2.1235318 0 2.0463631e-12 
		2.1143627 0 2.0463631e-12 1.0028728 0 2.0463631e-12 2.1145842 0 2.0463631e-12 1.0028728 
		0;
	setAttr -s 14 ".vt[0:13]"  -686.015686035 98.046630859 -1093.98156738
		 -681.35919189 98.0083694458 -1042.94067383 -296.96643066 98.0083694458 -1041.93383789
		 -298.15924072 98.059379578 -1091.2331543 -396.059570313 98.059402466 -1204.11218262
		 -586.51544189 98.046653748 -1206.86071777 -686.015808105 106.37908936 -1093.97851563
		 -298.15936279 106.39183807 -1091.23010254 -396.059753418 106.39186096 -1204.11218262
		 -586.51556396 106.37911224 -1206.86071777 -681.63311768 106.34307861 -1045.7487793
		 -681.35925293 101.97505951 -1042.93774414 -297.039611816 106.34394836 -1044.75427246
		 -296.96646118 101.97505951 -1041.9309082;
	setAttr -s 23 ".ed[0:22]"  1 0 1 1 2 1 2 3 1 0 3 1 3 4 1 5 4 1 0 5 1
		 1 11 1 0 6 1 2 13 1 3 7 1 6 7 1 4 8 1 7 8 1 5 9 1 9 8 1 6 9 1 10 6 1 11 10 1 12 7 1
		 12 13 1 10 12 1 13 11 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 -18 21 19 -12
		mu 0 4 14 15 19 13
		f 4 13 -16 -17 11
		mu 0 4 7 8 9 10
		f 4 3 -3 -2 0
		mu 0 4 3 12 16 11
		f 4 -4 6 5 -5
		mu 0 4 4 2 6 5
		f 5 -1 7 18 17 -9
		mu 0 5 3 11 18 15 14
		f 4 1 9 22 -8
		mu 0 4 11 16 17 18
		f 5 2 10 -20 20 -10
		mu 0 5 16 12 13 19 17
		f 4 4 12 -14 -11
		mu 0 4 4 0 8 7
		f 4 -6 14 15 -13
		mu 0 4 0 1 9 8
		f 4 -7 8 16 -15
		mu 0 4 1 2 10 9
		f 4 -19 -23 -21 -22
		mu 0 4 15 18 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Floor1" -p "House_Structure";
	setAttr ".rp" -type "double3" 0 0 -109.4180908203125 ;
	setAttr ".sp" -type "double3" 0 0 -109.4180908203125 ;
createNode mesh -n "Floor1Shape" -p "Floor1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10000000149011612 0.70000001788139343 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0 0 0.2 0 0.40000001
		 0 0.60000002 0 0.80000001 0 1 0 0 0.2 0.2 0.2 0.40000001 0.2 0.60000002 0.2 0.80000001
		 0.2 1 0.2 0 0.40000001 0.2 0.40000001 0.40000001 0.40000001 0.60000002 0.40000001
		 0.80000001 0.40000001 1 0.40000001 0 0.60000002 0.2 0.60000002 0.40000001 0.60000002
		 0.60000002 0.60000002 0.80000001 0.60000002 1 0.60000002 0 0.80000001 0.2 0.80000001
		 0.40000001 0.80000001 0.60000002 0.80000001 0.80000001 0.80000001 1 0.80000001 0
		 1 0.2 1 0.40000001 1 0.60000002 1 0.80000001 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -1324.51940918 -3.4606869e-13 876.78674316
		 -794.71166992 -3.4606869e-13 876.78674316 -264.90390015 -3.4606869e-13 876.78674316
		 264.90390015 -3.4606869e-13 876.78674316 794.71166992 -3.4606869e-13 876.78674316
		 1324.51940918 -3.4606869e-13 876.78674316 -1324.51940918 -2.0764122e-13 482.30480957
		 -794.71166992 -2.0764122e-13 482.30480957 -264.90390015 -2.0764122e-13 482.30480957
		 264.90390015 -2.0764122e-13 482.30480957 794.71166992 -2.0764122e-13 482.30480957
		 1324.51940918 -2.0764122e-13 482.30480957 -1324.51940918 -6.9213739e-14 87.82288361
		 -794.71166992 -6.9213739e-14 87.82288361 -264.90390015 -6.9213739e-14 87.82288361
		 264.90390015 -6.9213739e-14 87.82288361 794.71166992 -6.9213739e-14 87.82288361 1324.51940918 -6.9213739e-14 87.82288361
		 -1324.51940918 6.9213739e-14 -306.65905762 -794.71166992 6.9213739e-14 -306.65905762
		 -264.90390015 6.9213739e-14 -306.65905762 264.90390015 6.9213739e-14 -306.65905762
		 794.71166992 6.9213739e-14 -306.65905762 1324.51940918 6.9213739e-14 -306.65905762
		 -1324.51940918 2.0764122e-13 -701.14099121 -794.71166992 2.0764122e-13 -701.14099121
		 -264.90390015 2.0764122e-13 -701.14099121 264.90390015 2.0764122e-13 -701.14099121
		 794.71166992 2.0764122e-13 -701.14099121 1324.51940918 2.0764122e-13 -701.14099121
		 -1324.51940918 3.4606869e-13 -1095.6229248 -794.71166992 3.4606869e-13 -1095.6229248
		 -264.90390015 3.4606869e-13 -1095.6229248 264.90390015 3.4606869e-13 -1095.6229248
		 794.71166992 3.4606869e-13 -1095.6229248 1324.51940918 3.4606869e-13 -1095.6229248;
	setAttr -s 60 ".ed[0:59]"  0 1 0 0 6 0 1 2 0 1 7 1 2 3 0 2 8 1 3 4 0
		 3 9 1 4 5 0 4 10 1 5 11 0 6 7 1 6 12 0 7 8 1 7 13 1 8 9 1 8 14 1 9 10 1 9 15 1 10 11 1
		 10 16 1 11 17 0 12 13 1 12 18 0 13 14 1 13 19 1 14 15 1 14 20 1 15 16 1 15 21 1 16 17 1
		 16 22 1 17 23 0 18 19 1 18 24 0 19 20 1 19 25 1 20 21 1 20 26 1 21 22 1 21 27 1 22 23 1
		 22 28 1 23 29 0 24 25 1 24 30 0 25 26 1 25 31 1 26 27 1 26 32 1 27 28 1 27 33 1 28 29 1
		 28 34 1 29 35 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0;
	setAttr -s 25 -ch 100 ".fc[0:24]" -type "polyFaces" 
		f 4 0 3 -12 -2
		mu 0 4 0 1 7 6
		f 4 2 5 -14 -4
		mu 0 4 1 2 8 7
		f 4 4 7 -16 -6
		mu 0 4 2 3 9 8
		f 4 6 9 -18 -8
		mu 0 4 3 4 10 9
		f 4 8 10 -20 -10
		mu 0 4 4 5 11 10
		f 4 11 14 -23 -13
		mu 0 4 6 7 13 12
		f 4 13 16 -25 -15
		mu 0 4 7 8 14 13
		f 4 15 18 -27 -17
		mu 0 4 8 9 15 14
		f 4 17 20 -29 -19
		mu 0 4 9 10 16 15
		f 4 19 21 -31 -21
		mu 0 4 10 11 17 16
		f 4 22 25 -34 -24
		mu 0 4 12 13 19 18
		f 4 24 27 -36 -26
		mu 0 4 13 14 20 19
		f 4 26 29 -38 -28
		mu 0 4 14 15 21 20
		f 4 28 31 -40 -30
		mu 0 4 15 16 22 21
		f 4 30 32 -42 -32
		mu 0 4 16 17 23 22
		f 4 33 36 -45 -35
		mu 0 4 18 19 25 24
		f 4 35 38 -47 -37
		mu 0 4 19 20 26 25
		f 4 37 40 -49 -39
		mu 0 4 20 21 27 26
		f 4 39 42 -51 -41
		mu 0 4 21 22 28 27
		f 4 41 43 -53 -43
		mu 0 4 22 23 29 28
		f 4 44 47 -56 -46
		mu 0 4 24 25 31 30
		f 4 46 49 -57 -48
		mu 0 4 25 26 32 31
		f 4 48 51 -58 -50
		mu 0 4 26 27 33 32
		f 4 50 53 -59 -52
		mu 0 4 27 28 34 33
		f 4 52 54 -60 -54
		mu 0 4 28 29 35 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "HouseWindows3" -p "House_Structure";
	setAttr ".rp" -type "double3" 1286.5790114658435 257.9923703873759 243.05592866289965 ;
	setAttr ".sp" -type "double3" 1286.5790114658435 257.9923703873759 243.05592866289965 ;
createNode mesh -n "HouseWindowsShape3" -p "HouseWindows3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.69264966 0.62774593
		 0.66691065 0.62836087 0.66691065 0.38980576 0.69264954 0.38983032 0.71143574 0.40985227
		 0.71143574 0.60831439 0.80446041 0.38983032 0.78567415 0.40985227 0.80446041 0.62774593
		 0.78567415 0.60831439 0.6373204 0.62774616 0.63732028 0.38983876 0.66133404 0.38980603
		 0.66133392 0.62836117 0.6180709 0.60802674 0.6180709 0.40836343 0.52550942 0.62774616
		 0.54475892 0.60802674 0.52550942 0.38983876 0.54475892 0.4083634 0.85209101 0.38274717
		 0.66983414 0.38274717 0.66983414 0.0019920608 0.85209101 0.0019920608 0.027549611
		 0.3827472 0.0018106261 0.38735956 0.0045333025 0.003173616 0.028546816 0.0019920608
		 0.14283083 0.5784595 0.14283083 0.38980603 0.32570264 0.38980603 0.32570264 0.5784595
		 0.06238189 0.38735956 0.036643028 0.3827472 0.035645824 0.0019920608 0.059659336
		 0.003173616 0.9071269 0.7671302 0.81003714 0.7671302 0.81003714 0.38637519 0.9071269
		 0.38637519 0.095042713 0.3827472 0.069303848 0.38735956 0.072026402 0.003173616 0.096039914
		 0.0019920608 0.040131696 0.57964104 0.040131696 0.39098755 0.13725419 0.39098755
		 0.13724601 0.57964104 0.1296981 0.38735956 0.10395923 0.3827472 0.1029619 0.0019920608
		 0.12697566 0.003173616 0.24843068 0.38617802 0.13661993 0.28761947 0.13934235 0.098965898
		 0.25115335 0.0019920608 0.54937381 0.0019920608 0.66118473 0.098966017 0.66390711
		 0.28761947 0.55209625 0.3861779 0.33127928 0.62772161 0.33127934 0.38980603 0.37541497
		 0.40924802 0.37541497 0.60822767 0.51993281 0.3898142 0.47579706 0.40924802 0.51993281
		 0.62772161 0.47579715 0.60822767 0.098933145 0.58326906 0.098933145 0.77192247 0.0018187911
		 0.77192247 0.0018106416 0.58326906 0.25708038 0.38617799 0.25708038 0.0019920298
		 0.35420287 0.0019920608 0.35419467 0.38617799 0.35982597 0.38617802 0.35982597 0.0019920608
		 0.54269779 0.0019920608 0.54269779 0.38617802 0.28760517 0.58326906 0.28760517 0.77192247
		 0.10473337 0.77192247 0.10473337 0.58326906 0.29428145 0.63134968 0.4060922 0.63134968
		 0.4060922 0.81422144 0.29428133 0.81422144 0.52478129 0.81486094 0.41297027 0.81486094
		 0.41297027 0.63198912 0.52478129 0.63198912 0.81001258 0.99800813 0.81001258 0.88619727
		 0.9071269 0.88619727 0.9071269 0.99800813 0.8661592 0.77075833 0.8661592 0.88256925
		 0.76903671 0.88256925 0.76903671 0.77075821 0.70174491 0.91561145 0.60477102 0.91561145
		 0.60477102 0.81848896 0.70174485 0.81848896 0.80443585 0.88619727 0.80443585 0.98475593
		 0.70732147 0.98475593 0.70732147 0.88619727 0.64347005 0.81486094 0.53165907 0.81486094
		 0.53165907 0.63198912 0.64347005 0.63198912 0.76215887 0.81486094 0.65034801 0.81486094
		 0.65034813 0.63198912 0.76215887 0.63198912;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  1929.651 -3.6536841 1532.2805 
		1899.0096 -3.6554711 1501.3304 1899.0096 -2.9619021 1501.3304 1929.6509 -2.9619713 
		1532.2803 1539.0458 -3.6536841 1115.9645 1539.046 -2.9619977 1115.9646 1513.61 -2.9619021 
		1090.4496 1513.6101 -3.6554711 1090.4497 1899.0096 -4.185358 1501.3304 1513.6101 
		-4.185358 1090.4497 1943.0298 -3.6536841 1539.0635 1749.8253 -3.6536841 1333.2338 
		1749.8253 -4.185358 1333.2338 1943.0298 -4.185358 1539.0635 1929.6509 -4.185358 1532.2803 
		1539.0458 -4.185358 1115.9645 1899.0096 -2.6796279 1501.3304 1513.6101 -2.6796279 
		1090.4497 1929.6509 -2.6796279 1532.2803 1539.0458 -2.6796279 1115.9645 1943.0298 
		-2.6796279 1539.0635 1749.8253 -2.6796279 1333.2338 1749.8253 -2.9619968 1333.2338 
		1943.0298 -2.9619727 1539.0635 1931.8988 -3.020185 1533.42 1931.8988 -3.5971906 1533.42 
		1940.7819 -3.020185 1537.9237 1940.7819 -3.5971906 1537.9237 1898.2803 -3.0184989 
		1491.3604 1898.2803 -3.5970078 1491.3604 1794.5748 -3.0184989 1380.937 1794.5748 
		-3.5970078 1380.937 1713.5374 -3.0158544 1295.8285 1713.5372 -3.5963511 1295.8284 
		1575.3339 -3.0158563 1153.3699 1575.3339 -3.5963511 1153.3698;
	setAttr -s 36 ".vt[0:35]"  -686.01574707 338.23077393 -1081.80493164
		 -681.35919189 338.85165405 -1055.82006836 -681.35919189 98.017372131 -1055.82006836
		 -686.015686035 98.042152405 -1081.80480957 -298.15921021 338.23077393 -1079.056274414
		 -298.15924072 98.05040741 -1079.056396484 -296.96643066 98.017372131 -1054.81323242
		 -296.96643066 338.85165405 -1054.81335449 -681.35919189 522.84973145 -1055.82006836
		 -296.96643066 522.84973145 -1054.81335449 -586.51550293 338.23077393 -1194.68395996
		 -396.059570313 338.23077393 -1191.9354248 -396.059570313 522.84973145 -1191.9354248
		 -586.51544189 522.84973145 -1194.68395996 -686.015686035 522.84973145 -1081.80480957
		 -298.15921021 522.84973145 -1079.056274414 -681.35919189 -7.8941052e-14 -1055.82006836
		 -296.96643066 -8.3897414e-14 -1054.81335449 -686.015686035 -8.887294e-14 -1081.80480957
		 -298.15921021 -8.0707325e-14 -1079.056274414 -586.51544189 -9.0196805e-14 -1194.68395996
		 -396.059570313 -7.8441953e-14 -1191.9354248 -396.059570313 98.050415039 -1191.9354248
		 -586.51544189 98.042160034 -1194.68395996 -669.2979126 118.25540924 -1100.77050781
		 -669.2979126 318.61361694 -1100.77050781 -603.23321533 118.25540161 -1175.71826172
		 -603.23321533 318.61361694 -1175.71826172 -541.95812988 117.66989899 -1194.49182129
		 -541.95812988 318.55059814 -1194.49182129 -440.61697388 117.66989899 -1192.12756348
		 -440.61691284 318.55059814 -1192.12756348 -379.20492554 116.75206757 -1172.5020752
		 -379.2048645 318.32299805 -1172.5020752 -315.013946533 116.7520752 -1098.48962402
		 -315.013885498 318.32299805 -1098.48962402;
	setAttr -s 70 ".ed[0:69]"  1 0 0 1 2 0 2 3 0 3 0 0 4 5 0 6 5 0 6 7 0
		 7 4 0 8 1 0 1 7 0 7 9 0 8 9 0 0 4 0 10 11 0 12 11 0 13 12 0 10 13 0 14 8 0 9 15 0
		 14 15 0 2 16 0 16 17 0 17 6 0 2 6 0 16 18 0 18 19 0 19 17 0 20 21 0 22 21 0 23 22 0
		 20 23 0 3 5 0 0 10 0 14 13 0 0 14 0 4 11 0 15 12 0 15 4 0 18 20 0 3 23 0 18 3 0 5 22 0
		 19 21 0 5 19 0 3 24 1 25 24 0 0 25 1 23 26 1 24 26 0 10 23 0 10 27 1 27 26 0 25 27 0
		 23 28 1 29 28 0 10 29 1 22 30 1 28 30 0 11 22 0 11 31 1 31 30 0 29 31 0 22 32 1 33 32 0
		 11 33 1 5 34 1 34 32 0 4 35 1 35 34 0 35 33 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 -4 -3 -2 0
		mu 0 4 0 3 2 1
		f 4 -8 -7 5 -5
		mu 0 4 10 13 12 11
		f 4 11 -11 -10 -9
		mu 0 4 20 23 22 21
		f 4 9 7 -13 -1
		mu 0 4 24 27 26 25
		f 4 16 15 14 -14
		mu 0 4 28 31 30 29
		f 4 19 -19 -12 -18
		mu 0 4 32 35 34 33
		f 4 23 -23 -22 -21
		mu 0 4 36 39 38 37
		f 4 21 -27 -26 -25
		mu 0 4 40 43 42 41
		f 4 30 29 28 -28
		mu 0 4 44 47 46 45
		f 4 31 -6 -24 2
		mu 0 4 48 51 50 49
		f 4 34 33 -17 -33
		mu 0 4 84 87 86 85
		f 4 12 35 -14 -33
		mu 0 4 52 55 54 53
		f 4 37 35 -15 -37
		mu 0 4 88 91 90 89
		f 4 40 39 -31 -39
		mu 0 4 92 95 94 93
		f 4 43 42 -29 -42
		mu 0 4 96 99 98 97
		f 4 -32 39 29 -42
		mu 0 4 56 59 58 57
		f 4 46 45 -45 3
		mu 0 4 0 5 4 3
		f 4 44 48 -48 -40
		mu 0 4 3 4 7 6
		f 4 47 -52 -51 49
		mu 0 4 6 7 9 8
		f 4 50 -53 -47 32
		mu 0 4 8 9 5 0
		f 4 55 54 -54 -50
		mu 0 4 60 63 62 61
		f 4 53 57 -57 -30
		mu 0 4 61 62 65 64
		f 4 56 -61 -60 58
		mu 0 4 64 65 67 66
		f 4 59 -62 -56 13
		mu 0 4 66 67 63 60
		f 4 64 63 -63 -59
		mu 0 4 16 17 19 18
		f 4 62 -67 -66 41
		mu 0 4 18 19 15 11
		f 4 65 -69 -68 4
		mu 0 4 11 15 14 10
		f 4 67 69 -65 -36
		mu 0 4 10 14 17 16
		f 4 -44 41 28 -43
		mu 0 4 100 103 102 101
		f 4 -29 -30 -31 27
		mu 0 4 68 71 70 69
		f 4 30 -40 -41 38
		mu 0 4 104 107 106 105
		f 4 40 31 43 -26
		mu 0 4 72 75 74 73
		f 4 -35 12 -38 -20
		mu 0 4 76 79 78 77
		f 4 37 35 -15 -37
		mu 0 4 108 111 110 109
		f 4 14 -14 16 15
		mu 0 4 80 83 82 81
		f 4 -17 -33 34 33
		mu 0 4 112 115 114 113;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall17" -p "House_Structure";
	setAttr ".rp" -type "double3" 420.7159423828125 261.42486572265625 -161.31203842163086 ;
	setAttr ".sp" -type "double3" 420.7159423828125 261.42486572265625 -161.31203842163086 ;
createNode mesh -n "House_wall73Shape17" -p "House_wall17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46007759869098663 0.49999995529651642 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.49563247 0.48961481
		 0.49563247 0.31801358 0.57850492 0.31801358 0.57850492 0.48961481 0.49563241 0.001992027
		 0.57850492 0.001992027 0.52485061 0.98102337 0.52485061 0.80942219 0.92376304 0.80942219
		 0.92376304 0.98102337 0.52485061 0.4934006 0.92376304 0.4934006 0.94658566 0.80942219
		 0.94658566 0.98102337 0.94658554 0.4934006 0.58816016 0.56378698 0.70423174 0.56378698
		 0.70423174 0.71537125 0.58816016 0.71537125 0.29576826 0.71537125 0.29576826 0.56378698
		 0.42845017 0.56378698 0.42845017 0.71537125 0.70423174 0.28462857 0.58816016 0.28462857
		 0.29576826 0.28462857 0.42845017 0.28462857 0.36173722 0.82640678 0.51903135 0.82640678
		 0.51903135 0.99800801 0.36173722 0.99800801 0.51903135 0.51038522 0.36173722 0.51038522
		 0.35591802 0.51038527 0.35591802 0.68198663 0.19535977 0.68198663 0.19535977 0.51038527
		 0.35591802 0.99800807 0.19535977 0.99800807;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 33 ".vt[0:32]"  506.79455566 522.84973145 109.21863556 506.79455566 338.85165405 109.21863556
		 506.79455566 522.84973145 20.35927963 506.79455566 338.85165405 20.35926056 506.79455566 3.0699733e-14 20.35923767
		 506.79455566 -4.1044743e-14 109.21863556 506.79455566 338.85165405 -431.8427124 506.79455566 522.84973145 -431.8427124
		 506.79455566 522.84973145 -4.11209106 506.79455566 338.85165405 -4.11209106 506.79455566 338.85165405 20.35926056
		 506.79455566 522.84973145 20.35927963 506.79455566 5.3218873e-14 -431.8427124 506.79455566 -9.1304307e-15 -4.11209106
		 506.79455566 1.557094e-13 20.35923767 338.13711548 338.85165405 -431.8427124 334.6373291 338.85165405 109.21863556
		 338.13711548 522.84973145 -431.8427124 338.13711548 522.84973145 -278.091308594 334.6373291 522.84973145 -66.53524017
		 334.6373291 522.84973145 109.21863556 338.13711548 338.85165405 -278.091308594 338.13711548 6.7279326e-14 -278.091308594
		 338.137146 4.4621611e-14 -431.8427124 334.6373291 9.6597552e-15 109.21863556 334.6373291 0 -66.53524017
		 334.6373291 338.85165405 -66.53524017 506.79455566 338.85165405 -431.8427124 506.79455566 522.84973145 -431.8427124
		 506.79455566 1.4954218e-14 -431.8427124 506.79455566 522.84973145 109.21863556 506.79455566 338.85165405 109.21863556
		 506.79455566 2.0443703e-15 109.21863556;
	setAttr -s 45 ".ed[0:44]"  1 0 0 5 1 0 4 3 0 0 2 0 3 2 0 3 1 1 4 5 0
		 6 7 0 12 6 0 8 7 0 13 9 1 11 8 0 9 8 1 6 9 1 9 10 1 10 11 0 14 10 0 12 13 0 13 14 0
		 19 26 1 21 18 1 21 15 1 16 26 1 15 17 0 20 16 0 23 15 0 16 24 0 15 27 1 31 16 1 17 18 0
		 20 19 0 22 21 0 23 22 0 24 25 0 26 25 0 26 21 0 18 19 0 27 28 0 28 17 0 29 27 0 29 23 0
		 31 30 0 30 20 0 32 31 0 32 24 0;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 -5 5 0 3
		mu 0 4 0 1 2 3
		f 4 -6 -3 6 1
		mu 0 4 2 1 4 5
		f 4 -8 13 12 9
		mu 0 4 6 7 8 9
		f 4 -13 14 15 11
		mu 0 4 9 8 12 13
		f 4 -14 -9 17 10
		mu 0 4 8 7 10 11
		f 4 -15 -11 18 16
		mu 0 4 12 8 11 14
		f 4 21 23 29 -21
		mu 0 4 15 16 17 18
		f 4 24 22 -20 -31
		mu 0 4 19 20 21 22
		f 4 25 -22 -32 -33
		mu 0 4 23 16 15 24
		f 4 -23 26 33 -35
		mu 0 4 21 20 25 26
		f 4 19 35 20 36
		mu 0 4 22 21 15 18
		f 4 27 37 38 -24
		mu 0 4 27 28 29 30
		f 4 39 -28 -26 -41
		mu 0 4 31 28 27 32
		f 4 -42 28 -25 -43
		mu 0 4 33 34 35 36
		f 4 -29 -44 44 -27
		mu 0 4 35 34 37 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall16" -p "House_Structure";
	setAttr ".rp" -type "double3" 239.50470542907715 261.42486572265619 638.97308349609375 ;
	setAttr ".sp" -type "double3" 239.50470542907715 261.42486572265619 638.97308349609375 ;
createNode mesh -n "House_wall16Shape" -p "House_wall16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.0019920596 0.0015970409
		 0.39824086 0.0015970409 0.39824086 0.14139862 0.0019920596 0.14139862 0.39824086
		 0.31808573 0.0019920596 0.31808573 0.39824086 0.3988575 0.0019920596 0.3988575 0.4056201
		 0.3988575 0.4056201 0.25905615 0.80186892 0.25905603 0.80186892 0.3988575 0.4056201
		 0.082368717 0.80186892 0.082368717 0.4056201 0.0015970409 0.80186892 0.0015970409
		 0.73144752 0.80010945 0.73144752 0.66030812 0.99800801 0.66030812 0.99800801 0.80010945
		 0.73144752 0.48362067 0.99800801 0.48362067 0.73144752 0.40284899 0.99800801 0.40284899
		 0.32906339 0.80010945 0.32906339 0.66030812 0.38252121 0.66030812 0.38252121 0.80010945
		 0.32906339 0.48362067 0.38252121 0.48362067 0.53617692 0.660308 0.53617692 0.80010945
		 0.32906339 0.40284899 0.38252121 0.40284899 0.72531217 0.660308 0.72531217 0.80010945
		 0.53617692 0.48362067 0.72531217 0.48362067 0.72531217 0.40284899 0.53617692 0.40284899
		 0.11643258 0.660308 0.32292807 0.66030812 0.32292807 0.80010945 0.11643258 0.80010945
		 0.11643258 0.48362067 0.32292807 0.48362067 0.32292807 0.40284899 0.11643258 0.40284899
		 0.093254946 0.80010945 0.043878946 0.80010945 0.043878946 0.660308 0.093254946 0.660308
		 0.11029723 0.660308 0.11029723 0.80010945 0.043878946 0.48362067 0.093254946 0.48362067
		 0.11029723 0.48362067 0.043878946 0.40284899 0.093254946 0.40284899 0.11029723 0.40284899;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  500.26379395 522.84973145 807.3338623 500.26379395 338.85168457 807.3338623
		 -21.25437927 338.85168457 807.3338623 -21.25437546 522.84973145 807.3338623 500.26379395 106.30661011 807.3338623
		 -21.25438118 106.30661011 807.3338623 500.26373291 -8.8677594e-14 807.3338623 -21.25438309 -5.3707459e-14 807.3338623
		 -21.25437546 522.84973145 831.084838867 -21.25437737 338.85168457 831.084838867 500.26379395 338.85165405 831.084838867
		 500.26379395 522.84973145 831.084838867 -21.25438118 106.30661011 831.084838867 500.26373291 106.30661011 831.084838867
		 -21.25438309 -5.2574563e-14 831.084838867 500.26373291 -1.2712551e-13 831.084838867
		 -21.25437927 338.85168457 807.3338623 -21.25438118 106.30661011 807.3338623 -21.2543602 338.85168457 456.50366211
		 -21.25436211 106.30661011 456.50366211 -21.2543602 522.84973145 456.50366211 -21.25437546 522.84973145 807.3338623
		 -21.25438309 -4.4734036e-14 807.3338623 -21.25436211 -6.0804131e-14 456.50366211
		 -21.2543602 338.85168457 456.50366211 500.26379395 338.85165405 448.14163208 500.26373291 106.30661011 448.14163208
		 -21.25436211 106.30661011 456.50366211 49.10356522 522.84973145 456.50366211 -21.2543602 522.84973145 456.50366211
		 500.26379395 522.84973145 448.14163208 251.33570862 522.84973145 446.86132813 251.33570862 338.85165405 446.86132813
		 251.33564758 106.30661011 446.86132813 49.1035614 106.30661011 456.50366211 49.10356522 338.85168457 456.50366211
		 251.33561707 1.5100436e-05 446.86132813 500.26373291 -5.7561215e-14 448.14163208
		 -21.25436211 -6.9665207e-14 456.50366211 49.1035614 -7.1234529e-14 456.50366211 500.26379395 522.84973145 807.3338623
		 500.26379395 338.85168457 807.3338623 500.26379395 106.30661011 807.3338623 500.26379395 522.84973145 535.55725098
		 500.26379395 338.85165405 535.55725098 500.26373291 106.30661011 535.55725098 500.26373291 -3.0894131e-14 535.55725098
		 500.26373291 -4.4276767e-14 807.3338623 500.26379395 338.85165405 448.14163208 500.26379395 522.84973145 448.14163208
		 500.26373291 106.30661011 448.14163208 500.26379395 522.84973145 513.1272583 500.26379395 522.84973145 535.55725098
		 500.26379395 338.85165405 513.1272583 500.26379395 338.85165405 535.55725098 500.26373291 106.30661011 513.1272583
		 500.26373291 106.30661011 535.55725098 500.26373291 -5.6580432e-14 448.14163208 500.26373291 -6.3374578e-14 513.1272583
		 500.26373291 -6.0133146e-14 535.55725098;
	setAttr -s 76 ".ed[0:75]"  3 0 0 1 2 1 4 5 1 7 6 0 8 11 0 9 10 1 12 13 1
		 14 15 0 0 1 0 3 2 0 1 4 0 2 5 0 4 6 0 5 7 0 9 8 0 10 11 0 12 9 0 13 10 0 14 12 0
		 15 13 0 21 16 0 16 17 0 16 18 1 17 22 0 17 19 1 20 18 0 18 19 0 19 23 0 21 20 0 22 23 0
		 28 35 1 32 31 1 32 25 1 24 35 1 33 26 1 27 34 1 29 24 0 25 30 0 26 25 0 24 27 0 37 26 0
		 27 38 0 29 28 0 30 31 0 33 32 0 35 34 0 32 35 0 28 31 0 36 33 0 37 36 0 38 39 0 34 39 0
		 40 41 0 41 42 0 40 43 0 44 41 1 42 47 0 45 42 1 44 43 0 45 44 0 46 45 0 47 46 0 48 49 0
		 50 48 0 57 50 0 51 49 0 52 51 0 59 56 0 54 52 0 48 53 1 53 54 1 56 54 0 50 55 1 55 56 1
		 58 57 0 59 58 0;
	setAttr -s 22 -ch 94 ".fc[0:21]" -type "polyFaces" 
		f 4 0 8 1 -10
		mu 0 4 0 1 2 3
		f 4 -2 10 2 -12
		mu 0 4 3 2 4 5
		f 4 -3 12 -4 -14
		mu 0 4 5 4 6 7
		f 4 -15 5 15 -5
		mu 0 4 8 9 10 11
		f 4 -6 -17 6 17
		mu 0 4 10 9 12 13
		f 4 -7 -19 7 19
		mu 0 4 13 12 14 15
		f 4 20 22 -26 -29
		mu 0 4 16 17 18 19
		f 4 -23 21 24 -27
		mu 0 4 18 17 20 21
		f 4 -25 23 29 -28
		mu 0 4 21 20 22 23
		f 4 36 33 -31 -43
		mu 0 4 24 25 26 27
		f 4 32 37 43 -32
		mu 0 4 30 34 35 31
		f 4 34 38 -33 -45
		mu 0 4 36 37 34 30
		f 4 -34 39 35 -46
		mu 0 4 26 25 28 29
		f 4 30 -47 31 -48
		mu 0 4 27 26 30 31
		f 4 40 -35 -49 -50
		mu 0 4 38 37 36 39
		f 4 -36 41 50 -52
		mu 0 4 29 28 32 33
		f 4 55 -53 54 -59
		mu 0 4 40 41 42 43
		f 4 57 -54 -56 -60
		mu 0 4 44 45 41 40
		f 4 -57 -58 -61 -62
		mu 0 4 46 45 44 47
		f 6 65 -63 69 70 68 66
		mu 0 6 48 49 50 51 52 53
		f 6 -70 -64 72 73 71 -71
		mu 0 6 51 50 54 55 56 52
		f 6 -73 -65 -75 -76 67 -74
		mu 0 6 55 54 57 58 59 56;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall15" -p "House_Structure";
	setAttr ".rp" -type "double3" 859.17471313476562 261.42486572265619 683.32098388671875 ;
	setAttr ".sp" -type "double3" 859.17471313476562 261.42486572265619 683.32098388671875 ;
createNode mesh -n "House_wall15Shape" -p "House_wall15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.3176077 0.68239224
		 0.3176077 0.55401945 0.45021605 0.55401945 0.45021605 0.68239224 0.54054356 0.55401945
		 0.68239236 0.55401945 0.68239236 0.68239224 0.54054356 0.68239224 0.54054356 0.39177614
		 0.68239236 0.39177614 0.3176077 0.39177614 0.45021605 0.39177614 0.68239236 0.31760758
		 0.54054356 0.31760764 0.3176077 0.31760758 0.45021605 0.31760758 0.59381568 0.55496085
		 0.40484905 0.55496085 0.40484893 0.68557048 0.59381557 0.68557048 0.59381557 0.38989049
		 0.40484893 0.38989049 0.40484893 0.31442952 0.59381557 0.31442952 0.3176077 0.68239224
		 0.68239236 0.68239224 0.68239236 0.55401945 0.3176077 0.55401945 0.68239236 0.39177614
		 0.31760764 0.39177614 0.68239236 0.31760758 0.31760764 0.31760758 0.59515107 0.38989049
		 0.41936713 0.38989049 0.41936713 0.31442952 0.59515107 0.31442952 0.50798303 0.76791418
		 0.50798303 0.74961758 0.52657831 0.74961758 0.52657831 0.76791418 0.41936713 0.68557048
		 0.41936713 0.55496085 0.59515107 0.55496085 0.59515107 0.68557048 0.41936713 0.31442952
		 0.41936713 0.31442952 0.59515107 0.31442952 0.59515107 0.31442952 0.74821258 0.94303215
		 0.74821258 0.8012889 0.76680797 0.8012889 0.76680797 0.94303215 0.74821258 0.6221475
		 0.76680785 0.6221475 0.74821258 0.54025394 0.76680785 0.54025394 0.41936713 0.38989049
		 0.59515107 0.38989049;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  1218.085693359 522.84973145 537.62200928
		 776.5737915 522.84973145 535.55712891 948.34277344 522.84973145 537.62200928 1218.085693359 338.85168457 537.62188721
		 1218.085693359 106.30661011 537.62194824 524.40258789 522.84973145 535.55725098 524.40258789 338.85168457 535.55725098
		 524.40258789 106.30661011 535.55725098 948.3427124 338.85171509 537.62200928 948.34259033 106.30661011 537.62200928
		 776.5737915 106.30661011 535.55712891 776.5737915 338.85168457 535.55712891 948.34259033 4.5301305e-05 537.62200928
		 1218.085693359 -5.3631094e-14 537.62200928 524.40258789 -5.3431821e-14 535.55725098
		 776.5737915 -4.6185894e-14 535.55712891 1213.25305176 522.84973145 537.62200928 1213.25305176 522.84973145 829.7802124
		 1213.25305176 338.85168457 829.7800293 1213.25305176 106.30661011 829.7802124 1213.25305176 338.85168457 537.62188721
		 1213.25305176 106.30661011 537.62194824 1213.25305176 -4.7024837e-14 537.62200928
		 1213.25305176 -4.4498252e-14 829.7802124 1218.085693359 338.85168457 807.33374023
		 1218.085693359 106.30661011 807.3338623 524.40258789 338.85168457 807.3338623 524.40252686 106.30661011 807.3338623
		 524.40252686 -5.4054919e-14 807.3338623 524.40258789 522.84973145 807.3338623 1218.085693359 522.84973145 807.3338623
		 1218.085693359 -8.5650223e-14 807.3338623 524.40258789 106.30661011 535.55725098
		 524.40252686 106.30661011 807.3338623 524.40252686 -1.6363999e-14 807.3338623 524.40258789 -2.6438057e-14 535.55725098
		 524.40258789 522.84973145 807.3338623 524.40258789 338.85168457 807.3338623 524.40252686 106.30661011 807.3338623
		 500.26373291 -9.8458717e-14 831.084838867 524.40252686 -7.0975533e-14 831.084838867
		 500.26373291 -6.2586201e-14 807.3338623 524.40252686 -3.8772012e-14 807.3338623 524.40258789 522.84973145 535.55725098
		 524.40258789 338.85168457 535.55725098 524.40258789 106.30661011 535.55725098 500.26379395 522.84973145 831.084838867
		 524.40258789 522.84973145 831.084838867 500.26379395 338.85165405 831.084838867 524.40258789 338.85165405 831.084838867
		 500.26373291 106.30661011 831.084838867 524.40252686 106.30661011 831.084838867 500.26373291 -4.5431906e-14 535.55725098
		 524.40258789 -4.1302753e-14 535.55725098;
	setAttr -s 69 ".ed[0:68]"  13 4 0 5 1 0 1 11 1 0 2 0 8 2 1 3 0 0 8 3 1
		 6 11 1 1 2 0 4 3 0 9 4 1 7 10 1 5 6 0 6 7 0 7 14 0 9 8 0 11 10 0 11 8 0 12 9 0 13 12 0
		 14 15 0 10 15 0 17 16 0 17 18 0 18 19 0 20 18 1 19 23 0 21 19 1 20 16 0 21 20 0 22 21 0
		 23 22 0 24 26 1 25 27 1 30 24 0 24 25 0 25 31 0 28 31 0 29 26 0 26 27 0 27 28 0 29 30 0
		 32 35 0 33 34 0 33 32 0 34 35 0 36 37 0 37 38 0 39 40 0 41 39 0 42 40 0 41 42 0 43 44 0
		 44 45 0 36 43 0 42 53 0 41 52 0 37 44 1 38 45 0 46 47 0 39 50 0 40 51 0 48 46 0 49 47 0
		 48 49 1 50 48 0 51 49 0 50 51 1 53 52 0;
	setAttr -s 21 -ch 84 ".fc[0:20]" -type "polyFaces" 
		f 4 12 7 -3 -2
		mu 0 4 0 1 2 3
		f 4 6 5 3 -5
		mu 0 4 4 5 6 7
		f 4 10 9 -7 -16
		mu 0 4 8 9 5 4
		f 4 -8 13 11 -17
		mu 0 4 2 1 10 11
		f 4 2 17 4 -9
		mu 0 4 3 2 4 7
		f 4 0 -11 -19 -20
		mu 0 4 12 9 8 13
		f 4 -12 14 20 -22
		mu 0 4 11 10 14 15
		f 4 25 -24 22 -29
		mu 0 4 16 17 18 19
		f 4 27 -25 -26 -30
		mu 0 4 20 21 17 16
		f 4 -27 -28 -31 -32
		mu 0 4 22 21 20 23
		f 4 41 34 32 -39
		mu 0 4 24 25 26 27
		f 4 -33 35 33 -40
		mu 0 4 27 26 28 29
		f 4 -34 36 -38 -41
		mu 0 4 29 28 30 31
		f 4 -45 43 45 -43
		mu 0 4 32 33 34 35
		f 4 -50 51 50 -49
		mu 0 4 36 37 38 39
		f 4 46 57 -53 -55
		mu 0 4 40 41 42 43
		f 4 -52 56 -69 -56
		mu 0 4 44 45 46 47
		f 4 -58 47 58 -54
		mu 0 4 42 41 56 57
		f 4 -63 64 63 -60
		mu 0 4 48 49 50 51
		f 4 -65 -66 67 66
		mu 0 4 50 49 52 53
		f 4 -68 -61 48 61
		mu 0 4 53 52 54 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall13" -p "House_Structure";
	setAttr ".rp" -type "double3" 248.93532943725586 261.42492675781244 -271.29302978515625 ;
	setAttr ".sp" -type "double3" 248.93532943725586 261.42492675781244 -271.29302978515625 ;
createNode mesh -n "House_wall13Shape" -p "House_wall13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 216 ".uvst[0].uvsp[0:215]" -type "float2" 0.91550034 0.83049244
		 0.91550034 0.81729585 0.99800789 0.81729585 0.99800789 0.83049244 0.90241301 0.81729585
		 0.90241301 0.83049244 0.90241301 0.72678924 0.91550034 0.72678924 0.86902463 0.70975077
		 0.85582805 0.70975077 0.85582805 0.61543596 0.86902463 0.61543596 0.86902463 0.72279775
		 0.85582805 0.72279775 0.96140933 0.70975077 0.96140933 0.72279775 0.61760968 0.67586374
		 0.61760968 0.85770166 0.60441315 0.85770166 0.60441315 0.67586374 0.62390262 0.67586374
		 0.63709921 0.67586374 0.63709921 0.85770166 0.62390262 0.85770166 0.81288016 0.61543596
		 0.82607675 0.61543596 0.82419866 0.72896326 0.81100214 0.72896326 0.73445129 0.55338275
		 0.72151303 0.55338275 0.72151303 0.68024194 0.73445129 0.68024194 0.43447113 0.68024194
		 0.43447113 0.55338275 0.42157274 0.55338275 0.42157274 0.68024194 0.63994539 0.55338275
		 0.63994539 0.68024194 0.52771139 0.55338275 0.52771139 0.68024194 0.73445129 0.31975812
		 0.72151303 0.31975812 0.63994539 0.31975812 0.43447113 0.31975812 0.52771139 0.31975812
		 0.42157274 0.31975812 0.88259643 0.30537724 0.86939991 0.30537724 0.86939991 0.22286966
		 0.88259643 0.22286966 0.88259643 0.31846461 0.86939991 0.31846461 0.86752176 0.10934237
		 0.88071835 0.10934237 0.97310305 0.30537724 0.97310305 0.31846461 0.86752176 0.015027604
		 0.88071835 0.015027604 0.88071835 0.001980583 0.86752176 0.001980583 0.97310305 0.001980583
		 0.97310305 0.015027604 0.33407724 0.38293347 0.33407724 0.48167229 0.32088071 0.48167229
		 0.32088071 0.38293347 0.42458385 0.38293347 0.42458385 0.48167229 0.33407724 0.6635102
		 0.32088071 0.6635102 0.42458385 0.6635102 0.20916414 0.60896665 0.2223607 0.60896665
		 0.2223607 0.70770544 0.20916414 0.70770544 0.2223607 0.4271287 0.20916414 0.4271287
		 0.3147454 0.60896665 0.3147454 0.70770544 0.3147454 0.4271287 0.20302887 0.60896665
		 0.13489525 0.60896665 0.13489525 0.47972777 0.20302887 0.47972777 0.13489525 0.70770544
		 0.20302887 0.70770544 0.13489525 0.4271287 0.20302887 0.4271287 0.14003055 0.89185709
		 0.12603471 0.89185709 0.12603471 0.76429588 0.14003055 0.76429588 0.12603471 0.99227369
		 0.14003055 0.99227369 0.10026262 0.76429588 0.10026262 0.89185709 0.12603471 0.71169692
		 0.14003055 0.71169692 0.10026262 0.99227369 0.25487986 0.89353478 0.25487986 0.99227357
		 0.10026262 0.71169692 0.0019920219 0.99227357 0.0019920219 0.89353478 0.65869683
		 0.38293341 0.65869683 0.67187232 0.52945805 0.67187232 0.52945805 0.38293341 0.71129596
		 0.67187232 0.71129596 0.38293341 0.4307192 0.67187232 0.4307192 0.38293341 0.9932512
		 0.29096907 0.98056096 0.29096904 0.98056555 0.0020301796 0.9932763 0.0019805911 0.61779213
		 0.53488672 0.38220781 0.53488672 0.38220781 0.42637229 0.61779213 0.42637229 0.38220781
		 0.61779213 0.61779213 0.61779213 0.38220781 0.38220787 0.61779213 0.38220787 0.61431456
		 0.38675499 0.73988295 0.38675499 0.73988295 0.55365849 0.61431456 0.55365849 0.73988295
		 0.68117309 0.61431456 0.68117309 0.48671663 0.68117309 0.48671663 0.55365849 0.54617774
		 0.55365849 0.54617774 0.68117309 0.48671663 0.31882679 0.54617774 0.31882679 0.73988295
		 0.31882679 0.61431456 0.31882679 0.35625535 0.55365849 0.48671663 0.55365849 0.48671663
		 0.68117309 0.35625535 0.68117309 0.35625535 0.31882679 0.48671663 0.31882679 0.26011705
		 0.68117309 0.26011705 0.55365849 0.85794628 0.76570737 0.84521902 0.76570737 0.84521902
		 0.72795123 0.85794628 0.72795123 0.29915377 0.81043577 0.2613976 0.81043577 0.2613976
		 0.71169692 0.29915377 0.71169692 0.29915377 0.93522632 0.2613976 0.93522632 0.40767759
		 0.71169692 0.40767759 0.81043577 0.2613976 0.99227369 0.29915377 0.99227369 0.54125983
		 0.71169692 0.54125983 0.81043577 0.54125983 0.93522632 0.40767753 0.93522632 0.54125977
		 0.99227369 0.40767753 0.99227369 0.79219961 0.61543596 0.80320698 0.61543596 0.80251992
		 0.74901825 0.79151261 0.74901825 0.54789352 0.73291105 0.55890089 0.73291105 0.55890089
		 0.85770166 0.54789352 0.85770166 0.55890089 0.67586374 0.54789352 0.67586374 0.57816142
		 0.85770166 0.56543416 0.85770166 0.56543416 0.73291105 0.57816142 0.73291105 0.56543416
		 0.67586374 0.57816142 0.67586374 0.83244056 0.61543596 0.84344792 0.61543596 0.84862226
		 0.72395974 0.835895 0.7239598 0.86408156 0.73779655 0.86408156 0.72678924 0.8770352
		 0.72678924 0.8770352 0.77266979 0.86408156 0.77266979 0.8770352 0.78470635 0.86408156
		 0.78470635 0.58492368 0.67586374 0.59787726 0.67586374 0.59787726 0.80065435 0.58492368
		 0.80065435 0.59787726 0.85770166 0.58492362 0.85770166 0.88317049 0.77447379 0.88317049
		 0.72678924 0.89627767 0.72678924 0.89627767 0.78752083 0.88317049 0.78752083 0.64339215
		 0.67586374 0.65649939 0.67586374 0.65649939 0.85770166 0.64339215 0.85770166 0.7810787
		 0.77325791 0.76812518 0.77325791 0.77162981 0.61543596 0.78473693 0.61543596 0.26554883
		 0.55338275 0.26554883 0.68024194 0.42157274 0.68024194 0.42157274 0.55338275;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 148 ".vt[0:147]"  313.54559326 1.0729973e-14 -431.8427124 310.045776367 9.8840952e-15 109.21864319
		 338.137146 1.6475794e-14 -431.8427124 334.6373291 4.7369517e-15 109.21863556 338.13711548 4.3592737e-14 -278.091308594
		 313.54559326 3.9662734e-14 -278.091308594 334.6373291 7.8886091e-31 -66.53524017
		 310.045776367 1.1516335e-14 -66.53524017 313.54559326 338.85165405 -278.091308594
		 338.13711548 338.85165405 -278.091308594 334.6373291 338.85165405 -66.53524017 310.045776367 338.85165405 -66.53524017
		 338.13711548 522.84973145 -278.091308594 313.54559326 522.84973145 -278.091308594
		 334.6373291 522.84973145 -66.53524017 310.045776367 522.84973145 -66.53524017 313.54559326 338.85165405 -431.8427124
		 310.045776367 338.85165405 109.21863556 313.54559326 522.84973145 -431.8427124 313.54559326 522.84973145 -456.23077393
		 313.54559326 338.85165405 -456.23077393 310.045776367 338.85165405 133.53152466 310.045776367 522.84973145 133.53152466
		 310.045776367 522.84973145 109.21863556 338.13711548 522.84973145 -431.8427124 334.6373291 522.84973145 109.21863556
		 313.54559326 2.4657475e-14 -456.23077393 310.045776367 1.2389448e-14 133.53152466
		 338.13711548 4.7192088e-14 -456.23077393 338.13711548 522.84973145 -456.23077393
		 338.13711548 338.85165405 -456.23077393 334.6373291 4.6440254e-15 133.53152466 334.6373291 522.84973145 133.53152466
		 334.6373291 338.85165405 133.53152466 506.79455566 2.8638428e-14 -456.23077393 506.79455566 5.849358e-15 -431.8427124
		 506.79455566 522.84973145 -431.8427124 506.79455566 522.84973145 -456.23077393 506.79455566 338.85165405 -456.23077393
		 506.79455566 1.7554084e-15 109.21863556 506.79455566 7.1054269e-15 133.53152466 506.79455566 338.85165405 133.53152466
		 506.79455566 522.84973145 133.53152466 506.79455566 522.84973145 109.21863556 505.17593384 522.84973145 -1054.44848633
		 505.17593384 98.017379761 -1054.44848633 505.17593384 338.85165405 -1054.44848633
		 506.79455566 522.84973145 -456.23077393 508.39276123 522.84985352 -696.3314209 508.39276123 522.84985352 -670.25042725
		 508.39276123 522.84985352 -744.35723877 508.39276123 335.7253418 -696.3314209 508.39273071 98.017379761 -696.3314209
		 505.16500854 338.85165405 -927.48272705 505.16500854 98.017379761 -927.48272705 505.16503906 522.84973145 -927.48272705
		 508.39273071 98.017379761 -670.25042725 508.39276123 335.7253418 -670.25042725 508.39276123 335.7253418 -744.35723877
		 508.39273071 98.017379761 -744.35723877 506.79455566 338.85165405 -456.23077393 505.17593384 -8.8845936e-14 -1054.44848633
		 505.16503906 -8.8563569e-14 -927.48272705 508.39260864 0.00010570304 -744.35723877
		 508.39260864 0.00010570304 -696.3314209 508.39260864 0.00010570304 -670.25042725
		 -33.34884644 338.85165405 -1078.14331055 -33.34884644 98.017379761 -1078.14331055
		 -33.34884644 -8.6396568e-14 -1078.14331055 -33.34888458 -9.1491579e-14 -1054.49523926
		 -33.34888458 98.017379761 -1054.49523926 -33.34888458 338.85165405 -1054.49523926
		 -33.34888458 522.84973145 -1054.49523926 -33.34884644 522.84973145 -1078.14331055
		 505.17593384 522.84973145 -1054.44848633 505.083526611 522.84973145 -1078.13476563
		 505.083526611 338.85165405 -1078.13476563 505.083526611 98.017379761 -1078.13476563
		 505.083526611 -7.2122917e-14 -1078.13476563 505.17593384 -9.9939595e-14 -1054.44848633
		 505.17593384 98.017379761 -1054.44848633 505.17593384 338.85165405 -1054.44848633
		 -17.75270653 338.85165405 -1054.49206543 -23.20134544 338.85165405 -269.67419434
		 -17.75270653 98.017379761 -1054.49206543 -17.79498672 338.85165405 -665.22900391
		 -17.79498672 98.017379761 -665.22900391 -17.75270653 522.84973145 -1054.49206543
		 -17.79498672 522.84973145 -665.22900391 -23.20134544 522.84973145 -454.0042419434
		 -23.20134544 522.84973145 -269.67419434 -23.20134544 9.5143592e-14 -269.67419434
		 -23.20134544 7.627445e-14 -454.0042419434 -23.20134544 338.85165405 -454.0042419434
		 -17.79498672 -9.6810479e-14 -665.22900391 -17.75270653 -9.9014303e-14 -1054.49206543
		 -23.20134544 338.85165405 -269.67419434 -23.20134544 522.84973145 -269.67419434 -23.20134544 522.84973145 134.7568512
		 -23.20134544 2.7831798e-14 134.7568512 -23.20134544 338.85165405 134.7568512 -23.20134544 6.6721883e-14 -269.67419434
		 -21.2543869 338.85168457 432.78662109 -21.25438309 522.84973145 432.78662109 49.1035614 -6.4129102e-14 456.50366211
		 49.10353851 -5.1346693e-14 432.78662109 49.10354233 522.84973145 432.78662109 251.33561707 1.5100436e-05 446.86132813
		 251.33570862 522.84973145 426.34945679 251.33566284 1.5100436e-05 426.34945679 251.33570862 338.85168457 426.34945679
		 251.33570862 338.85165405 446.86132813 49.10356522 338.85168457 456.50366211 49.10354233 338.85168457 432.78662109
		 251.33566284 106.30661011 426.34945679 251.33564758 106.30661011 446.86132813 49.1035614 106.30661011 456.50366211
		 49.10353851 106.30661011 432.78662109 -21.25436211 -6.255978e-14 456.50366211 -21.25439072 -5.2207174e-14 432.78662109
		 -21.2543869 338.85168457 432.78662109 -21.25438309 522.84973145 432.78662109 500.26379395 522.84973145 427.62969971
		 500.26379395 338.85168457 427.62979126 500.26373291 -5.3284417e-14 427.62969971 500.26373291 -5.690736e-14 448.14163208
		 500.26379395 106.30661011 427.62969971 -21.25438881 106.30661011 432.78662109 531.21954346 -8.3126306e-15 20.35923767
		 506.79455566 -8.944629e-15 109.21863556 506.79455566 7.2499075e-15 133.53152466 506.79455566 338.85165405 133.53152466
		 506.79455566 522.84973145 133.53152466 524.40258789 -4.8735101e-14 535.55725098 524.40252686 -5.1721854e-14 513.1272583
		 500.26379395 522.84973145 427.62969971 500.26379395 338.85168457 427.62979126 500.26373291 -5.910806e-14 427.62969971
		 500.26373291 -5.6580432e-14 448.14163208 500.26379395 106.30661011 427.62969971 524.40252686 -6.5956904e-14 427.62969971
		 500.26373291 -5.9814045e-14 513.1272583 500.26373291 -5.2700794e-14 535.55725098
		 524.40258789 338.85168457 427.62979126 531.21954346 -1.8947809e-14 133.53152466 506.79455566 3.6683455e-14 20.35923767
		 531.21954346 338.85165405 133.53152466 524.40252686 106.30661011 427.62969971;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  2 0 0 3 1 0 2 4 0 4 9 0 0 5 0 5 8 0 4 5 0 3 6 0 1 7 0
		 6 7 0 7 11 0 10 6 0 8 9 0 10 11 0 8 11 0 10 9 0 0 16 1 1 17 1 24 12 0 18 13 0 12 13 1
		 25 14 0 23 15 0 14 15 1 16 18 1 8 13 1 11 15 1 17 23 1 20 16 1 16 8 1 11 17 1 17 21 1
		 13 15 0 12 14 0 18 19 0 19 20 0 21 22 0 22 23 0 24 18 0 25 23 0 26 0 0 20 26 0 1 27 0
		 27 21 0 34 28 0 35 2 0 36 24 0 37 29 0 28 26 0 29 19 0 28 2 1 24 29 1 29 30 1 30 28 1
		 38 30 1 30 20 1 39 3 0 43 25 0 40 31 0 42 32 0 31 27 0 32 22 0 3 31 1 31 33 1 32 25 1
		 33 32 1 21 33 1 33 41 1 34 35 0 36 37 0 37 38 0 38 34 0 39 40 0 41 42 0 42 43 0 40 41 0
		 45 46 0 46 44 0 61 45 0 47 60 0 44 55 0 53 46 1 48 51 1 49 57 1 48 49 0 48 50 0 50 58 1
		 51 52 1 57 51 1 51 58 1 50 55 0 49 47 0 45 54 1 52 64 1 59 52 1 52 56 1 54 53 0 53 55 0
		 57 56 0 58 59 0 53 55 0 58 53 0 57 60 0 61 62 0 62 54 0 59 63 0 64 63 0 64 65 0 56 65 0
		 66 67 0 68 69 0 70 71 0 71 72 0 73 66 0 69 70 0 67 68 0 72 74 0 73 75 0 68 78 0 69 79 0
		 81 71 1 66 76 1 70 80 1 77 67 1 76 77 0 78 79 0 80 81 0 81 74 0 75 76 0 79 80 0 77 78 0
		 95 84 0 82 87 0 85 88 1 82 85 1 89 93 1 90 83 0 83 91 0 83 93 1 84 82 0 86 84 1 86 85 0
		 87 88 0 90 89 0 92 91 0 93 92 0 88 89 0 85 93 0 94 86 0 95 94 0 100 98 1 100 96 1
		 103 102 0 97 96 0 96 101 0 98 97 0 99 100 0 101 99 0 102 100 0 103 98 0 118 104 0
		 119 105 0 104 105 0 121 106 0 106 113 1 125 107 0;
	setAttr ".ed[166:223]" 107 115 0 122 108 0 124 109 0 108 110 1 107 109 0 110 114 0
		 112 116 0 113 117 0 123 110 1 110 111 0 112 113 0 113 120 1 106 108 0 113 110 0 111 112 0
		 114 109 0 115 111 0 116 104 0 117 105 0 126 114 1 114 115 1 116 117 1 117 127 1 118 119 0
		 121 120 0 122 123 0 125 124 0 123 126 0 120 127 0 126 124 0 127 119 0 129 130 0 131 132 0
		 130 131 0 133 134 0 135 136 0 138 137 0 136 139 0 139 137 0 137 140 0 134 140 0 141 138 0
		 134 141 1 142 141 0 133 142 0 143 147 0 143 136 0 130 144 0 144 146 0 128 144 0 145 129 0
		 128 145 0 131 146 0 143 146 0 136 131 0 135 132 0 147 140 0 147 139 1;
	setAttr -s 82 -ch 330 ".fc[0:81]" -type "polyFaces" 
		f 4 -1 2 6 -5
		mu 0 4 0 1 2 3
		f 4 1 8 -10 -8
		mu 0 4 8 9 10 11
		f 4 3 -13 -6 -7
		mu 0 4 16 17 18 19
		f 4 -14 11 9 10
		mu 0 4 20 21 22 23
		f 4 12 -16 13 -15
		mu 0 4 24 25 26 27
		f 4 28 24 34 35
		mu 0 4 28 29 30 31
		f 4 -28 31 36 37
		mu 0 4 32 33 34 35
		f 4 38 19 -21 -19
		mu 0 4 46 47 48 49
		f 4 -25 29 25 -20
		mu 0 4 30 29 36 37
		f 4 30 27 22 -27
		mu 0 4 38 33 32 39
		f 4 -40 21 23 -23
		mu 0 4 56 57 53 52
		f 4 40 16 -29 41
		mu 0 4 40 41 29 28
		f 4 -30 -17 4 5
		mu 0 4 36 29 41 42
		f 4 17 -31 -11 -9
		mu 0 4 43 33 38 44
		f 4 -32 -18 42 43
		mu 0 4 34 33 43 45
		f 4 20 32 -24 -34
		mu 0 4 49 48 52 53
		f 4 -26 14 26 -33
		mu 0 4 37 36 38 39
		f 4 50 0 -41 -49
		mu 0 4 4 1 0 5
		f 4 51 49 -35 -39
		mu 0 4 46 50 51 47
		f 4 52 55 -36 -50
		mu 0 4 62 63 64 65
		f 4 68 45 -51 -45
		mu 0 4 6 7 1 4
		f 4 69 47 -52 -47
		mu 0 4 54 55 50 46
		f 4 70 54 -53 -48
		mu 0 4 66 67 63 62
		f 4 -55 71 44 -54
		mu 0 4 63 67 70 68
		f 4 -56 53 48 -42
		mu 0 4 64 63 68 69
		f 4 62 60 -43 -2
		mu 0 4 8 12 13 9
		f 4 66 65 61 -37
		mu 0 4 71 72 73 74
		f 4 64 39 -38 -62
		mu 0 4 58 57 56 59
		f 4 72 58 -63 -57
		mu 0 4 14 15 12 8
		f 4 67 73 59 -66
		mu 0 4 72 77 78 73
		f 4 74 57 -65 -60
		mu 0 4 60 61 57 58
		f 4 63 -67 -44 -61
		mu 0 4 75 72 71 76
		f 4 75 -68 -64 -59
		mu 0 4 79 77 72 75
		f 4 81 -77 92 96
		mu 0 4 80 81 82 83
		f 4 -78 -82 97 -81
		mu 0 4 84 81 80 85
		f 4 88 87 95 -99
		mu 0 4 88 89 90 91
		f 4 94 -88 89 99
		mu 0 4 94 90 89 95
		f 4 82 -89 -84 -85
		mu 0 4 92 89 88 93
		f 4 -90 -83 85 86
		mu 0 4 95 89 92 98
		f 4 -87 90 -101 -102
		mu 0 4 95 98 102 103
		f 4 83 102 -80 -92
		mu 0 4 93 88 99 100
		f 4 -93 -79 103 104
		mu 0 4 83 82 86 87
		f 4 -94 -95 105 -107
		mu 0 4 96 90 94 101
		f 4 -96 93 107 -109
		mu 0 4 91 90 96 97
		f 4 123 -110 121 124
		mu 0 4 104 105 106 107
		f 4 -111 118 125 -120
		mu 0 4 112 113 114 115
		f 4 120 -112 122 126
		mu 0 4 116 117 118 119
		f 4 -113 -121 127 -117
		mu 0 4 120 117 116 121
		f 4 -122 -114 117 128
		mu 0 4 107 106 110 111
		f 4 -123 -115 119 129
		mu 0 4 119 118 122 123
		f 4 -116 -124 130 -119
		mu 0 4 108 105 104 109
		f 4 140 139 134 -142
		mu 0 4 124 125 126 127
		f 4 -135 132 142 -134
		mu 0 4 127 126 128 129
		f 4 136 138 -136 -144
		mu 0 4 130 131 132 133
		f 4 -139 137 -145 -146
		mu 0 4 132 131 134 135
		f 4 133 146 135 -148
		mu 0 4 127 129 133 132
		f 4 131 -141 -149 -150
		mu 0 4 136 125 124 137
		f 4 151 -154 -156 -151
		mu 0 4 138 139 140 141
		f 4 -158 -155 -152 -157
		mu 0 4 142 143 139 138
		f 4 152 158 150 -160
		mu 0 4 144 145 138 141
		f 4 189 161 -163 -161
		mu 0 4 146 147 148 149
		f 4 177 -191 163 164
		mu 0 4 150 151 152 153
		f 4 191 174 -170 -168
		mu 0 4 160 161 157 156
		f 4 -193 165 170 -169
		mu 0 4 166 167 168 169
		f 4 -175 193 185 -172
		mu 0 4 157 161 162 163
		f 4 186 182 -176 171
		mu 0 4 170 171 172 173
		f 4 -177 172 187 -174
		mu 0 4 176 177 178 179
		f 4 188 -195 -178 173
		mu 0 4 154 155 151 150
		f 4 -165 178 169 -180
		mu 0 4 150 153 156 157
		f 4 175 180 176 179
		mu 0 4 182 183 184 185
		f 4 -186 195 168 -182
		mu 0 4 163 162 164 165
		f 4 166 -187 181 -171
		mu 0 4 174 171 170 175
		f 4 -188 183 162 -185
		mu 0 4 179 178 180 181
		f 4 -197 -189 184 -162
		mu 0 4 158 155 154 159
		f 5 202 205 -207 208 207
		mu 0 5 186 187 188 189 190
		f 4 210 209 -209 -201
		mu 0 4 191 192 190 189
		f 4 -213 211 223 -204
		mu 0 4 193 194 195 196
		f 5 -217 -218 215 -214 -198
		mu 0 5 199 200 201 202 203
		f 4 213 214 -219 -200
		mu 0 4 204 205 206 207
		f 4 212 220 218 -220
		mu 0 4 208 209 210 211
		f 4 -202 221 -199 -221
		mu 0 4 212 213 214 215
		f 4 -224 222 -206 -205
		mu 0 4 196 195 197 198;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall12" -p "House_Structure";
	setAttr ".rp" -type "double3" -625.02592372894287 261.42486572265619 280.705322265625 ;
	setAttr ".sp" -type "double3" -625.02592372894287 261.42486572265619 280.705322265625 ;
createNode mesh -n "polySurfaceShape148" -p "House_wall12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999992549419403 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 136 ".uvst[0].uvsp[0:135]" -type "float2" 0.29208839 0.67805827
		 0.29208839 0.55273592 0.31768489 0.6240685 0.31768489 0.53674567 0.70791161 0.55273592
		 0.47657585 0.53674567 0.47657585 0.6240685 0.68802804 0.54999506 0.68802804 0.66880417
		 0.31768489 0.42244905 0.47657585 0.42244905 0.58323979 0.53674567 0.68231511 0.53674567
		 0.68231511 0.6240685 0.76048505 0.55949879 0.74936795 0.55949879 0.74936795 0.70089281
		 0.76048505 0.70089281 0.70791161 0.67805827 0.70791161 0.55273592 0.078614935 0.99797517
		 0.15206055 0.99797517 0.25341386 0.55949879 0.25341386 0.70089281 0.29208839 0.55273592
		 0.078614935 0.68549663 0.76048505 0.37442893 0.74936795 0.37442893 0.25341386 0.38079882
		 0.74936795 0.29910713 0.76048505 0.29910713 0.29208839 0.67805827 0.70791161 0.67805827
		 0.74936795 0.29910713 0.76048505 0.29910713 0.24213499 0.70089281 0.24213499 0.70089281
		 0.15206055 0.68549663 0.15206055 0.0019812041 0.24213499 0.55949879 0.078614935 0.0019812041
		 0.24213499 0.38079882 0.25341386 0.29910713 0.24213499 0.29910713 0.24213499 0.55949879
		 0.24213499 0.38079882 0.24213499 0.29910713 0.2499119 0.29910713 0.2499119 0.29910713
		 0.23014884 0.0020000131 0.26370299 0.65039396 0.43232632 0.65039396 0.15835527 0.0020000131
		 0.43232632 0.54454255 0.1624274 0.87801516 0.26370299 0.54454255 0.43232632 0.41076267
		 0.26370299 0.41076267 0.73629701 0.65039396 0.73629701 0.54454255 0.66292417 0.54454255
		 0.66292417 0.65039396 0.43232632 0.34960598 0.23863292 0.29910713 0.23863292 0.29910713
		 0.34298593 0.40253353 0.34298593 0.54865003 0.26370299 0.34960598 0.26370299 0.65039396
		 0.34298593 0.33573723 0.26370299 0.54454255 0.43232632 0.54454255 0.43232632 0.65039396
		 0.26370299 0.41076267 0.43232632 0.41076267 0.47546887 0.5554195 0.47546887 0.68711919
		 0.73629701 0.54454255 0.73629701 0.65039396 0.66292417 0.65039396 0.66292417 0.54454255
		 0.26370299 0.34960598 0.45729506 0.54865003 0.45005679 0.54865003 0.45005679 0.66426277
		 0.45729506 0.66426277 0.34298593 0.33573723 0.76136708 0.29910713 0.76136708 0.29910713
		 0.74982405 0.29910713 0.74982405 0.29910713 0.45005679 0.33573723 0.45005679 0.33573723
		 0.34298593 0.66426277 0.45729506 0.40253353 0.45005679 0.40253353 0.66426277 0.33573723
		 0.66426277 0.33573723 0.54825163 0.33573723 0.54825163 0.33573723 0.23587301 0.87801516
		 0.00047022253 0.99800652 0.54825163 0.54865003 0.54825163 0.66426277 0.0722638 0.99800652
		 0.23863292 0.55949891 0.23863292 0.70089281 0.0722638 0.0020000131 0.23863292 0.38079882
		 0.23863292 0.38079882 0.45729506 0.33573723 0.45729506 0.33573723 0.00047022253 0.0020000131
		 0.43232632 0.34960598 0.66292417 0.41076267 0.66292417 0.41076267 0.66292417 0.34960598
		 0.66292417 0.34960598 0.73629701 0.54454255 0.73629701 0.41076267 0.73629701 0.41076267
		 0.73629701 0.34960598 0.73629701 0.34960598 0.58323979 0.6240685 0.68231511 0.37593138
		 0.58323979 0.37593138 0.31768489 0.37593138 0.47657585 0.37593138 0.29208839 0.39434797
		 0.70791161 0.38870209 0.70791161 0.38870209 0.29208839 0.39434797 0.29208839 0.32194179
		 0.70791161 0.32194179 0.29208839 0.32194179 0.70791161 0.32194179;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 94 ".vt[0:93]"  -695.53973389 522.84973145 -244.40667725
		 -359.63388062 522.84973145 -245.36708069 -1195.91833496 522.84973145 -244.40667725
		 -1195.91833496 338.85165405 -244.40664673 -1195.91833496 98.017379761 -244.40667725
		 -47.62638092 338.85165405 -245.36708069 -47.62638092 522.84973145 -245.36708069 -695.53967285 98.017379761 -244.40667725
		 -695.53967285 338.85165405 -244.40664673 -359.63388062 338.85165405 -245.36708069
		 -359.63388062 1.12584e-13 -245.36708069 -47.62638092 1.059915e-13 -245.36708069 -1195.91833496 -9.0579325e-14 -244.40667725
		 -695.53973389 -9.8778617e-14 -244.40667725 -1195.91833496 -7.5508894e-14 -267.81674194
		 -1228.79748535 -8.8760664e-14 -267.81674194 -1228.79748535 522.84973145 -244.40667725
		 -1228.79748535 522.84973145 -267.81674194 -1228.79748535 338.85165405 -267.81674194
		 -1228.79748535 338.85165405 -244.40667725 -1228.79748535 98.017379761 -267.81674194
		 -1228.79748535 98.017379761 -244.4066925 -1228.79748535 -9.4942304e-14 -244.40667725
		 -1228.79748535 522.84973145 799.95953369 -1195.91833496 522.84973145 799.95953369
		 -1195.91833496 338.85165405 799.95953369 -1228.79748535 338.85165405 799.95953369
		 -1195.91833496 106.30661011 799.95953369 -1228.79748535 106.30661011 799.95953369
		 -1228.79748535 -1.075493e-13 799.95953369 -1195.91833496 -3.8337135e-14 799.95953369
		 -1195.91833496 -9.516407e-14 -244.40667725 -1228.79748535 522.84973145 823.71026611
		 -1195.91833496 522.84973145 823.71026611 -1228.79748535 338.85165405 823.71026611
		 -1228.79748535 106.30661011 823.71026611 -1228.79748535 -9.5964781e-14 799.95953369
		 -1228.79748535 -9.8591111e-14 823.71026611 -1195.91833496 -7.0031742e-14 799.95953369
		 -785.70916748 522.84973145 799.95953369 -785.70910645 338.85165405 799.95953369 -224.73512268 522.84973145 799.95953369
		 -224.73504639 338.85165405 799.95953369 -785.70910645 106.30661011 799.95953369 -224.73509216 106.30662537 799.95953369
		 -785.70916748 -9.4637609e-14 799.95953369 -785.70916748 522.84973145 823.71026611
		 -1195.91833496 338.85165405 823.71026611 -785.70916748 338.85165405 823.71026611
		 -224.73512268 338.85165405 823.71026611 -224.73512268 522.84973145 823.71026611 -1195.91833496 106.30661011 823.71026611
		 -785.70916748 106.30661011 823.71026611 -224.73512268 106.30662537 823.71026611 -1195.91833496 -1.139949e-13 823.71026611
		 -785.70916748 -8.3572811e-14 823.71026611 -224.73512268 -8.5795601e-14 823.71026611
		 -224.73512268 -7.9039314e-14 799.95953369 -46.24147034 522.84973145 807.3338623 -46.24147415 338.85168457 807.3338623
		 -46.24147034 522.84973145 831.084838867 -46.24147034 338.85168457 831.084838867 -46.24147034 522.84973145 807.3338623
		 -46.24147415 338.85168457 807.3338623 -46.24146652 106.30661011 831.084838867 -46.24147415 106.30661011 807.3338623
		 -46.24147034 -5.0127999e-14 807.3338623 -46.24147034 -3.691953e-14 831.084838867
		 -21.25438309 -5.3523216e-14 831.084838867 -21.25438309 -5.2931194e-14 807.3338623
		 -47.62638092 5.3885028e-14 -245.36708069 -46.24147034 338.85168457 456.50366211 -47.62638092 5.6253508e-14 134.7568512
		 -23.20134544 5.6253508e-14 134.7568512 -47.62638092 522.84973145 134.7568512 -23.20134544 4.9148077e-14 -245.36708069
		 -47.62638092 338.85165405 134.7568512 -23.20134544 338.85165405 134.7568512 -46.24146652 106.30661011 456.50366211
		 -46.24147034 522.84973145 456.50366211 -46.24150085 522.84973145 432.78662109 -46.24147034 -5.6253508e-14 456.50366211
		 -21.25436211 -5.9263792e-14 456.50366211 -46.24150085 338.85168457 432.78662109 -46.24150085 106.30661011 432.78662109
		 -21.2543869 338.85168457 432.78662109 -46.24150085 -5.3885868e-14 432.78662109 -21.25439072 -5.7170021e-14 432.78662109
		 -21.25438881 106.30661011 432.78662109 -21.25437546 522.84973145 831.084838867 -21.25437737 338.85168457 831.084838867
		 -21.25438118 106.30661011 831.084838867 -47.62638092 7.4799487e-14 -269.67419434
		 -23.20134544 6.6721883e-14 -269.67419434;
	setAttr -s 159 ".ed[0:158]"  2 0 0 0 8 1 3 8 1 6 1 0 9 1 1 9 5 1 0 1 0
		 4 7 1 2 3 0 3 4 0 5 6 0 11 5 0 4 12 0 8 7 0 10 9 0 11 10 0 8 9 0 12 13 0 7 13 0 15 14 0
		 23 16 0 24 2 0 16 17 0 22 21 1 17 18 0 18 20 0 19 16 1 25 3 1 18 19 1 19 26 1 20 15 0
		 21 19 1 20 21 1 21 28 1 27 4 0 22 15 0 29 22 0 30 31 0 4 31 0 31 14 0 31 22 0 24 25 0
		 23 26 0 25 27 0 26 28 0 28 29 0 27 30 0 32 33 0 37 35 0 32 23 0 34 32 0 26 34 1 35 34 0
		 28 35 1 36 37 0 28 36 0 27 38 0 24 39 0 39 40 1 40 43 1 40 25 1 41 42 1 42 44 1 59 42 0
		 58 41 0 43 45 1 43 27 1 38 45 0 33 46 0 54 51 1 55 52 1 47 33 1 48 46 1 34 47 1 47 48 1
		 56 53 1 49 50 1 49 42 0 60 50 0 61 49 0 51 47 1 52 48 1 35 51 1 51 52 1 53 49 1 37 54 0
		 54 55 0 44 57 1 52 53 0 48 49 0 40 42 0 43 44 0 39 41 0 46 50 0 45 57 0 55 56 0 58 59 0
		 61 60 0 59 61 0 62 63 0 67 64 1 64 61 1 63 65 0 66 67 0 65 66 0 67 68 0 69 68 0 66 69 0
		 92 70 0 70 5 0 62 79 0 69 82 0 66 81 0 80 83 1 81 78 1 71 79 1 83 71 1 71 63 1 72 73 0
		 72 76 0 73 77 0 74 6 0 93 75 0 75 73 0 70 72 0 75 70 1 76 74 1 76 77 0 5 76 1 83 76 0
		 85 77 0 80 74 0 78 71 1 84 78 1 78 65 1 79 80 0 82 81 0 83 84 0 85 83 0 84 86 0 81 86 0
		 86 87 0 82 87 0 85 88 0 88 87 0 88 84 1 60 89 0 68 91 0 90 89 0 61 90 1 91 90 0 64 91 1
		 93 92 0 42 63 0 44 65 0 53 64 0 49 61 0 57 66 0 56 67 0;
	setAttr -s 62 -ch 248 ".fc[0:61]" -type "polyFaces" 
		f 4 8 2 -2 -1
		mu 0 4 2 3 5 6
		f 4 -3 9 7 -14
		mu 0 4 5 3 9 10
		f 4 5 10 3 -5
		mu 0 4 11 12 13 123
		f 4 11 -6 -15 -16
		mu 0 4 124 12 11 125
		f 4 1 16 4 -7
		mu 0 4 6 5 11 123
		f 4 -8 12 17 -19
		mu 0 4 10 9 126 127
		f 4 28 26 22 24
		mu 0 4 14 15 16 17
		f 4 41 27 -9 -22
		mu 0 4 0 1 4 18
		f 4 29 -43 20 -27
		mu 0 4 19 24 31 32
		f 4 -28 43 34 -10
		mu 0 4 4 1 128 129
		f 4 32 31 -29 25
		mu 0 4 26 27 15 14
		f 4 33 -45 -30 -32
		mu 0 4 130 131 24 19
		f 4 23 -33 30 -36
		mu 0 4 29 27 26 30
		f 4 -46 -34 -24 -37
		mu 0 4 132 131 130 133
		f 4 -35 46 37 -39
		mu 0 4 129 128 134 135
		f 4 40 35 19 -40
		mu 0 4 33 29 30 34
		f 4 51 50 49 42
		mu 0 4 22 39 35 23
		f 4 53 52 -52 44
		mu 0 4 28 41 39 22
		f 4 54 48 -54 55
		mu 0 4 42 43 41 28
		f 4 57 58 60 -42
		mu 0 4 50 51 53 55
		f 4 -61 59 66 -44
		mu 0 4 55 53 56 57
		f 4 96 63 -62 -65
		mu 0 4 58 59 60 61
		f 4 -67 65 -68 -57
		mu 0 4 57 56 62 67
		f 4 73 71 -48 -51
		mu 0 4 39 44 36 35
		f 4 -72 74 72 -69
		mu 0 4 68 70 71 72
		f 4 82 80 -74 -53
		mu 0 4 41 45 44 39
		f 4 -75 -81 83 81
		mu 0 4 71 70 73 74
		f 4 97 78 -77 -80
		mu 0 4 77 78 79 80
		f 4 98 79 77 -64
		mu 0 4 59 77 80 60
		f 4 85 69 -83 -49
		mu 0 4 43 46 45 41
		f 4 -84 -70 86 70
		mu 0 4 74 73 81 113
		f 4 -82 88 84 -90
		mu 0 4 71 74 114 80
		f 4 -60 90 62 -92
		mu 0 4 56 53 60 115
		f 4 -59 92 61 -91
		mu 0 4 53 51 61 60
		f 4 -73 89 76 -94
		mu 0 4 72 71 80 79
		f 4 -66 91 87 -95
		mu 0 4 62 56 115 116
		f 4 -71 95 75 -89
		mu 0 4 74 113 117 114
		f 4 107 106 -106 -104
		mu 0 4 47 48 63 64
		f 4 116 115 135 113
		mu 0 4 82 83 84 85
		f 4 -108 112 -137 -112
		mu 0 4 86 69 91 92
		f 4 117 -100 110 -116
		mu 0 4 83 66 93 84
		f 4 133 132 -117 137
		mu 0 4 94 95 83 82
		f 4 134 -103 -118 -133
		mu 0 4 95 65 66 83
		f 4 -153 122 125 -109
		mu 0 4 87 88 89 90
		f 4 -126 123 -119 -125
		mu 0 4 96 97 98 99
		f 4 -11 128 126 121
		mu 0 4 8 7 102 103
		f 4 118 120 -128 -120
		mu 0 4 112 107 104 101
		f 4 -129 -110 124 119
		mu 0 4 102 7 96 99
		f 4 138 129 127 -131
		mu 0 4 100 54 52 49
		f 4 -114 131 -127 -130
		mu 0 4 82 85 103 102
		f 4 114 -134 139 -141
		mu 0 4 91 95 94 110
		f 4 -105 -135 -115 -113
		mu 0 4 69 65 95 91
		f 4 136 140 141 -143
		mu 0 4 92 91 110 111
		f 4 -139 143 145 -138
		mu 0 4 40 38 37 25
		f 4 -146 144 -142 -140
		mu 0 4 25 37 21 20
		f 4 149 148 -147 -98
		mu 0 4 75 105 106 76
		f 4 151 150 -150 -102
		mu 0 4 108 109 105 75
		f 4 105 147 -152 -101
		mu 0 4 64 63 109 108
		f 4 -63 153 102 -155
		mu 0 4 115 60 118 119
		f 4 -85 155 101 -157
		mu 0 4 80 114 120 77
		f 4 -88 154 104 -158
		mu 0 4 116 115 119 121
		f 4 -76 158 100 -156
		mu 0 4 114 117 122 120;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
	setAttr ".dr" 1;
createNode transform -n "polySurface144" -p "House_wall12";
createNode mesh -n "polySurfaceShape149" -p "polySurface144";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "transform1" -p "House_wall12";
	setAttr ".v" no;
createNode mesh -n "House_wall12Shape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999992549419403 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
	setAttr ".dr" 1;
createNode transform -n "House_wall11" -p "House_Structure";
	setAttr ".rp" -type "double3" -623.27515697479248 261.42486572265619 -663.48921203613281 ;
	setAttr ".sp" -type "double3" -623.27515697479248 261.42486572265619 -663.48921203613281 ;
createNode transform -n "polySurface110" -p "House_wall11";
createNode mesh -n "polySurfaceShape106" -p "polySurface110";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:86]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4346412867307663 0.42604479193687439 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 208 ".uvst[0].uvsp[0:207]" -type "float2" 0.32615781 0.34587044
		 0.32615781 0.34587044 0.47766453 0.34587044 0.47766453 0.34587044 0.47766453 0.54564881
		 0.32615781 0.54564881 0.32615781 0.65412951 0.47766453 0.65412951 0.47766447 0.40365905
		 0.32615781 0.40365905 0.67384243 0.65412951 0.67384243 0.54564881 0.57937145 0.54564881
		 0.57937145 0.65412951 0.67384243 0.34587044 0.67384243 0.34587044 0.57937145 0.34587044
		 0.57937145 0.34587044 0.50727969 0.75180042 0.52209318 0.75180042 0.52209318 0.6432938
		 0.50727969 0.6432938 0.086933315 0.52311134 0.086933315 0.56727254 0.25470597 0.52311134
		 0.30011535 0.52311134 0.086933315 0.6757791 0.086933315 0.7586785 0.30011535 0.56727254
		 0.25470597 0.56727254 0.25470597 0.7586785 0.30011535 0.7586785 0.30011535 0.6757791
		 0.50125349 0.54663324 0.50125349 0.40158153 0.6562078 0.54663324 0.6562078 0.40158153
		 0.6562078 0.34254682 0.6562053 0.34254682 0.50125098 0.34254682 0.50125349 0.34254682
		 0.6562078 0.65745306 0.50125349 0.65745306 0.41716862 0.34254682 0.41716862 0.34254682
		 0.34379226 0.34254682 0.34379226 0.34254682 0.41716862 0.54663324 0.34379226 0.54663324
		 0.34379226 0.65745306 0.41716862 0.65745306 0.25470597 0.6757791 0.18038197 0.76326072
		 0.16556843 0.76244104 0.18038191 0.93125975 0.16556843 0.93097299 0.16556843 0.97638243
		 0.18038197 0.97638243 0.51826113 0.63953137 0.51826113 0.55663192 0.35102144 0.63953137
		 0.30589876 0.63953137 0.51826113 0.44812539 0.51826113 0.40396419 0.30589876 0.55663192
		 0.35102144 0.55663192 0.65548515 0.40281177 0.56231427 0.40283144 0.56231427 0.54568124
		 0.65548515 0.54605043 0.56273401 0.34451491 0.56231427 0.34451491 0.65548515 0.34451491
		 0.65548515 0.34451491 0.65548515 0.54605043 0.56273401 0.54605043 0.56273401 0.40281177
		 0.65548515 0.40281177 0.56273401 0.65548515 0.65548515 0.65548515 0.56231427 0.65548515
		 0.65548515 0.65548515 0.42748934 0.40281177 0.34729654 0.40281177 0.34729654 0.34451491
		 0.42748934 0.34451491 0.34451485 0.34451491 0.42585099 0.34451491 0.42585099 0.40282649
		 0.34451485 0.40281177 0.34451485 0.54605043 0.42585099 0.54568124 0.34451485 0.65548515
		 0.42585099 0.65548515 0.34729654 0.65548515 0.34729654 0.54605043 0.42748934 0.54605043
		 0.42748934 0.65548515 0.22986892 0.76272768 0.22986892 0.93050033 0.2446824 0.92968065
		 0.2446824 0.76244098 0.20782302 0.93021369 0.22263651 0.93050039 0.22263657 0.76326072
		 0.20782302 0.76244104 0.69941002 0.44456336 0.69513476 0.44456336 0.69513476 0.40040216
		 0.69941002 0.40040216 0.69941002 0.55306995 0.69513476 0.55306995 0.57325077 0.44456336
		 0.57325077 0.40040216 0.69513476 0.63596934 0.69941002 0.63596934 0.41714752 0.58731163
		 0.57026821 0.44456336 0.57026821 0.40040216 0.41714752 0.51266444 0.58733976 0.51036549
		 0.58733976 0.58501267 0.35745269 0.64756924 0.34975192 0.65964222 0.34377271 0.64685607
		 0.35569948 0.64329398 0.47841299 0.76945317 0.46879718 0.78086245 0.48178422 0.77243578
		 0.47972667 0.78724939 0.14227112 0.95384681 0.12948494 0.95384681 0.12948494 0.84534019
		 0.14227112 0.84534019 0.12948494 0.99800801 0.14227112 0.99800801 0.0082647037 0.95384681
		 0.0082647037 0.84534019 0.12948494 0.76244092 0.14227112 0.76244092 0.0082647037
		 0.99800801 0.0018777594 0.99800801 0.0018778243 0.95384681 0.0018778243 0.76244092
		 0.0082647037 0.76244092 0.56448483 0.40040216 0.56448483 0.44456336 0.54777527 0.44456336
		 0.54777527 0.40040216 0.56448483 0.55306995 0.54777527 0.55306995 0.54777527 0.63596934
		 0.56448483 0.63596934 0.54199189 0.40040216 0.54199189 0.44456336 0.52404439 0.44456336
		 0.52404439 0.40040216 0.54199189 0.55306995 0.52404439 0.55306995 0.54199189 0.63596934
		 0.52404439 0.63596934 0.52932549 0.74823838 0.52932549 0.63973176 0.54413897 0.63973176
		 0.54413903 0.74823838 0.35102144 0.44812539 0.30589876 0.44812539 0.30589876 0.40396419
		 0.35102144 0.40396419 0.069264874 0.99800807 0.00045356524 0.99800807 0.00045356524
		 0.29010302 0.069264874 0.29010302 0.00045356524 0.0019920953 0.069264874 0.0019920953
		 0.14648388 0.99800807 0.07503584 0.99800807 0.07503584 0.0019920953 0.14648388 0.0019920953
		 0.22725518 0.98934889 0.15844387 0.98934913 0.15298411 0.0019920063 0.22443216 0.0019920063
		 0.091765985 0.99800795 0.00053418585 0.99800795 0.00053418585 0.29010296 0.091765985
		 0.29010296 0.00053418585 0.0019920359 0.091765985 0.0019920359 0.098317303 0.0019920063
		 0.17011189 0.0019920063 0.17011189 0.99800795 0.098317303 0.99800795 0.17640185 0.0019921251
		 0.26763365 0.0020104102 0.25174227 0.62288135 0.17994767 0.62288135 0.41266 0.58734
		 0.41266 0.51269293 0.41714752 0.41495919 0.58733976 0.41266018 0.41266 0.41498756
		 0.41716862 0.3956593 0.098317303 0.73879975 0.34379226 0.3947297 0.67384243 0.39728922
		 0.57937145 0.40473455 0.07503584 0.2954652;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 150 ".vt[0:149]"  -695.53973389 -1.014195e-13 -244.40667725
		 -695.53973389 -9.6942148e-14 -267.81674194 -695.53973389 522.84973145 -267.81674194
		 -695.53967285 338.85165405 -244.40664673 -695.53973389 338.85165405 -267.81674194
		 -359.63388062 4.2579777e-14 -269.67419434 -359.63388062 522.84973145 -269.67419434
		 -359.63388062 9.3176674e-14 -245.36708069 -359.63388062 338.85165405 -269.67419434
		 -359.63388062 338.85165405 -245.36708069 -695.53967285 98.017379761 -244.40667725
		 -695.53979492 98.017379761 -267.81674194 -1195.91833496 -9.1772245e-14 -244.40667725
		 -1195.91833496 -7.1342976e-14 -267.81674194 -1195.91833496 338.85165405 -267.81674194
		 -1195.91833496 522.84973145 -267.81674194 -1195.91833496 98.017379761 -267.81674194
		 -47.62638092 522.84973145 -269.67419434 -47.62638092 338.85165405 -269.67419434 -47.62638092 7.8817507e-14 -269.67419434
		 -47.62638092 7.7569787e-14 -245.36708069 -47.62638092 522.84973145 -269.67419434
		 -47.62638092 338.85165405 -269.67419434 -47.62638092 7.854197e-14 -269.67419434 -48.83269501 -9.397506e-14 -665.23516846
		 -48.83269501 522.84973145 -665.23516846 -17.79498672 -9.5747208e-14 -665.22900391
		 -17.79498672 338.85165405 -665.22900391 -48.83269501 338.85165405 -665.23516846 -48.79062271 338.85165405 -1054.49841309
		 -47.62638092 522.84973145 -454.0042419434 -47.62638092 3.3105321e-14 -454.0042419434
		 -23.20134544 1.9431034e-14 -454.0042419434 -23.20134544 6.6721883e-14 -269.67419434
		 -23.20134544 338.85165405 -454.0042419434 -47.62638092 338.85165405 -454.0042419434
		 -48.79062271 98.017379761 -1054.49841309 -48.83269501 98.017379761 -665.23516846
		 -17.79498672 98.017379761 -665.22900391 -48.79062271 -8.4062884e-14 -1054.49841309
		 -17.75270653 -9.169728e-14 -1054.49206543 -48.79062271 522.84973145 -1054.49841309
		 -298.15921021 522.84973145 -1079.056274414 -298.15921021 -8.5528949e-14 -1079.056274414
		 -296.96643066 -9.1034446e-14 -1054.81335449 -296.96643066 522.84973145 -1054.81335449
		 -296.96643066 338.85165405 -1054.81335449 -298.15921021 338.23077393 -1079.056274414
		 -296.96643066 98.017372131 -1054.81323242 -298.15924072 98.05040741 -1079.056396484
		 -33.34884644 338.85165405 -1078.14331055 -33.34884644 98.017379761 -1078.14331055
		 -33.34884644 -7.2923736e-14 -1078.14331055 -33.34888458 -9.3679032e-14 -1054.49523926
		 -33.34888458 98.017379761 -1054.49523926 -33.34888458 338.85165405 -1054.49523926
		 -33.34888458 522.84973145 -1054.49523926 -33.34884644 522.84973145 -1078.14331055
		 -686.015686035 522.84973145 -1081.80480957 -681.35919189 522.84973145 -1055.82006836
		 -681.35919189 -7.4986004e-14 -1055.82006836 -686.015686035 -8.9093622e-14 -1081.80480957
		 -686.01574707 338.23077393 -1081.80493164 -681.35919189 338.85165405 -1055.82006836
		 -686.015686035 98.042152405 -1081.80480957 -681.35919189 98.017372131 -1055.82006836
		 -917.1895752 522.84973145 -1082.57177734 -909.28344727 522.84973145 -1056.099853516
		 -909.28344727 98.017379761 -1056.099853516 -909.28344727 -6.6464778e-14 -1056.099853516
		 -917.1895752 -1.1592154e-13 -1082.57177734 -917.1895752 98.017379761 -1082.57177734
		 -917.1895752 338.85165405 -1082.57177734 -909.28344727 338.85165405 -1056.099853516
		 -909.28344727 -6.1495093e-14 -1056.099853516 -909.28344727 98.017379761 -1056.099853516
		 -918.77252197 98.017379761 -1052.20849609 -918.77252197 -7.4202397e-14 -1052.20849609
		 -945.56896973 -9.6704288e-14 -1069.30065918 -917.1895752 -1.4547058e-13 -1082.57177734
		 -917.1895752 522.84973145 -1082.57177734 -909.28344727 522.84973145 -1056.099853516
		 -917.1895752 98.017379761 -1082.57177734 -917.1895752 338.85165405 -1082.57177734
		 -909.28344727 338.85165405 -1056.099853516 -1214.62158203 522.84973145 -805.075439453
		 -1189.29833984 522.84973145 -783.73278809 -1189.29833984 -1.1160831e-13 -783.73278809
		 -1214.62158203 5.1544116e-14 -805.075439453 -945.56896973 522.84973145 -1069.30065918
		 -918.77252197 522.84973145 -1052.20849609 -1214.62158203 338.85165405 -805.075439453
		 -945.56896973 338.85165405 -1069.30065918 -918.77252197 338.85165405 -1052.20849609
		 -1189.29833984 338.85165405 -783.73278809 -945.56896973 98.017379761 -1069.30065918
		 -1214.62158203 98.017379761 -805.075439453 -1189.29833984 98.017379761 -783.73278809
		 -1228.79748535 522.84973145 -780.8170166 -1195.91833496 522.84973145 -776.25012207
		 -1195.91833496 98.017379761 -776.25018311 -1195.91833496 -9.4208753e-14 -776.25018311
		 -1228.79760742 -7.1130168e-14 -780.81707764 -1228.79748535 98.017379761 -780.8170166
		 -1195.91833496 338.85165405 -776.25018311 -1195.91833496 -1.1699277e-13 -776.25018311
		 -1195.91833496 -1.271668e-13 -739.16259766 -1195.91833496 98.017379761 -776.25018311
		 -1228.79748535 522.84973145 -740.98193359 -1195.91833496 522.84973145 -739.16259766
		 -1195.91833496 338.85165405 -739.16259766 -1228.79748535 338.85165405 -740.98193359
		 -1228.79748535 98.017379761 -740.98193359 -1195.91845703 98.017379761 -739.16259766
		 -1228.79748535 -1.1441657e-13 -740.98193359 -1195.91833496 338.85165405 -776.25018311
		 -1195.91833496 522.84973145 -776.25012207 -1228.79748535 522.84973145 -780.8170166
		 -1228.79748535 338.85165405 -780.8170166 -1228.79748535 98.017379761 -780.8170166
		 -1228.79760742 -2.5508934e-14 -780.81707764 -1195.91845703 -9.4979315e-14 -367.96810913
		 -1195.91833496 98.017379761 -267.81674194 -1228.79748535 -8.6557213e-14 -368.60452271
		 -1228.79748535 522.84973145 -368.60452271 -1195.91845703 522.84973145 -367.96810913
		 -1195.91845703 338.85165405 -367.96810913 -1228.79748535 338.85165405 -368.60452271
		 -1228.79748535 98.017379761 -368.60452271 -1195.91845703 98.017379761 -367.96810913
		 -1195.91833496 522.84973145 -267.81674194 -1195.91833496 338.85165405 -267.81674194
		 -1195.91833496 -1.3697921e-13 -739.16259766 -1195.91845703 98.017379761 -739.16259766
		 -1228.79748535 -8.4380257e-14 -742.66723633 -1195.91833496 -8.4380257e-14 -740.84790039
		 -1228.79748535 338.85165405 -740.98193359 -1195.91833496 338.85165405 -739.16259766
		 -1195.91833496 522.84973145 -739.16259766 -1228.79748535 522.84973145 -740.98193359
		 -1228.79748535 98.017379761 -740.98193359 -1228.79748535 -1.2866145e-13 -740.98193359
		 -1195.91833496 -8.8006642e-14 -267.81674194 -1228.79748535 -8.5926383e-14 -267.81674194
		 -1228.79748535 338.85165405 -267.81674194 -1228.79748535 522.84973145 -267.81674194
		 -1228.79748535 98.017379761 -267.81674194 -47.62638092 96.99047852 -454.0042419434
		 -47.62638092 96.99047852 -269.67419434 -359.63388062 96.99046326 -269.67419434;
	setAttr -s 235 ".ed";
	setAttr ".ed[0:165]"  12 0 0 13 1 0 0 1 0 15 2 0 1 11 0 3 10 0 4 2 1 3 4 0
		 4 14 1 19 5 0 17 6 0 5 149 0 20 7 0 5 7 0 7 9 0 8 6 1 18 8 1 8 9 0 4 8 0 3 9 0 2 6 0
		 10 0 0 11 4 0 10 11 1 11 16 1 12 13 0 14 15 0 16 14 0 18 17 0 19 20 0 19 148 0 13 16 0
		 22 21 0 23 148 0 39 36 0 39 24 0 41 25 0 24 37 0 40 26 0 24 26 0 26 38 0 28 25 1
		 29 41 0 27 28 0 28 29 1 31 32 0 30 35 1 31 23 0 32 33 0 21 30 0 33 23 0 34 32 0 35 147 0
		 34 35 0 35 22 1 25 30 0 28 35 0 27 34 0 36 29 0 37 28 0 38 27 0 36 37 1 37 38 1 39 40 0
		 42 57 0 43 52 0 44 53 0 45 56 0 42 47 1 43 44 1 44 48 1 46 45 1 47 49 0 55 46 1 47 50 1
		 48 46 0 49 43 1 48 54 1 51 49 1 50 51 0 52 53 0 54 55 0 55 56 0 57 50 0 53 54 0 51 52 0
		 66 58 0 67 59 0 69 60 0 70 61 0 59 63 1 60 61 1 61 64 1 62 58 1 63 65 0 72 62 1 63 73 1
		 64 62 0 64 71 1 65 60 1 65 68 1 68 69 0 70 69 0 72 71 0 66 72 0 67 73 0 71 70 0 73 68 0
		 77 74 0 79 74 0 75 74 0 75 76 0 76 77 0 78 77 0 78 79 0 83 82 0 80 83 0 81 84 0 82 79 0
		 84 75 0 102 101 0 98 85 0 99 86 0 101 87 0 86 94 1 102 88 0 88 87 1 85 91 1 85 89 0
		 86 90 0 87 77 0 90 93 1 88 78 0 89 92 1 89 80 0 90 81 0 91 96 1 92 95 1 93 76 1 94 97 1
		 91 92 1 92 83 1 84 93 1 93 94 1 94 104 1 95 78 1 96 88 1 82 95 1 95 96 1 97 87 1
		 76 97 1 97 100 1 100 101 0 103 102 0 98 103 0 99 104 0 104 100 0 106 113 0 107 105 0
		 106 105 0 113 107 0 108 117 0 109 116 0 108 111 0 110 109 0 111 112 0;
	setAttr ".ed[166:234]" 115 110 1 111 118 1 112 114 0 112 119 1 113 110 0 110 111 0
		 113 112 0 119 120 0 114 120 0 115 107 0 116 115 0 117 118 0 118 119 0 117 119 0 129 121 1
		 133 129 0 142 122 0 142 121 0 132 121 0 122 129 0 143 123 0 121 123 1 134 123 0 135 121 0
		 145 124 0 130 125 0 125 126 1 123 128 1 126 129 0 127 124 1 131 126 1 127 144 1 128 127 0
		 128 146 1 126 127 0 128 129 0 136 127 0 137 126 0 138 125 0 139 124 0 140 128 0 131 130 0
		 122 131 0 141 123 0 132 133 0 134 135 0 137 136 0 137 138 0 139 136 0 140 141 0 133 140 0
		 143 142 0 145 144 0 144 146 0 146 143 0 47 62 0 42 58 0 49 64 0 43 61 0 45 59 0 46 63 0
		 48 65 0 44 60 0 147 31 0 148 22 0 147 148 1 148 18 0 149 8 0 148 149 1;
	setAttr -s 87 -ch 352 ".fc[0:86]" -type "polyFaces" 
		f 4 25 1 -3 -1
		mu 0 4 0 1 2 3
		f 4 8 26 3 -7
		mu 0 4 4 5 6 7
		f 4 -8 5 23 22
		mu 0 4 169 170 171 172
		f 4 24 27 -9 -23
		mu 0 4 8 9 5 4
		f 4 -29 16 15 -11
		mu 0 4 10 11 12 13
		f 4 29 12 -14 -10
		mu 0 4 14 15 16 17
		f 4 -17 -233 234 233
		mu 0 4 12 11 205 206
		f 5 -18 -234 -12 13 14
		mu 0 5 175 176 207 177 178
		f 4 7 18 17 -20
		mu 0 4 179 180 181 182
		f 4 6 20 -16 -19
		mu 0 4 4 7 13 12
		f 4 -24 21 2 4
		mu 0 4 172 171 173 174
		f 4 31 -25 -5 -2
		mu 0 4 1 9 8 2
		f 4 43 -60 62 60
		mu 0 4 183 184 185 186
		f 4 44 -59 61 59
		mu 0 4 33 35 36 34
		f 4 63 38 -40 -36
		mu 0 4 37 38 39 40
		f 4 -43 -45 41 -37
		mu 0 4 41 35 33 42
		f 4 45 48 50 -48
		mu 0 4 43 44 45 46
		f 4 54 32 49 46
		mu 0 4 47 48 49 50
		f 5 -54 51 -46 -230 -53
		mu 0 5 189 190 191 192 203
		f 4 231 230 -55 52
		mu 0 4 202 204 48 47
		f 4 -42 56 -47 -56
		mu 0 4 42 33 47 50
		f 4 -44 57 53 -57
		mu 0 4 193 194 195 196
		f 4 -62 -35 35 37
		mu 0 4 34 36 37 40
		f 4 -63 -38 39 40
		mu 0 4 186 185 187 188
		f 4 78 -73 74 79
		mu 0 4 66 67 68 69
		f 4 -70 65 80 -67
		mu 0 4 70 71 72 73
		f 4 73 -76 77 81
		mu 0 4 74 75 76 77
		f 4 -72 -74 82 -68
		mu 0 4 78 75 74 79
		f 4 -75 -69 64 83
		mu 0 4 69 68 80 81
		f 4 -78 -71 66 84
		mu 0 4 77 76 70 73
		f 4 -77 -79 85 -66
		mu 0 4 71 67 66 72
		f 4 100 101 88 -100
		mu 0 4 82 83 84 85
		f 4 -103 89 -92 -89
		mu 0 4 84 86 87 85
		f 4 98 -104 95 -98
		mu 0 4 88 89 90 91
		f 4 -96 -105 86 -94
		mu 0 4 91 90 92 93
		f 4 105 -97 -91 -88
		mu 0 4 94 95 96 97
		f 4 -107 -99 -93 -90
		mu 0 4 86 89 88 87
		f 4 96 107 -101 -95
		mu 0 4 96 95 83 82
		f 4 111 112 108 -111
		mu 0 4 106 107 108 109
		f 4 -114 114 109 -109
		mu 0 4 122 123 124 125
		f 4 151 152 123 -150
		mu 0 4 112 117 118 113
		f 4 -121 125 126 -124
		mu 0 4 128 129 127 126
		f 7 -154 -155 121 127 136 146 -126
		mu 0 7 141 142 143 144 137 136 140
		f 4 150 149 130 -113
		mu 0 4 107 112 113 108
		f 4 -127 132 113 -131
		mu 0 4 126 127 123 122
		f 4 148 -137 140 137
		mu 0 4 131 136 137 132
		f 4 147 -138 141 115
		mu 0 4 130 131 132 133
		f 4 -141 -128 128 133
		mu 0 4 132 137 144 138
		f 4 -142 -134 134 116
		mu 0 4 133 132 138 139
		f 4 131 -143 -118 -136
		mu 0 4 114 111 110 115
		f 4 124 -144 -132 -130
		mu 0 4 116 119 120 121
		f 4 155 -145 -125 -123
		mu 0 4 197 198 119 116
		f 4 -146 -148 118 -115
		mu 0 4 134 131 130 135
		f 4 -147 -149 145 -133
		mu 0 4 140 136 131 134
		f 4 142 138 -112 -120
		mu 0 4 110 111 107 106
		f 4 143 139 -151 -139
		mu 0 4 120 119 199 200
		f 4 144 156 -152 -140
		mu 0 4 119 198 201 199
		f 4 -159 -161 -158 159
		mu 0 4 145 146 147 148
		f 4 -169 169 173 -175
		mu 0 4 153 154 155 156
		f 4 160 -176 166 -171
		mu 0 4 147 146 149 150
		f 4 -165 -167 -177 -163
		mu 0 4 151 150 149 152
		f 4 -168 -164 161 177
		mu 0 4 158 157 159 160
		f 4 -170 -166 167 178
		mu 0 4 155 154 157 158
		f 4 165 -173 170 171
		mu 0 4 161 162 163 164
		f 3 -179 -178 179
		mu 0 3 155 158 160
		f 4 -186 -183 183 -181
		mu 0 4 165 166 167 168
		f 4 210 181 180 -185
		mu 0 4 63 62 165 168
		f 4 -218 186 -188 -184
		mu 0 4 57 56 55 54
		f 4 211 189 187 -189
		mu 0 4 53 52 54 55
		f 4 -208 196 -193 -192
		mu 0 4 61 64 65 60
		f 4 197 -219 190 -196
		mu 0 4 51 32 31 30
		f 4 -197 -209 185 -195
		mu 0 4 65 64 166 165
		f 4 199 -220 -198 -199
		mu 0 4 29 28 32 51
		f 4 -221 -200 -194 -187
		mu 0 4 25 28 29 24
		f 4 -201 194 -202 198
		mu 0 4 21 20 19 18
		f 4 -213 203 200 -203
		mu 0 4 105 104 103 102
		f 4 213 204 192 -204
		mu 0 4 59 58 60 65
		f 4 214 202 195 -206
		mu 0 4 27 26 51 30
		f 4 215 209 193 -207
		mu 0 4 23 22 24 29
		f 4 -182 216 206 201
		mu 0 4 101 100 99 98
		f 4 68 221 93 -223
		mu 0 4 80 68 91 93
		f 4 76 224 92 -224
		mu 0 4 67 71 87 88
		f 4 71 225 90 -227
		mu 0 4 75 78 97 96
		f 4 69 228 91 -225
		mu 0 4 71 70 85 87
		f 4 70 227 99 -229
		mu 0 4 70 76 82 85
		f 4 47 33 -232 229
		mu 0 4 43 46 204 202
		f 4 -235 -31 9 11
		mu 0 4 206 205 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall5" -p "House_Structure";
	setAttr ".rp" -type "double3" -884.38845825195312 261.42486572265625 274.35393333435059 ;
	setAttr ".sp" -type "double3" -884.38845825195312 261.42486572265625 274.35393333435059 ;
createNode mesh -n "polySurfaceShape147" -p "House_wall5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5121903121471405 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.61507642 0.37878865
		 0.61507642 0.37878865 0.5047524 0.37878865 0.5047524 0.37878865 0.61507642 0.53430796
		 0.4084515 0.33875835 0.6258961 0.37410402 0.6258961 0.37410402 0.49173188 0.28937197
		 0.50826788 0.28937197 0.50826788 0.71062803 0.49173188 0.71062803 0.56827867 0.54313934
		 0.57879663 0.54313934 0.57879663 0.34758693 0.56827879 0.34758693 0.5047524 0.53430796
		 0.61451209 0.37410402 0.61451209 0.37410402 0.5047524 0.53430796 0.4084515 0.33875835
		 0.4084515 0.54563808 0.4084515 0.54563808 0.46322942 0.33875835 0.61507642 0.53430796
		 0.52531815 0.37410402 0.52531815 0.37410402 0.62121129 0.37878865 0.62121129 0.53430796
		 0.53116941 0.37410402 0.53116941 0.37410402 0.37878853 0.37878865 0.46322942 0.33875835
		 0.46322942 0.54563808 0.46520472 0.54313934 0.40947223 0.54563808 0.40947223 0.54563808
		 0.40947223 0.33875835 0.40947223 0.33875835 0.59154832 0.54563808 0.59154844 0.33875835
		 0.59154844 0.33875835 0.59154832 0.54563808 0.55858541 0.33875835 0.55858541 0.33875835
		 0.46520472 0.34758693 0.59154844 0.33875835 0.42120355 0.34758693 0.59154844 0.33875835
		 0.59154832 0.54563808 0.55858541 0.54563808 0.59154844 0.66124165 0.40947223 0.66124165
		 0.59154844 0.66124165 0.55858541 0.66124165 0.46322942 0.66124165 0.4084515 0.66124165
		 0.4084515 0.66124165 0.42120355 0.54313934 0.54180074 0.34758693 0.54180074 0.54313934
		 0.49867105 0.37878865 0.59154844 0.66124165 0.49867105 0.53430796 0.40947223 0.66124165
		 0.37878853 0.53430796 0.49173188 0.55961657 0.49867105 0.37878865 0.37878853 0.37878865
		 0.50826788 0.55961657 0.49867105 0.53430796 0.37878853 0.53430796 0.5047524 0.62121141
		 0.61507642 0.62121141 0.46520472 0.65241325 0.42120355 0.65241325 0.61507642 0.62121141
		 0.62121129 0.62121141 0.5047524 0.62121141 0.49867105 0.62121141 0.37878853 0.62121141
		 0.49867105 0.62121141 0.37878853 0.62121141 0.54180074 0.65241325 0.56827879 0.65241325
		 0.57879663 0.65241325;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".vt[0:53]"  -896.26397705 -2.1708065e-15 803.5859375
		 -872.51293945 1.8760404e-14 803.5859375 -896.26397705 522.84973145 803.5859375 -872.51293945 522.84973145 803.5859375
		 -896.26397705 522.84973145 23.061206818 -872.51293945 522.84973145 23.061206818 -896.26397705 4.4529816e-14 23.061206818
		 -872.51293945 3.7042767e-14 23.061206818 -896.26397705 522.84973145 42.8136673 -896.26397705 4.2418387e-14 42.8136673
		 -872.51293945 3.6216185e-14 42.8136673 -872.51293945 522.84973145 42.8136673 -1228.38098145 1.1941714e-13 23.061206818
		 -1228.38098145 4.564382e-14 42.8136673 -1228.38098145 522.84973145 42.8136673 -1228.38098145 522.84973145 23.061206818
		 -872.51293945 522.84973145 417.60217285 -872.51293945 2.9739906e-14 417.60217285
		 -896.26397705 2.5875323e-14 417.60217285 -896.26397705 522.84973145 417.60217285
		 -872.51293945 522.84973145 398.022155762 -872.51293945 3.0164761e-14 398.022155762
		 -896.26397705 2.6960576e-14 398.022155762 -896.26397705 522.84973145 398.022155762
		 -1226.52954102 1.6353479e-15 398.022155762 -1226.52954102 522.84973145 398.022155762
		 -1226.52954102 2.7699824e-15 417.60217285 -1226.52954102 522.84973145 417.60217285
		 -1129.020019531 522.84973145 23.061206818 -1129.020019531 9.2762644e-14 23.061206818
		 -1129.020019531 4.4495799e-14 42.8136673 -1129.020019531 522.84973145 42.8136673
		 -956.055114746 522.84973145 23.061206818 -956.055114746 6.2875615e-14 23.061206818
		 -956.055114746 4.320855e-14 42.8136673 -956.055114746 522.84973145 42.8136673 -1226.52954102 335.41903687 398.022155762
		 -896.26403809 335.41903687 398.022155762 -896.26403809 335.41903687 42.8136673 -956.055114746 335.41903687 42.8136673
		 -1129.020019531 335.41903687 42.8136673 -1228.38098145 335.41903687 42.8136673 -1228.38098145 335.41903687 23.061206818
		 -1129.020019531 335.41903687 23.061206818 -956.055114746 335.41903687 23.061206818
		 -896.26403809 335.41903687 23.061206818 -872.51293945 335.41903687 23.061206818 -872.51293945 335.41903687 42.8136673
		 -872.51293945 335.41903687 398.022155762 -872.51293945 335.41903687 417.60217285
		 -872.51293945 335.41903687 803.5859375 -896.26403809 335.41903687 803.5859375 -896.26403809 335.41903687 417.60217285
		 -1226.52954102 335.41903687 417.60217285;
	setAttr -s 97 ".ed[0:96]"  0 1 0 2 3 0 4 5 0 6 7 0 0 51 0 1 50 0 2 19 0
		 3 16 0 4 45 1 5 46 0 6 9 1 7 10 0 9 22 0 8 38 0 10 21 0 9 10 1 11 5 0 10 47 1 6 33 0
		 9 34 0 12 13 0 8 35 0 14 41 0 4 32 0 14 15 0 15 42 0 16 20 0 17 1 0 16 49 1 18 0 0
		 17 18 1 18 52 0 20 11 0 21 17 0 20 48 1 22 18 1 21 22 1 23 8 0 22 37 0 22 24 0 23 25 0
		 24 36 0 18 26 0 24 26 0 19 27 0 26 53 0 27 25 0 28 15 0 29 12 0 28 43 1 30 13 0 29 30 1
		 31 14 0 30 40 0 32 28 0 33 29 0 32 44 1 34 30 0 33 34 1 35 31 0 34 39 0 36 25 0 37 23 0
		 36 37 1 38 9 0 37 38 1 39 35 1 38 39 1 40 31 1 39 40 0 41 13 0 40 41 1 42 12 0 41 42 1
		 43 29 0 42 43 1 44 33 0 43 44 0 45 6 1 44 45 1 46 7 0 45 46 1 47 11 1 46 47 1 48 21 1
		 47 48 1 49 17 1 48 49 1 50 3 0 49 50 1 51 2 0 50 51 1 52 19 0 51 52 1 53 27 0 52 53 1
		 53 36 1;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 0 5 91 -5
		mu 0 4 8 9 69 66
		f 4 81 80 -4 -79
		mu 0 4 12 13 14 15
		f 4 15 14 36 -13
		mu 0 4 0 1 2 3
		f 4 -15 17 85 84
		mu 0 4 2 1 4 16
		f 4 12 38 65 64
		mu 0 4 0 3 19 24
		f 4 20 -71 73 72
		mu 0 4 5 20 21 22
		f 4 3 11 -16 -11
		mu 0 4 7 6 18 17
		f 4 -18 -12 -81 83
		mu 0 4 4 1 27 28
		f 4 51 50 -21 -49
		mu 0 4 23 32 20 5
		f 4 53 71 70 -51
		mu 0 4 32 33 21 20
		f 4 74 48 -73 75
		mu 0 4 34 45 47 58
		f 4 -28 -87 89 -6
		mu 0 4 31 61 63 65
		f 4 -31 27 -1 -30
		mu 0 4 67 61 31 68
		f 4 -32 29 4 93
		mu 0 4 70 67 68 71
		f 4 -34 -85 87 86
		mu 0 4 61 2 16 63
		f 4 -37 33 30 -36
		mu 0 4 30 29 25 26
		f 4 96 -42 43 45
		mu 0 4 35 36 37 38
		f 4 -39 39 41 63
		mu 0 4 39 40 37 36
		f 4 35 42 -44 -40
		mu 0 4 40 41 38 37
		f 4 31 95 -46 -43
		mu 0 4 41 42 35 38
		f 4 58 57 -52 -56
		mu 0 4 43 44 32 23
		f 4 78 18 -77 79
		mu 0 4 12 15 59 60
		f 4 10 19 -59 -19
		mu 0 4 46 48 44 43
		f 4 -65 67 -61 -20
		mu 0 4 48 49 50 44
		f 4 -63 -64 61 -41
		mu 0 4 51 39 36 52
		f 4 -66 62 37 13
		mu 0 4 24 19 72 73
		f 4 -68 -14 21 -67
		mu 0 4 50 49 53 54
		f 4 -70 66 59 -69
		mu 0 4 33 50 54 55
		f 4 -72 68 52 22
		mu 0 4 21 33 55 56
		f 4 -74 -23 24 25
		mu 0 4 22 21 56 57
		f 4 49 -76 -26 -48
		mu 0 4 74 34 58 75
		f 4 56 -78 -50 -55
		mu 0 4 83 60 34 74
		f 4 8 -80 -57 -24
		mu 0 4 84 12 60 83
		f 4 2 9 -82 -9
		mu 0 4 84 85 13 12
		f 4 -83 -84 -10 -17
		mu 0 4 76 4 28 77
		f 4 -86 82 -33 34
		mu 0 4 16 4 76 78
		f 4 -88 -35 -27 28
		mu 0 4 63 16 78 79
		f 4 -90 -29 -8 -89
		mu 0 4 65 63 79 80
		f 4 -92 88 -2 -91
		mu 0 4 66 69 10 11
		f 4 -93 -94 90 6
		mu 0 4 81 70 71 82
		f 4 -96 92 44 -95
		mu 0 4 35 42 62 64
		f 4 -62 -97 94 46
		mu 0 4 52 36 35 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface146" -p "House_wall5";
createNode mesh -n "polySurfaceShape151" -p "polySurface146";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "polySurface148" -p "House_wall5";
createNode mesh -n "polySurfaceShape153" -p "polySurface148";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "transform2" -p "House_wall5";
	setAttr ".v" no;
createNode mesh -n "House_wall5Shape" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53129756450653076 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "House_wall4" -p "House_Structure";
	setAttr ".rp" -type "double3" -1212.35791015625 -8.4380256688137978e-14 -761.67510986328125 ;
	setAttr ".sp" -type "double3" -1212.35791015625 -8.4380256688137978e-14 -761.67510986328125 ;
createNode mesh -n "House_wallShape4" -p "House_wall4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.46063688 0.7454676
		 0.45488843 0.74514949 0.45488843 0.73818487 0.46063688 0.73898333;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -1195.91833496 -8.4380257e-14 -777.9354248
		 -1228.79748535 -8.4380257e-14 -782.50231934 -1228.79748535 -8.4380257e-14 -742.66723633
		 -1195.91833496 -8.4380257e-14 -740.84790039;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -4 1 0 -3
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall2" -p "House_Structure";
	setAttr ".rp" -type "double3" 882.55294799804688 261.42486572265619 819.20928955078125 ;
	setAttr ".sp" -type "double3" 882.55294799804688 261.42486572265619 819.20928955078125 ;
createNode mesh -n "House_wallShape2" -p "House_wall2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3592437511542812 0.47935085638891906 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.77495742 0.0019920359
		 0.80798316 0.0019920359 0.80798316 0.14981133 0.77495742 0.14981133 0.80798328 0.47316509
		 0.77495754 0.47316509 0.80798316 0.72901434 0.77495742 0.72901434 0.81535596 0.035017788
		 0.81535596 0.0019920657 0.84680557 0.0019920657 0.84680581 0.035017788 0.7287125
		 0.99800783 0.47286326 0.99800783 0.47286326 0.033441916 0.7287125 0.033441916 0.14950947
		 0.99800795 0.14950947 0.033441916 0.47286326 0.0019922734 0.7287125 0.0019922734
		 0.0016901835 0.99800795 0.0016901835 0.033441916 0.14950947 0.0019922734 0.0016901835
		 0.0019920359 0.7675845 0.9980076 0.73455876 0.9980076 0.73455876 0.033441696 0.7675845
		 0.033441696 0.73455876 0.0019920508 0.7675845 0.0019920508;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  1240.70324707 106.30661011 831.084838867
		 1240.70324707 106.30661011 807.3338623 1240.70336914 -6.8477098e-14 831.084838867
		 1240.70324707 -6.3592388e-14 807.3338623 1218.085693359 -7.2198059e-14 831.084838867
		 1240.70324707 522.84973145 831.084838867 1218.085693359 522.84973145 831.084838867
		 1218.085693359 338.85168457 831.084716797 1240.70324707 338.85168457 831.084716797
		 1218.085693359 106.30661011 831.084838867 1240.70324707 338.85168457 807.33374023
		 1240.70324707 522.84973145 807.3338623 1218.085693359 522.84973145 807.3338623 1218.085693359 -7.5851319e-14 807.3338623
		 524.40258789 522.84973145 831.084838867 524.40258789 338.85165405 831.084838867 524.40258789 522.84973145 807.3338623
		 524.40252686 106.30661011 831.084838867 524.40252686 -6.2808835e-14 831.084838867;
	setAttr -s 30 ".ed[0:29]"  2 0 0 0 1 0 3 2 0 1 3 0 13 3 0 4 2 0 13 4 0
		 5 11 0 14 6 0 6 5 0 4 9 1 6 12 1 7 6 1 8 5 0 15 7 1 7 8 1 8 10 1 9 7 1 0 8 0 17 9 1
		 9 0 1 11 10 0 16 12 0 12 11 0 10 1 0 18 4 0 15 14 0 14 16 0 17 15 0 18 17 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 -3 -4 -2 -1
		mu 0 4 0 1 2 3
		f 4 -7 4 2 -6
		mu 0 4 8 9 10 11
		f 4 16 -22 -8 -14
		mu 0 4 5 4 6 7
		f 4 -27 14 12 -9
		mu 0 4 12 13 14 15
		f 4 -28 8 11 -23
		mu 0 4 24 25 26 27
		f 4 -13 15 13 -10
		mu 0 4 15 14 18 19
		f 4 -12 9 7 -24
		mu 0 4 27 26 28 29
		f 4 -15 -29 19 17
		mu 0 4 14 13 16 17
		f 4 -16 -18 20 18
		mu 0 4 18 14 17 22
		f 4 1 -25 -17 -19
		mu 0 4 3 2 4 5
		f 4 -20 -30 25 10
		mu 0 4 17 16 20 21
		f 4 -21 -11 5 0
		mu 0 4 22 17 21 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall1" -p "House_Structure";
	setAttr ".rp" -type "double3" 1229.3944702148438 -7.5502180409980703e-06 8.8066256046295166 ;
	setAttr ".sp" -type "double3" 1229.3944702148438 -7.5502180409980703e-06 8.8066256046295166 ;
createNode mesh -n "House_wallShape1" -p "House_wall1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.72718447 0.77983218
		 0.72718447 0.78378665 0.72263074 0.78378665 0.72263074 0.77983218;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1240.703125 -5.6253508e-14 21.82930183 1218.085693359 -5.1516527e-14 21.82930183
		 1218.085693359 -1.5100436e-05 -4.21605062 1240.70324707 -1.5100436e-05 -4.21605062;
	setAttr -s 4 ".ed[0:3]"  0 3 0 1 2 0 0 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall3" -p "House_Structure";
createNode mesh -n "House_wall3Shape" -p "House_wall3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:56]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 147 ".uvst[0].uvsp[0:146]" -type "float2" 0.54143393 0.55520594
		 0.68639779 0.55520594 0.68639779 0.38939953 0.54143381 0.38939953 0.2032484 0.02533089
		 0.2032484 0.040958192 0.060622994 0.040958192 0.060622994 0.02533089 0.31552348 0.040958192
		 0.31552348 0.02533089 0.2032484 0.058659628 0.060373973 0.058659628 0.31552348 0.058659628
		 0.0018123183 0.058659628 0.0018123183 0.0019920517 0.31552348 0.29204407 0.20512418
		 0.29204401 0.065596558 0.29204401 0.0018123183 0.29204407 0.31552348 0.33629823 0.20512418
		 0.33629817 0.065596558 0.33629823 0.0018123183 0.33629823 0.31552348 0.35043517 0.20512418
		 0.35043508 0.065596558 0.35043508 0.0018123183 0.35043517 0.31552348 0.52573085 0.20512418
		 0.52573073 0.065596558 0.52573085 0.0018123183 0.52573085 0.47924644 0.90551531 0.4948737
		 0.90551531 0.45590755 0.84670472 0.47924644 0.84670472 0.29810017 0.84670472 0.31167075
		 0.84670472 0.31167075 0.9862324 0.29810017 0.9862324 0.27859586 0.98957908 0.27859586
		 0.84671962 0.29216638 0.84670466 0.29216644 0.98957908 0.13346691 0.76274657 0.11989634
		 0.76274657 0.11989634 0.52936214 0.13346691 0.52936214 0.1390487 0.52936214 0.15261927
		 0.52936214 0.15261921 0.76274657 0.1390487 0.76274657 0.58867431 0.7561413 0.57510382
		 0.7561413 0.57510382 0.71188712 0.58867449 0.71188712 0.57510382 0.47850269 0.58867431
		 0.47850269 0.57510382 0.46080124 0.58867431 0.42183509 0.52526784 0.73267406 0.56952202
		 0.73267406 0.56952202 0.84307331 0.5252679 0.84307331 0.5252679 0.59314638 0.56952202
		 0.59314638 0.2918835 0.84307331 0.2918835 0.73079824 0.56952202 0.52936214 0.5252679
		 0.52936214 0.27418202 0.73079824 0.27418202 0.84307331 0.2918835 0.58793885 0.2918835
		 0.52936214 0.27418202 0.58793885 0.27418202 0.52936214 0.015382869 0.91160101 0.0018122871
		 0.91160101 0.0018122871 0.73630536 0.015382807 0.73630536 0.31360221 0.31360215 0.31360209
		 0.31360215 0.44912279 0.31360215 0.44912279 0.31360215 0.44912279 0.55520594 0.31360221
		 0.55520594 0.31360221 0.68639779 0.44912279 0.68639779 0.68639779 0.68639779 0.68639779
		 0.55520594 0.54143393 0.55520594 0.54143405 0.68639779 0.68639779 0.31360215 0.68639779
		 0.31360215 0.54143381 0.31360221 0.54143381 0.31360221 0.54143381 0.38939953 0.44912279
		 0.38939953 0.31360209 0.38939953 0.68639779 0.38939953 0.46637887 0.34125197 0.65874803
		 0.34125191 0.37703782 0.34125191 0.34125185 0.34125191 0.37703782 0.65874815 0.37703782
		 0.54701686 0.34125185 0.54701686 0.34125185 0.65874815 0.46637893 0.65874815 0.65874803
		 0.65874815 0.46637893 0.54511833 0.65874803 0.54511833 0.65874803 0.40053535 0.46637893
		 0.40053535 0.36861765 0.5389117 0.41420853 0.5389117 0.57103407 0.5389117 0.63138235
		 0.5389117 0.63138235 0.63138223 0.36861765 0.63138223 0.36861765 0.42204332 0.41420853
		 0.42204332 0.41420853 0.5389117 0.36861765 0.5389117 0.57103407 0.36861759 0.63138235
		 0.36861759 0.63138235 0.5389117 0.57103407 0.5389117 0.36861765 0.36861759 0.41420853
		 0.36861759 0.41420853 0.42204332 0.36861765 0.42204332 0.072654448 0.31446812 0.14191055
		 0.31446812 0.14191055 0.99800795 0.072654448 0.99800795 0.14191055 0.0019920361 0.072654448
		 0.0019920361 0.066369981 0.99800807 0.00043987372 0.99800807 0.00043987372 0.31446823
		 0.066369981 0.31446823 0.00043987372 0.0019920361 0.0663701 0.0019920361 0.15112154
		 0.0019920066 0.22037764 0.0019920066 0.21430817 0.50688738 0.14837807 0.50688738;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 106 ".vt[0:105]"  948.3427124 338.85171509 514.06060791 1218.085693359 338.85168457 514.06048584
		 1218.085693359 106.30661011 514.060546875 948.34259033 106.30661011 514.06060791
		 1235.87060547 522.84973145 829.7802124 1235.87060547 522.84973145 21.82930183 1235.87060547 522.84973145 -4.21605062
		 1235.87060547 522.84973145 514.06060791 1235.87060547 522.84973145 537.62200928 1235.87060547 522.84973145 440.30395508
		 1235.87060547 522.84973145 51.33162689 1235.87060547 335.7253418 -4.21605062 1235.87060547 335.7253418 21.82930183
		 1235.87060547 335.7253418 51.33162689 1235.87060547 338.85168457 829.7800293 1235.87060547 338.85168457 537.62188721
		 1235.87060547 338.85168457 514.06048584 1235.87060547 338.85168457 440.30380249 1235.8704834 97.60232544 51.33162689
		 1235.8704834 98.017379761 21.82930183 1235.87060547 98.017379761 -4.21605062 1235.87060547 106.30661011 829.7802124
		 1235.87060547 106.30661011 537.62194824 1235.87060547 106.30661011 514.06060791 1235.87060547 106.30661011 440.30386353
		 1213.25305176 522.84973145 21.82930183 1213.25305176 522.84973145 440.30395508 1213.25305176 522.84973145 514.06060791
		 1213.25305176 522.84973145 51.33162689 1235.8704834 -6.0762044e-14 51.33162689 1235.8704834 -5.1860754e-14 -43.11399078
		 1235.87060547 -1.5100436e-05 -4.21605062 1235.87060547 -5.846653e-14 829.7802124
		 1235.8704834 -6.0489747e-14 537.62200928 1235.8704834 -5.5682791e-14 514.06060791
		 1235.87060547 -8.2020958e-14 440.30395508 1213.25305176 106.30661011 440.30392456
		 1213.25305176 338.85168457 440.30380249 1213.25305176 335.7253418 51.33162689 1213.25305176 97.62736511 51.33162689
		 1213.25305176 -8.6931398e-14 440.30395508 1213.25305176 -7.056088e-14 51.33162689
		 1213.25305176 -5.43998e-14 514.06060791 1213.25305176 338.85168457 514.06048584 1213.25305176 335.7253418 21.82930183
		 1213.25305176 97.62736511 21.82930183 1213.25305176 -5.6547798e-14 21.82930183 1213.25305176 106.30661011 514.060546875
		 1213.25305176 -5.7326973e-14 829.7802124 1213.25305176 -5.5799048e-14 537.62200928
		 1218.085693359 522.84973145 514.06060791 776.5737915 -4.9857593e-14 535.55712891
		 776.5737915 -4.0204907e-14 513.12719727 776.5737915 522.84973145 513.12719727 948.34259033 4.5301305e-05 537.62200928
		 948.34277344 522.84973145 514.06060791 948.34259033 4.5301305e-05 514.06060791 1218.085693359 338.85168457 514.06048584
		 948.3427124 338.85171509 514.06060791 948.3427124 338.85171509 537.62200928 776.5737915 338.85168457 535.55712891
		 776.5737915 338.85168457 513.1272583 1218.085693359 106.30661011 514.060546875 948.34259033 106.30661011 514.06060791
		 948.34259033 106.30661011 537.62200928 776.5737915 106.30661011 535.55712891 776.5737915 106.30661011 513.1272583
		 1218.085693359 -5.9829664e-14 514.06060791 1218.085693359 -5.468007e-14 537.62200928
		 524.40258789 -5.3603941e-14 535.55725098 524.40252686 -4.5322172e-14 513.1272583
		 524.40258789 338.85168457 513.1272583 524.40258789 522.84973145 513.1272583 524.40252686 106.30661011 513.1272583
		 531.21954346 522.84973145 20.35927963 531.21954346 338.85165405 20.35926056 524.40258789 338.85168457 513.1272583
		 524.40258789 522.84973145 513.1272583 524.40258789 338.85168457 427.62979126 531.21954346 338.85165405 133.53152466
		 524.40252686 106.30661011 513.1272583 524.40252686 106.30661011 427.62969971 524.40258789 338.85168457 427.62979126
		 524.40258789 338.85168457 513.1272583 531.21954346 9.687282e-14 133.53152466 531.21954346 1.07508e-13 20.35923767
		 531.21954346 338.85165405 20.35926056 531.21954346 338.85165405 133.53152466 524.40252686 106.30661011 513.1272583
		 524.40252686 -4.9167267e-14 513.1272583 524.40252686 -6.1431464e-14 427.62969971
		 524.40252686 106.30661011 427.62969971 1218.085693359 522.84973145 21.82930183 801.9175415 522.84973145 21.82930183
		 1218.085693359 335.7253418 21.82930183 1218.085693359 97.62736511 21.82930183 608.6383667 522.84973145 20.35927963
		 531.21954346 522.84973145 20.35927963 531.21954346 338.85165405 20.35926056 801.9175415 335.7253418 21.82930183
		 801.91748047 97.62736511 21.82930183 531.21954346 4.3068041e-14 20.35923767 608.6383667 9.0071925e-14 20.35923767
		 608.6383667 338.85165405 20.35926056 801.9173584 9.0602611e-05 21.82930183 1218.085693359 -4.0858366e-14 21.82930183;
	setAttr -s 157 ".ed[0:156]"  2 1 0 1 0 0 2 3 0 3 0 0 4 14 0 4 8 0 5 6 0
		 5 12 1 31 20 0 7 9 0 7 16 1 8 7 0 8 15 1 35 24 1 10 5 0 29 18 1 11 6 0 12 19 1 13 10 1
		 11 12 1 12 13 1 14 21 0 15 22 1 16 23 1 17 9 1 14 15 1 15 16 1 16 17 1 18 13 0 19 30 1
		 20 11 0 18 19 1 19 20 1 21 32 0 22 33 1 23 34 1 24 17 0 21 22 1 22 23 1 23 24 1 17 37 0
		 24 36 0 38 13 0 18 39 0 9 10 0 17 13 0 24 18 0 27 26 0 28 25 0 29 30 0 30 31 0 32 33 0
		 33 34 0 34 35 0 37 36 0 38 39 0 26 28 0 36 39 0 35 29 0 42 40 0 26 37 1 40 35 1 41 46 0
		 28 38 1 41 29 1 38 44 1 37 43 1 36 40 1 36 47 1 39 41 1 45 39 1 37 38 0 40 41 0 34 42 0
		 43 27 0 45 44 0 30 46 0 44 25 0 47 43 0 42 47 0 46 45 0 48 49 0 48 32 0 33 49 0 67 62 0
		 69 51 0 70 52 0 51 52 0 72 53 0 53 61 1 68 54 0 54 64 0 50 55 0 67 56 0 56 63 0 54 56 0
		 57 50 0 58 55 1 60 65 0 61 66 0 57 58 0 58 59 0 60 61 0 61 71 1 60 59 0 53 55 0 61 58 0
		 63 58 0 64 59 0 65 51 0 66 52 0 62 63 0 63 64 1 65 66 1 66 73 1 68 67 0 69 70 0 72 71 0
		 71 73 0 73 70 0 74 75 0 77 76 0 77 74 0 76 78 0 79 75 0 78 79 0 83 80 0 80 81 0 82 81 0
		 83 82 0 86 85 0 85 84 0 87 86 0 84 87 0 88 89 0 88 91 0 89 90 0 91 90 0 105 95 0
		 92 93 0 94 92 0 99 93 1 94 99 1 96 103 1 98 103 1 93 96 0 95 94 0 100 95 1 97 96 0
		 97 98 0 98 101 0 100 99 0 101 102 0 103 102 0 99 103 0 104 100 0 105 104 0;
	setAttr -s 57 -ch 230 ".fc[0:56]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 0 1 2 3
		f 4 19 17 32 30
		mu 0 4 4 5 6 7
		f 4 10 27 24 -10
		mu 0 4 19 20 16 15
		f 4 12 26 -11 -12
		mu 0 4 23 24 20 19
		f 4 4 25 -13 -6
		mu 0 4 27 28 24 23
		f 4 20 -29 31 -18
		mu 0 4 5 10 11 6
		f 4 7 -20 16 -7
		mu 0 4 8 5 4 9
		f 4 -19 -21 -8 -15
		mu 0 4 12 10 5 8
		f 4 -26 21 37 -23
		mu 0 4 24 28 29 25
		f 4 -27 22 38 -24
		mu 0 4 20 24 25 21
		f 4 -28 23 39 36
		mu 0 4 16 20 21 17
		f 4 -32 -16 49 -30
		mu 0 4 6 11 13 14
		f 4 -33 29 50 8
		mu 0 4 31 32 33 34
		f 4 -38 33 51 -35
		mu 0 4 25 29 30 26
		f 4 -39 34 52 -36
		mu 0 4 21 25 26 22
		f 4 -40 35 53 13
		mu 0 4 17 21 22 18
		f 4 -41 -37 41 -55
		mu 0 4 35 36 37 38
		f 4 55 -44 28 -43
		mu 0 4 39 40 41 42
		f 4 -25 45 18 -45
		mu 0 4 15 16 10 12
		f 4 40 71 42 -46
		mu 0 4 43 44 45 46
		f 4 -42 46 43 -58
		mu 0 4 47 48 49 50
		f 4 -14 58 15 -47
		mu 0 4 17 18 13 11
		f 4 73 59 61 -54
		mu 0 4 51 52 53 54
		f 4 66 74 47 60
		mu 0 4 59 60 61 62
		f 4 70 -56 65 -76
		mu 0 4 73 71 66 69
		f 4 -65 62 -77 -50
		mu 0 4 56 55 57 58
		f 4 -66 -64 48 -78
		mu 0 4 69 66 65 70
		f 4 68 78 -67 54
		mu 0 4 63 64 60 59
		f 4 79 -69 67 -60
		mu 0 4 67 64 63 68
		f 4 -70 -71 -81 -63
		mu 0 4 72 71 73 74
		f 4 -61 56 63 -72
		mu 0 4 59 62 65 66
		f 4 -62 72 64 -59
		mu 0 4 54 53 55 56
		f 4 -68 57 69 -73
		mu 0 4 68 63 71 72
		f 4 -83 81 -84 -52
		mu 0 4 75 76 77 78
		f 4 116 86 -88 -86
		mu 0 4 79 80 81 82
		f 4 103 -118 88 89
		mu 0 4 83 84 85 86
		f 4 -97 100 97 -93
		mu 0 4 87 88 89 90
		f 4 -116 90 95 -94
		mu 0 4 91 92 93 94
		f 4 112 108 -102 -108
		mu 0 4 131 132 133 134
		f 4 -103 98 113 -100
		mu 0 4 137 138 139 140
		f 4 114 -119 -104 99
		mu 0 4 96 97 84 83
		f 4 -90 105 -98 -107
		mu 0 4 83 86 90 89
		f 4 101 -105 102 106
		mu 0 4 143 144 145 146
		f 4 -112 -85 93 94
		mu 0 4 95 98 91 94
		f 4 91 -113 -95 -96
		mu 0 4 135 132 131 136
		f 4 -114 109 87 -111
		mu 0 4 140 139 141 142
		f 4 -120 -115 110 -87
		mu 0 4 80 97 96 81
		f 6 123 125 124 -121 -123 121
		mu 0 6 113 114 115 116 117 118
		f 4 127 -129 -130 126
		mu 0 4 119 120 121 122
		f 4 -132 -131 -133 -134
		mu 0 4 123 124 125 126
		f 4 136 -138 -136 134
		mu 0 4 127 128 129 130
		f 4 147 146 142 -152
		mu 0 4 112 111 110 109
		f 4 -143 140 139 -142
		mu 0 4 109 110 108 107
		f 4 149 144 -144 -149
		mu 0 4 106 105 104 103
		f 4 -145 150 152 -154
		mu 0 4 104 105 102 101
		f 4 141 145 143 -155
		mu 0 4 109 107 103 104
		f 4 138 -148 -156 -157
		mu 0 4 100 111 112 99;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall8" -p "House_Structure";
createNode transform -n "polySurface136" -p "House_wall8";
createNode mesh -n "polySurfaceShape140" -p "polySurface136";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.20163472 0.99800783
		 0.00040256773 0.99800783 0.00040256773 0.0019919099 0.20163472 0.0019919099;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  533.5458374 335.7253418 -744.35723877 533.5458374 335.7253418 -696.3314209
		 533.54577637 98.017379761 -696.3314209 533.54577637 98.017379761 -744.35723877;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 1 0 2 3 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 2 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface140" -p "House_wall8";
createNode mesh -n "polySurfaceShape144" -p "polySurface140";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.71943825 0.96268678
		 0.69658446 0.96268678 0.69658446 0.91604388 0.71943825 0.91604388;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  533.54577637 98.017379761 -696.3314209 533.54571533 9.0602611e-05 -696.3314209
		 533.54571533 9.0602611e-05 -744.35723877 533.54577637 98.017379761 -744.35723877;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 3 0 1 2 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 0 2 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface141" -p "House_wall8";
createNode mesh -n "polySurfaceShape145" -p "polySurface141";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.76632077 0.81709903
		 0.82673907 0.81709903 0.82673907 0.90465707 0.76632077 0.90465707;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  535.74053955 338.85165405 -927.47686768 535.75115967 338.85165405 -1054.44250488
		 535.75115967 522.84973145 -1054.44250488 535.74053955 522.84973145 -927.47686768;
	setAttr -s 4 ".ed[0:3]"  2 3 0 1 0 0 2 1 0 3 0 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 -3 0 3
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface142" -p "House_wall8";
createNode mesh -n "polySurfaceShape146" -p "polySurface142";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67764744162559509 0.83076068758964539 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape161" -p "polySurface142";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67764744162559509 0.83076068758964539 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 238 ".uvst[0].uvsp[0:237]" -type "float2" 0.07790634 0.073786415
		 0.07790634 0.0019919516 0.14959241 0.0019919516 0.14959241 0.073786415 0.54477835
		 0.53710377 0.53560519 0.53710377 0.53560519 0.37472218 0.54477835 0.37472218 0.50378865
		 0.73841417 0.51619965 0.73841417 0.51619977 0.957452 0.50378877 0.957452 0.36782765
		 0.41738373 0.53562367 0.41738373 0.53562367 0.53756523 0.36782765 0.53756523 0.53562367
		 0.63217235 0.36782765 0.63217235 0.53562367 0.36782765 0.36782765 0.36782771 0.0019133226
		 0.79584557 0.012701946 0.79584557 0.012701884 0.90896231 0.0019133226 0.90896231
		 0.46670282 0.53241801 0.47895855 0.53241801 0.47895855 0.64553469 0.46670282 0.64553469
		 0.17057799 0.83824831 0.18283372 0.83824831 0.18283366 0.95136505 0.17057799 0.95136505
		 0.70136952 0.73841411 0.70136952 0.74920267 0.68911374 0.74920267 0.68911374 0.73841411
		 0.53593373 0.53756523 0.31021339 0.53241801 0.31021339 0.64553469 0.53593373 0.41738373
		 0.65529108 0.95269847 0.64303535 0.95269847 0.64303535 0.94028753 0.65529108 0.94028753
		 0.68911386 0.89979911 0.70136958 0.89979911 0.70136958 0.91221005 0.68911386 0.91221005
		 0.46080974 0.53241801 0.46080986 0.64553469 0.16329834 0.90896231 0.16329834 0.79584557
		 0.46080986 0.7345804 0.31021339 0.7345804 0.29780248 0.7345804 0.47895855 0.7345804
		 0.46670282 0.7345804 0.012701884 0.99800801 0.16329834 0.99800801 0.0019133226 0.99800801
		 0.18283372 0.74920267 0.17057799 0.74920267 0.18283366 0.99800795 0.17057785 0.99800795
		 0.012701884 0.74920273 0.0019133226 0.74920273 0.16329834 0.74920273 0.47895855 0.48577508
		 0.46670282 0.48577508 0.31021339 0.48577508 0.29780248 0.48577508 0.46080986 0.48577508
		 0.40049374 0.54404163 0.34503978 0.54404163 0.34503978 0.40313977 0.40049374 0.40313977
		 0.16167292 0.22215974 0.048556261 0.22215974 0.25071868 0.22215974 0.25071868 0.49272981
		 0.16167292 0.49272981 0.16167292 0.40685269 0.25071868 0.40685269 0.0019133226 0.22215974
		 0.048556261 0.40685269 0.048556261 0.49272981 0.0019133226 0.49272981 0.0019133226
		 0.40685269 0.83887136 0.65350556 0.84963429 0.65350556 0.84963429 0.7666223 0.83887136
		 0.76680785 0.85571909 0.7666223 0.85571909 0.65350562 0.86648202 0.65350562 0.86648202
		 0.7666223 0.68302888 0.92310715 0.67226601 0.92310715 0.67226601 0.73841423 0.68302888
		 0.73841423 0.65541834 0.73841423 0.66618121 0.73841423 0.66618121 0.92310715 0.65541834
		 0.92310715 0.40049374 0.40290862 0.34503978 0.40290862 0.34503978 0.54404163 0.40049374
		 0.54404163 0.52391142 0.48194122 0.51314855 0.48194122 0.51314855 0.39606404 0.52391142
		 0.39606404 0.51975656 0.40313977 0.51975656 0.54404163 0.52391142 0.21137114 0.51314855
		 0.21137114 0.51975656 0.65496004 0.34503978 0.65496004 0.40049374 0.65496004 0.51975656
		 0.34503978 0.34503978 0.34503978 0.40049374 0.34503978 0.33124557 0.94057661 0.31659165
		 0.94057661 0.31659165 0.82597232 0.33124557 0.82597232 0.72537506 0.91476929 0.72533113
		 0.90349782 0.73998505 0.90349531 0.73992473 0.91477215 0.72238332 0.89966142 0.70783353
		 0.89966142 0.70783353 0.78505713 0.72238332 0.78505713 0.73991972 0.97519046 0.72536993
		 0.97518772 0.31659165 0.73841423 0.33124557 0.73841423 0.76586467 0.65350556 0.77783412
		 0.65350556 0.77783412 0.7666223 0.76586467 0.7666223 0.67315352 0.94979459 0.67315358
		 0.96220565 0.66118407 0.96220565 0.66118407 0.94979459 0.78458434 0.70014852 0.79655379
		 0.70014852 0.79655379 0.8132652 0.7845844 0.8132652 0.66118407 0.92694086 0.67315352
		 0.92694086 0.75938344 0.90572941 0.74741405 0.90572941 0.74587804 0.81858659 0.76042789
		 0.81858933 0.53560519 0.62527776 0.53560519 0.53710377 0.54477835 0.53710377 0.54477835
		 0.62527776 0.37472218 0.62527776 0.37472218 0.53710377 0.61797893 0.73841417 0.62960184
		 0.73841417 0.62960184 0.94195575 0.61797893 0.94195575 0.62960184 0.95360076 0.61797893
		 0.95360076 0.37472218 0.37472218 0.53560519 0.37472218 0.74714488 0.65350556 0.75876784
		 0.65350556 0.75876784 0.81475282 0.74714488 0.81475282 0.85167956 0.77064162 0.86364895
		 0.77064162 0.86254203 0.87248582 0.85091901 0.87248582 0.62527788 0.53560567 0.62527788
		 0.62527788 0.70783353 0.73841423 0.72238332 0.73841423 0.31659165 0.98721951 0.33124557
		 0.98721951 0.77783406 0.8132652 0.76586461 0.8132652 0.79655379 0.65350562 0.78458428
		 0.65350568 0.37536371 0.54765701 0.33909047 0.54765701 0.33909047 0.66090965 0.37536371
		 0.66090965 0.80330408 0.69996291 0.81569809 0.69996291 0.81569809 0.8132652 0.80330408
		 0.8132652 0.46592128 0.54573274 0.66090965 0.54573274 0.66090965 0.39918107 0.46592128
		 0.39918107 0.63669854 0.73841417 0.64909261 0.73841417 0.64909261 0.9364537 0.63669854
		 0.9364537 0.66090965 0.66090965 0.46592128 0.66090965 0.69069153 0.96378171 0.67904651
		 0.96378171 0.67904651 0.92694086 0.69069153 0.92694086 0.74007016 0.81475294 0.72842509
		 0.81475294 0.72842509 0.65350556 0.74007016 0.65350556 0.33909047 0.33909047 0.37536371
		 0.33909047 0.83263195 0.77696127 0.84502602 0.77696127 0.84432656 0.86893576 0.83268148
		 0.86893576 0.66090965 0.33909047 0.46592122 0.33909053 0.81569809 0.65350562 0.80330408
		 0.65350562 0.31021339 0.53241801 0.31021339 0.64553469 0.29780248 0.64553469 0.29780248
		 0.53241801 0.31021339 0.7345804 0.29780248 0.7345804 0.31021339 0.48577508 0.29780248
		 0.48577508 0.63217235 0.41738373 0.63217235 0.53756523 0.53593373 0.63217235 0.63217235
		 0.63217235 0.53593373 0.36782765 0.63217235 0.36782765;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[51]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[52]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[54]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[58]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[59]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[63]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[64]" -type "float3" 0 0 -118.71895 ;
	setAttr ".pt[66]" -type "float3" 0 0 -118.71895 ;
	setAttr -s 149 ".vt[0:148]"  506.79455566 1.4572053e-14 -456.23077393
		 531.21954346 6.5840549e-15 -456.23077393 531.21954346 -1.050599e-14 -431.8427124
		 506.79455566 2.4797164e-14 -431.8427124 531.21954346 338.85165405 -456.23077393 531.21954346 338.85165405 -431.8427124
		 967.39672852 4.5301305e-05 -692.25463867 507.10162354 9.0602611e-05 -692.2545166
		 967.39672852 4.5301305e-05 -666.17376709 507.10162354 9.0602611e-05 -666.17352295
		 967.39672852 4.5301305e-05 -666.17376709 507.10162354 9.0602611e-05 -666.17352295
		 967.39685059 98.017379761 -666.17376709 967.39672852 335.7253418 -666.17376709 507.10171509 335.7253418 -666.17352295
		 507.10162354 98.017379761 -666.17352295 967.39672852 522.84973145 -666.17376709 507.10171509 522.84985352 -666.17352295
		 942.49279785 522.84973145 -1012.80096436 942.49255371 4.5301305e-05 -1012.80096436
		 942.49279785 522.84973145 -1035.47253418 942.49255371 4.5301305e-05 -1035.47253418
		 968.24743652 522.84973145 -1012.80096436 968.24743652 522.84973145 -1035.47253418
		 968.24725342 3.0200868e-05 -1035.47253418 968.24725342 3.0200868e-05 -1012.80096436
		 968.24743652 3.0200868e-05 -670.25067139 968.24749756 522.84973145 -670.25067139
		 942.49279785 522.84973145 -670.25067139 942.49279785 4.5301305e-05 -670.25067139
		 968.24743652 3.0200868e-05 -696.33154297 968.24743652 522.84973145 -696.33154297
		 942.49279785 4.5301305e-05 -696.33154297 968.24743652 335.7253418 -1012.80096436
		 968.24743652 335.7253418 -696.33154297 968.24749756 335.7253418 -670.25067139 942.49279785 335.7253418 -670.25067139
		 942.49279785 335.7253418 -696.33154297 942.49279785 335.7253418 -1012.80096436 942.49279785 335.7253418 -1035.47253418
		 968.24743652 335.7253418 -1035.47253418 968.24731445 98.017379761 -1035.47253418
		 942.49267578 98.017379761 -1035.47253418 942.49267578 98.017379761 -1012.80090332
		 942.49285889 98.017379761 -696.33154297 942.49285889 98.017379761 -670.25067139 968.24743652 98.017379761 -670.25067139
		 968.24743652 98.017379761 -696.33154297 968.24731445 98.017379761 -1012.80090332
		 942.49279785 522.84973145 -696.33154297 1235.87060547 522.84973145 -184.68188477
		 1235.87060547 522.84973145 -572.80310059 1235.87060547 335.7253418 -572.80310059
		 1235.87060547 335.7253418 -184.68188477 1235.87060547 98.017379761 -572.80310059
		 1235.87060547 98.017379761 -184.68188477 1213.25305176 522.84973145 -4.21605062 1213.25305176 522.84973145 -184.68188477
		 1213.25305176 522.84973145 -572.80310059 1235.87060547 -7.753436e-06 -572.80310059
		 1235.87060547 -1.1072991e-05 -184.68188477 1213.25305176 97.62736511 -184.68188477
		 1213.25305176 335.7253418 -184.68188477 1213.25305176 335.7253418 -572.80310059 1213.25305176 98.017379761 -572.80310059
		 1213.25305176 -1.1072991e-05 -184.68188477 1213.25305176 -7.753436e-06 -572.80310059
		 1213.25305176 97.62736511 -4.21605062 1213.25305176 335.7253418 -4.21605062 1213.25305176 -1.5100436e-05 -4.21605062
		 1235.87060547 335.7253418 -4.21605062 1235.87060547 98.017379761 -4.21605062 1235.87060547 522.84973145 -4.21605062
		 1235.87060547 -1.5100436e-05 -4.21605062 505.083526611 522.84973145 -1078.13476563
		 505.083526611 338.85165405 -1078.13476563 505.083526611 98.017379761 -1078.13476563
		 505.083526611 -8.8966351e-14 -1078.13476563 505.17593384 -8.9057518e-14 -1054.44848633
		 531.21954346 2.4236486e-14 -4.11209106 531.21954346 338.85165405 -4.11209106 531.21954346 522.84973145 -4.11209106
		 506.79455566 1.4572053e-14 -456.23077393 506.79455566 2.4797164e-14 -431.8427124
		 506.79455566 338.85165405 -456.23077393 535.87792969 522.84973145 -1078.14013672
		 535.75115967 -8.4386864e-14 -1054.44250488 535.87792969 -8.6948393e-14 -1078.14013672
		 505.16503906 -8.7894149e-14 -927.48272705 535.74053955 -9.3832474e-14 -927.47686768
		 535.87792969 338.85165405 -1078.14013672 508.39260864 0.00010570304 -696.3314209
		 508.39260864 0.00010570304 -670.25042725 533.54571533 9.0602611e-05 -696.3314209
		 533.54577637 9.0602611e-05 -670.25042725 533.5458374 522.84985352 -670.25042725 533.54571533 9.0602611e-05 -744.35723877
		 508.39260864 0.00010570304 -744.35723877 533.5458374 335.7253418 -670.25042725 508.39276123 335.7253418 -670.25042725
		 508.39276123 335.7253418 -744.35723877 533.5458374 335.7253418 -744.35723877 531.21954346 522.84973145 -456.23077393
		 531.21954346 4.0337369e-15 -456.23077393 531.21954346 522.84973145 -431.8427124 531.21954346 -1.2160332e-14 -431.8427124
		 506.79455566 -5.4782584e-15 -4.11209106 531.21954346 338.85165405 -431.8427124 531.21954346 338.85165405 -456.23077393
		 505.16500854 98.017379761 -927.48272705 535.74053955 98.017379761 -927.47686768 535.87792969 98.017379761 -1078.14013672
		 533.54577637 98.017379761 -744.35723877 508.39273071 98.017379761 -744.35723877 508.39273071 98.017379761 -670.25042725
		 533.54577637 98.017379761 -670.25042725 535.74053955 338.85165405 -927.47686768 505.16500854 338.85165405 -927.48272705
		 531.21954346 -8.3126306e-15 20.35923767 506.79455566 7.6358773e-14 20.35923767 608.6383667 338.85165405 -4.11209106
		 608.6383667 522.84973145 -4.11209106 1218.085693359 522.84973145 -4.21605062 801.9173584 9.0602611e-05 21.82930183
		 801.9175415 522.84973145 -4.21605062 801.9173584 7.5502176e-05 -4.21605062 801.9175415 335.7253418 21.82930183
		 801.9175415 335.7253418 -4.21605062 1218.085693359 335.7253418 -4.21605062 608.6383667 6.1650216e-14 20.35923767
		 608.6383667 -1.75426e-14 -4.11209106 608.6383667 338.85165405 20.35926056 1218.085693359 97.62736511 -4.21605062
		 801.91748047 97.62736511 -4.21605062 801.91748047 97.62736511 21.82930183 531.21954346 338.85165405 -4.11209106
		 531.21954346 522.84973145 -4.11209106 1218.085693359 -1.5100436e-05 -4.21605062 1218.085693359 -4.7963793e-14 21.82930183
		 531.21954346 1.4646331e-14 20.35923767 531.21954346 5.5930352e-15 -4.11209106 1232.24768066 98.017379761 -670.25085449
		 1232.24768066 98.017379761 -696.33172607 1232.24768066 335.7253418 -696.33203125
		 1232.24768066 335.7253418 -670.25115967 1232.24768066 522.84973145 -696.33215332
		 1232.24768066 522.84973145 -670.25128174 1232.24768066 3.0200868e-05 -696.33154297
		 1232.24768066 3.0200868e-05 -670.25067139;
	setAttr -s 231 ".ed";
	setAttr ".ed[0:165]"  0 3 0 1 2 0 0 1 0 2 3 0 5 4 0 5 2 0 4 1 0 6 7 0 6 8 0
		 7 9 0 8 9 0 10 11 0 16 17 0 13 14 1 15 12 1 13 12 0 15 14 0 16 13 0 14 17 0 12 10 0
		 11 15 0 18 38 1 18 20 0 20 39 0 19 21 0 23 20 0 24 21 0 25 19 1 23 40 0 24 25 0 25 48 0
		 25 30 0 22 31 0 26 46 1 18 49 0 27 28 0 19 32 0 28 36 0 26 29 0 30 26 1 31 27 1 49 28 0
		 32 29 0 30 47 0 31 49 0 49 37 0 32 30 1 33 22 0 34 31 0 35 27 1 36 45 0 37 44 0 38 43 1
		 39 42 0 40 41 0 33 34 1 35 36 1 37 38 1 38 39 1 39 40 1 41 24 0 42 21 0 43 19 1 44 32 0
		 45 29 0 46 35 1 47 34 0 48 33 0 41 42 1 42 43 1 43 44 1 45 46 1 47 48 1 72 50 0 60 55 1
		 59 54 0 52 51 0 53 50 1 53 70 1 54 52 0 55 53 0 71 55 1 53 62 0 55 61 0 63 52 0 64 54 0
		 50 51 0 53 52 0 55 54 0 56 57 0 73 60 0 62 61 0 63 64 0 57 58 0 60 59 0 61 64 0 69 65 0
		 57 62 1 65 60 1 58 63 0 66 59 0 68 62 1 64 66 0 61 65 1 61 67 1 62 63 0 65 66 0 68 67 0
		 69 73 0 56 68 0 67 69 0 71 70 0 70 72 0 73 71 0 75 76 0 77 78 0 74 75 0 76 77 0 81 80 0
		 79 118 0 80 79 0 84 82 0 87 86 0 85 90 0 74 85 0 77 87 0 78 86 1 78 88 0 88 109 0
		 86 89 0 88 89 0 116 110 0 90 111 0 116 117 0 75 90 1 91 92 0 93 91 1 94 92 0 93 94 0
		 94 115 0 93 96 0 91 97 0 96 97 0 98 95 0 99 114 0 100 113 0 101 112 0 98 99 0 100 101 0
		 101 116 0 100 117 0 82 103 0 102 108 1 104 102 0 105 79 0 83 106 0 104 107 1 105 83 0
		 81 104 0 106 119 0 79 106 1 107 105 0 108 103 0 80 107 1 107 108 0 108 84 0;
	setAttr ".ed[166:230]" 98 108 0 99 84 0 95 102 0 109 117 0 110 89 0 111 87 0
		 109 110 1 111 76 1 112 96 0 113 97 0 114 92 0 115 98 0 112 113 1 114 115 1 118 119 0
		 136 121 0 120 135 0 122 128 0 138 123 0 123 134 0 122 124 0 137 125 0 124 127 1 123 125 0
		 127 133 0 128 132 0 126 127 0 127 128 1 139 129 0 140 130 0 130 129 0 121 120 0 131 129 0
		 120 130 0 131 120 0 126 131 0 124 121 0 127 120 0 132 137 0 133 125 0 134 126 0 132 133 1
		 133 134 1 136 135 0 138 137 0 140 139 0 135 140 0 46 141 1 47 142 1 141 142 1 34 143 1
		 142 143 0 35 144 1 143 144 1 141 144 0 31 145 0 143 145 0 27 146 0 145 146 0 144 146 0
		 30 147 0 147 142 0 26 148 0 148 141 0 147 148 0;
	setAttr -s 86 -ch 344 ".fc[0:85]" -type "polyFaces" 
		f 4 2 1 3 -1
		mu 0 4 0 1 2 3
		f 4 -5 5 -2 -7
		mu 0 4 4 5 6 7
		f 4 8 10 -10 -8
		mu 0 4 8 9 10 11
		f 4 14 -16 13 -17
		mu 0 4 12 13 14 15
		f 4 -14 -18 12 -19
		mu 0 4 15 14 16 17
		f 4 -20 -15 -21 -12
		mu 0 4 18 13 12 19
		f 4 69 -53 58 53
		mu 0 4 20 21 22 23
		f 4 71 65 56 50
		mu 0 4 24 25 26 27
		f 4 59 54 68 -54
		mu 0 4 28 29 30 31
		f 4 29 27 24 -27
		mu 0 4 32 33 34 35
		f 4 215 217 219 -221
		mu 0 4 227 224 225 226
		f 4 44 41 -36 -41
		mu 0 4 40 41 42 43
		f 4 46 39 38 -43
		mu 0 4 44 45 46 47
		f 4 72 67 55 -67
		mu 0 4 37 48 49 38
		f 4 57 52 70 -52
		mu 0 4 50 22 21 51
		f 4 -28 31 -47 -37
		mu 0 4 34 33 45 44
		f 4 -56 47 32 -49
		mu 0 4 38 49 52 53
		f 4 -220 222 224 -226
		mu 0 4 226 225 228 229
		f 4 -57 49 35 37
		mu 0 4 27 26 55 56
		f 4 21 -58 -46 -35
		mu 0 4 57 22 50 58
		f 4 -59 -22 22 23
		mu 0 4 23 22 57 59
		f 4 28 -60 -24 -26
		mu 0 4 60 29 28 61
		f 4 -69 60 26 -62
		mu 0 4 31 30 62 63
		f 4 -63 -70 61 -25
		mu 0 4 64 21 20 65
		f 4 -71 62 36 -64
		mu 0 4 51 21 64 66
		f 4 33 -72 64 -39
		mu 0 4 67 25 24 68
		f 4 227 -216 -230 -231
		mu 0 4 230 224 227 231
		f 4 30 -73 -44 -32
		mu 0 4 71 48 37 69
		f 4 78 -112 81 80
		mu 0 4 72 73 74 75
		f 4 -113 -79 77 -74
		mu 0 4 79 80 81 82
		f 4 -82 -114 90 74
		mu 0 4 84 85 86 87
		f 4 -83 -81 83 -92
		mu 0 4 88 89 90 91
		f 4 92 85 79 -85
		mu 0 4 92 93 94 95
		f 4 -78 87 76 -87
		mu 0 4 82 81 76 78
		f 4 82 105 84 -88
		mu 0 4 96 97 98 99
		f 4 -75 94 75 -89
		mu 0 4 84 87 83 77
		f 4 -84 88 -86 -96
		mu 0 4 100 101 102 103
		f 4 104 -108 101 91
		mu 0 4 104 105 106 107
		f 4 -109 96 98 -91
		mu 0 4 108 109 110 111
		f 4 -102 -110 89 97
		mu 0 4 107 106 117 118
		f 4 -111 -105 103 -97
		mu 0 4 120 105 104 121
		f 4 -98 93 99 -106
		mu 0 4 107 118 116 113
		f 4 -99 106 100 -95
		mu 0 4 111 110 115 114
		f 4 -104 95 102 -107
		mu 0 4 121 104 112 119
		f 4 173 -115 134 132
		mu 0 4 122 123 124 125
		f 4 -116 125 122 -127
		mu 0 4 126 127 128 129
		f 4 133 -170 172 -132
		mu 0 4 130 131 132 133
		f 4 126 129 -131 -128
		mu 0 4 126 129 134 135
		f 4 -135 -117 124 123
		mu 0 4 125 124 136 137
		f 4 148 146 178 -146
		mu 0 4 138 139 140 141
		f 4 138 137 -136 -137
		mu 0 4 142 143 144 145
		f 4 179 177 147 144
		mu 0 4 146 147 148 149
		f 4 136 141 -143 -141
		mu 0 4 142 145 150 151
		f 4 -149 150 -134 -150
		mu 0 4 152 153 154 155
		f 4 156 164 -153 -154
		mu 0 4 156 157 158 159
		f 4 118 163 -157 -159
		mu 0 4 160 161 157 156
		f 4 -158 154 160 -156
		mu 0 4 162 163 164 165
		f 4 -161 119 180 -160
		mu 0 4 165 164 166 167
		f 4 -164 120 -155 -162
		mu 0 4 157 161 168 169
		f 4 -166 162 -152 -122
		mu 0 4 170 171 172 173
		f 4 -148 166 165 -168
		mu 0 4 174 175 176 177
		f 4 143 168 152 -167
		mu 0 4 178 179 159 158
		f 4 -173 -129 130 -171
		mu 0 4 133 132 180 181
		f 4 -118 -174 171 -126
		mu 0 4 182 123 122 183
		f 4 -179 174 142 -176
		mu 0 4 141 140 184 185
		f 4 139 -180 176 -138
		mu 0 4 186 147 146 187
		f 4 182 -210 181 197
		mu 0 4 188 189 190 191
		f 4 208 206 192 190
		mu 0 4 192 193 194 195
		f 4 193 191 207 -191
		mu 0 4 196 197 198 199
		f 4 -211 184 189 -188
		mu 0 4 200 201 202 203
		f 4 183 -194 -189 -187
		mu 0 4 204 197 196 205
		f 4 -212 195 196 -195
		mu 0 4 206 207 208 209
		f 4 -201 198 -197 -200
		mu 0 4 210 211 212 213
		f 4 -213 -183 199 -196
		mu 0 4 214 189 188 215
		f 4 188 203 -198 -203
		mu 0 4 205 196 188 191
		f 4 -193 201 200 -204
		mu 0 4 216 217 218 219
		f 4 -208 204 187 -206
		mu 0 4 199 198 220 221
		f 4 185 -209 205 -190
		mu 0 4 222 193 192 223
		f 4 66 216 -218 -215
		mu 0 4 37 38 225 224
		f 4 -66 213 220 -219
		mu 0 4 36 39 232 233
		f 4 48 221 -223 -217
		mu 0 4 38 53 228 225
		f 4 40 223 -225 -222
		mu 0 4 53 54 229 228
		f 4 -50 218 225 -224
		mu 0 4 234 36 233 235
		f 4 43 214 -228 -227
		mu 0 4 69 37 224 230
		f 4 -34 228 229 -214
		mu 0 4 39 236 237 232
		f 4 -40 226 230 -229
		mu 0 4 70 69 230 231;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "wall_entrance_outside" -p "House_Structure";
createNode mesh -n "wall_entrance_outsideShape" -p "wall_entrance_outside";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.5225085 0.73841423
		 0.61155415 0.73841423 0.61155415 0.957452 0.52250838 0.957452 0.3371833 0.95745212
		 0.3371833 0.73841435 0.45030004 0.73841423 0.45030004 0.95745212 0.49694297 0.73841435
		 0.49694297 0.95745212 0.16639486 0.65781087 0.15511796 0.65781087 0.15511796 0.54320651
		 0.16639486 0.54320651 0.094699703 0.54320651 0.094699703 0.65781087 0.16639486 0.7453689
		 0.15511796 0.7453689 0.95858765 0.88044989 0.86954188 0.88044989 0.86954188 0.8575961
		 0.95858765 0.8575961 0.87102956 0.77045614 0.95858765 0.77045614 0.15511796 0.49656358
		 0.094699703 0.49656358 0.16639486 0.49656358;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  967.39672852 335.7253418 -692.25463867 507.10171509 335.7253418 -692.2545166
		 967.39672852 522.84973145 -692.25463867 507.10171509 522.84985352 -692.2545166 967.39685059 98.017379761 -692.25463867
		 507.10162354 98.017379761 -692.2545166 507.10171509 335.7253418 -692.2545166 967.39672852 335.7253418 -692.25463867
		 967.39672852 4.5301305e-05 -692.25463867 507.10162354 9.0602611e-05 -692.2545166
		 535.75115967 522.84973145 -1054.44250488 535.75115967 338.85165405 -1054.44250488
		 533.5458374 522.84985352 -696.3314209 533.5458374 522.84985352 -744.35723877 533.5458374 335.7253418 -696.3314209
		 535.75115967 98.017379761 -1054.44250488 535.74053955 522.84973145 -927.47686768
		 535.87792969 98.017379761 -1078.14013672 535.87792969 338.85165405 -1078.14013672
		 535.74053955 338.85165405 -927.47686768 535.74053955 98.017379761 -927.47686768 535.87792969 522.84973145 -1078.14013672
		 533.5458374 335.7253418 -744.35723877 535.74053955 -1.0026799e-13 -927.47686768 535.75115967 -8.4391268e-14 -1054.44250488
		 535.87792969 -7.9476248e-14 -1078.14013672;
	setAttr -s 33 ".ed[0:32]"  2 3 0 1 0 0 2 0 0 3 1 0 4 5 1 7 4 0 6 5 0
		 4 8 0 5 9 0 6 7 0 8 9 0 21 10 0 10 11 0 16 19 0 11 15 1 11 19 0 18 11 1 12 14 0 12 13 0
		 13 22 1 22 14 0 13 16 0 15 24 1 20 15 1 15 17 1 18 17 0 19 20 0 21 18 0 22 19 0 20 23 0
		 24 23 0 25 24 0 17 25 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 2 -2 -4 -1
		mu 0 4 0 1 2 3
		f 4 9 5 4 -7
		mu 0 4 4 5 6 7
		f 4 -5 7 10 -9
		mu 0 4 7 6 8 9
		f 4 16 14 24 -26
		mu 0 4 10 11 12 13
		f 4 23 -15 15 26
		mu 0 4 14 12 11 15
		f 4 11 12 -17 -28
		mu 0 4 16 17 11 10
		f 4 17 -21 -20 -19
		mu 0 4 18 19 20 21
		f 4 19 28 -14 -22
		mu 0 4 21 20 22 23
		f 4 -23 -24 29 -31
		mu 0 4 24 12 14 25
		f 4 -25 22 -32 -33
		mu 0 4 13 12 24 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "House_wall" -p "House_Structure";
createNode mesh -n "House_wallShape" -p "House_wall";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.66539693 0.32578552
		 0.50683057 0.32578552 0.50683057 0.54930997 0.66539693 0.54930997 0.45870954 0.32435244
		 0.45870954 0.54971564 0.3971982 0.54971564 0.3971982 0.32435244 0.59154832 0.54563808
		 0.59154844 0.33875835 0.40947223 0.33875835 0.40947223 0.54563808 0.6028018 0.32435244
		 0.60280168 0.54971564 0.56578684 0.54971564 0.56578684 0.32435244 0.59154844 0.66124165
		 0.40947223 0.66124165 0.50683057 0.67421448 0.66539693 0.67421448 0.6028018 0.6756475
		 0.56578684 0.6756475 0.45870954 0.6756475 0.3971982 0.6756475 0.45196497 0.67805827
		 0.45196497 0.55273592 0.59633183 0.55273592 0.59633183 0.67805827 0.59633183 0.39021707
		 0.45196497 0.39217722 0.59633183 0.32194179 0.45196497 0.32194179;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  -896.26397705 522.84973145 42.8136673 -896.26397705 522.84973145 398.022155762
		 -1129.020019531 522.84973145 42.8136673 -956.055114746 522.84973145 42.8136673 -896.26403809 335.41903687 398.022155762
		 -896.26403809 335.41903687 42.8136673 -956.055114746 335.41903687 42.8136673 -1129.020019531 335.41903687 42.8136673
		 -896.26397705 4.0041751e-14 42.8136673 -896.26397705 1.730407e-14 398.022155762 -1228.38098145 335.41903687 42.8136673
		 -1228.38098145 7.9738238e-14 42.8136673 -1129.020019531 7.5832393e-14 42.8136673
		 -1226.52954102 3.5678376e-14 398.022155762 -1226.52954102 335.41903687 398.022155762
		 -956.055114746 4.320855e-14 42.8136673 -1226.52954102 522.84973145 398.022155762
		 -1228.38098145 522.84973145 42.8136673 -1195.91833496 522.84973145 398.41937256 -1195.91833496 338.85165405 398.41937256
		 -1195.91833496 338.85165405 35.83288574 -1195.91833496 522.84973145 35.83285522 -1195.91833496 100.2416687 35.83285522
		 -1195.91833496 103.11955261 398.41937256 -1195.91833496 -7.7727951e-14 35.83285522
		 -1195.91833496 -4.7934794e-14 398.41937256;
	setAttr -s 36 ".ed[0:35]"  0 5 0 0 3 0 1 0 0 9 4 0 1 16 0 2 17 0 12 7 0
		 3 2 0 15 6 0 4 1 0 14 4 1 5 8 0 4 5 1 6 3 1 5 6 1 7 2 1 6 7 0 7 10 1 8 9 0 10 11 0
		 12 11 0 9 13 0 13 14 0 8 15 0 14 16 0 17 10 0 18 21 0 19 20 1 23 22 0 25 24 0 18 19 0
		 21 20 0 20 22 0 19 23 0 22 24 0 23 25 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 18 3 12 11
		mu 0 4 0 1 2 3
		f 4 6 17 19 -21
		mu 0 4 4 5 6 7
		f 4 -4 21 22 10
		mu 0 4 8 9 10 11
		f 4 -12 14 -9 -24
		mu 0 4 12 13 14 15
		f 4 -10 -11 24 -5
		mu 0 4 16 8 11 17
		f 4 -13 9 2 0
		mu 0 4 3 2 18 19
		f 4 -15 -1 1 -14
		mu 0 4 14 13 20 21
		f 4 -17 13 7 -16
		mu 0 4 5 14 21 22
		f 4 -18 15 5 25
		mu 0 4 6 5 22 23
		f 4 30 27 -32 -27
		mu 0 4 24 25 26 27
		f 4 -33 -28 33 28
		mu 0 4 28 26 25 29
		f 4 -35 -29 35 29
		mu 0 4 30 28 29 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Wainscotting" -p "House_Main_Group";
createNode transform -n "Large_Wainscotting" -p "Wainscotting";
createNode mesh -n "Large_WainscottingShape" -p "Large_Wainscotting";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:125]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 294 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[250:293]" 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  -696.41400146 -20.18741608 -267.1368103 -696.41400146 -20.18741608 -273.47146606
		 -696.41400146 162.2220459 -267.1368103 -696.41400146 162.2220459 -273.47146606 -1215.20410156 162.2220459 -267.1368103
		 -1215.20410156 162.2220459 -273.47146606 -1215.20410156 -20.18741608 -267.1368103
		 -1215.20410156 -20.18741608 -273.47146606 -26.25927734 -20.50232697 -269.37463379
		 -26.25927734 -20.50232697 -275.70928955 -26.25927734 161.90713501 -269.37463379 -26.25927734 161.90713501 -275.70928955
		 -360.59060669 161.90713501 -269.37463379 -360.59060669 161.90713501 -275.70928955
		 -360.59060669 -20.50232697 -269.37463379 -360.59060669 -20.50232697 -275.70928955
		 -22.1687355 -1.79009247 133.4556427 -17.022655487 -1.79009247 133.4556427 -22.1687355 161.97232056 133.4556427
		 -17.022655487 161.97232056 133.4556427 -22.1687355 161.97232056 -454.20587158 -17.022655487 161.97232056 -454.20587158
		 -22.1687355 -1.79009247 -454.20587158 -17.022655487 -1.79009247 -454.20587158 517.612854 -1.79009247 140.63766479
		 517.612854 -1.79009247 133.69961548 517.612854 161.97232056 140.63766479 517.612854 161.97232056 133.69961548
		 309.91329956 161.97232056 140.63766479 309.91329956 161.97232056 133.69961548 309.91329956 -1.79009247 140.63766479
		 309.91329956 -1.79009247 133.69961548 308.24154663 -1.79009247 -279.35479736 313.38760376 -1.79009247 -279.35479736
		 308.24154663 161.97232056 -279.35479736 313.38760376 161.97232056 -279.35479736 308.24154663 161.97232056 -462.060424805
		 313.38760376 161.97232056 -462.060424805 308.24154663 -1.79009247 -462.060424805
		 313.38760376 -1.79009247 -462.060424805 305.015594482 -1.79009247 140.40086365 310.16165161 -1.79009247 140.40086365
		 305.015594482 161.97232056 140.40086365 310.16165161 161.97232056 140.40086365 305.015594482 161.97232056 -65.65049744
		 310.16165161 161.97232056 -65.65049744 305.015594482 -1.79009247 -65.65049744 310.16165161 -1.79009247 -65.65049744
		 505.3237915 -1.79009247 427.39532471 505.3237915 -1.79009247 420.45727539 505.3237915 161.97232056 427.39532471
		 505.3237915 161.97232056 420.45727539 251.2175293 161.97232056 427.39532471 251.2175293 161.97232056 420.45727539
		 251.2175293 -1.79009247 427.39532471 251.2175293 -1.79009247 420.45727539 -298.27703857 -65.66088104 -1048.52819824
		 -298.27703857 -65.66088104 -1054.86291504 -298.27703857 98.10152435 -1048.52819824
		 -298.27703857 98.10152435 -1054.86291504 -680.12561035 98.10152435 -1048.52819824
		 -680.12561035 98.10152435 -1054.86291504 -680.12561035 -65.66088104 -1048.52819824
		 -680.12561035 -65.66088104 -1054.86291504 48.71765137 -1.79009247 433.063568115 48.71765137 -1.79009247 426.1255188
		 48.71765137 161.97232056 433.063568115 48.71765137 161.97232056 426.1255188 -46.62220764 161.97232056 433.063568115
		 -46.62220764 161.97232056 426.1255188 -46.62220764 -1.79009247 433.063568115 -46.62220764 -1.79009247 426.1255188
		 -52.74840164 -1.79009247 -261.83251953 -47.60232162 -1.79009247 -261.83251953 -52.74840164 161.97232056 -261.83251953
		 -47.60232162 161.97232056 -261.83251953 -52.74840164 161.97232056 -453.49090576 -47.60232162 161.97232056 -453.49090576
		 -52.74840164 -1.79009247 -453.49090576 -47.60232162 -1.79009247 -453.49090576 -1195.97729492 -1.79009247 -261.91418457
		 -1190.83129883 -1.79009247 -261.91418457 -1195.97729492 161.97232056 -261.91418457
		 -1190.83129883 161.97232056 -261.91418457 -1195.97729492 161.97232056 -368.49890137
		 -1190.83129883 161.97232056 -368.49890137 -1195.97729492 -1.79009247 -368.49890137
		 -1190.83129883 -1.79009247 -368.49890137 -1195.97729492 -1.79009247 -739.83752441
		 -1190.83129883 -1.79009247 -739.83752441 -1195.97729492 161.97232056 -739.83752441
		 -1190.83129883 161.97232056 -739.83752441 -1195.97729492 161.97232056 -795.859375
		 -1190.83129883 161.97232056 -795.859375 -1195.97729492 -1.79009247 -795.859375 -1190.83129883 -1.79009247 -795.859375
		 -907.79803467 -1.79009247 -1054.97241211 -912.26623535 -1.79009247 -1059.46264648
		 -907.79803467 161.97232056 -1054.97241211 -912.26623535 161.97232056 -1059.46264648
		 -1196.68200684 161.97232056 -767.5090332 -1201.15026855 161.97232056 -771.99926758
		 -1196.68200684 -1.79009247 -767.5090332 -1201.15026855 -1.79009247 -771.99926758
		 -680.53662109 -1.79009247 -1048.52819824 -680.53662109 -1.79009247 -1054.86291504
		 -680.53662109 161.97232056 -1048.52819824 -680.53662109 161.97232056 -1054.86291504
		 -952.88098145 161.97232056 -1048.52819824 -952.88098145 161.97232056 -1054.86291504
		 -952.88098145 -1.79009247 -1048.52819824 -952.88098145 -1.79009247 -1054.86291504
		 -24.91998291 -1.79009247 -1048.52819824 -24.91998291 -1.79009247 -1054.86291504 -24.91998291 161.97232056 -1048.52819824
		 -24.91998291 161.97232056 -1054.86291504 -297.26437378 161.97232056 -1048.52819824
		 -297.26437378 161.97232056 -1054.86291504 -297.26437378 -1.79009247 -1048.52819824
		 -297.26437378 -1.79009247 -1054.86291504 -53.25928879 -1.79009247 -666.22558594 -48.11320877 -1.79009247 -666.22558594
		 -53.25928879 161.97232056 -666.22558594 -48.11320877 161.97232056 -666.22558594 -53.25928879 161.97232056 -1061.4050293
		 -48.11320877 161.97232056 -1061.4050293 -53.25928879 -1.79009247 -1061.4050293 -48.11320877 -1.79009247 -1061.4050293
		 521.38238525 -1.79009247 -455.25012207 521.38238525 -1.79009247 -462.18817139 521.38238525 161.97232056 -455.25012207
		 521.38238525 161.97232056 -462.18817139 313.68280029 161.97232056 -455.25012207 313.68280029 161.97232056 -462.18817139
		 313.68280029 -1.79009247 -455.25012207 313.68280029 -1.79009247 -462.18817139 503.28579712 -1.79009247 -666.055358887
		 508.43185425 -1.79009247 -666.055358887 503.28579712 161.97232056 -666.055358887
		 508.43185425 161.97232056 -666.055358887 503.28579712 161.97232056 -744.79852295
		 508.43185425 161.97232056 -744.79852295 503.28579712 -1.79009247 -744.79852295 508.43185425 -1.79009247 -744.79852295
		 499.04196167 -1.79009247 -927.32373047 505.95993042 -1.79009247 -927.32373047 499.04196167 161.97232056 -927.32373047
		 505.95993042 161.97232056 -927.32373047 499.04196167 161.97232056 -1058.080810547
		 505.95993042 161.97232056 -1058.080810547 499.04196167 -1.79009247 -1058.080810547
		 505.95993042 -1.79009247 -1058.080810547 -17.03524971 -1.79009247 -666.51196289 -11.88916779 -1.79009247 -666.51196289
		 -17.03524971 161.97232056 -666.51196289 -11.88916779 161.97232056 -666.51196289 -17.03524971 161.97232056 -1061.69140625
		 -11.88916779 161.97232056 -1061.69140625 -17.03524971 -1.79009247 -1061.69140625
		 -11.88916779 -1.79009247 -1061.69140625 515.65429688 -1.79009247 -1047.43225098 515.65429688 -1.79009247 -1053.76696777
		 515.65429688 161.97232056 -1047.43225098 515.65429688 161.97232056 -1053.76696777
		 -27.86686707 161.97232056 -1047.43225098 -27.86686707 161.97232056 -1053.76696777;
	setAttr ".vt[166:167]" -27.86686707 -1.79009247 -1047.43225098 -27.86686707 -1.79009247 -1053.76696777;
	setAttr -s 252 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:251]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0 120 121 0
		 122 123 0 124 125 0 126 127 0 120 122 0 121 123 0 122 124 0 123 125 0 124 126 0 125 127 0
		 126 120 0 127 121 0 128 129 0 130 131 0 132 133 0 134 135 0 128 130 0 129 131 0 130 132 0
		 131 133 0 132 134 0 133 135 0 134 128 0 135 129 0 136 137 0 138 139 0 140 141 0 142 143 0
		 136 138 0 137 139 0 138 140 0 139 141 0 140 142 0 141 143 0 142 136 0 143 137 0 144 145 0
		 146 147 0 148 149 0 150 151 0 144 146 0 145 147 0 146 148 0 147 149 0 148 150 0 149 151 0
		 150 144 0 151 145 0 152 153 0 154 155 0 156 157 0 158 159 0 152 154 0 153 155 0 154 156 0
		 155 157 0 156 158 0 157 159 0 158 152 0 159 153 0 160 161 0 162 163 0 164 165 0 166 167 0
		 160 162 0 161 163 0 162 164 0 163 165 0 164 166 0 165 167 0 166 160 0 167 161 0;
	setAttr -s 126 -ch 504 ".fc[0:125]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181
		f 4 156 161 -158 -161
		mu 0 4 182 183 184 185
		f 4 157 163 -159 -163
		mu 0 4 185 184 186 187
		f 4 158 165 -160 -165
		mu 0 4 187 186 188 189
		f 4 159 167 -157 -167
		mu 0 4 189 188 190 191
		f 4 -168 -166 -164 -162
		mu 0 4 183 192 193 184
		f 4 166 160 162 164
		mu 0 4 194 182 185 195
		f 4 168 173 -170 -173
		mu 0 4 196 197 198 199
		f 4 169 175 -171 -175
		mu 0 4 199 198 200 201
		f 4 170 177 -172 -177
		mu 0 4 201 200 202 203
		f 4 171 179 -169 -179
		mu 0 4 203 202 204 205
		f 4 -180 -178 -176 -174
		mu 0 4 197 206 207 198
		f 4 178 172 174 176
		mu 0 4 208 196 199 209
		f 4 180 185 -182 -185
		mu 0 4 210 211 212 213
		f 4 181 187 -183 -187
		mu 0 4 213 212 214 215
		f 4 182 189 -184 -189
		mu 0 4 215 214 216 217
		f 4 183 191 -181 -191
		mu 0 4 217 216 218 219
		f 4 -192 -190 -188 -186
		mu 0 4 211 220 221 212
		f 4 190 184 186 188
		mu 0 4 222 210 213 223
		f 4 192 197 -194 -197
		mu 0 4 224 225 226 227
		f 4 193 199 -195 -199
		mu 0 4 227 226 228 229
		f 4 194 201 -196 -201
		mu 0 4 229 228 230 231
		f 4 195 203 -193 -203
		mu 0 4 231 230 232 233
		f 4 -204 -202 -200 -198
		mu 0 4 225 234 235 226
		f 4 202 196 198 200
		mu 0 4 236 224 227 237
		f 4 204 209 -206 -209
		mu 0 4 238 239 240 241
		f 4 205 211 -207 -211
		mu 0 4 241 240 242 243
		f 4 206 213 -208 -213
		mu 0 4 243 242 244 245
		f 4 207 215 -205 -215
		mu 0 4 245 244 246 247
		f 4 -216 -214 -212 -210
		mu 0 4 239 248 249 240
		f 4 214 208 210 212
		mu 0 4 250 238 241 251
		f 4 216 221 -218 -221
		mu 0 4 252 253 254 255
		f 4 217 223 -219 -223
		mu 0 4 255 254 256 257
		f 4 218 225 -220 -225
		mu 0 4 257 256 258 259
		f 4 219 227 -217 -227
		mu 0 4 259 258 260 261
		f 4 -228 -226 -224 -222
		mu 0 4 253 262 263 254
		f 4 226 220 222 224
		mu 0 4 264 252 255 265
		f 4 228 233 -230 -233
		mu 0 4 266 267 268 269
		f 4 229 235 -231 -235
		mu 0 4 269 268 270 271
		f 4 230 237 -232 -237
		mu 0 4 271 270 272 273
		f 4 231 239 -229 -239
		mu 0 4 273 272 274 275
		f 4 -240 -238 -236 -234
		mu 0 4 267 276 277 268
		f 4 238 232 234 236
		mu 0 4 278 266 269 279
		f 4 240 245 -242 -245
		mu 0 4 280 281 282 283
		f 4 241 247 -243 -247
		mu 0 4 283 282 284 285
		f 4 242 249 -244 -249
		mu 0 4 285 284 286 287
		f 4 243 251 -241 -251
		mu 0 4 287 286 288 289
		f 4 -252 -250 -248 -246
		mu 0 4 281 290 291 282
		f 4 250 244 246 248
		mu 0 4 292 280 283 293;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "top_small_wainscotting" -p "Wainscotting";
	setAttr ".rp" -type "double3" 0 482.08076940649903 0 ;
	setAttr ".sp" -type "double3" 0 482.08076940649903 0 ;
createNode mesh -n "top_small_wainscottingShape" -p "top_small_wainscotting";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:203]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 358 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.5 0.625 0.5 0.375 0.75
		 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 1 0.375 1 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625
		 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 1 0.375
		 1 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 1 0.375
		 1 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 1 0.375 1 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625
		 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 1 0.375
		 1 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.875 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[250:357]" 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 1 0.375 1 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25
		 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 1 0.375 1 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[32]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[33]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[34]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[35]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[36]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[37]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[38]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[39]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[40]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[41]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[42]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[43]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[44]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[45]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[46]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[47]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[48]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[49]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[50]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[51]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[52]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[53]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[54]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[55]" -type "float3" 0 0 48.337936 ;
	setAttr ".pt[56]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[57]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[58]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[59]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[60]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[61]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[62]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[63]" -type "float3" 0 0 235.12161 ;
	setAttr ".pt[168]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[169]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[170]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[171]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[200]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[201]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[202]" -type "float3" 0 0 323.76379 ;
	setAttr ".pt[203]" -type "float3" 0 0 323.76379 ;
	setAttr -s 208 ".vt";
	setAttr ".vt[0:165]"  -1215.20410156 521.41101074 -239.42849731 -1215.20410156 521.41101074 -245.76312256
		 -1215.20410156 474.74359131 -239.42849731 -1215.20410156 474.74359131 -245.76312256
		 -26.25927734 474.74359131 -242.53393555 -26.25927734 474.74359131 -248.86856079 -26.25927734 521.41101074 -242.53393555
		 -26.25927734 521.41101074 -248.86856079 -46.96792603 474.74359131 800.14074707 -46.96792603 474.74359131 793.80615234
		 -46.96792603 521.41101074 800.14074707 -46.96792603 521.41101074 793.80615234 -1229.6307373 521.41101074 800.14074707
		 -1229.6307373 521.41101074 793.80615234 -1229.6307373 474.74359131 800.14074707 -1229.6307373 474.74359131 793.80615234
		 -1196.30895996 474.74359131 820.47558594 -1189.97424316 474.74359131 820.47558594
		 -1196.30895996 521.41101074 820.47558594 -1189.97424316 521.41101074 820.47558594
		 -1196.30895996 521.41101074 -252.10430908 -1189.97424316 521.41101074 -252.10430908
		 -1196.30895996 474.74359131 -252.10430908 -1189.97424316 474.74359131 -252.10430908
		 -53.83022308 521.41101074 -247.9506073 -47.49559784 521.41101074 -247.9506073 -53.83022308 474.74359131 -247.9506073
		 -47.49559784 474.74359131 -247.9506073 -52.47909546 474.74359131 831.91101074 -46.14446259 474.74359131 831.91101074
		 -52.47909546 521.41101074 831.91101074 -46.14446259 521.41101074 831.91101074 -872.88574219 474.74359131 571.67407227
		 -866.55114746 474.74359131 571.67407227 -872.88574219 521.41101074 571.67407227 -866.55114746 521.41101074 571.67407227
		 -872.88574219 521.41101074 -24.062683105 -866.55114746 521.41101074 -24.062683105
		 -872.88574219 474.74359131 -24.062683105 -866.55114746 474.74359131 -24.062683105
		 -866.82440186 474.74359131 -20.48185158 -866.82440186 474.74359131 -26.81648064 -866.82440186 521.41101074 -20.48185158
		 -866.82440186 521.41101074 -26.81648064 -902.21868896 521.41101074 -20.48185158 -902.21868896 521.41101074 -26.81648064
		 -902.21868896 474.74359131 -20.48185158 -902.21868896 474.74359131 -26.81648064 -902.48876953 474.74359131 571.67407227
		 -896.1541748 474.74359131 571.67407227 -902.48876953 521.41101074 571.67407227 -896.1541748 521.41101074 571.67407227
		 -902.48876953 521.41101074 -24.062683105 -896.1541748 521.41101074 -24.062683105
		 -902.48876953 474.74359131 -24.062683105 -896.1541748 474.74359131 -24.062683105
		 -866.82440186 474.74359131 575.55236816 -866.82440186 474.74359131 569.21777344 -866.82440186 521.41101074 575.55236816
		 -866.82440186 521.41101074 569.21777344 -902.21868896 521.41101074 575.55236816 -902.21868896 521.41101074 569.21777344
		 -902.21868896 474.74359131 575.55236816 -902.21868896 474.74359131 569.21777344 494.26098633 474.74359131 811.58984375
		 500.59564209 474.74359131 811.58984375 494.26098633 521.41101074 811.58984375 500.59564209 521.41101074 811.58984375
		 494.26098633 521.41101074 441.061737061 500.59564209 521.41101074 441.061737061 494.26098633 474.74359131 441.061737061
		 500.59564209 474.74359131 441.061737061 -21.53026772 474.74359131 811.58984375 -15.19563866 474.74359131 811.58984375
		 -21.53026772 521.41101074 811.58984375 -15.19563866 521.41101074 811.58984375 -21.53026772 521.41101074 441.061737061
		 -15.19563866 521.41101074 441.061737061 -21.53026772 474.74359131 441.061737061 -15.19563866 474.74359131 441.061737061
		 505.55419922 474.74359131 807.67407227 505.55419922 474.74359131 801.33947754 505.55419922 521.41101074 807.67407227
		 505.55419922 521.41101074 801.33947754 -23.47174072 521.41101074 807.67407227 -23.47174072 521.41101074 801.33947754
		 -23.47174072 474.74359131 807.67407227 -23.47174072 474.74359131 801.33947754 506.82275391 474.74359131 452.68270874
		 506.82275391 474.74359131 446.34805298 506.82275391 521.41101074 452.68270874 506.82275391 521.41101074 446.34805298
		 -21.96410942 521.41101074 462.63577271 -21.96410942 521.41101074 456.30111694 -21.96410942 474.74359131 462.63577271
		 -21.96410942 474.74359131 456.30111694 1224.35644531 474.74359131 807.67407227 1224.35644531 474.74359131 801.33947754
		 1224.35644531 521.41101074 807.67407227 1224.35644531 521.41101074 801.33947754 523.28771973 521.41101074 807.67407227
		 523.28771973 521.41101074 801.33947754 523.28771973 474.74359131 807.67407227 523.28771973 474.74359131 801.33947754
		 1228.86206055 474.74359131 543.81817627 1228.86206055 474.74359131 537.48358154 1228.86206055 521.41101074 543.81817627
		 1228.86206055 521.41101074 537.48358154 524.098754883 474.74359131 809.85876465 530.43334961 474.74359131 809.85876465
		 524.098754883 521.41101074 809.85876465 530.43334961 521.41101074 809.85876465 524.098754883 521.41101074 528.61523438
		 530.43334961 521.41101074 528.61523438 524.098754883 474.74359131 528.61523438 530.43334961 474.74359131 528.61523438
		 1207.32641602 474.74359131 809.85876465 1213.66113281 474.74359131 809.85876465 1207.32641602 521.41101074 809.85876465
		 1213.66113281 521.41101074 809.85876465 1207.32641602 521.41101074 528.61523438 1213.66113281 521.41101074 528.61523438
		 1207.32641602 474.74359131 528.61523438 1213.66113281 474.74359131 528.61523438 514.7520752 521.41101074 541.93365479
		 514.7520752 521.41101074 535.59906006 514.7520752 474.74359131 541.93365479 514.7520752 474.74359131 535.59906006
		 1235.042602539 474.74359131 27.90436745 1235.042602539 474.74359131 21.56973839 1235.042602539 521.41101074 27.90436745
		 1235.042602539 521.41101074 21.56973839 528.3258667 521.41101074 26.56140709 528.3258667 521.41101074 20.22677803
		 528.3258667 474.74359131 26.56140709 528.3258667 474.74359131 20.22677803 1231.09753418 474.74359131 514.33721924
		 1231.09753418 474.74359131 508.0025634766 1231.09753418 521.41101074 514.33721924
		 1231.09753418 521.41101074 508.0025634766 951.70275879 521.41101074 514.33721924
		 951.70275879 521.41101074 508.0025634766 951.70275879 474.74359131 514.33721924 951.70275879 474.74359131 508.0025634766
		 773.80578613 474.74359131 513.35412598 773.80578613 474.74359131 507.019500732 773.80578613 521.41101074 513.35412598
		 773.80578613 521.41101074 507.019500732 512.2611084 521.41101074 513.35412598 512.2611084 521.41101074 507.019500732
		 512.2611084 474.74359131 513.35412598 512.2611084 474.74359131 507.019500732 1206.99633789 474.74359131 535.84545898
		 1213.33105469 474.74359131 535.84545898 1206.99633789 521.41101074 535.84545898 1213.33105469 521.41101074 535.84545898
		 1206.99633789 521.41101074 -0.049926758 1213.33105469 521.41101074 -0.049926758 1206.99633789 474.74359131 -0.049926758
		 1213.33105469 474.74359131 -0.049926758 1235.042602539 474.74359131 -3.67437553 1235.042602539 474.74359131 -10.0090045929
		 1235.042602539 521.41101074 -3.67437553 1235.042602539 521.41101074 -10.0090045929
		 1206.99633789 474.74359131 7.23391724 1213.33105469 474.74359131 7.23391724;
	setAttr ".vt[166:207]" 1206.99633789 521.41101074 7.23391724 1213.33105469 521.41101074 7.23391724
		 1206.99633789 521.41101074 -1031.0029296875 1213.33105469 521.41101074 -1031.0029296875
		 1206.99633789 474.74359131 -1031.0029296875 1213.33105469 474.74359131 -1031.0029296875
		 523.93444824 474.74359131 514.12860107 530.26904297 474.74359131 514.12860107 523.93444824 521.41101074 514.12860107
		 530.26904297 521.41101074 514.12860107 530.80041504 521.41101074 18.9503479 537.13500977 521.41101074 18.9503479
		 530.80041504 474.74359131 18.9503479 537.13500977 474.74359131 18.9503479 530.80041504 474.74359131 4.68234253
		 537.13500977 474.74359131 4.68234253 530.80041504 521.41101074 4.68234253 537.13500977 521.41101074 4.68234253
		 530.80041504 521.41101074 -662.29095459 537.13500977 521.41101074 -662.29095459 530.80041504 474.74359131 -662.29095459
		 537.13500977 474.74359131 -662.29095459 528.3258667 521.41101074 -3.7428565 528.3258667 521.41101074 -10.077486038
		 528.3258667 474.74359131 -3.7428565 528.3258667 474.74359131 -10.077486038 967.68603516 474.74359131 -660.50183105
		 967.68603516 474.74359131 -666.83642578 967.68603516 521.41101074 -660.50183105 967.68603516 521.41101074 -666.83642578
		 501.85766602 521.41101074 -660.50183105 501.85766602 521.41101074 -666.83642578 501.85766602 474.74359131 -660.50183105
		 501.85766602 474.74359131 -666.83642578 1215.87341309 474.74359131 -1007.46673584
		 1215.87341309 474.74359131 -1013.80133057 1215.87341309 521.41101074 -1007.46673584
		 1215.87341309 521.41101074 -1013.80133057 1231.6862793 474.74359131 -660.50183105
		 1231.6862793 474.74359131 -666.83642578 1231.6862793 521.41101074 -666.83642578 1231.6862793 521.41101074 -660.50183105;
	setAttr -s 308 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 0 2 0 1 3 0 4 5 0 6 7 0 4 6 0 5 7 0 8 9 0
		 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0
		 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0
		 23 17 0 24 25 0 26 27 0 24 26 0 25 27 0 28 29 0 30 31 0 28 30 0 29 31 0 32 33 0 34 35 0
		 36 37 0 38 39 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0
		 42 43 0 44 45 0 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0
		 48 49 0 50 51 0 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0
		 55 49 0 56 57 0 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0
		 62 56 0 63 57 0 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0
		 69 71 0 70 64 0 71 65 0 72 73 0 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0
		 76 78 0 77 79 0 78 72 0 79 73 0 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0
		 83 85 0 84 86 0 85 87 0 86 80 0 87 81 0 88 89 0 90 91 0 88 90 0 89 91 0 92 93 0 94 95 0
		 92 94 0 93 95 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 104 106 0 105 107 0 108 109 0
		 110 111 0 112 113 0 114 115 0 108 110 0 109 111 0 110 112 0 111 113 0 112 114 0 113 115 0
		 114 108 0 115 109 0 116 117 0 118 119 0 120 121 0 122 123 0 116 118 0 117 119 0;
	setAttr ".ed[166:307]" 118 120 0 119 121 0 120 122 0 121 123 0 122 116 0 123 117 0
		 124 125 0 126 127 0 124 126 0 125 127 0 128 129 0 130 131 0 128 130 0 129 131 0 132 133 0
		 134 135 0 132 134 0 133 135 0 136 137 0 138 139 0 136 138 0 137 139 0 138 140 0 139 141 0
		 142 136 0 143 137 0 148 149 0 150 151 0 146 148 0 147 149 0 148 150 0 149 151 0 150 144 0
		 151 145 0 152 153 0 154 155 0 156 157 0 158 159 0 152 154 0 153 155 0 154 156 0 155 157 0
		 156 158 0 157 159 0 158 152 0 159 153 0 160 161 0 162 163 0 160 162 0 161 163 0 164 165 0
		 166 167 0 168 169 0 170 171 0 164 166 0 165 167 0 166 168 0 167 169 0 168 170 0 169 171 0
		 170 164 0 171 165 0 172 173 0 174 175 0 172 174 0 173 175 0 176 177 0 178 179 0 176 178 0
		 177 179 0 180 181 0 182 183 0 184 185 0 186 187 0 180 182 0 181 183 0 182 184 0 183 185 0
		 184 186 0 185 187 0 186 180 0 187 181 0 188 189 0 190 191 0 188 190 0 189 191 0 192 193 1
		 194 195 1 196 197 0 198 199 0 192 194 1 193 195 1 194 196 0 195 197 0 196 198 0 197 199 0
		 198 192 0 199 193 0 200 201 0 202 203 0 200 202 0 201 203 0 3 5 0 1 7 0 0 6 0 2 4 0
		 27 29 0 25 31 0 24 30 0 26 28 0 91 93 0 89 95 0 88 94 0 90 92 0 175 177 0 173 179 0
		 172 178 0 174 176 0 141 147 0 143 145 0 142 144 0 140 146 0 107 125 0 105 127 0 104 126 0
		 106 124 0 131 133 0 129 135 0 128 134 0 130 132 0 163 189 0 161 191 0 160 190 0 162 188 0
		 192 204 0 193 205 0 204 205 0 195 206 0 205 206 0 194 207 0 207 206 0 204 207 0;
	setAttr -s 149 -ch 612 ".fc[0:148]" -type "polyFaces" 
		f 4 -270 -1 270 5
		mu 0 4 10 1 0 11
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2
		f 4 4 7 -6 -7
		mu 0 4 8 9 10 11
		f 4 -5 -272 1 268
		mu 0 4 12 13 2 3
		f 4 6 -271 2 271
		mu 0 4 8 11 7 6
		f 4 8 13 -10 -13
		mu 0 4 14 15 16 17
		f 4 9 15 -11 -15
		mu 0 4 17 16 18 19
		f 4 10 17 -12 -17
		mu 0 4 19 18 20 21
		f 4 11 19 -9 -19
		mu 0 4 21 20 22 23
		f 4 -20 -18 -16 -14
		mu 0 4 15 24 25 16
		f 4 18 12 14 16
		mu 0 4 26 14 17 27
		f 4 20 25 -22 -25
		mu 0 4 28 29 30 31
		f 4 21 27 -23 -27
		mu 0 4 31 30 32 33
		f 4 22 29 -24 -29
		mu 0 4 33 32 34 35
		f 4 23 31 -21 -31
		mu 0 4 35 34 36 37
		f 4 -32 -30 -28 -26
		mu 0 4 29 38 39 30
		f 4 30 24 26 28
		mu 0 4 40 28 31 41
		f 4 -274 -33 274 37
		mu 0 4 52 42 43 53
		f 4 32 35 -34 -35
		mu 0 4 43 42 44 45
		f 4 36 39 -38 -39
		mu 0 4 50 51 52 53
		f 4 -37 -276 33 272
		mu 0 4 54 55 45 44
		f 4 38 -275 34 275
		mu 0 4 50 53 49 48
		f 4 40 45 -42 -45
		mu 0 4 56 57 58 59
		f 4 41 47 -43 -47
		mu 0 4 59 58 60 61
		f 4 42 49 -44 -49
		mu 0 4 61 60 62 63
		f 4 43 51 -41 -51
		mu 0 4 63 62 64 65
		f 4 -52 -50 -48 -46
		mu 0 4 57 66 67 58
		f 4 50 44 46 48
		mu 0 4 68 56 59 69
		f 4 52 57 -54 -57
		mu 0 4 70 71 72 73
		f 4 53 59 -55 -59
		mu 0 4 73 72 74 75
		f 4 54 61 -56 -61
		mu 0 4 75 74 76 77
		f 4 55 63 -53 -63
		mu 0 4 77 76 78 79
		f 4 -64 -62 -60 -58
		mu 0 4 71 80 81 72
		f 4 62 56 58 60
		mu 0 4 82 70 73 83
		f 4 64 69 -66 -69
		mu 0 4 84 85 86 87
		f 4 65 71 -67 -71
		mu 0 4 87 86 88 89
		f 4 66 73 -68 -73
		mu 0 4 89 88 90 91
		f 4 67 75 -65 -75
		mu 0 4 91 90 92 93
		f 4 -76 -74 -72 -70
		mu 0 4 85 94 95 86
		f 4 74 68 70 72
		mu 0 4 96 84 87 97
		f 4 76 81 -78 -81
		mu 0 4 98 99 100 101
		f 4 77 83 -79 -83
		mu 0 4 101 100 102 103
		f 4 78 85 -80 -85
		mu 0 4 103 102 104 105
		f 4 79 87 -77 -87
		mu 0 4 105 104 106 107
		f 4 -88 -86 -84 -82
		mu 0 4 99 108 109 100
		f 4 86 80 82 84
		mu 0 4 110 98 101 111
		f 4 88 93 -90 -93
		mu 0 4 112 113 114 115
		f 4 89 95 -91 -95
		mu 0 4 115 114 116 117
		f 4 90 97 -92 -97
		mu 0 4 117 116 118 119
		f 4 91 99 -89 -99
		mu 0 4 119 118 120 121
		f 4 -100 -98 -96 -94
		mu 0 4 113 122 123 114
		f 4 98 92 94 96
		mu 0 4 124 112 115 125
		f 4 100 105 -102 -105
		mu 0 4 126 127 128 129
		f 4 101 107 -103 -107
		mu 0 4 129 128 130 131
		f 4 102 109 -104 -109
		mu 0 4 131 130 132 133
		f 4 103 111 -101 -111
		mu 0 4 133 132 134 135
		f 4 -112 -110 -108 -106
		mu 0 4 127 136 137 128
		f 4 110 104 106 108
		mu 0 4 138 126 129 139
		f 4 112 117 -114 -117
		mu 0 4 140 141 142 143
		f 4 113 119 -115 -119
		mu 0 4 143 142 144 145
		f 4 114 121 -116 -121
		mu 0 4 145 144 146 147
		f 4 115 123 -113 -123
		mu 0 4 147 146 148 149
		f 4 -124 -122 -120 -118
		mu 0 4 141 150 151 142
		f 4 122 116 118 120
		mu 0 4 152 140 143 153
		f 4 124 127 -126 -127
		mu 0 4 154 155 156 157
		f 4 -125 278 129 -278
		mu 0 4 158 159 163 162
		f 4 126 279 130 -279
		mu 0 4 154 157 167 166
		f 4 276 -129 -280 125
		mu 0 4 156 160 161 157
		f 4 128 131 -130 -131
		mu 0 4 161 160 162 163
		f 4 132 137 -134 -137
		mu 0 4 168 169 170 171
		f 4 133 139 -135 -139
		mu 0 4 171 170 172 173
		f 4 134 141 -136 -141
		mu 0 4 173 172 174 175
		f 4 135 143 -133 -143
		mu 0 4 175 174 176 177
		f 4 -144 -142 -140 -138
		mu 0 4 169 178 179 170
		f 4 142 136 138 140
		mu 0 4 180 168 171 181
		f 4 144 147 -146 -147
		mu 0 4 182 183 184 185
		f 4 -145 290 173 -290
		mu 0 4 186 187 219 218
		f 4 146 291 174 -291
		mu 0 4 182 185 223 222
		f 4 148 153 -150 -153
		mu 0 4 188 189 190 191
		f 4 149 155 -151 -155
		mu 0 4 191 190 192 193
		f 4 150 157 -152 -157
		mu 0 4 193 192 194 195
		f 4 151 159 -149 -159
		mu 0 4 195 194 196 197
		f 4 -160 -158 -156 -154
		mu 0 4 189 198 199 190
		f 4 158 152 154 156
		mu 0 4 200 188 191 201
		f 4 160 165 -162 -165
		mu 0 4 202 203 204 205
		f 4 161 167 -163 -167
		mu 0 4 205 204 206 207
		f 4 162 169 -164 -169
		mu 0 4 207 206 208 209
		f 4 163 171 -161 -171
		mu 0 4 209 208 210 211
		f 4 -172 -170 -168 -166
		mu 0 4 203 212 213 204
		f 4 170 164 166 168
		mu 0 4 214 202 205 215
		f 4 288 -173 -292 145
		mu 0 4 184 216 217 185
		f 4 172 175 -174 -175
		mu 0 4 217 216 218 219
		f 4 176 179 -178 -179
		mu 0 4 224 225 226 227
		f 4 -294 -177 294 181
		mu 0 4 232 228 229 233
		f 4 -181 -296 177 292
		mu 0 4 230 231 227 226
		f 4 180 183 -182 -183
		mu 0 4 231 230 232 233
		f 4 182 -295 178 295
		mu 0 4 237 236 224 227
		f 4 184 187 -186 -187
		mu 0 4 238 239 240 241
		f 8 -286 191 -185 -191 286 -199 193 199
		mu 0 8 260 244 246 247 245 261 259 258
		f 8 195 -193 -195 -288 -189 185 189 284
		mu 0 8 254 256 257 255 243 241 240 242
		f 4 192 197 -194 -197
		mu 0 4 257 256 258 259
		f 8 194 196 198 -287 190 186 188 287
		mu 0 8 255 265 264 252 250 238 241 251
		f 4 200 205 -202 -205
		mu 0 4 266 267 268 269
		f 4 201 207 -203 -207
		mu 0 4 269 268 270 271
		f 4 202 209 -204 -209
		mu 0 4 271 270 272 273
		f 4 203 211 -201 -211
		mu 0 4 273 272 274 275
		f 4 -212 -210 -208 -206
		mu 0 4 267 276 277 268
		f 4 210 204 206 208
		mu 0 4 278 266 269 279
		f 4 212 215 -214 -215
		mu 0 4 280 281 282 283
		f 4 -298 -213 298 249
		mu 0 4 330 284 285 331
		f 4 216 221 -218 -221
		mu 0 4 286 287 288 289
		f 4 217 223 -219 -223
		mu 0 4 289 288 290 291
		f 4 218 225 -220 -225
		mu 0 4 291 290 292 293
		f 4 219 227 -217 -227
		mu 0 4 293 292 294 295
		f 4 -228 -226 -224 -222
		mu 0 4 287 296 297 288
		f 4 226 220 222 224
		mu 0 4 298 286 289 299
		f 4 228 231 -230 -231
		mu 0 4 300 301 302 303
		f 4 -282 -229 282 233
		mu 0 4 308 304 305 309
		f 4 -233 -284 229 280
		mu 0 4 306 307 303 302
		f 4 232 235 -234 -235
		mu 0 4 307 306 308 309
		f 4 234 -283 230 283
		mu 0 4 313 312 300 303
		f 4 236 241 -238 -241
		mu 0 4 314 315 316 317
		f 4 237 243 -239 -243
		mu 0 4 317 316 318 319
		f 4 238 245 -240 -245
		mu 0 4 319 318 320 321
		f 4 239 247 -237 -247
		mu 0 4 321 320 322 323
		f 4 -248 -246 -244 -242
		mu 0 4 315 324 325 316
		f 4 246 240 242 244
		mu 0 4 326 314 317 327
		f 4 -249 -300 213 296
		mu 0 4 328 329 283 282
		f 4 248 251 -250 -251
		mu 0 4 329 328 330 331
		f 4 250 -299 214 299
		mu 0 4 335 334 280 283
		f 4 302 304 -307 -308
		mu 0 4 354 355 356 357
		f 4 253 259 -255 -259
		mu 0 4 339 338 340 341
		f 4 254 261 -256 -261
		mu 0 4 341 340 342 343
		f 4 255 263 -253 -263
		mu 0 4 343 342 344 345
		f 4 -264 -262 -260 -258
		mu 0 4 337 346 347 338
		f 4 262 256 258 260
		mu 0 4 348 336 339 349
		f 4 264 267 -266 -267
		mu 0 4 350 351 352 353
		f 4 -269 -4 269 -8
		mu 0 4 9 4 5 10
		f 4 -273 -36 273 -40
		mu 0 4 51 46 47 52
		f 4 277 -132 -277 -128
		mu 0 4 155 164 165 156
		f 4 -281 -232 281 -236
		mu 0 4 311 302 301 310
		f 8 -285 -190 -188 -192 285 -200 -198 -196
		mu 0 8 254 249 240 239 248 253 262 263
		f 4 289 -176 -289 -148
		mu 0 4 183 220 221 184
		f 4 -293 -180 293 -184
		mu 0 4 235 226 225 234
		f 4 -297 -216 297 -252
		mu 0 4 333 282 281 332
		f 4 252 301 -303 -301
		mu 0 4 336 337 355 354
		f 4 257 303 -305 -302
		mu 0 4 337 338 356 355
		f 4 -254 305 306 -304
		mu 0 4 338 339 357 356
		f 4 -257 300 307 -306
		mu 0 4 339 336 354 357;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "bottom_small_wainscotting" -p "Wainscotting";
createNode mesh -n "bottom_small_wainscottingShape" -p "bottom_small_wainscotting";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:203]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 456 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[250:455]" 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt";
	setAttr ".pt[16]" -type "float3" 184.57399 0 0 ;
	setAttr ".pt[17]" -type "float3" 184.57399 0 0 ;
	setAttr ".pt[18]" -type "float3" 184.57399 0 0 ;
	setAttr ".pt[19]" -type "float3" 184.57399 0 0 ;
	setAttr ".pt[48]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[49]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[50]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[51]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[52]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[53]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[54]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[55]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[56]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[57]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[58]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[59]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[60]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[61]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[62]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[63]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[64]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[65]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[66]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[67]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[68]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[69]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[70]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[71]" -type "float3" 0 0 46.428619 ;
	setAttr ".pt[72]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[73]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[74]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[75]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[76]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[77]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[78]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[79]" -type "float3" 0 0 231.36372 ;
	setAttr ".pt[212]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[213]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[214]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[215]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[256]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[257]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[258]" -type "float3" 0 0 343.40927 ;
	setAttr ".pt[259]" -type "float3" 0 0 343.40927 ;
	setAttr -s 264 ".vt";
	setAttr ".vt[0:165]"  -696.41400146 -4.8595295 -239.42849731 -696.41400146 -4.8595295 -245.76312256
		 -696.41400146 26.048942566 -239.42849731 -696.41400146 26.048942566 -245.76312256
		 -1215.20410156 26.048942566 -239.42849731 -1215.20410156 26.048942566 -245.76312256
		 -1215.20410156 -4.8595295 -239.42849731 -1215.20410156 -4.8595295 -245.76312256 -26.25927734 -4.8595295 -242.53393555
		 -26.25927734 -4.8595295 -248.86856079 -26.25927734 26.048942566 -242.53393555 -26.25927734 26.048942566 -248.86856079
		 -360.59060669 26.048942566 -242.53393555 -360.59060669 26.048942566 -248.86856079
		 -360.59060669 -4.8595295 -242.53393555 -360.59060669 -4.8595295 -248.86856079 -225.39703369 -4.8595295 800.14074707
		 -225.39703369 -4.8595295 793.80615234 -225.39703369 26.048942566 800.14074707 -225.39703369 26.048942566 793.80615234
		 -1229.6307373 26.048942566 800.14074707 -1229.6307373 26.048942566 793.80615234 -1229.6307373 -4.8595295 800.14074707
		 -1229.6307373 -4.8595295 793.80615234 -1196.30895996 -4.8595295 818.98980713 -1189.97424316 -4.8595295 818.98980713
		 -1196.30895996 26.048942566 818.98980713 -1189.97424316 26.048942566 818.98980713
		 -1196.30895996 26.048942566 -252.10430908 -1189.97424316 26.048942566 -252.10430908
		 -1196.30895996 -4.8595295 -252.10430908 -1189.97424316 -4.8595295 -252.10430908 -53.83022308 -4.8595295 134.97181702
		 -47.49559784 -4.8595295 134.97181702 -53.83022308 26.048942566 134.97181702 -47.49559784 26.048942566 134.97181702
		 -53.83022308 26.048942566 -247.9506073 -47.49559784 26.048942566 -247.9506073 -53.83022308 -4.8595295 -247.9506073
		 -47.49559784 -4.8595295 -247.9506073 -52.47909546 -4.8595295 831.91101074 -46.14446259 -4.8595295 831.91101074
		 -52.47909546 26.048942566 831.91101074 -46.14446259 26.048942566 831.91101074 -52.47909546 26.048942566 428.58840942
		 -46.14446259 26.048942566 428.58840942 -52.47909546 -4.8595295 428.58840942 -46.14446259 -4.8595295 428.58840942
		 -872.88574219 -4.8595295 571.67407227 -866.55114746 -4.8595295 571.67407227 -872.88574219 26.048942566 571.67407227
		 -866.55114746 26.048942566 571.67407227 -872.88574219 26.048942566 -24.062683105
		 -866.55114746 26.048942566 -24.062683105 -872.88574219 -4.8595295 -24.062683105 -866.55114746 -4.8595295 -24.062683105
		 -866.82440186 -4.8595295 -20.48185158 -866.82440186 -4.8595295 -26.81648064 -866.82440186 26.048942566 -20.48185158
		 -866.82440186 26.048942566 -26.81648064 -902.21868896 26.048942566 -20.48185158 -902.21868896 26.048942566 -26.81648064
		 -902.21868896 -4.8595295 -20.48185158 -902.21868896 -4.8595295 -26.81648064 -902.48876953 -4.8595295 571.67407227
		 -896.1541748 -4.8595295 571.67407227 -902.48876953 26.048942566 571.67407227 -896.1541748 26.048942566 571.67407227
		 -902.48876953 26.048942566 -24.062683105 -896.1541748 26.048942566 -24.062683105
		 -902.48876953 -4.8595295 -24.062683105 -896.1541748 -4.8595295 -24.062683105 -866.82440186 -4.8595295 575.55236816
		 -866.82440186 -4.8595295 569.21777344 -866.82440186 26.048942566 575.55236816 -866.82440186 26.048942566 569.21777344
		 -902.21868896 26.048942566 575.55236816 -902.21868896 26.048942566 569.21777344 -902.21868896 -4.8595295 575.55236816
		 -902.21868896 -4.8595295 569.21777344 494.26098633 -4.8595295 811.58984375 500.59564209 -4.8595295 811.58984375
		 494.26098633 26.048942566 811.58984375 500.59564209 26.048942566 811.58984375 494.26098633 26.048942566 441.061737061
		 500.59564209 26.048942566 441.061737061 494.26098633 -4.8595295 441.061737061 500.59564209 -4.8595295 441.061737061
		 -21.53026772 -4.8595295 811.58984375 -15.19563866 -4.8595295 811.58984375 -21.53026772 26.048942566 811.58984375
		 -15.19563866 26.048942566 811.58984375 -21.53026772 26.048942566 441.061737061 -15.19563866 26.048942566 441.061737061
		 -21.53026772 -4.8595295 441.061737061 -15.19563866 -4.8595295 441.061737061 505.55419922 -4.8595295 807.67407227
		 505.55419922 -4.8595295 801.33947754 505.55419922 26.048942566 807.67407227 505.55419922 26.048942566 801.33947754
		 -23.47174072 26.048942566 807.67407227 -23.47174072 26.048942566 801.33947754 -23.47174072 -4.8595295 807.67407227
		 -23.47174072 -4.8595295 801.33947754 506.82275391 -4.8595295 452.68270874 506.82275391 -4.8595295 446.34805298
		 506.82275391 26.048942566 452.68270874 506.82275391 26.048942566 446.34805298 249.30548096 26.048942566 452.68270874
		 249.30548096 26.048942566 446.34805298 249.30548096 -4.8595295 452.68270874 249.30548096 -4.8595295 446.34805298
		 48.21282196 -4.8595295 462.63577271 48.21282196 -4.8595295 456.30111694 48.21282196 26.048942566 462.63577271
		 48.21282196 26.048942566 456.30111694 -21.96410942 26.048942566 462.63577271 -21.96410942 26.048942566 456.30111694
		 -21.96410942 -4.8595295 462.63577271 -21.96410942 -4.8595295 456.30111694 1224.35644531 -4.8595295 807.67407227
		 1224.35644531 -4.8595295 801.33947754 1224.35644531 26.048942566 807.67407227 1224.35644531 26.048942566 801.33947754
		 523.28771973 26.048942566 807.67407227 523.28771973 26.048942566 801.33947754 523.28771973 -4.8595295 807.67407227
		 523.28771973 -4.8595295 801.33947754 1228.86206055 -4.8595295 543.81817627 1228.86206055 -4.8595295 537.48358154
		 1228.86206055 26.048942566 543.81817627 1228.86206055 26.048942566 537.48358154 949.59545898 26.048942566 543.81817627
		 949.59545898 26.048942566 537.48358154 949.59545898 -4.8595295 543.81817627 949.59545898 -4.8595295 537.48358154
		 524.098754883 -4.8595295 809.85876465 530.43334961 -4.8595295 809.85876465 524.098754883 26.048942566 809.85876465
		 530.43334961 26.048942566 809.85876465 524.098754883 26.048942566 528.61523438 530.43334961 26.048942566 528.61523438
		 524.098754883 -4.8595295 528.61523438 530.43334961 -4.8595295 528.61523438 1207.32641602 -4.8595295 809.85876465
		 1213.66113281 -4.8595295 809.85876465 1207.32641602 26.048942566 809.85876465 1213.66113281 26.048942566 809.85876465
		 1207.32641602 26.048942566 528.61523438 1213.66113281 26.048942566 528.61523438 1207.32641602 -4.8595295 528.61523438
		 1213.66113281 -4.8595295 528.61523438 776.17687988 -4.8595295 541.93365479 776.17687988 -4.8595295 535.59906006
		 776.17687988 26.048942566 541.93365479 776.17687988 26.048942566 535.59906006 514.7520752 26.048942566 541.93365479
		 514.7520752 26.048942566 535.59906006 514.7520752 -4.8595295 541.93365479 514.7520752 -4.8595295 535.59906006
		 1235.042602539 -4.8595295 27.90436745 1235.042602539 -4.8595295 21.56973839 1235.042602539 26.048942566 27.90436745
		 1235.042602539 26.048942566 21.56973839 806.4977417 26.048942566 27.90436745 806.4977417 26.048942566 21.56973839;
	setAttr ".vt[166:263]" 806.4977417 -4.8595295 27.90436745 806.4977417 -4.8595295 21.56973839
		 610.293396 -4.8595295 26.56140709 610.293396 -4.8595295 20.22677803 610.293396 26.048942566 26.56140709
		 610.293396 26.048942566 20.22677803 528.3258667 26.048942566 26.56140709 528.3258667 26.048942566 20.22677803
		 528.3258667 -4.8595295 26.56140709 528.3258667 -4.8595295 20.22677803 1231.09753418 -4.8595295 514.33721924
		 1231.09753418 -4.8595295 508.0025634766 1231.09753418 26.048942566 514.33721924 1231.09753418 26.048942566 508.0025634766
		 951.70275879 26.048942566 514.33721924 951.70275879 26.048942566 508.0025634766 951.70275879 -4.8595295 514.33721924
		 951.70275879 -4.8595295 508.0025634766 773.80578613 -4.8595295 513.35412598 773.80578613 -4.8595295 507.019500732
		 773.80578613 26.048942566 513.35412598 773.80578613 26.048942566 507.019500732 512.2611084 26.048942566 513.35412598
		 512.2611084 26.048942566 507.019500732 512.2611084 -4.8595295 513.35412598 512.2611084 -4.8595295 507.019500732
		 1206.99633789 -4.8595295 535.84545898 1213.33105469 -4.8595295 535.84545898 1206.99633789 26.048942566 535.84545898
		 1213.33105469 26.048942566 535.84545898 1206.99633789 26.048942566 -0.049926758 1213.33105469 26.048942566 -0.049926758
		 1206.99633789 -4.8595295 -0.049926758 1213.33105469 -4.8595295 -0.049926758 1235.042602539 -4.8595295 -3.67437553
		 1235.042602539 -4.8595295 -10.0090045929 1235.042602539 26.048942566 -3.67437553
		 1235.042602539 26.048942566 -10.0090045929 806.4977417 26.048942566 -3.67437553 806.4977417 26.048942566 -10.0090045929
		 806.4977417 -4.8595295 -3.67437553 806.4977417 -4.8595295 -10.0090045929 1206.99633789 -4.8595295 7.23391724
		 1213.33105469 -4.8595295 7.23391724 1206.99633789 26.048942566 7.23391724 1213.33105469 26.048942566 7.23391724
		 1206.99633789 26.048942566 -1031.0029296875 1213.33105469 26.048942566 -1031.0029296875
		 1206.99633789 -4.8595295 -1031.0029296875 1213.33105469 -4.8595295 -1031.0029296875
		 523.93444824 -4.8595295 514.12860107 530.26904297 -4.8595295 514.12860107 523.93444824 26.048942566 514.12860107
		 530.26904297 26.048942566 514.12860107 523.93444824 26.048942566 424.41687012 530.26904297 26.048942566 424.41687012
		 523.93444824 -4.8595295 424.41687012 530.26904297 -4.8595295 424.41687012 530.80041504 -4.8595295 138.98086548
		 537.13500977 -4.8595295 138.98086548 530.80041504 26.048942566 138.98086548 537.13500977 26.048942566 138.98086548
		 530.80041504 26.048942566 18.9503479 537.13500977 26.048942566 18.9503479 530.80041504 -4.8595295 18.9503479
		 537.13500977 -4.8595295 18.9503479 530.80041504 -4.8595295 4.68234253 537.13500977 -4.8595295 4.68234253
		 530.80041504 26.048942566 4.68234253 537.13500977 26.048942566 4.68234253 530.80041504 26.048942566 -459.3293457
		 537.13500977 26.048942566 -459.3293457 530.80041504 -4.8595295 -459.3293457 537.13500977 -4.8595295 -459.3293457
		 610.293396 -4.8595295 -3.7428565 610.293396 -4.8595295 -10.077486038 610.293396 26.048942566 -3.7428565
		 610.293396 26.048942566 -10.077486038 528.3258667 26.048942566 -3.7428565 528.3258667 26.048942566 -10.077486038
		 528.3258667 -4.8595295 -3.7428565 528.3258667 -4.8595295 -10.077486038 967.68603516 -4.8595295 -660.50183105
		 967.68603516 -4.8595295 -666.83642578 967.68603516 26.048942566 -660.50183105 967.68603516 26.048942566 -666.83642578
		 501.85766602 26.048942566 -660.50183105 501.85766602 26.048942566 -666.83642578 501.85766602 -4.8595295 -660.50183105
		 501.85766602 -4.8595295 -666.83642578 1215.87341309 -4.8595295 -1007.46673584 1215.87341309 -4.8595295 -1013.80133057
		 1215.87341309 26.048942566 -1007.46673584 1215.87341309 26.048942566 -1013.80133057
		 1231.6862793 -4.8595295 -660.50183105 1231.6862793 -4.8595295 -666.83642578 1231.6862793 26.048942566 -666.83642578
		 1231.6862793 26.048942566 -660.50183105;
	setAttr -s 396 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:331]" 110 104 0 111 105 0 112 113 0 114 115 0 116 117 0 118 119 0
		 112 114 0 113 115 0 114 116 0 115 117 0 116 118 0 117 119 0 118 112 0 119 113 0 120 121 0
		 122 123 0 124 125 0 126 127 0 120 122 0 121 123 0 122 124 0 123 125 0 124 126 0 125 127 0
		 126 120 0 127 121 0 128 129 0 130 131 0 132 133 0 134 135 0 128 130 0 129 131 0 130 132 0
		 131 133 0 132 134 0 133 135 0 134 128 0 135 129 0 136 137 0 138 139 0 140 141 0 142 143 0
		 136 138 0 137 139 0 138 140 0 139 141 0 140 142 0 141 143 0 142 136 0 143 137 0 144 145 0
		 146 147 0 148 149 0 150 151 0 144 146 0 145 147 0 146 148 0 147 149 0 148 150 0 149 151 0
		 150 144 0 151 145 0 152 153 0 154 155 0 156 157 0 158 159 0 152 154 0 153 155 0 154 156 0
		 155 157 0 156 158 0 157 159 0 158 152 0 159 153 0 160 161 0 162 163 0 164 165 0 166 167 0
		 160 162 0 161 163 0 162 164 0 163 165 0 164 166 0 165 167 0 166 160 0 167 161 0 168 169 0
		 170 171 0 172 173 0 174 175 0 168 170 0 169 171 0 170 172 0 171 173 0 172 174 0 173 175 0
		 174 168 0 175 169 0 176 177 0 178 179 0 180 181 0 182 183 0 176 178 0 177 179 0 178 180 0
		 179 181 0 180 182 0 181 183 0 182 176 0 183 177 0 184 185 0 186 187 0 188 189 0 190 191 0
		 184 186 0 185 187 0 186 188 0 187 189 0 188 190 0 189 191 0 190 184 0 191 185 0 192 193 0
		 194 195 0 196 197 0 198 199 0 192 194 0 193 195 0 194 196 0 195 197 0 196 198 0 197 199 0
		 198 192 0 199 193 0 200 201 0 202 203 0 204 205 0 206 207 0 200 202 0 201 203 0 202 204 0
		 203 205 0 204 206 0 205 207 0 206 200 0 207 201 0 208 209 0 210 211 0 212 213 0 214 215 0
		 208 210 0 209 211 0 210 212 0 211 213 0 212 214 0 213 215 0 214 208 0 215 209 0 216 217 0
		 218 219 0 220 221 0 222 223 0 216 218 0 217 219 0 218 220 0 219 221 0;
	setAttr ".ed[332:395]" 220 222 0 221 223 0 222 216 0 223 217 0 224 225 0 226 227 0
		 228 229 0 230 231 0 224 226 0 225 227 0 226 228 0 227 229 0 228 230 0 229 231 0 230 224 0
		 231 225 0 232 233 0 234 235 0 236 237 0 238 239 0 232 234 0 233 235 0 234 236 0 235 237 0
		 236 238 0 237 239 0 238 232 0 239 233 0 240 241 0 242 243 0 244 245 0 246 247 0 240 242 0
		 241 243 0 242 244 0 243 245 0 244 246 0 245 247 0 246 240 0 247 241 0 248 249 1 250 251 1
		 252 253 0 254 255 0 248 250 1 249 251 1 250 252 0 251 253 0 252 254 0 253 255 0 254 248 0
		 255 249 0 256 257 0 258 259 0 256 258 0 257 259 0 248 260 0 249 261 0 260 261 0 251 262 0
		 261 262 0 250 263 0 263 262 0 260 263 0;
	setAttr -s 197 -ch 788 ".fc[0:196]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181
		f 4 156 161 -158 -161
		mu 0 4 182 183 184 185
		f 4 157 163 -159 -163
		mu 0 4 185 184 186 187
		f 4 158 165 -160 -165
		mu 0 4 187 186 188 189
		f 4 159 167 -157 -167
		mu 0 4 189 188 190 191
		f 4 -168 -166 -164 -162
		mu 0 4 183 192 193 184
		f 4 166 160 162 164
		mu 0 4 194 182 185 195
		f 4 168 173 -170 -173
		mu 0 4 196 197 198 199
		f 4 169 175 -171 -175
		mu 0 4 199 198 200 201
		f 4 170 177 -172 -177
		mu 0 4 201 200 202 203
		f 4 171 179 -169 -179
		mu 0 4 203 202 204 205
		f 4 -180 -178 -176 -174
		mu 0 4 197 206 207 198
		f 4 178 172 174 176
		mu 0 4 208 196 199 209
		f 4 180 185 -182 -185
		mu 0 4 210 211 212 213
		f 4 181 187 -183 -187
		mu 0 4 213 212 214 215
		f 4 182 189 -184 -189
		mu 0 4 215 214 216 217
		f 4 183 191 -181 -191
		mu 0 4 217 216 218 219
		f 4 -192 -190 -188 -186
		mu 0 4 211 220 221 212
		f 4 190 184 186 188
		mu 0 4 222 210 213 223
		f 4 192 197 -194 -197
		mu 0 4 224 225 226 227
		f 4 193 199 -195 -199
		mu 0 4 227 226 228 229
		f 4 194 201 -196 -201
		mu 0 4 229 228 230 231
		f 4 195 203 -193 -203
		mu 0 4 231 230 232 233
		f 4 -204 -202 -200 -198
		mu 0 4 225 234 235 226
		f 4 202 196 198 200
		mu 0 4 236 224 227 237
		f 4 204 209 -206 -209
		mu 0 4 238 239 240 241
		f 4 205 211 -207 -211
		mu 0 4 241 240 242 243
		f 4 206 213 -208 -213
		mu 0 4 243 242 244 245
		f 4 207 215 -205 -215
		mu 0 4 245 244 246 247
		f 4 -216 -214 -212 -210
		mu 0 4 239 248 249 240
		f 4 214 208 210 212
		mu 0 4 250 238 241 251
		f 4 216 221 -218 -221
		mu 0 4 252 253 254 255
		f 4 217 223 -219 -223
		mu 0 4 255 254 256 257
		f 4 218 225 -220 -225
		mu 0 4 257 256 258 259
		f 4 219 227 -217 -227
		mu 0 4 259 258 260 261
		f 4 -228 -226 -224 -222
		mu 0 4 253 262 263 254
		f 4 226 220 222 224
		mu 0 4 264 252 255 265
		f 4 228 233 -230 -233
		mu 0 4 266 267 268 269
		f 4 229 235 -231 -235
		mu 0 4 269 268 270 271
		f 4 230 237 -232 -237
		mu 0 4 271 270 272 273
		f 4 231 239 -229 -239
		mu 0 4 273 272 274 275
		f 4 -240 -238 -236 -234
		mu 0 4 267 276 277 268
		f 4 238 232 234 236
		mu 0 4 278 266 269 279
		f 4 240 245 -242 -245
		mu 0 4 280 281 282 283
		f 4 241 247 -243 -247
		mu 0 4 283 282 284 285
		f 4 242 249 -244 -249
		mu 0 4 285 284 286 287
		f 4 243 251 -241 -251
		mu 0 4 287 286 288 289
		f 4 -252 -250 -248 -246
		mu 0 4 281 290 291 282
		f 4 250 244 246 248
		mu 0 4 292 280 283 293
		f 4 252 257 -254 -257
		mu 0 4 294 295 296 297
		f 4 253 259 -255 -259
		mu 0 4 297 296 298 299
		f 4 254 261 -256 -261
		mu 0 4 299 298 300 301
		f 4 255 263 -253 -263
		mu 0 4 301 300 302 303
		f 4 -264 -262 -260 -258
		mu 0 4 295 304 305 296
		f 4 262 256 258 260
		mu 0 4 306 294 297 307
		f 4 264 269 -266 -269
		mu 0 4 308 309 310 311
		f 4 265 271 -267 -271
		mu 0 4 311 310 312 313
		f 4 266 273 -268 -273
		mu 0 4 313 312 314 315
		f 4 267 275 -265 -275
		mu 0 4 315 314 316 317
		f 4 -276 -274 -272 -270
		mu 0 4 309 318 319 310
		f 4 274 268 270 272
		mu 0 4 320 308 311 321
		f 4 276 281 -278 -281
		mu 0 4 322 323 324 325
		f 4 277 283 -279 -283
		mu 0 4 325 324 326 327
		f 4 278 285 -280 -285
		mu 0 4 327 326 328 329
		f 4 279 287 -277 -287
		mu 0 4 329 328 330 331
		f 4 -288 -286 -284 -282
		mu 0 4 323 332 333 324
		f 4 286 280 282 284
		mu 0 4 334 322 325 335
		f 4 288 293 -290 -293
		mu 0 4 336 337 338 339
		f 4 289 295 -291 -295
		mu 0 4 339 338 340 341
		f 4 290 297 -292 -297
		mu 0 4 341 340 342 343
		f 4 291 299 -289 -299
		mu 0 4 343 342 344 345
		f 4 -300 -298 -296 -294
		mu 0 4 337 346 347 338
		f 4 298 292 294 296
		mu 0 4 348 336 339 349
		f 4 300 305 -302 -305
		mu 0 4 350 351 352 353
		f 4 301 307 -303 -307
		mu 0 4 353 352 354 355
		f 4 302 309 -304 -309
		mu 0 4 355 354 356 357
		f 4 303 311 -301 -311
		mu 0 4 357 356 358 359
		f 4 -312 -310 -308 -306
		mu 0 4 351 360 361 352
		f 4 310 304 306 308
		mu 0 4 362 350 353 363
		f 4 312 317 -314 -317
		mu 0 4 364 365 366 367
		f 4 313 319 -315 -319
		mu 0 4 367 366 368 369
		f 4 314 321 -316 -321
		mu 0 4 369 368 370 371
		f 4 315 323 -313 -323
		mu 0 4 371 370 372 373
		f 4 -324 -322 -320 -318
		mu 0 4 365 374 375 366
		f 4 322 316 318 320
		mu 0 4 376 364 367 377
		f 4 324 329 -326 -329
		mu 0 4 378 379 380 381
		f 4 325 331 -327 -331
		mu 0 4 381 380 382 383
		f 4 326 333 -328 -333
		mu 0 4 383 382 384 385
		f 4 327 335 -325 -335
		mu 0 4 385 384 386 387
		f 4 -336 -334 -332 -330
		mu 0 4 379 388 389 380
		f 4 334 328 330 332
		mu 0 4 390 378 381 391
		f 4 336 341 -338 -341
		mu 0 4 392 393 394 395
		f 4 337 343 -339 -343
		mu 0 4 395 394 396 397
		f 4 338 345 -340 -345
		mu 0 4 397 396 398 399
		f 4 339 347 -337 -347
		mu 0 4 399 398 400 401
		f 4 -348 -346 -344 -342
		mu 0 4 393 402 403 394
		f 4 346 340 342 344
		mu 0 4 404 392 395 405
		f 4 348 353 -350 -353
		mu 0 4 406 407 408 409
		f 4 349 355 -351 -355
		mu 0 4 409 408 410 411
		f 4 350 357 -352 -357
		mu 0 4 411 410 412 413
		f 4 351 359 -349 -359
		mu 0 4 413 412 414 415
		f 4 -360 -358 -356 -354
		mu 0 4 407 416 417 408
		f 4 358 352 354 356
		mu 0 4 418 406 409 419
		f 4 360 365 -362 -365
		mu 0 4 420 421 422 423
		f 4 361 367 -363 -367
		mu 0 4 423 422 424 425
		f 4 362 369 -364 -369
		mu 0 4 425 424 426 427
		f 4 363 371 -361 -371
		mu 0 4 427 426 428 429
		f 4 -372 -370 -368 -366
		mu 0 4 421 430 431 422
		f 4 370 364 366 368
		mu 0 4 432 420 423 433
		f 4 390 392 -395 -396
		mu 0 4 452 453 454 455
		f 4 373 379 -375 -379
		mu 0 4 437 436 438 439
		f 4 374 381 -376 -381
		mu 0 4 439 438 440 441
		f 4 375 383 -373 -383
		mu 0 4 441 440 442 443
		f 4 -384 -382 -380 -378
		mu 0 4 435 444 445 436
		f 4 382 376 378 380
		mu 0 4 446 434 437 447
		f 4 384 387 -386 -387
		mu 0 4 448 449 450 451
		f 4 372 389 -391 -389
		mu 0 4 434 435 453 452
		f 4 377 391 -393 -390
		mu 0 4 435 436 454 453
		f 4 -374 393 394 -392
		mu 0 4 436 437 455 454
		f 4 -377 388 395 -394
		mu 0 4 437 434 452 455;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "top_large_wainscotting" -p "Wainscotting";
createNode mesh -n "top_large_wainscottingShape" -p "top_large_wainscotting";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:83]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 196 ".uvst[0].uvsp[0:195]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".vt[0:111]"  -20.17481995 474.2855835 -269.37463379 -20.17481995 474.2855835 -275.70928955
		 -20.17481995 639.88391113 -269.37463379 -20.17481995 639.88391113 -275.70928955 -1215.58068848 639.88391113 -269.37463379
		 -1215.58068848 639.88391113 -275.70928955 -1215.58068848 474.2855835 -269.37463379
		 -1215.58068848 474.2855835 -275.70928955 -22.1687355 473.92062378 445.95788574 -17.022655487 473.92062378 445.95788574
		 -22.1687355 637.68304443 445.95788574 -17.022655487 637.68304443 445.95788574 -22.1687355 637.68304443 -1081.85144043
		 -17.022655487 637.68304443 -1081.85144043 -22.1687355 473.92062378 -1081.85144043
		 -17.022655487 473.92062378 -1081.85144043 517.612854 473.92062378 140.63766479 517.612854 473.92062378 133.69961548
		 517.612854 637.68304443 140.63766479 517.612854 637.68304443 133.69961548 309.91329956 637.68304443 140.63766479
		 309.91329956 637.68304443 133.69961548 309.91329956 473.92062378 140.63766479 309.91329956 473.92062378 133.69961548
		 305.015594482 473.92062378 142.81118774 310.16165161 473.92062378 142.81118774 305.015594482 637.68304443 142.81118774
		 310.16165161 637.68304443 142.81118774 305.015594482 637.68304443 -464.66424561 310.16165161 637.68304443 -464.66424561
		 305.015594482 473.92062378 -464.66424561 310.16165161 473.92062378 -464.66424561
		 505.45098877 473.92062378 427.39532471 505.45098877 473.92062378 420.45727539 505.45098877 637.68304443 427.39532471
		 505.45098877 637.68304443 420.45727539 -22.6060791 637.68304443 427.39532471 -22.6060791 637.68304443 420.45727539
		 -22.6060791 473.92062378 427.39532471 -22.6060791 473.92062378 420.45727539 -298.27703857 474.42755127 -1048.52819824
		 -298.27703857 474.42755127 -1054.86291504 -298.27703857 638.18994141 -1048.52819824
		 -298.27703857 638.18994141 -1054.86291504 -680.12561035 638.18994141 -1048.52819824
		 -680.12561035 638.18994141 -1054.86291504 -680.12561035 474.42755127 -1048.52819824
		 -680.12561035 474.42755127 -1054.86291504 -52.74840164 473.92062378 -264.9697876
		 -47.60232162 473.92062378 -264.9697876 -52.74840164 637.68304443 -264.9697876 -47.60232162 637.68304443 -264.9697876
		 -52.74840164 637.68304443 -1052.77270508 -47.60232162 637.68304443 -1052.77270508
		 -52.74840164 473.92062378 -1052.77270508 -47.60232162 473.92062378 -1052.77270508
		 -1195.97729492 473.92062378 -269.98852539 -1190.83129883 473.92062378 -269.98852539
		 -1195.97729492 637.68304443 -269.98852539 -1190.83129883 637.68304443 -269.98852539
		 -1195.97729492 637.68304443 -787.62475586 -1190.83129883 637.68304443 -787.62475586
		 -1195.97729492 473.92062378 -787.62475586 -1190.83129883 473.92062378 -787.62475586
		 -907.79803467 473.92062378 -1054.97241211 -912.26623535 473.92062378 -1059.46264648
		 -907.79803467 637.68304443 -1054.97241211 -912.26623535 637.68304443 -1059.46264648
		 -1196.68200684 637.68304443 -767.5090332 -1201.15026855 637.68304443 -771.99926758
		 -1196.68200684 473.92062378 -767.5090332 -1201.15026855 473.92062378 -771.99926758
		 -680.53662109 473.92062378 -1048.52819824 -680.53662109 473.92062378 -1054.86291504
		 -680.53662109 637.68304443 -1048.52819824 -680.53662109 637.68304443 -1054.86291504
		 -952.88098145 637.68304443 -1048.52819824 -952.88098145 637.68304443 -1054.86291504
		 -952.88098145 473.92062378 -1048.52819824 -952.88098145 473.92062378 -1054.86291504
		 -24.91998291 473.92062378 -1048.52819824 -24.91998291 473.92062378 -1054.86291504
		 -24.91998291 637.68304443 -1048.52819824 -24.91998291 637.68304443 -1054.86291504
		 -297.26437378 637.68304443 -1048.52819824 -297.26437378 637.68304443 -1054.86291504
		 -297.26437378 473.92062378 -1048.52819824 -297.26437378 473.92062378 -1054.86291504
		 521.38238525 473.92062378 -455.25012207 521.38238525 473.92062378 -462.18817139 521.38238525 637.68304443 -455.25012207
		 521.38238525 637.68304443 -462.18817139 313.68280029 637.68304443 -455.25012207 313.68280029 637.68304443 -462.18817139
		 313.68280029 473.92062378 -455.25012207 313.68280029 473.92062378 -462.18817139 499.51379395 473.92062378 427.010742188
		 504.65985107 473.92062378 427.010742188 499.51379395 637.68304443 427.010742188 504.65985107 637.68304443 427.010742188
		 499.51379395 637.68304443 -1099.099609375 504.65985107 637.68304443 -1099.099609375
		 499.51379395 473.92062378 -1099.099609375 504.65985107 473.92062378 -1099.099609375
		 515.65429688 473.92062378 -1047.43225098 515.65429688 473.92062378 -1053.76696777
		 515.65429688 637.68304443 -1047.43225098 515.65429688 637.68304443 -1053.76696777
		 -27.86686707 637.68304443 -1047.43225098 -27.86686707 637.68304443 -1053.76696777
		 -27.86686707 473.92062378 -1047.43225098 -27.86686707 473.92062378 -1053.76696777;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 106 107 0 108 109 0 110 111 0 104 106 0
		 105 107 0 106 108 0 107 109 0 108 110 0 109 111 0;
	setAttr ".ed[166:167]" 110 104 0 111 105 0;
	setAttr -s 84 -ch 336 ".fc[0:83]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 149 -146 -149
		mu 0 4 168 169 170 171
		f 4 145 151 -147 -151
		mu 0 4 171 170 172 173
		f 4 146 153 -148 -153
		mu 0 4 173 172 174 175
		f 4 147 155 -145 -155
		mu 0 4 175 174 176 177
		f 4 -156 -154 -152 -150
		mu 0 4 169 178 179 170
		f 4 154 148 150 152
		mu 0 4 180 168 171 181
		f 4 156 161 -158 -161
		mu 0 4 182 183 184 185
		f 4 157 163 -159 -163
		mu 0 4 185 184 186 187
		f 4 158 165 -160 -165
		mu 0 4 187 186 188 189
		f 4 159 167 -157 -167
		mu 0 4 189 188 190 191
		f 4 -168 -166 -164 -162
		mu 0 4 183 192 193 184
		f 4 166 160 162 164
		mu 0 4 194 182 185 195;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_Outdoor";
createNode transform -n "Cement_square" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 615.18119493435813 0 -886.43515901465867 ;
	setAttr ".sp" -type "double3" 615.18119493435813 0 -886.43515901465867 ;
createNode mesh -n "Cement_squareShape" -p "Cement_square";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  565.18121338 -5 -836.43518066 665.18121338 -5 -836.43518066
		 565.18121338 5 -836.43518066 665.18121338 5 -836.43518066 565.18121338 5 -936.43518066
		 665.18121338 5 -936.43518066 565.18121338 -5 -936.43518066 665.18121338 -5 -936.43518066;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square1" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 615.18119493435813 0 -770.82893678069172 ;
	setAttr ".sp" -type "double3" 615.18119493435813 0 -770.82893678069172 ;
createNode mesh -n "Cement_squareShape1" -p "Cement_square1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  615.18121 0 -770.82892 615.18121 
		0 -770.82892 615.18121 0 -770.82892 615.18121 0 -770.82892 615.18121 0 -770.82892 
		615.18121 0 -770.82892 615.18121 0 -770.82892 615.18121 0 -770.82892;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square2" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 729.91161245443141 0 -886.43515901465867 ;
	setAttr ".sp" -type "double3" 729.91161245443141 0 -886.43515901465867 ;
createNode mesh -n "Cement_squareShape2" -p "Cement_square2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  729.91162 0 -886.43518 729.91162 
		0 -886.43518 729.91162 0 -886.43518 729.91162 0 -886.43518 729.91162 0 -886.43518 
		729.91162 0 -886.43518 729.91162 0 -886.43518 729.91162 0 -886.43518;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square3" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 729.91161245443141 0 -770.82893678069172 ;
	setAttr ".sp" -type "double3" 729.91161245443141 0 -770.82893678069172 ;
createNode mesh -n "Cement_squareShape3" -p "Cement_square3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  729.91162 0 -770.82892 729.91162 
		0 -770.82892 729.91162 0 -770.82892 729.91162 0 -770.82892 729.91162 0 -770.82892 
		729.91162 0 -770.82892 729.91162 0 -770.82892 729.91162 0 -770.82892;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square4" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 844.64202997450457 0 -886.43515901465867 ;
	setAttr ".sp" -type "double3" 844.64202997450457 0 -886.43515901465867 ;
createNode mesh -n "Cement_squareShape4" -p "Cement_square4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  844.64203 0 -886.43518 844.64203 
		0 -886.43518 844.64203 0 -886.43518 844.64203 0 -886.43518 844.64203 0 -886.43518 
		844.64203 0 -886.43518 844.64203 0 -886.43518 844.64203 0 -886.43518;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square5" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 844.64202997450457 0 -770.82893678069172 ;
	setAttr ".sp" -type "double3" 844.64202997450457 0 -770.82893678069172 ;
createNode mesh -n "Cement_squareShape5" -p "Cement_square5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  844.64203 0 -770.82892 844.64203 
		0 -770.82892 844.64203 0 -770.82892 844.64203 0 -770.82892 844.64203 0 -770.82892 
		844.64203 0 -770.82892 844.64203 0 -770.82892 844.64203 0 -770.82892;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_Floor" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 737.1631113028584 0.2 -883.23799605434397 ;
	setAttr ".sp" -type "double3" 737.1631113028584 0.2 -883.23799605434397 ;
createNode mesh -n "Entrance_FloorShape" -p "Entrance_Floor";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  527.68597412 0.2 -673.76086426 946.64019775 0.2 -673.76086426
		 527.68597412 0.2 -1092.71508789 946.64019775 0.2 -1092.71508789;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square6" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 844.64202997450457 0 -1006.8057655811514 ;
	setAttr ".sp" -type "double3" 844.64202997450457 0 -1006.8057655811514 ;
createNode mesh -n "Cement_squareShape6" -p "Cement_square6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  844.64203 0 -1006.8058 844.64203 
		0 -1006.8058 844.64203 0 -1006.8058 844.64203 0 -1006.8058 844.64203 0 -1006.8058 
		844.64203 0 -1006.8058 844.64203 0 -1006.8058 844.64203 0 -1006.8058;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Cement_square7" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 729.91161245443141 0 -1006.8057655811514 ;
	setAttr ".sp" -type "double3" 729.91161245443141 0 -1006.8057655811514 ;
createNode mesh -n "Cement_squareShape7" -p "Cement_square7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  729.91162 0 -1006.8058 729.91162 
		0 -1006.8058 729.91162 0 -1006.8058 729.91162 0 -1006.8058 729.91162 0 -1006.8058 
		729.91162 0 -1006.8058 729.91162 0 -1006.8058 729.91162 0 -1006.8058;
	setAttr -s 8 ".vt[0:7]"  -50 -5 50 50 -5 50 -50 5 50 50 5 50 -50 5 -50
		 50 5 -50 -50 -5 -50 50 -5 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_bars" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 937.13973208317668 251.01012230094375 -1040.8944881352427 ;
	setAttr ".sp" -type "double3" 937.13973208317668 251.01012230094375 -1040.8944881352427 ;
createNode mesh -n "Entrance_barsShape" -p "Entrance_bars";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape155" -p "Entrance_bars";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  921.60321045 -9.94828796 -1025.35803223 952.6762085 -9.94828796 -1025.35803223
		 921.60321045 511.96850586 -1025.35803223 952.6762085 511.96850586 -1025.35803223
		 921.60321045 511.96850586 -1056.43103027 952.6762085 511.96850586 -1056.43103027
		 921.60321045 -9.94828796 -1056.43103027 952.6762085 -9.94828796 -1056.43103027;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_bars1" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 937.13973208317668 251.01012230094375 -701.20708246853803 ;
	setAttr ".sp" -type "double3" 937.13973208317668 251.01012230094375 -701.20708246853803 ;
createNode mesh -n "Entrance_barsShape1" -p "Entrance_bars1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape154" -p "Entrance_bars1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  922.10321 -9.4482737 -686.17059 
		952.17627 -9.4482737 -686.17059 922.10321 511.46851 -686.17059 952.17627 511.46851 
		-686.17059 922.10321 511.46851 -716.24359 952.17627 511.46851 -716.24359 922.10321 
		-9.4482737 -716.24359 952.17627 -9.4482737 -716.24359;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_Floor1" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 931.27113613416088 253.58629469204777 -874.3107640798188 ;
	setAttr ".sp" -type "double3" 931.27113613416088 253.58629469204777 -874.3107640798188 ;
createNode mesh -n "Entrance_Floor1Shape" -p "Entrance_Floor1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  931.77118 3.5718796 -713.40228 
		930.77112 503.60071 -713.40228 931.77118 3.5718796 -1035.2192 930.77112 503.60071 
		-1035.2192;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_wbar20" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 645.63961306541057 473.12546538084172 -996.36418136676627 ;
	setAttr ".sp" -type "double3" 645.63961306541057 473.12546538084172 -996.36418136676627 ;
createNode mesh -n "Entrance_wbarShape20" -p "Entrance_wbar20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.52879006 0.0019922436
		 0.58217156 0.0019921248 0.58217156 0.071378335 0.52879006 0.071378335 0.46379119
		 0.98892838 0.41040966 0.98892838 0.41040966 0.0019921248 0.46379119 0.0019921248
		 0.64136159 0.071378335 0.58798003 0.071378335 0.58798003 0.0019921248 0.64136159
		 0.0019921248 0.46959978 0.0019921248 0.52298135 0.0019921248 0.52298135 0.98892814
		 0.46959978 0.98892838 0.33508053 0.99800771 0.20593463 0.01107174 0.27532083 0.0019921248
		 0.40446699 0.98892838 0.19981232 0.01107174 0.070666172 0.99800795 0.0012801937 0.98892862
		 0.13042611 0.0019921248;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  505.25793457 476.23907471 -1007.90368652
		 505.25805664 476.23904419 -984.824646 509.18334961 506.2376709 -1007.90368652 509.18347168 506.2376709 -984.824646
		 935.8782959 450.40228271 -1007.90368652 935.8782959 450.40228271 -984.824646 931.95275879 420.40365601 -1007.90368652
		 931.95275879 420.40365601 -984.824646;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_wbar21" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 645.63961306541057 473.12546538084172 -950.38572249189394 ;
	setAttr ".sp" -type "double3" 645.63961306541057 473.12546538084172 -950.38572249189394 ;
createNode mesh -n "Entrance_wbarShape21" -p "Entrance_wbar21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape156" -p "Entrance_wbar21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  505.75793 476.73907 -962.42529 
		504.75806 476.73904 -939.34613 509.68335 505.73767 -962.42529 508.68347 505.73767 
		-939.34613 936.3783 449.90228 -961.42529 935.3783 449.90228 -938.34613 932.45276 
		420.90366 -961.42529 931.45276 420.90366 -938.34613;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_wbar22" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 645.63961306541057 473.12546538084172 -899.79826739434543 ;
	setAttr ".sp" -type "double3" 645.63961306541057 473.12546538084172 -899.79826739434543 ;
createNode mesh -n "Entrance_wbarShape22" -p "Entrance_wbar22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape157" -p "Entrance_wbar22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  505.75793 476.73907 -911.83783 
		504.75806 476.73904 -888.75873 509.68335 505.73767 -911.83783 508.68347 505.73767 
		-888.75873 936.3783 449.90228 -910.83783 935.3783 449.90228 -887.75873 932.45276 
		420.90366 -910.83783 931.45276 420.90366 -887.75873;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_wbar23" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 645.63961306541057 473.12546538084172 -848.7472797064861 ;
	setAttr ".sp" -type "double3" 645.63961306541057 473.12546538084172 -848.7472797064861 ;
createNode mesh -n "Entrance_wbarShape23" -p "Entrance_wbar23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape158" -p "Entrance_wbar23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  505.75793 476.73907 -860.7868 
		504.75806 476.73904 -837.7077 509.68335 505.73767 -860.7868 508.68347 505.73767 -837.7077 
		936.3783 449.90228 -859.7868 935.3783 449.90228 -836.7077 932.45276 420.90366 -859.7868 
		931.45276 420.90366 -836.7077;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_wbar24" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 645.63961306541057 473.12546538084172 -799.08168102444506 ;
	setAttr ".sp" -type "double3" 645.63961306541057 473.12546538084172 -799.08168102444506 ;
createNode mesh -n "Entrance_wbarShape24" -p "Entrance_wbar24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape159" -p "Entrance_wbar24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  505.75793 476.73907 -811.12122 
		504.75806 476.73904 -788.04211 509.68335 505.73767 -811.12122 508.68347 505.73767 
		-788.04211 936.3783 449.90228 -810.12122 935.3783 449.90228 -787.04211 932.45276 
		420.90366 -810.12122 931.45276 420.90366 -787.04211;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "Entrance_wbar25" -p "Entrance_Outdoor";
	setAttr ".rp" -type "double3" 645.63961306541057 473.12546538084172 -747.18527186775464 ;
	setAttr ".sp" -type "double3" 645.63961306541057 473.12546538084172 -747.18527186775464 ;
createNode mesh -n "Entrance_wbarShape25" -p "Entrance_wbar25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape160" -p "Entrance_wbar25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  505.75793 476.73907 -759.22479 
		504.75806 476.73904 -736.14569 509.68335 505.73767 -759.22479 508.68347 505.73767 
		-736.14569 936.3783 449.90228 -758.22479 935.3783 449.90228 -735.14569 932.45276 
		420.90366 -758.22479 931.45276 420.90366 -735.14569;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode shadingEngine -n "House_Layout:lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 41 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 16 ".gn";
createNode materialInfo -n "House_Layout:materialInfo1";
createNode lambert -n "House_Layout:test_checker";
createNode checker -n "House_Layout:checker1";
createNode place2dTexture -n "House_Layout:place2dTexture3";
	setAttr ".re" -type "float2" 4 4 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  4 2 3;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 4 4 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode checker -n "checker2";
createNode place2dTexture -n "place2dTexture2";
	setAttr ".re" -type "float2" 4 4 ;
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode checker -n "checker3";
createNode place2dTexture -n "place2dTexture3";
	setAttr ".re" -type "float2" 4 4 ;
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode checker -n "checker4";
createNode place2dTexture -n "place2dTexture4";
	setAttr ".re" -type "float2" 4 4 ;
createNode shadingEngine -n "lambert7SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode checker -n "checker5";
createNode place2dTexture -n "place2dTexture5";
	setAttr ".re" -type "float2" 4 4 ;
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode checker -n "checker6";
createNode place2dTexture -n "place2dTexture6";
	setAttr ".re" -type "float2" 4 4 ;
createNode polyUnite -n "polyUnite5";
createNode lambert -n "floor_test_mat";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode lambert -n "wainscotting_test_mat";
	setAttr ".c" -type "float3" 0.13664317 1 0 ;
createNode shadingEngine -n "lambert10SG";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode shadingEngine -n "wainscoting_isolated:lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "wainscoting_isolated:materialInfo3";
createNode checker -n "wainscoting_isolated:checker2";
createNode place2dTexture -n "wainscoting_isolated:place2dTexture2";
	setAttr ".re" -type "float2" 4 4 ;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/WallpaperForties0002_S.jpg";
createNode place2dTexture -n "place2dTexture7";
	setAttr ".re" -type "float2" 5 6 ;
createNode groupId -n "groupId259";
	setAttr ".ihi" 0;
createNode materialInfo -n "Bottom_large_wainscotting_Isolated:materialInfo9";
createNode shadingEngine -n "Bottom_large_wainscotting_Isolated:lambert10SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "Bottom_large_wainscotting_Isolated:wainscotting_test_mat";
	setAttr ".c" -type "float3" 0.13664317 1 0 ;
createNode groupId -n "groupId325";
	setAttr ".ihi" 0;
createNode groupId -n "groupId338";
	setAttr ".ihi" 0;
createNode groupId -n "groupId339";
	setAttr ".ihi" 0;
createNode groupId -n "groupId340";
	setAttr ".ihi" 0;
createNode groupId -n "groupId341";
	setAttr ".ihi" 0;
createNode groupId -n "groupId342";
	setAttr ".ihi" 0;
createNode groupId -n "groupId344";
	setAttr ".ihi" 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[2:4]" "f[7]" "f[11:14]" "f[25]" "f[34:37]" "f[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -884.38848876953125 261.42486572265625 413.32357215881348 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2240.1257767031843 1500.5919924267082 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[9]" "f[23]" "f[26:28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1062.3224792480469 261.42486572265625 42.813667297363281 ;
	setAttr ".ps" -type "double2" 1615.3275449956493 1488.3489706565733 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[21]" "e[27]" "e[34]" "e[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38448214530944824;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[159:160]" "e[162]" "e[164]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.56405073404312134;
	setAttr ".re" 159;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 1 "f[65:67]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 150302106;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
createNode groupId -n "groupId345";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:67]";
createNode groupId -n "groupId346";
	setAttr ".ihi" 0;
createNode groupId -n "groupId347";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:64]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 5 "f[4]" "f[9]" "f[17]" "f[23:28]" "f[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 1895133033;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 3;
	setAttr -s 2 ".out";
createNode groupId -n "groupId349";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId350";
	setAttr ".ihi" 0;
createNode groupId -n "groupId351";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId353";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId354";
	setAttr ".ihi" 0;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 521.91679382324219 521.91679382324219 521.91679382324219 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 521.91679382324219 521.91679382324219 521.91679382324219 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 430.620361328125 430.620361328125 430.620361328125 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 430.620361328125 430.620361328125 430.620361328125 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 430.620361328125 430.620361328125 430.620361328125 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 430.620361328125 430.620361328125 430.620361328125 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 430.620361328125 430.620361328125 430.620361328125 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 521.91679382324219 521.91679382324219 521.91679382324219 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[86:87]" "e[93]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.75489062070846558;
	setAttr ".dr" no;
	setAttr ".re" 86;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:85]";
	setAttr ".gi" 34;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[88]" "e[94:95]" "e[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.76087898015975952;
	setAttr ".dr" no;
	setAttr ".re" 88;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[34]" "f[89]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[234]" "e[239]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 151;
	setAttr ".sv2" 64;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:96]";
	setAttr ".gi" 35;
createNode polySewEdge -n "polySewEdge1";
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[229]" "e[235]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 50;
	setAttr ".sv2" 147;
createNode groupId -n "groupId355";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:97]";
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[30]" "f[36]" "f[38:40]" "f[42]" "f[87:88]" "f[91:92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1224.5618286132812 261.42485817243823 -347.86904215812683 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1995.0305823760884 1517.6664543095369 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[77]" "f[79]" "f[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1100.24755859375 261.42488082309046 -696.33184814453125 ;
	setAttr ".ps" -type "double2" 1789.8680054037311 1434.5725981306598 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[2:5]" "f[77:84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 869.67465209960938 261.42494185824671 -681.25283813476562 ;
	setAttr ".ps" -type "double2" 2442.5334240467437 1761.1323355457566 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[80]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[11]";
createNode lambert -n "Outdoor_horizontalWood";
createNode shadingEngine -n "lambert11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Horizontal_Wood_UVSnap.png";
createNode place2dTexture -n "place2dTexture8";
createNode lambert -n "Wooden_Bar_Vertical";
createNode shadingEngine -n "lambert12SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Wooden_Bar_vertical_UVSnap.png";
createNode place2dTexture -n "place2dTexture9";
createNode lambert -n "Cement_blocks";
createNode shadingEngine -n "lambert13SG";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Cement_square_UVSnap.png";
createNode place2dTexture -n "place2dTexture10";
createNode lambert -n "Outdoor_top_bars";
createNode shadingEngine -n "lambert14SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Wooden_Bar_UVSnap.png";
createNode place2dTexture -n "place2dTexture11";
createNode polyAutoProj -n "polyAutoProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 95.507115278040033 1;
	setAttr ".s" -type "double3" 1167.8359298706055 1167.8359298706055 1167.8359298706055 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 53.273951409174515 1;
	setAttr ".s" -type "double3" 1167.8359298706055 1167.8359298706055 1167.8359298706055 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 13.310814246058953 1;
	setAttr ".s" -type "double3" 1167.8359298706055 1167.8359298706055 1167.8359298706055 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode lambert -n "Wainscotting_painted";
createNode shadingEngine -n "lambert15SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
createNode file -n "file6";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/tell-tale-hearts/TellTaleHearts/Assets/Textures/Wainscotting_Painting.png";
createNode place2dTexture -n "place2dTexture12";
createNode polyPlanarProj -n "polyPlanarProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[38]" "f[40:42]" "f[45]" "f[47]" "f[49:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -46.933923721313477 261.42486572265625 280.98339080810547 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 2513.3491923202841 1364.2244214235427 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 14 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyAutoProj11.out" "ceiling_wbarShape13.i";
connectAttr "polyAutoProj9.out" "ceiling_wbarShape14.i";
connectAttr "polyAutoProj10.out" "ceiling_wbarShape15.i";
connectAttr "polyNormal1.out" "doorframe8Shape.i";
connectAttr "groupId338.id" "polySurfaceShape125.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape125.iog.og[0].gco";
connectAttr "polyPlanarProj6.out" "polySurfaceShape149.i";
connectAttr "groupId347.id" "polySurfaceShape149.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape149.iog.og[0].gco";
connectAttr "groupId345.id" "House_wall12Shape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "House_wall12Shape.iog.og[0].gco";
connectAttr "groupParts1.og" "House_wall12Shape.i";
connectAttr "groupId346.id" "House_wall12Shape.ciog.cog[0].cgid";
connectAttr "groupId339.id" "polySurfaceShape106.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape106.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape151.i";
connectAttr "groupId351.id" "polySurfaceShape151.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape151.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape153.i";
connectAttr "groupId353.id" "polySurfaceShape153.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape153.iog.og[0].gco";
connectAttr "groupId349.id" "House_wall5Shape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "House_wall5Shape.iog.og[0].gco";
connectAttr "groupParts4.og" "House_wall5Shape.i";
connectAttr "groupId350.id" "House_wall5Shape.ciog.cog[0].cgid";
connectAttr "groupId259.id" "House_wall3Shape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "House_wall3Shape.iog.og[0].gco";
connectAttr "groupId340.id" "polySurfaceShape140.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape140.iog.og[0].gco";
connectAttr "groupId341.id" "polySurfaceShape144.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape144.iog.og[0].gco";
connectAttr "groupId342.id" "polySurfaceShape145.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape145.iog.og[0].gco";
connectAttr "groupId355.id" "polySurfaceShape146.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape146.iog.og[0].gco";
connectAttr "deleteComponent3.og" "polySurfaceShape146.i";
connectAttr "groupId344.id" "wall_entrance_outsideShape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "wall_entrance_outsideShape.iog.og[0].gco"
		;
connectAttr "groupId354.id" "House_wallShape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "House_wallShape.iog.og[0].gco";
connectAttr "groupId76.id" "top_large_wainscottingShape.iog.og[0].gid";
connectAttr "lambert10SG.mwc" "top_large_wainscottingShape.iog.og[0].gco";
connectAttr "polyAutoProj8.out" "Entrance_barsShape.i";
connectAttr "polyAutoProj1.out" "Entrance_barsShape1.i";
connectAttr "polyAutoProj3.out" "Entrance_wbarShape21.i";
connectAttr "polyAutoProj4.out" "Entrance_wbarShape22.i";
connectAttr "polyAutoProj5.out" "Entrance_wbarShape23.i";
connectAttr "polyAutoProj6.out" "Entrance_wbarShape24.i";
connectAttr "polyAutoProj7.out" "Entrance_wbarShape25.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "House_Layout:test_checker.oc" "House_Layout:lambert2SG.ss";
connectAttr "HouseWindowsShape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe14Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe13Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe12Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe11Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe10Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe9Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe8Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe7Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe6Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe5Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe4Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframeShape3.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframeShape2.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframeShape1.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wallShape1.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wallShape2.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wallShape4.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall13Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall15Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall16Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall73Shape17.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "HouseWindowsShape3.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "HouseWindowsShape1.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall3Shape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "doorframe15Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape125.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape106.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape140.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape144.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape145.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "wall_entrance_outsideShape.iog.og[0]" "House_Layout:lambert2SG.dsm"
		 -na;
connectAttr "House_wall12Shape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall12Shape.ciog.cog[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape149.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall5Shape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall5Shape.ciog.cog[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape151.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape153.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wallShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape146.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "groupId259.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId338.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId339.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId340.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId341.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId342.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId344.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId345.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId346.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId347.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId349.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId350.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId351.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId353.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId354.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId355.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "House_Layout:lambert2SG.msg" "House_Layout:materialInfo1.sg";
connectAttr "House_Layout:test_checker.msg" "House_Layout:materialInfo1.m";
connectAttr "file1.msg" "House_Layout:materialInfo1.t" -na;
connectAttr "file1.oc" "House_Layout:test_checker.c";
connectAttr "House_Layout:place2dTexture3.o" "House_Layout:checker1.uv";
connectAttr "House_Layout:place2dTexture3.ofs" "House_Layout:checker1.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "House_Layout:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "wainscoting_isolated:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Bottom_large_wainscotting_Isolated:lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "House_Layout:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "wainscoting_isolated:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Bottom_large_wainscotting_Isolated:lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert15SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "place2dTexture2.o" "checker2.uv";
connectAttr "place2dTexture2.ofs" "checker2.fs";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "place2dTexture3.o" "checker3.uv";
connectAttr "place2dTexture3.ofs" "checker3.fs";
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "place2dTexture4.o" "checker4.uv";
connectAttr "place2dTexture4.ofs" "checker4.fs";
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "place2dTexture5.o" "checker5.uv";
connectAttr "place2dTexture5.ofs" "checker5.fs";
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "place2dTexture6.o" "checker6.uv";
connectAttr "place2dTexture6.ofs" "checker6.fs";
connectAttr "floor_test_mat.oc" "lambert9SG.ss";
connectAttr "Floor1Shape.iog" "lambert9SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo8.sg";
connectAttr "floor_test_mat.msg" "materialInfo8.m";
connectAttr "wainscotting_test_mat.oc" "lambert10SG.ss";
connectAttr "bottom_small_wainscottingShape.iog" "lambert10SG.dsm" -na;
connectAttr "top_small_wainscottingShape.iog" "lambert10SG.dsm" -na;
connectAttr "top_large_wainscottingShape.iog.og[0]" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape126.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape129.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape130.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape131.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape132.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape133.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape134.iog" "lambert10SG.dsm" -na;
connectAttr "polySurfaceShape135.iog" "lambert10SG.dsm" -na;
connectAttr "groupId76.msg" "lambert10SG.gn" -na;
connectAttr "lambert10SG.msg" "materialInfo9.sg";
connectAttr "wainscotting_test_mat.msg" "materialInfo9.m";
connectAttr "wainscoting_isolated:lambert4SG.msg" "wainscoting_isolated:materialInfo3.sg"
		;
connectAttr "wainscoting_isolated:place2dTexture2.o" "wainscoting_isolated:checker2.uv"
		;
connectAttr "wainscoting_isolated:place2dTexture2.ofs" "wainscoting_isolated:checker2.fs"
		;
connectAttr "place2dTexture7.c" "file1.c";
connectAttr "place2dTexture7.tf" "file1.tf";
connectAttr "place2dTexture7.rf" "file1.rf";
connectAttr "place2dTexture7.mu" "file1.mu";
connectAttr "place2dTexture7.mv" "file1.mv";
connectAttr "place2dTexture7.s" "file1.s";
connectAttr "place2dTexture7.wu" "file1.wu";
connectAttr "place2dTexture7.wv" "file1.wv";
connectAttr "place2dTexture7.re" "file1.re";
connectAttr "place2dTexture7.of" "file1.of";
connectAttr "place2dTexture7.r" "file1.ro";
connectAttr "place2dTexture7.n" "file1.n";
connectAttr "place2dTexture7.vt1" "file1.vt1";
connectAttr "place2dTexture7.vt2" "file1.vt2";
connectAttr "place2dTexture7.vt3" "file1.vt3";
connectAttr "place2dTexture7.vc1" "file1.vc1";
connectAttr "place2dTexture7.o" "file1.uv";
connectAttr "place2dTexture7.ofs" "file1.fs";
connectAttr "Bottom_large_wainscotting_Isolated:lambert10SG.msg" "Bottom_large_wainscotting_Isolated:materialInfo9.sg"
		;
connectAttr "Bottom_large_wainscotting_Isolated:wainscotting_test_mat.msg" "Bottom_large_wainscotting_Isolated:materialInfo9.m"
		;
connectAttr "Bottom_large_wainscotting_Isolated:wainscotting_test_mat.oc" "Bottom_large_wainscotting_Isolated:lambert10SG.ss"
		;
connectAttr "polySurfaceShape147.o" "polyPlanarProj1.ip";
connectAttr "House_wall5Shape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "House_wall5Shape.wm" "polyPlanarProj2.mp";
connectAttr "polySurfaceShape148.o" "polySplitRing1.ip";
connectAttr "House_wall12Shape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "House_wall12Shape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyChipOff1.ip";
connectAttr "House_wall12Shape.wm" "polyChipOff1.mp";
connectAttr "House_wall12Shape.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId345.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId347.id" "groupParts2.gi";
connectAttr "polyPlanarProj2.out" "polyChipOff2.ip";
connectAttr "House_wall5Shape.wm" "polyChipOff2.mp";
connectAttr "House_wall5Shape.o" "polySeparate2.ip";
connectAttr "polyChipOff2.out" "groupParts4.ig";
connectAttr "groupId349.id" "groupParts4.gi";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId351.id" "groupParts5.gi";
connectAttr "polySeparate2.out[2]" "groupParts7.ig";
connectAttr "groupId353.id" "groupParts7.gi";
connectAttr "polySurfaceShape154.o" "polyAutoProj1.ip";
connectAttr "Entrance_barsShape1.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape155.o" "polyAutoProj2.ip";
connectAttr "Entrance_barsShape.wm" "polyAutoProj2.mp";
connectAttr "polySurfaceShape156.o" "polyAutoProj3.ip";
connectAttr "Entrance_wbarShape21.wm" "polyAutoProj3.mp";
connectAttr "polySurfaceShape157.o" "polyAutoProj4.ip";
connectAttr "Entrance_wbarShape22.wm" "polyAutoProj4.mp";
connectAttr "polySurfaceShape158.o" "polyAutoProj5.ip";
connectAttr "Entrance_wbarShape23.wm" "polyAutoProj5.mp";
connectAttr "polySurfaceShape159.o" "polyAutoProj6.ip";
connectAttr "Entrance_wbarShape24.wm" "polyAutoProj6.mp";
connectAttr "polySurfaceShape160.o" "polyAutoProj7.ip";
connectAttr "Entrance_wbarShape25.wm" "polyAutoProj7.mp";
connectAttr "polyAutoProj2.out" "polyAutoProj8.ip";
connectAttr "Entrance_barsShape.wm" "polyAutoProj8.mp";
connectAttr "groupParts8.og" "polySplitRing3.ip";
connectAttr "polySurfaceShape146.wm" "polySplitRing3.mp";
connectAttr "polySurfaceShape161.o" "groupParts8.ig";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "polySurfaceShape146.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "polySurfaceShape146.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polySewEdge1.ip";
connectAttr "polySurfaceShape146.wm" "polySewEdge1.mp";
connectAttr "polySewEdge1.out" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape146.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts10.ig";
connectAttr "groupId355.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyPlanarProj3.ip";
connectAttr "polySurfaceShape146.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "polySurfaceShape146.wm" "polyPlanarProj4.mp";
connectAttr "polySurfaceShape162.o" "polyNormal1.ip";
connectAttr "polyPlanarProj4.out" "polyPlanarProj5.ip";
connectAttr "polySurfaceShape146.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "file2.oc" "Outdoor_horizontalWood.c";
connectAttr "file2.ot" "Outdoor_horizontalWood.it";
connectAttr "Outdoor_horizontalWood.oc" "lambert11SG.ss";
connectAttr "Entrance_Floor1Shape.iog" "lambert11SG.dsm" -na;
connectAttr "lambert11SG.msg" "materialInfo10.sg";
connectAttr "Outdoor_horizontalWood.msg" "materialInfo10.m";
connectAttr "file2.msg" "materialInfo10.t" -na;
connectAttr "place2dTexture8.c" "file2.c";
connectAttr "place2dTexture8.tf" "file2.tf";
connectAttr "place2dTexture8.rf" "file2.rf";
connectAttr "place2dTexture8.mu" "file2.mu";
connectAttr "place2dTexture8.mv" "file2.mv";
connectAttr "place2dTexture8.s" "file2.s";
connectAttr "place2dTexture8.wu" "file2.wu";
connectAttr "place2dTexture8.wv" "file2.wv";
connectAttr "place2dTexture8.re" "file2.re";
connectAttr "place2dTexture8.of" "file2.of";
connectAttr "place2dTexture8.r" "file2.ro";
connectAttr "place2dTexture8.n" "file2.n";
connectAttr "place2dTexture8.vt1" "file2.vt1";
connectAttr "place2dTexture8.vt2" "file2.vt2";
connectAttr "place2dTexture8.vt3" "file2.vt3";
connectAttr "place2dTexture8.vc1" "file2.vc1";
connectAttr "place2dTexture8.o" "file2.uv";
connectAttr "place2dTexture8.ofs" "file2.fs";
connectAttr "file3.oc" "Wooden_Bar_Vertical.c";
connectAttr "file3.ot" "Wooden_Bar_Vertical.it";
connectAttr "Wooden_Bar_Vertical.oc" "lambert12SG.ss";
connectAttr "Entrance_barsShape.iog" "lambert12SG.dsm" -na;
connectAttr "Entrance_barsShape1.iog" "lambert12SG.dsm" -na;
connectAttr "ceiling_wbarShape13.iog" "lambert12SG.dsm" -na;
connectAttr "ceiling_wbarShape15.iog" "lambert12SG.dsm" -na;
connectAttr "ceiling_wbarShape14.iog" "lambert12SG.dsm" -na;
connectAttr "lambert12SG.msg" "materialInfo11.sg";
connectAttr "Wooden_Bar_Vertical.msg" "materialInfo11.m";
connectAttr "file3.msg" "materialInfo11.t" -na;
connectAttr "place2dTexture9.c" "file3.c";
connectAttr "place2dTexture9.tf" "file3.tf";
connectAttr "place2dTexture9.rf" "file3.rf";
connectAttr "place2dTexture9.mu" "file3.mu";
connectAttr "place2dTexture9.mv" "file3.mv";
connectAttr "place2dTexture9.s" "file3.s";
connectAttr "place2dTexture9.wu" "file3.wu";
connectAttr "place2dTexture9.wv" "file3.wv";
connectAttr "place2dTexture9.re" "file3.re";
connectAttr "place2dTexture9.of" "file3.of";
connectAttr "place2dTexture9.r" "file3.ro";
connectAttr "place2dTexture9.n" "file3.n";
connectAttr "place2dTexture9.vt1" "file3.vt1";
connectAttr "place2dTexture9.vt2" "file3.vt2";
connectAttr "place2dTexture9.vt3" "file3.vt3";
connectAttr "place2dTexture9.vc1" "file3.vc1";
connectAttr "place2dTexture9.o" "file3.uv";
connectAttr "place2dTexture9.ofs" "file3.fs";
connectAttr "file4.oc" "Cement_blocks.c";
connectAttr "file4.ot" "Cement_blocks.it";
connectAttr "Cement_blocks.oc" "lambert13SG.ss";
connectAttr "Cement_squareShape.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape1.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape2.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape3.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape5.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape7.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape6.iog" "lambert13SG.dsm" -na;
connectAttr "Cement_squareShape4.iog" "lambert13SG.dsm" -na;
connectAttr "lambert13SG.msg" "materialInfo12.sg";
connectAttr "Cement_blocks.msg" "materialInfo12.m";
connectAttr "file4.msg" "materialInfo12.t" -na;
connectAttr "place2dTexture10.c" "file4.c";
connectAttr "place2dTexture10.tf" "file4.tf";
connectAttr "place2dTexture10.rf" "file4.rf";
connectAttr "place2dTexture10.mu" "file4.mu";
connectAttr "place2dTexture10.mv" "file4.mv";
connectAttr "place2dTexture10.s" "file4.s";
connectAttr "place2dTexture10.wu" "file4.wu";
connectAttr "place2dTexture10.wv" "file4.wv";
connectAttr "place2dTexture10.re" "file4.re";
connectAttr "place2dTexture10.of" "file4.of";
connectAttr "place2dTexture10.r" "file4.ro";
connectAttr "place2dTexture10.n" "file4.n";
connectAttr "place2dTexture10.vt1" "file4.vt1";
connectAttr "place2dTexture10.vt2" "file4.vt2";
connectAttr "place2dTexture10.vt3" "file4.vt3";
connectAttr "place2dTexture10.vc1" "file4.vc1";
connectAttr "place2dTexture10.o" "file4.uv";
connectAttr "place2dTexture10.ofs" "file4.fs";
connectAttr "file5.oc" "Outdoor_top_bars.c";
connectAttr "file5.ot" "Outdoor_top_bars.it";
connectAttr "Outdoor_top_bars.oc" "lambert14SG.ss";
connectAttr "Entrance_wbarShape25.iog" "lambert14SG.dsm" -na;
connectAttr "Entrance_wbarShape24.iog" "lambert14SG.dsm" -na;
connectAttr "Entrance_wbarShape23.iog" "lambert14SG.dsm" -na;
connectAttr "Entrance_wbarShape22.iog" "lambert14SG.dsm" -na;
connectAttr "Entrance_wbarShape21.iog" "lambert14SG.dsm" -na;
connectAttr "Entrance_wbarShape20.iog" "lambert14SG.dsm" -na;
connectAttr "lambert14SG.msg" "materialInfo13.sg";
connectAttr "Outdoor_top_bars.msg" "materialInfo13.m";
connectAttr "file5.msg" "materialInfo13.t" -na;
connectAttr "place2dTexture11.c" "file5.c";
connectAttr "place2dTexture11.tf" "file5.tf";
connectAttr "place2dTexture11.rf" "file5.rf";
connectAttr "place2dTexture11.mu" "file5.mu";
connectAttr "place2dTexture11.mv" "file5.mv";
connectAttr "place2dTexture11.s" "file5.s";
connectAttr "place2dTexture11.wu" "file5.wu";
connectAttr "place2dTexture11.wv" "file5.wv";
connectAttr "place2dTexture11.re" "file5.re";
connectAttr "place2dTexture11.of" "file5.of";
connectAttr "place2dTexture11.r" "file5.ro";
connectAttr "place2dTexture11.n" "file5.n";
connectAttr "place2dTexture11.vt1" "file5.vt1";
connectAttr "place2dTexture11.vt2" "file5.vt2";
connectAttr "place2dTexture11.vt3" "file5.vt3";
connectAttr "place2dTexture11.vc1" "file5.vc1";
connectAttr "place2dTexture11.o" "file5.uv";
connectAttr "place2dTexture11.ofs" "file5.fs";
connectAttr "polySurfaceShape163.o" "polyAutoProj9.ip";
connectAttr "ceiling_wbarShape14.wm" "polyAutoProj9.mp";
connectAttr "polySurfaceShape164.o" "polyAutoProj10.ip";
connectAttr "ceiling_wbarShape15.wm" "polyAutoProj10.mp";
connectAttr "polySurfaceShape165.o" "polyAutoProj11.ip";
connectAttr "ceiling_wbarShape13.wm" "polyAutoProj11.mp";
connectAttr "file6.oc" "Wainscotting_painted.c";
connectAttr "Wainscotting_painted.oc" "lambert15SG.ss";
connectAttr "Large_WainscottingShape.iog" "lambert15SG.dsm" -na;
connectAttr "lambert15SG.msg" "materialInfo14.sg";
connectAttr "Wainscotting_painted.msg" "materialInfo14.m";
connectAttr "file6.msg" "materialInfo14.t" -na;
connectAttr "place2dTexture12.c" "file6.c";
connectAttr "place2dTexture12.tf" "file6.tf";
connectAttr "place2dTexture12.rf" "file6.rf";
connectAttr "place2dTexture12.mu" "file6.mu";
connectAttr "place2dTexture12.mv" "file6.mv";
connectAttr "place2dTexture12.s" "file6.s";
connectAttr "place2dTexture12.wu" "file6.wu";
connectAttr "place2dTexture12.wv" "file6.wv";
connectAttr "place2dTexture12.re" "file6.re";
connectAttr "place2dTexture12.of" "file6.of";
connectAttr "place2dTexture12.r" "file6.ro";
connectAttr "place2dTexture12.n" "file6.n";
connectAttr "place2dTexture12.vt1" "file6.vt1";
connectAttr "place2dTexture12.vt2" "file6.vt2";
connectAttr "place2dTexture12.vt3" "file6.vt3";
connectAttr "place2dTexture12.vc1" "file6.vc1";
connectAttr "place2dTexture12.o" "file6.uv";
connectAttr "place2dTexture12.ofs" "file6.fs";
connectAttr "groupParts2.og" "polyPlanarProj6.ip";
connectAttr "polySurfaceShape149.wm" "polyPlanarProj6.mp";
connectAttr "House_Layout:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "wainscoting_isolated:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "Bottom_large_wainscotting_Isolated:lambert10SG.pa" ":renderPartition.st"
		 -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert14SG.pa" ":renderPartition.st" -na;
connectAttr "lambert15SG.pa" ":renderPartition.st" -na;
connectAttr "House_Layout:test_checker.msg" ":defaultShaderList1.s" -na;
connectAttr "floor_test_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "wainscotting_test_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "Bottom_large_wainscotting_Isolated:wainscotting_test_mat.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Outdoor_horizontalWood.msg" ":defaultShaderList1.s" -na;
connectAttr "Wooden_Bar_Vertical.msg" ":defaultShaderList1.s" -na;
connectAttr "Cement_blocks.msg" ":defaultShaderList1.s" -na;
connectAttr "Outdoor_top_bars.msg" ":defaultShaderList1.s" -na;
connectAttr "Wainscotting_painted.msg" ":defaultShaderList1.s" -na;
connectAttr "House_Layout:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wainscoting_isolated:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "House_Layout:checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker2.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker3.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker4.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker5.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker6.msg" ":defaultTextureList1.tx" -na;
connectAttr "wainscoting_isolated:checker2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Entrance_FloorShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/WallpaperForties0002_S.jpg\" 2291123261 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/WallpaperForties0002_S.jpg\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Horizontal_Wood_UVSnap.png\" 3291139463 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Horizontal_Wood_UVSnap.png\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Wooden_Bar_vertical_UVSnap.png\" 691258922 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Wooden_Bar_vertical_UVSnap.png\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Cement_square_UVSnap.png\" 3763430267 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Cement_square_UVSnap.png\" \"sourceImages\"\n4\n\"file5\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Wooden_Bar_UVSnap.png\" 759722290 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Wooden_Bar_UVSnap.png\" \"sourceImages\"\n5\n\"file6\" \"fileTextureName\" \"/Users/marcelo_martinez/tell-tale-hearts/TellTaleHearts/Assets/Textures/Wainscotting_Painting.png\" 3161641262 \"/Users/marcelo_martinez/tell-tale-hearts/TellTaleHearts/Assets/Textures/Wainscotting_Painting.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of House Layout_polished3.ma
