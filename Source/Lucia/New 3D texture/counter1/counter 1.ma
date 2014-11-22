//Maya ASCII 2015 scene
//Name: counter1.ma
//Last modified: Fri, Nov 21, 2014 05:51:54 PM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -34.868698029043465 16.745843831332834 22.643997264972128 ;
	setAttr ".r" -type "double3" -21.938352729601842 -57.0000000000013 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "counter_door";
createNode mesh -n "counter_doorShape" -p "counter_door";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1.95789742 0.88935375 -3.84255934 -1.83069134 0.88935375 -3.99574518
		 -1.95789742 7.38894367 -3.84255934 -1.83069134 7.38894367 -3.99574518 -4.99985981 7.38894367 -6.36861706
		 -4.87265348 7.38894367 -6.52180338 -4.99985981 0.88935375 -6.36861706 -4.87265348 0.88935375 -6.52180338;
	setAttr -s 12 ".ed[0:11]"  0 1 1 1 3 1 3 2 1 2 0 1 3 5 1 5 4 1 4 2 1
		 5 7 1 7 6 1 6 4 1 7 1 1 0 6 1;
	setAttr -s 8 ".n[0:7]" -type "float3"  0.075319678 -0.57734919 0.81301308
		 0.81301308 -0.57734919 -0.075319678 0.81301308 0.57734919 -0.075319678 0.075319678
		 0.57734919 0.81301308 -0.075319678 0.57734919 -0.81301308 -0.81301308 0.57734919
		 0.075319678 -0.075319678 -0.57734919 -0.81301308 -0.81301308 -0.57734919 0.075319678;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 3 2
		f 4 -3 4 5 6
		mu 0 4 2 3 5 4
		f 4 -6 7 8 9
		mu 0 4 4 5 7 6
		f 4 -9 10 -1 11
		mu 0 4 6 7 9 8
		f 4 -11 -8 -5 -2
		mu 0 4 1 10 11 3
		f 4 -12 -4 -7 -10
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere5";
createNode mesh -n "pSphere5Shape" -p "pSphere5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr -s 119 ".uvst[0].uvsp[0:118]" -type "float2" 0 0.1 0.1 0.1 0.2
		 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.70000005 0.1 0.80000007
		 0.1 0.9000001 0.1 1.000000119209 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.70000005 0.2 0.80000007 0.2 0.9000001 0.2 1.000000119209
		 0.2 0 0.30000001 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001
		 0.5 0.30000001 0.60000002 0.30000001 0.70000005 0.30000001 0.80000007 0.30000001
		 0.9000001 0.30000001 1.000000119209 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001
		 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002 0.40000001
		 0.70000005 0.40000001 0.80000007 0.40000001 0.9000001 0.40000001 1.000000119209 0.40000001
		 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.70000005
		 0.5 0.80000007 0.5 0.9000001 0.5 1.000000119209 0.5 0 0.60000002 0.1 0.60000002 0.2
		 0.60000002 0.30000001 0.60000002 0.40000001 0.60000002 0.5 0.60000002 0.60000002
		 0.60000002 0.70000005 0.60000002 0.80000007 0.60000002 0.9000001 0.60000002 1.000000119209
		 0.60000002 0 0.70000005 0.1 0.70000005 0.2 0.70000005 0.30000001 0.70000005 0.40000001
		 0.70000005 0.5 0.70000005 0.60000002 0.70000005 0.70000005 0.70000005 0.80000007
		 0.70000005 0.9000001 0.70000005 1.000000119209 0.70000005 0 0.80000007 0.1 0.80000007
		 0.2 0.80000007 0.30000001 0.80000007 0.40000001 0.80000007 0.5 0.80000007 0.60000002
		 0.80000007 0.70000005 0.80000007 0.80000007 0.80000007 0.9000001 0.80000007 1.000000119209
		 0.80000007 0 0.9000001 0.1 0.9000001 0.2 0.9000001 0.30000001 0.9000001 0.40000001
		 0.9000001 0.5 0.9000001 0.60000002 0.9000001 0.70000005 0.9000001 0.80000007 0.9000001
		 0.9000001 0.9000001 1.000000119209 0.9000001 0.050000001 0 0.15000001 0 0.25 0 0.34999999
		 0 0.45000002 0 0.55000001 0 0.65000004 0 0.75 0 0.85000002 0 0.94999999 0 0.050000001
		 1 0.15000001 1 0.25 1 0.34999999 1 0.45000002 1 0.55000001 1 0.65000004 1 0.75 1
		 0.85000002 1 0.94999999 1;
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 92 ".vt[0:91]"  -2.53504992 4.2019558 -4.1089468 -2.53504992 4.21945095 -4.084867001
		 -2.53505015 4.21945095 -4.055102825 -2.53505015 4.2019558 -4.031023026 -2.53504992 4.17364836 -4.021825314
		 -2.53504992 4.14534044 -4.031023026 -2.53505015 4.12784576 -4.055102825 -2.53504992 4.12784576 -4.084867001
		 -2.53505015 4.14534044 -4.1089468 -2.53505015 4.17364836 -4.11814451 -2.51291347 4.22749233 -4.14409494
		 -2.51291347 4.26076984 -4.098292351 -2.5129137 4.26076984 -4.041676998 -2.51291347 4.22749233 -3.99587464
		 -2.51291347 4.17364836 -3.97837973 -2.51291347 4.11980438 -3.99587464 -2.51291347 4.086526871 -4.041677475
		 -2.5129137 4.086526871 -4.098292351 -2.51291347 4.11980438 -4.14409494 -2.51291347 4.17364836 -4.1615901
		 -2.47843504 4.24775839 -4.17198849 -2.47843504 4.29356098 -4.1089468 -2.47843504 4.29356098 -4.031023026
		 -2.47843504 4.24775839 -3.9679811 -2.47843504 4.17364836 -3.9439013 -2.47843504 4.099538326 -3.9679811
		 -2.4784348 4.053735733 -4.031022549 -2.47843504 4.053735733 -4.1089468 -2.47843504 4.099538326 -4.17198896
		 -2.47843504 4.17364836 -4.19606829 -2.43498969 4.26076984 -4.18989754 -2.43498969 4.31461382 -4.11578751
		 -2.43498969 4.31461382 -4.02418232 -2.43498945 4.26076984 -3.95007229 -2.43498969 4.17364788 -3.92176461
		 -2.43498945 4.086526394 -3.95007205 -2.43498945 4.032682419 -4.02418232 -2.43498969 4.032682419 -4.11578751
		 -2.43498969 4.086526394 -4.18989754 -2.43498945 4.17364788 -4.21820498 -2.38682985 4.26525354 -4.19606829
		 -2.38682985 4.32186842 -4.11814451 -2.38682985 4.32186842 -4.021825314 -2.38682985 4.26525354 -3.9439013
		 -2.38682985 4.17364836 -3.91413689 -2.38682985 4.082043171 -3.9439013 -2.38682985 4.025428295 -4.021825314
		 -2.38683009 4.025428295 -4.11814451 -2.38682985 4.082043171 -4.19606876 -2.38682985 4.17364836 -4.22583246
		 -2.33867025 4.26077032 -4.18989754 -2.33867025 4.3146143 -4.11578751 -2.33867025 4.3146143 -4.02418232
		 -2.33867025 4.26077032 -3.95007229 -2.33867025 4.17364836 -3.92176461 -2.33867025 4.086526871 -3.95007205
		 -2.33867025 4.032682419 -4.02418232 -2.33867049 4.032682419 -4.11578751 -2.33867025 4.086526871 -4.18989754
		 -2.33867025 4.17364836 -4.21820498 -2.29522467 4.24775839 -4.17198849 -2.29522491 4.2935605 -4.1089468
		 -2.29522491 4.2935605 -4.031023026 -2.29522491 4.24775839 -3.9679811 -2.29522491 4.17364836 -3.9439013
		 -2.29522467 4.099538326 -3.9679811 -2.29522467 4.053735733 -4.031022549 -2.29522467 4.053735733 -4.1089468
		 -2.29522467 4.099538326 -4.17198896 -2.29522491 4.17364836 -4.19606829 -2.26074624 4.22749233 -4.14409494
		 -2.26074648 4.26076984 -4.098292351 -2.26074648 4.26076984 -4.041676998 -2.26074648 4.22749233 -3.99587464
		 -2.26074624 4.17364836 -3.97837973 -2.26074648 4.11980438 -3.99587464 -2.26074624 4.086526871 -4.041677475
		 -2.26074648 4.086526871 -4.098292351 -2.26074624 4.11980438 -4.14409494 -2.26074624 4.17364836 -4.1615901
		 -2.23860979 4.2019558 -4.1089468 -2.23860979 4.21945095 -4.084867001 -2.23860979 4.21945095 -4.055102825
		 -2.23860979 4.2019558 -4.031023026 -2.23860979 4.17364836 -4.021825314 -2.23860979 4.14534092 -4.031023026
		 -2.23860979 4.12784576 -4.055102825 -2.23860979 4.12784576 -4.084867001 -2.23860979 4.14534092 -4.1089468
		 -2.23860979 4.17364836 -4.11814451 -2.54267788 4.17364836 -4.069984913 -2.23098207 4.17364836 -4.069984913;
	setAttr -s 190 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 11 1 11 10 1 10 0 1 1 2 1 2 12 1 12 11 1 2 3 1
		 3 13 1 13 12 1 3 4 1 4 14 1 14 13 1 4 5 1 5 15 1 15 14 1 5 6 1 6 16 1 16 15 1 6 7 1
		 7 17 1 17 16 1 7 8 1 8 18 1 18 17 1 8 9 1 9 19 1 19 18 1 9 0 1 10 19 1 11 21 1 21 20 1
		 20 10 1 12 22 1 22 21 1 13 23 1 23 22 1 14 24 1 24 23 1 15 25 1 25 24 1 16 26 1 26 25 1
		 17 27 1 27 26 1 18 28 1 28 27 1 19 29 1 29 28 1 20 29 1 21 31 1 31 30 1 30 20 1 22 32 1
		 32 31 1 23 33 1 33 32 1 24 34 1 34 33 1 25 35 1 35 34 1 26 36 1 36 35 1 27 37 1 37 36 1
		 28 38 1 38 37 1 29 39 1 39 38 1 30 39 1 31 41 1 41 40 1 40 30 1 32 42 1 42 41 1 33 43 1
		 43 42 1 34 44 1 44 43 1 35 45 1 45 44 1 36 46 1 46 45 1 37 47 1 47 46 1 38 48 1 48 47 1
		 39 49 1 49 48 1 40 49 1 41 51 1 51 50 1 50 40 1 42 52 1 52 51 1 43 53 1 53 52 1 44 54 1
		 54 53 1 45 55 1 55 54 1 46 56 1 56 55 1 47 57 1 57 56 1 48 58 1 58 57 1 49 59 1 59 58 1
		 50 59 1 51 61 1 61 60 1 60 50 1 52 62 1 62 61 1 53 63 1 63 62 1 54 64 1 64 63 1 55 65 1
		 65 64 1 56 66 1 66 65 1 57 67 1 67 66 1 58 68 1 68 67 1 59 69 1 69 68 1 60 69 1 61 71 1
		 71 70 1 70 60 1 62 72 1 72 71 1 63 73 1 73 72 1 64 74 1 74 73 1 65 75 1 75 74 1 66 76 1
		 76 75 1 67 77 1 77 76 1 68 78 1 78 77 1 69 79 1 79 78 1 70 79 1 71 81 1 81 80 1 80 70 1
		 72 82 1 82 81 1 73 83 1 83 82 1 74 84 1 84 83 1 75 85 1 85 84 1 76 86 1 86 85 1 77 87 1
		 87 86 1 78 88 1;
	setAttr ".ed[166:189]" 88 87 1 79 89 1 89 88 1 80 89 1 0 90 1 90 1 1 90 2 1
		 90 3 1 90 4 1 90 5 1 90 6 1 90 7 1 90 8 1 90 9 1 81 91 1 91 80 1 82 91 1 83 91 1
		 84 91 1 85 91 1 86 91 1 87 91 1 88 91 1 89 91 1;
	setAttr -s 92 ".n[0:91]" -type "float3"  -0.940611 0.22278512 -0.25608081
		 -0.940611 0.33075961 -0.076204717 -0.80962557 0.56218147 -0.16855372 -0.80962557
		 0.35572374 -0.46681112 -0.940611 0.31238747 0.13275552 -0.80962557 0.55391097 0.19403668
		 -0.940611 0.17468795 0.29102451 -0.80962557 0.33402508 0.48255867 -0.940611 -0.029725028
		 0.33814508 -0.80962557 -0.013397626 0.58674884 -0.940611 -0.22278512 0.25608081 -0.80962557
		 -0.35572374 0.46681112 -0.940611 -0.33075961 0.076204717 -0.80962557 -0.56218147
		 0.16855372 -0.940611 -0.31238747 -0.13275552 -0.80962557 -0.55391097 -0.1940672 -0.940611
		 -0.17468795 -0.29102451 -0.80962557 -0.3340556 -0.48255867 -0.940611 0.029725028
		 -0.33814508 -0.80962557 0.013397626 -0.58674884 -0.58867151 0.77166051 -0.24079104
		 -0.58867151 0.48274177 -0.64836574 -0.58867151 0.76580095 0.25873592 -0.58867151
		 0.46745202 0.65947449 -0.58867151 -0.0094302194 0.80828273 -0.58867151 -0.48274177
		 0.64836574 -0.58867151 -0.77166051 0.24079104 -0.58867151 -0.76580095 -0.25873592
		 -0.58867151 -0.46745202 -0.65947449 -0.58867151 0.0094302194 -0.80828273 -0.30967131
		 0.90578938 -0.28919339 -0.30967131 0.56279182 -0.76638079 -0.30967131 0.90276802
		 0.29841 -0.30967131 0.55494857 0.77208775 -0.30967131 -0.0048219245 0.95080417 -0.30967131
		 -0.56279182 0.76638079 -0.30967131 -0.90578938 0.28919339 -0.30967131 -0.90276802
		 -0.29841 -0.30967131 -0.55494857 -0.77208775 -0.30967131 0.0048219245 -0.95080417
		 0 0.95104831 -0.3089999 0 0.58775598 -0.80901515 0 0.95104831 0.3089999 0 0.58775598
		 0.80901515 0 0 1 0 -0.58775598 0.80901515 0 -0.95104831 0.3089999 0 -0.95104831 -0.3089999
		 0 -0.58775598 -0.80901515 0 0 -1 0.30967131 0.90276802 -0.29841 0.30967131 0.55494857
		 -0.77208775 0.30967131 0.90578938 0.28919339 0.30967131 0.56279182 0.76638079 0.30967131
		 0.0048219245 0.95080417 0.30967131 -0.55494857 0.77208775 0.30967131 -0.90276802
		 0.29841 0.30967131 -0.90578938 -0.28919339 0.30967131 -0.56279182 -0.76638079 0.30967131
		 -0.0048219245 -0.95080417 0.58867151 0.76580095 -0.25873592 0.58867151 0.46745202
		 -0.65947449 0.58867151 0.77162999 0.24079104 0.58867151 0.48274177 0.64836574 0.58867151
		 0.0094302194 0.80828273 0.58867151 -0.46745202 0.65947449 0.58867151 -0.76580095
		 0.25873592 0.58867151 -0.77166051 -0.24079104 0.58867151 -0.48274177 -0.64836574
		 0.58867151 -0.0094302194 -0.80828273 0.80962557 0.55391097 -0.19403668 0.80962557
		 0.3340556 -0.48255867 0.80962557 0.56218147 0.16855372 0.80962557 0.35572374 0.46681112
		 0.80962557 0.013397626 0.58674884 0.80962557 -0.33402508 0.48255867 0.80962557 -0.55391097
		 0.19403668 0.80962557 -0.56218147 -0.16855372 0.80962557 -0.35572374 -0.46681112
		 0.80962557 -0.013397626 -0.58674884 0.940611 0.31238747 -0.13275552 0.940611 0.17468795
		 -0.29102451 0.940611 0.33075961 0.076204717 0.940611 0.22278512 0.25608081 0.940611
		 0.029725028 0.33811456 0.940611 -0.17468795 0.29102451 0.940611 -0.31238747 0.13275552
		 0.940611 -0.33075961 -0.076204717 0.940611 -0.22278512 -0.25608081 0.940611 -0.029725028
		 -0.33811456 -1 0 0 1 0 0;
	setAttr -s 100 -ch 380 ".fc[0:99]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 12 11
		f 4 4 5 6 -2
		mu 0 4 1 2 13 12
		f 4 7 8 9 -6
		mu 0 4 2 3 14 13
		f 4 10 11 12 -9
		mu 0 4 3 4 15 14
		f 4 13 14 15 -12
		mu 0 4 4 5 16 15
		f 4 16 17 18 -15
		mu 0 4 5 6 17 16
		f 4 19 20 21 -18
		mu 0 4 6 7 18 17
		f 4 22 23 24 -21
		mu 0 4 7 8 19 18
		f 4 25 26 27 -24
		mu 0 4 8 9 20 19
		f 4 28 -4 29 -27
		mu 0 4 9 10 21 20
		f 4 -3 30 31 32
		mu 0 4 11 12 23 22
		f 4 -7 33 34 -31
		mu 0 4 12 13 24 23
		f 4 -10 35 36 -34
		mu 0 4 13 14 25 24
		f 4 -13 37 38 -36
		mu 0 4 14 15 26 25
		f 4 -16 39 40 -38
		mu 0 4 15 16 27 26
		f 4 -19 41 42 -40
		mu 0 4 16 17 28 27
		f 4 -22 43 44 -42
		mu 0 4 17 18 29 28
		f 4 -25 45 46 -44
		mu 0 4 18 19 30 29
		f 4 -28 47 48 -46
		mu 0 4 19 20 31 30
		f 4 -30 -33 49 -48
		mu 0 4 20 21 32 31
		f 4 -32 50 51 52
		mu 0 4 22 23 34 33
		f 4 -35 53 54 -51
		mu 0 4 23 24 35 34
		f 4 -37 55 56 -54
		mu 0 4 24 25 36 35
		f 4 -39 57 58 -56
		mu 0 4 25 26 37 36
		f 4 -41 59 60 -58
		mu 0 4 26 27 38 37
		f 4 -43 61 62 -60
		mu 0 4 27 28 39 38
		f 4 -45 63 64 -62
		mu 0 4 28 29 40 39
		f 4 -47 65 66 -64
		mu 0 4 29 30 41 40
		f 4 -49 67 68 -66
		mu 0 4 30 31 42 41
		f 4 -50 -53 69 -68
		mu 0 4 31 32 43 42
		f 4 -52 70 71 72
		mu 0 4 33 34 45 44
		f 4 -55 73 74 -71
		mu 0 4 34 35 46 45
		f 4 -57 75 76 -74
		mu 0 4 35 36 47 46
		f 4 -59 77 78 -76
		mu 0 4 36 37 48 47
		f 4 -61 79 80 -78
		mu 0 4 37 38 49 48
		f 4 -63 81 82 -80
		mu 0 4 38 39 50 49
		f 4 -65 83 84 -82
		mu 0 4 39 40 51 50
		f 4 -67 85 86 -84
		mu 0 4 40 41 52 51
		f 4 -69 87 88 -86
		mu 0 4 41 42 53 52
		f 4 -70 -73 89 -88
		mu 0 4 42 43 54 53
		f 4 -72 90 91 92
		mu 0 4 44 45 56 55
		f 4 -75 93 94 -91
		mu 0 4 45 46 57 56
		f 4 -77 95 96 -94
		mu 0 4 46 47 58 57
		f 4 -79 97 98 -96
		mu 0 4 47 48 59 58
		f 4 -81 99 100 -98
		mu 0 4 48 49 60 59
		f 4 -83 101 102 -100
		mu 0 4 49 50 61 60
		f 4 -85 103 104 -102
		mu 0 4 50 51 62 61
		f 4 -87 105 106 -104
		mu 0 4 51 52 63 62
		f 4 -89 107 108 -106
		mu 0 4 52 53 64 63
		f 4 -90 -93 109 -108
		mu 0 4 53 54 65 64
		f 4 -92 110 111 112
		mu 0 4 55 56 67 66
		f 4 -95 113 114 -111
		mu 0 4 56 57 68 67
		f 4 -97 115 116 -114
		mu 0 4 57 58 69 68
		f 4 -99 117 118 -116
		mu 0 4 58 59 70 69
		f 4 -101 119 120 -118
		mu 0 4 59 60 71 70
		f 4 -103 121 122 -120
		mu 0 4 60 61 72 71
		f 4 -105 123 124 -122
		mu 0 4 61 62 73 72
		f 4 -107 125 126 -124
		mu 0 4 62 63 74 73
		f 4 -109 127 128 -126
		mu 0 4 63 64 75 74
		f 4 -110 -113 129 -128
		mu 0 4 64 65 76 75
		f 4 -112 130 131 132
		mu 0 4 66 67 78 77
		f 4 -115 133 134 -131
		mu 0 4 67 68 79 78
		f 4 -117 135 136 -134
		mu 0 4 68 69 80 79
		f 4 -119 137 138 -136
		mu 0 4 69 70 81 80
		f 4 -121 139 140 -138
		mu 0 4 70 71 82 81
		f 4 -123 141 142 -140
		mu 0 4 71 72 83 82
		f 4 -125 143 144 -142
		mu 0 4 72 73 84 83
		f 4 -127 145 146 -144
		mu 0 4 73 74 85 84
		f 4 -129 147 148 -146
		mu 0 4 74 75 86 85
		f 4 -130 -133 149 -148
		mu 0 4 75 76 87 86
		f 4 -132 150 151 152
		mu 0 4 77 78 89 88
		f 4 -135 153 154 -151
		mu 0 4 78 79 90 89
		f 4 -137 155 156 -154
		mu 0 4 79 80 91 90
		f 4 -139 157 158 -156
		mu 0 4 80 81 92 91
		f 4 -141 159 160 -158
		mu 0 4 81 82 93 92
		f 4 -143 161 162 -160
		mu 0 4 82 83 94 93
		f 4 -145 163 164 -162
		mu 0 4 83 84 95 94
		f 4 -147 165 166 -164
		mu 0 4 84 85 96 95
		f 4 -149 167 168 -166
		mu 0 4 85 86 97 96
		f 4 -150 -153 169 -168
		mu 0 4 86 87 98 97
		f 3 -1 170 171
		mu 0 3 1 0 99
		f 3 -5 -172 172
		mu 0 3 2 1 100
		f 3 -8 -173 173
		mu 0 3 3 2 101
		f 3 -11 -174 174
		mu 0 3 4 3 102
		f 3 -14 -175 175
		mu 0 3 5 4 103
		f 3 -17 -176 176
		mu 0 3 6 5 104
		f 3 -20 -177 177
		mu 0 3 7 6 105
		f 3 -23 -178 178
		mu 0 3 8 7 106
		f 3 -26 -179 179
		mu 0 3 9 8 107
		f 3 -29 -180 -171
		mu 0 3 10 9 108
		f 3 -152 180 181
		mu 0 3 88 89 109
		f 3 -155 182 -181
		mu 0 3 89 90 110
		f 3 -157 183 -183
		mu 0 3 90 91 111
		f 3 -159 184 -184
		mu 0 3 91 92 112
		f 3 -161 185 -185
		mu 0 3 92 93 113
		f 3 -163 186 -186
		mu 0 3 93 94 114
		f 3 -165 187 -187
		mu 0 3 94 95 115
		f 3 -167 188 -188
		mu 0 3 95 96 116
		f 3 -169 189 -189
		mu 0 3 96 97 117
		f 3 -170 -182 -190
		mu 0 3 97 98 118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "counter1";
createNode mesh -n "counter1Shape" -p "counter1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr -s 114 ".uvst[0].uvsp[0:113]" -type "float2" 0.29647875 0.17697598
		 0.29647875 0.0019659633 0.57234669 0.0019659633 0.57234669 0.17697598 0.57749462
		 0.0019659633 0.57749462 0.18693803 0.56575179 0.18915683 0.30179742 0.18915683 0.58051765
		 0.0019659633 0.58051765 0.18693803 0.57234669 0.3043209 0.57749462 0.30464917 0.56575179
		 0.29214004 0.29647875 0.3043209 0.30179742 0.29214004 0.58051765 0.30464917 0.10059986
		 0.3046492 0.0019920329 0.18693808 0.0021429667 0.0019659633 0.10749445 0.0019659633
		 0.289217 0.0019659633 0.289217 0.30432084 0.72214013 0.61066723 0.72214013 0.30831236
		 0.99800801 0.30831236 0.99800801 0.61066723 0.71699214 0.61066723 0.71699214 0.30831236
		 0.71396911 0.61066723 0.71396911 0.30831236 0.76859516 0.0019659633 0.87394661 0.0019659633
		 0.87394661 0.17697598 0.76859516 0.30432084 0.58687264 0.30432084 0.58687264 0.0019659633
		 0.4237949 0.59571469 0.4237949 0.49036318 0.69966286 0.49036318 0.69966286 0.59571469
		 0.4237949 0.30864063 0.69966286 0.30864063 0.7048108 0.49036318 0.7048108 0.59571469
		 0.7048108 0.30864063 0.70783377 0.49036318 0.70783377 0.59571469 0.70783377 0.30864063
		 0.22904252 0.30864066 0.41076502 0.30864066 0.41076502 0.5845086 0.22904252 0.5845086
		 0.41765964 0.58965653 0.22904252 0.58965653 0.41765964 0.59267956 0.22904252 0.59267956
		 0.4426502 0.68490338 0.54563338 0.59970611 0.68698704 0.77056897 0.58400381 0.8557663
		 0.79704821 0.87071878 0.69406492 0.78552157 0.83541858 0.61465871 0.93840176 0.69985592
		 0.90487009 0.87898266 0.91001487 0.87471038 0.99800801 0.98067451 0.99286318 0.98494685
		 0.71146846 0.98494685 0.70632362 0.98067462 0.79431665 0.87471038 0.79946148 0.87898266
		 0.80559683 0.87898266 0.81074166 0.87471038 0.89873475 0.98067451 0.89358991 0.98494685
		 0.61219525 0.98494685 0.60705048 0.98067462 0.6950435 0.87471038 0.70018828 0.87898266
		 0.001992051 0.59667099 0.087189324 0.59667099 0.087189324 0.86062539 0.001992051
		 0.86062539 0.2580522 0.59667099 0.2580522 0.86062539 0.26529551 0.86366051 0.26529551
		 0.59970611 0.43615842 0.59970611 0.43615842 0.86366051 0.57939947 0.9528957 0.57939947
		 0.94775093 0.60091513 0.94775093 0.60091513 0.9528957 0.57939947 0.85975772 0.60091513
		 0.85975772 0.57939947 0.86490256 0.60091513 0.86490256 0.52666503 0.85975772 0.53093737
		 0.85975772 0.53093737 0.88127345 0.52666503 0.88127345 0.54748029 0.95289564 0.54748029
		 0.94775087 0.57326412 0.94775087 0.57326412 0.95289564 0.54748029 0.85975772 0.57326412
		 0.85975772 0.54748029 0.86490256 0.57326412 0.86490256 0.53707266 0.85975772 0.54134494
		 0.85975772 0.54134494 0.88554168 0.53707266 0.88554168;
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 48 ".vt[0:47]"  -1.47131956 0 -3.67358136 3.73955917 0 -3.67358136
		 -1.47131956 8.21389675 -3.67358136 3.73955917 8.21389675 -3.67358136 -5.26298094 8.21389675 -12.22113609
		 3.73955917 8.21389675 -12.22113609 -5.26298094 0 -12.22113609 3.73955917 0 -12.22113609
		 -5.26298094 8.21389675 -6.81039429 -5.26298094 0 -6.81039429 3.73955917 0 -6.81039429
		 3.73955917 8.21389675 -6.81039429 -1.76793706 8.3671751 -3.66908717 -5.27275658 8.3671751 -6.60511017
		 3.73955917 8.3671751 -3.67358136 3.73955917 8.3671751 -6.81039429 3.73955917 8.3671751 -12.22113609
		 -5.26298094 8.3671751 -12.22113609 -1.7679373 8.45718479 -3.66908717 -5.27275658 8.45718479 -6.60511017
		 3.73955917 8.45718479 -3.67358136 3.73955917 8.45718479 -6.81039429 3.73955917 8.45718479 -12.22113609
		 -5.26298094 8.45718479 -12.22113609 -4.90029955 0.15836143 -6.51035118 -1.83400047 0.15836143 -3.97362447
		 -1.83400047 8.017537117 -3.97362447 -4.90029955 8.017537117 -6.51035118 -0.69153118 0.15836143 -11.59775066
		 2.37476778 0.15836143 -9.061023712 2.37476778 8.017537117 -9.061023712 -0.69153118 8.017537117 -11.59775066
		 -1.78943825 7.39097452 -3.92420483 -1.66223192 7.39097452 -4.077390671 -1.78943825 8.031599045 -3.92420483
		 -1.66223192 8.031599045 -4.077390671 -4.94449472 8.031599045 -6.54417706 -4.8172884 8.031599045 -6.6973629
		 -4.94449472 7.39097452 -6.54417706 -4.8172884 7.39097452 -6.6973629 -1.78943825 0.12222195 -3.92420483
		 -1.66223192 0.12222195 -4.077390671 -1.78943825 0.88993037 -3.92420483 -1.66223192 0.88993037 -4.077390671
		 -4.94449472 0.88993037 -6.54417706 -4.8172884 0.88993037 -6.6973629 -4.94449472 0.12222195 -6.54417706
		 -4.8172884 0.12222195 -6.6973629;
	setAttr -s 82 ".ed[0:81]"  0 1 1 1 3 1 3 2 1 2 0 1 19 18 1 18 20 1 20 21 1
		 21 22 1 22 23 1 23 19 1 4 5 1 5 7 1 7 6 1 6 4 1 10 1 1 0 9 1 9 6 1 7 10 1 10 11 1
		 11 3 1 28 29 1 29 30 1 30 31 1 31 28 1 9 8 1 8 4 1 5 11 1 8 2 1 2 12 1 12 13 1 13 8 1
		 3 14 1 14 12 1 11 15 1 15 14 1 5 16 1 16 15 1 4 17 1 17 16 1 13 17 1 12 18 1 19 13 1
		 14 20 1 15 21 1 16 22 1 17 23 1 0 25 1 25 24 1 24 9 1 2 26 1 26 25 1 8 27 1 27 26 1
		 24 27 1 25 29 1 28 24 1 26 30 1 27 31 1 32 33 1 33 35 1 35 34 1 34 32 1 35 37 1 37 36 1
		 36 34 1 37 39 1 39 38 1 38 36 1 39 33 1 32 38 1 40 41 1 41 43 1 43 42 1 42 40 1 43 45 1
		 45 44 1 44 42 1 45 47 1 47 46 1 46 44 1 47 41 1 40 46 1;
	setAttr -s 48 ".n[0:47]" -type "float3"  -0.37324136 -0.39036226 0.84157842
		 0.8164922 -0.4082461 0.4082461 0.70714438 -0.0032654805 0.70702231 -0.36909086 -0.12417982
		 0.92104864 -0.54429764 0.82399976 0.15720084 -0.42631307 0.33213294 0.8413648 0.33381146
		 0.66652423 0.66652423 0.83202612 0.55467391 0 0.6666463 0.6666463 -0.33332315 -0.40800196
		 0.40800196 -0.81670582 -0.70656455 -0.014984588 -0.70744956 0.55467391 0 -0.83202612
		 0.6666463 -0.33332315 -0.6666463 -0.6666463 -0.6666463 -0.33332315 0.44718772 -0.89440596
		 0 -0.68977934 -0.4737083 0.54750204 1 0 0 0.088686787 0.33332315 0.93859679 -0.57478559
		 0.8164922 0.054322947 -0.93859679 -0.33332315 0.088686787 0.054322947 -0.8164922
		 0.57478559 -0.84371471 -0.22666097 0.48658711 -0.28269294 -0.29224524 0.9135716 -0.90636921
		 -0.15805537 0.3917661 0.70732749 -0.006530961 0.7068392 1 0 0 0.70708334 0 -0.70708334
		 -0.70644248 -0.0074770348 -0.7076937 -0.92291027 0.2672506 0.27704704 -0.30515456
		 0.53450119 0.78811002 -0.71700186 -0.53450119 0.44740134 -0.099215671 -0.2672506
		 0.95849484 0.36732078 -0.4082461 0.83568835 0.68233281 -0.6666463 -0.29990539 0.88894314
		 0.4082461 0.20752586 -0.16943876 0.6666463 0.72582173 0.16943876 0.6666463 -0.72582173
		 -0.88894314 0.4082461 -0.20752586 -0.36732078 -0.4082461 -0.83568835 -0.68233281
		 -0.6666463 0.29990539 0.36732078 -0.4082461 0.83568835 0.68233281 -0.6666463 -0.29990539
		 0.88894314 0.4082461 0.20752586 -0.16943876 0.6666463 0.72582173 0.16943876 0.6666463
		 -0.72582173 -0.88894314 0.4082461 -0.20752586 -0.36732078 -0.4082461 -0.83568835
		 -0.68233281 -0.6666463 0.29990539;
	setAttr -s 40 -ch 164 ".fc[0:39]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 6 4 5 6 7 8 9
		mu 0 6 16 17 18 19 20 21
		f 4 10 11 12 13
		mu 0 4 22 23 24 25
		f 6 14 -1 15 16 -13 17
		mu 0 6 30 31 32 33 34 35
		f 4 -15 18 19 -2
		mu 0 4 36 37 38 39
		f 4 20 21 22 23
		mu 0 4 80 81 82 83
		f 4 -17 24 25 -14
		mu 0 4 48 49 50 51
		f 4 -19 -18 -12 26
		mu 0 4 38 37 40 41
		f 4 27 28 29 30
		mu 0 4 10 3 5 11
		f 4 -3 31 32 -29
		mu 0 4 3 2 4 5
		f 4 -20 33 34 -32
		mu 0 4 39 38 42 43
		f 4 -27 35 36 -34
		mu 0 4 38 41 44 42
		f 4 -11 37 38 -36
		mu 0 4 23 22 26 27
		f 4 -26 -31 39 -38
		mu 0 4 51 50 52 53
		f 4 -30 40 -5 41
		mu 0 4 11 5 9 15
		f 4 -33 42 -6 -41
		mu 0 4 5 4 8 9
		f 4 -35 43 -7 -43
		mu 0 4 43 42 45 46
		f 4 -37 44 -8 -44
		mu 0 4 42 44 47 45
		f 4 -39 45 -9 -45
		mu 0 4 27 26 28 29
		f 4 -40 -42 -10 -46
		mu 0 4 53 52 54 55
		f 4 -16 46 47 48
		mu 0 4 13 0 7 14
		f 4 -4 49 50 -47
		mu 0 4 0 3 6 7
		f 4 -28 51 52 -50
		mu 0 4 3 10 12 6
		f 4 -25 -49 53 -52
		mu 0 4 10 13 14 12
		f 4 -48 54 -21 55
		mu 0 4 56 57 58 59
		f 4 -51 56 -22 -55
		mu 0 4 84 85 82 81
		f 4 -53 57 -23 -57
		mu 0 4 60 61 62 63
		f 4 -54 -56 -24 -58
		mu 0 4 86 87 88 89
		f 4 58 59 60 61
		mu 0 4 90 91 92 93
		f 4 -61 62 63 64
		mu 0 4 64 65 66 67
		f 4 -64 65 66 67
		mu 0 4 98 99 100 101
		f 4 -67 68 -59 69
		mu 0 4 68 69 70 71
		f 4 -69 -66 -63 -60
		mu 0 4 91 94 95 92
		f 4 -70 -62 -65 -68
		mu 0 4 96 90 93 97
		f 4 70 71 72 73
		mu 0 4 102 103 104 105
		f 4 -73 74 75 76
		mu 0 4 72 73 74 75
		f 4 -76 77 78 79
		mu 0 4 110 111 112 113
		f 4 -79 80 -71 81
		mu 0 4 76 77 78 79
		f 4 -81 -78 -75 -72
		mu 0 4 103 106 107 104
		f 4 -82 -74 -77 -80
		mu 0 4 108 102 105 109;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode phong -n "counter";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.28999999 0.31999999 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 5.429999828338623;
createNode shadingEngine -n "counter_doorSG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "counter_Flattened_Diffuse";
	setAttr ".ftn" -type "string" "/Users/zijing_liu/Desktop/big project/3D/done/counter1/counter1.fbx-files/counter_Flattened_Diffuse.tif";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "ReflectionMap";
	setAttr ".ftn" -type "string" "/Applications/Autodesk/Mudbox2015/Mudbox.app/Contents/MacOS/Textures/Lightprobes/horizon.exr";
createNode place2dTexture -n "place2dTexture2";
createNode phong -n "handler_u1_v2";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0.2 0.28999999 0.31999999 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 5.429999828338623;
createNode shadingEngine -n "pSphere5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "handler_Flattened_Diffuse_u1_v1";
	setAttr ".ftn" -type "string" "/Users/zijing_liu/Desktop/big project/3D/doing/counter1.fbx-files/handler_Flattened_Diffuse_u1_v1.tif";
createNode place2dTexture -n "place2dTexture3";
createNode file -n "ReflectionMap_ncl1_1";
	setAttr ".ftn" -type "string" "/Applications/Autodesk/Mudbox2015/Mudbox.app/Contents/MacOS/Textures/Lightprobes/horizon.exr";
createNode place2dTexture -n "place2dTexture4";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "counter_doorSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pSphere5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "counter_doorSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pSphere5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "counter_Flattened_Diffuse.oc" "counter.c";
connectAttr "ReflectionMap.oc" "counter.rc";
connectAttr "counter.oc" "counter_doorSG.ss";
connectAttr "counter_doorShape.iog" "counter_doorSG.dsm" -na;
connectAttr "counter1Shape.iog" "counter_doorSG.dsm" -na;
connectAttr "counter_doorSG.msg" "materialInfo1.sg";
connectAttr "counter.msg" "materialInfo1.m";
connectAttr "counter_Flattened_Diffuse.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "counter_Flattened_Diffuse.uv";
connectAttr "place2dTexture1.ofu" "counter_Flattened_Diffuse.ofu";
connectAttr "place2dTexture1.ofv" "counter_Flattened_Diffuse.ofv";
connectAttr "place2dTexture1.rf" "counter_Flattened_Diffuse.rf";
connectAttr "place2dTexture1.reu" "counter_Flattened_Diffuse.reu";
connectAttr "place2dTexture1.rev" "counter_Flattened_Diffuse.rev";
connectAttr "place2dTexture1.vt1" "counter_Flattened_Diffuse.vt1";
connectAttr "place2dTexture1.vt2" "counter_Flattened_Diffuse.vt2";
connectAttr "place2dTexture1.vt3" "counter_Flattened_Diffuse.vt3";
connectAttr "place2dTexture1.vc1" "counter_Flattened_Diffuse.vc1";
connectAttr "place2dTexture1.ofs" "counter_Flattened_Diffuse.fs";
connectAttr "place2dTexture2.o" "ReflectionMap.uv";
connectAttr "place2dTexture2.ofu" "ReflectionMap.ofu";
connectAttr "place2dTexture2.ofv" "ReflectionMap.ofv";
connectAttr "place2dTexture2.rf" "ReflectionMap.rf";
connectAttr "place2dTexture2.reu" "ReflectionMap.reu";
connectAttr "place2dTexture2.rev" "ReflectionMap.rev";
connectAttr "place2dTexture2.vt1" "ReflectionMap.vt1";
connectAttr "place2dTexture2.vt2" "ReflectionMap.vt2";
connectAttr "place2dTexture2.vt3" "ReflectionMap.vt3";
connectAttr "place2dTexture2.vc1" "ReflectionMap.vc1";
connectAttr "place2dTexture2.ofs" "ReflectionMap.fs";
connectAttr "handler_Flattened_Diffuse_u1_v1.oc" "handler_u1_v2.c";
connectAttr "ReflectionMap_ncl1_1.oc" "handler_u1_v2.rc";
connectAttr "handler_u1_v2.oc" "pSphere5SG.ss";
connectAttr "pSphere5Shape.iog" "pSphere5SG.dsm" -na;
connectAttr "pSphere5SG.msg" "materialInfo2.sg";
connectAttr "handler_u1_v2.msg" "materialInfo2.m";
connectAttr "handler_Flattened_Diffuse_u1_v1.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture3.o" "handler_Flattened_Diffuse_u1_v1.uv";
connectAttr "place2dTexture3.ofu" "handler_Flattened_Diffuse_u1_v1.ofu";
connectAttr "place2dTexture3.ofv" "handler_Flattened_Diffuse_u1_v1.ofv";
connectAttr "place2dTexture3.rf" "handler_Flattened_Diffuse_u1_v1.rf";
connectAttr "place2dTexture3.reu" "handler_Flattened_Diffuse_u1_v1.reu";
connectAttr "place2dTexture3.rev" "handler_Flattened_Diffuse_u1_v1.rev";
connectAttr "place2dTexture3.vt1" "handler_Flattened_Diffuse_u1_v1.vt1";
connectAttr "place2dTexture3.vt2" "handler_Flattened_Diffuse_u1_v1.vt2";
connectAttr "place2dTexture3.vt3" "handler_Flattened_Diffuse_u1_v1.vt3";
connectAttr "place2dTexture3.vc1" "handler_Flattened_Diffuse_u1_v1.vc1";
connectAttr "place2dTexture3.ofs" "handler_Flattened_Diffuse_u1_v1.fs";
connectAttr "place2dTexture4.o" "ReflectionMap_ncl1_1.uv";
connectAttr "place2dTexture4.ofu" "ReflectionMap_ncl1_1.ofu";
connectAttr "place2dTexture4.ofv" "ReflectionMap_ncl1_1.ofv";
connectAttr "place2dTexture4.rf" "ReflectionMap_ncl1_1.rf";
connectAttr "place2dTexture4.reu" "ReflectionMap_ncl1_1.reu";
connectAttr "place2dTexture4.rev" "ReflectionMap_ncl1_1.rev";
connectAttr "place2dTexture4.vt1" "ReflectionMap_ncl1_1.vt1";
connectAttr "place2dTexture4.vt2" "ReflectionMap_ncl1_1.vt2";
connectAttr "place2dTexture4.vt3" "ReflectionMap_ncl1_1.vt3";
connectAttr "place2dTexture4.vc1" "ReflectionMap_ncl1_1.vc1";
connectAttr "place2dTexture4.ofs" "ReflectionMap_ncl1_1.fs";
connectAttr "counter_doorSG.pa" ":renderPartition.st" -na;
connectAttr "pSphere5SG.pa" ":renderPartition.st" -na;
connectAttr "counter.msg" ":defaultShaderList1.s" -na;
connectAttr "handler_u1_v2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "counter_Flattened_Diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr "handler_Flattened_Diffuse_u1_v1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ReflectionMap_ncl1_1.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"counter_Flattened_Diffuse\" \"fileTextureName\" \"/Users/zijing_liu/Desktop/big project/3D/done/counter1/counter1.fbx-files/counter_Flattened_Diffuse.tif\" 621152808 \"\" \"sourceImages\"\n1\n\"ReflectionMap\" \"fileTextureName\" \"/Applications/Autodesk/Mudbox2015/Mudbox.app/Contents/MacOS/Textures/Lightprobes/horizon.exr\" 817280373 \"\" \"sourceImages\"\n2\n\"handler_Flattened_Diffuse_u1_v1\" \"fileTextureName\" \"/Users/zijing_liu/Desktop/big project/3D/doing/counter1.fbx-files/handler_Flattened_Diffuse_u1_v1.tif\" 2165162155 \"\" \"sourceImages\"\n3\n\"ReflectionMap_ncl1_1\" \"fileTextureName\" \"/Applications/Autodesk/Mudbox2015/Mudbox.app/Contents/MacOS/Textures/Lightprobes/horizon.exr\" 817280373 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of counter1.ma
