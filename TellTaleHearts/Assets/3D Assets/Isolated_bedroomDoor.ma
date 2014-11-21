//Maya ASCII 2015 scene
//Name: Isolated_bedroomDoor.ma
//Last modified: Fri, Nov 21, 2014 01:49:07 PM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "education";
createNode transform -n "House_Main_Group";
createNode transform -n "bedroomdoor" -p "House_Main_Group";
	setAttr ".rp" -type "double3" 791.77619017455447 168.88384139537811 6.21331787109375 ;
	setAttr ".sp" -type "double3" 791.77619017455447 168.88384139537811 6.21331787109375 ;
createNode transform -n "bedroomdoor1" -p "bedroomdoor";
	setAttr ".rp" -type "double3" 705.37765502929688 168.88384139537811 6.339630126953125 ;
	setAttr ".sp" -type "double3" 705.37765502929688 168.88384139537811 6.339630126953125 ;
createNode mesh -n "bedroomdoorShape1" -p "bedroomdoor1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:57]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 5.9604645e-08 0.78406203
		 0.0023434758 0.78406739 0.50928497 0.78406382 0.50694156 0.78405845 0.9976567 0.78405511
		 1.000000119209 0.78406048 1 0.21593845 0.99765658 0.2159332 0.50694156 0.2159366
		 0.50928497 0.21594185 0.0023434758 0.21594536 5.9604645e-08 0.21594012 0.087886453
		 0.67012751 0.087886453 0.32988548 0.39148813 0.3298834 0.39148813 0.67012537 0.076554
		 0.32374185 0.076554 0.67625773 0.38770515 0.67625558 0.38770515 0.32373971 0.61752725
		 0.32383776 0.61752725 0.67615461 0.92184091 0.67615247 0.92184091 0.32383567 0.62182653
		 0.67219031 0.62182653 0.32781494 0.91928029 0.32781291 0.91928029 0.67218816 0.59819853
		 0.69883931 0.59819853 0.3011542 0.94169915 0.69883692 0.94169915 0.30115181 0.60722864
		 0.68873847 0.60722864 0.31125635 0.93327916 0.6887362 0.93327916 0.31125408 0.054978132
		 0.698843 0.054978132 0.30115795 0.40983713 0.69884062 0.40983713 0.30115551 0.064197123
		 0.68890178 0.064197123 0.31110072 0.4013133 0.6888994 0.4013133 0.3110984 0.59951341
		 0.30233794 0.59951341 0.69766629 0.94097841 0.30233556 0.94097841 0.6976639 0.61052644
		 0.31551462 0.61052644 0.68448794 0.92922699 0.31551242 0.92922699 0.68448579 0.061951816
		 0.30116314 0.061951816 0.69884837 0.41681087 0.30116069 0.41681087 0.69884598 0.076431692
		 0.31773269 0.076431692 0.68227768 0.40171921 0.31773049 0.40171921 0.68227541;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  610.77215576 2.49601531 -0.80300903 610.77215576 2.49601531 13.30432129
		 610.77215576 335.27166748 -0.80300903 610.77215576 335.27166748 13.30432129 799.9831543 335.27166748 -0.80303955
		 799.9831543 335.27166748 13.30432129 799.9831543 2.49601531 -0.80303955 799.9831543 2.49601531 13.30432129
		 610.77215576 171.59005737 -0.80300903 799.9831543 171.59005737 -0.80303955 799.9831543 171.59005737 13.30432129
		 610.77215576 171.59005737 13.30432129 639.15393066 202.029495239 -0.80300903 771.6015625 202.029495239 -0.80303955
		 639.15393066 316.60662842 -0.80300903 771.6015625 316.60662842 -0.80303955 642.51818848 204.93980408 1.032623291
		 768.23730469 204.93980408 1.032592773 642.51818848 313.6963501 1.032623291 768.23730469 313.6963501 1.032592773
		 646.70880127 208.56500244 -2.39700317 764.046630859 208.56500244 -2.39703369 646.70880127 310.071105957 -2.39700317
		 764.046630859 310.071105957 -2.39703369 771.6015625 20.83434868 -0.80303955 639.15393066 20.83434868 -0.80300903
		 639.15393066 139.20016479 -0.80300903 771.6015625 139.20016479 -0.80303955 768.29040527 23.79348564 1.28930664
		 642.46508789 23.79348564 1.28933716 642.46508789 136.24104309 1.28933716 768.29040527 136.24104309 1.28930664
		 764.079833984 28.1238842 -2.47686768 646.67565918 28.1238842 -2.47683716 646.67565918 131.91062927 -2.47683716
		 764.079833984 131.91062927 -2.47686768 771.20910645 201.68641663 13.30432129 639.54638672 201.68641663 13.30432129
		 771.20910645 315.58453369 13.30432129 639.54638672 315.58453369 13.30432129 766.8203125 205.48298645 11.08215332
		 643.93505859 205.48298645 11.08215332 766.8203125 311.78790283 11.08215332 643.93505859 311.78790283 11.08215332
		 762.72424316 209.026489258 15.15612793 648.03125 209.026489258 15.15612793 762.72424316 308.24438477 15.15612793
		 648.03125 308.24438477 15.15612793 771.6015625 22.37881279 13.30432129 639.15393066 22.37881279 13.30432129
		 771.6015625 140.74464417 13.30432129 639.15393066 140.74464417 13.30432129 766.082885742 27.31071281 11.46270752
		 644.67248535 27.31071281 11.46270752 766.082885742 135.81272888 11.46270752 644.67248535 135.81272888 11.46270752
		 762.035888672 30.92744255 15.14593506 648.71948242 30.92744255 15.14593506 762.035888672 132.19599915 15.14593506
		 648.71948242 132.19599915 15.14593506;
	setAttr -s 116 ".ed[0:115]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 11 0 2 4 0
		 3 5 0 4 9 0 5 10 0 6 0 0 7 1 0 8 2 0 9 6 0 8 9 1 10 7 0 9 10 1 11 3 0 10 11 1 11 8 1
		 8 12 1 9 13 1 12 13 0 2 14 1 12 14 1 4 15 1 14 15 0 15 13 1 12 16 0 13 17 0 16 17 0
		 14 18 0 16 18 0 15 19 0 18 19 0 19 17 0 16 20 0 17 21 0 20 21 0 18 22 0 20 22 0 19 23 0
		 22 23 0 23 21 0 6 24 1 0 25 1 24 25 0 8 26 1 25 26 1 9 27 1 26 27 0 27 24 1 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 30 31 0 31 28 0 28 32 0 29 33 0 32 33 0 30 34 0
		 33 34 0 31 35 0 34 35 0 35 32 0 10 36 1 11 37 1 36 37 0 5 38 1 38 36 1 3 39 1 39 38 0
		 37 39 1 36 40 0 37 41 0 40 41 0 38 42 0 42 40 0 39 43 0 43 42 0 41 43 0 40 44 0 41 45 0
		 44 45 0 42 46 0 46 44 0 43 47 0 47 46 0 45 47 0 7 48 1 1 49 1 48 49 1 10 50 1 50 48 1
		 11 51 1 50 51 1 49 51 1 48 52 1 49 53 1 52 53 0 50 54 1 54 52 0 51 55 1 54 55 0 53 55 0
		 52 56 0 53 57 0 56 57 0 54 58 0 58 56 0 55 59 0 58 59 0 57 59 0;
	setAttr -s 58 -ch 232 ".fc[0:57]" -type "polyFaces" 
		f 4 0 5 19 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 16 15 -4 -14
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 11 10 1 0
		f 4 -111 -113 114 -116
		mu 0 4 12 13 14 15
		f 4 62 64 66 67
		mu 0 4 16 17 18 19
		f 4 -39 40 42 43
		mu 0 4 20 21 22 23
		f 4 2 9 -17 -9
		mu 0 4 7 6 9 8
		f 4 -87 -89 -91 -92
		mu 0 4 24 25 26 27
		f 4 -20 17 -2 -13
		mu 0 4 3 2 5 4
		f 4 -15 20 22 -22
		mu 0 4 8 3 28 29
		f 4 12 23 -25 -21
		mu 0 4 3 4 30 28
		f 4 6 25 -27 -24
		mu 0 4 4 7 31 30
		f 4 8 21 -28 -26
		mu 0 4 7 8 29 31
		f 4 -23 28 30 -30
		mu 0 4 29 28 32 33
		f 4 24 31 -33 -29
		mu 0 4 28 30 34 32
		f 4 26 33 -35 -32
		mu 0 4 30 31 35 34
		f 4 27 29 -36 -34
		mu 0 4 31 29 33 35
		f 4 -31 36 38 -38
		mu 0 4 33 32 21 20
		f 4 32 39 -41 -37
		mu 0 4 32 34 22 21
		f 4 34 41 -43 -40
		mu 0 4 34 35 23 22
		f 4 35 37 -44 -42
		mu 0 4 35 33 20 23
		f 4 10 45 -47 -45
		mu 0 4 11 0 36 37
		f 4 4 47 -49 -46
		mu 0 4 0 3 38 36
		f 4 14 49 -51 -48
		mu 0 4 3 8 39 38
		f 4 13 44 -52 -50
		mu 0 4 8 11 37 39
		f 4 46 53 -55 -53
		mu 0 4 37 36 40 41
		f 4 48 55 -57 -54
		mu 0 4 36 38 42 40
		f 4 50 57 -59 -56
		mu 0 4 38 39 43 42
		f 4 51 52 -60 -58
		mu 0 4 39 37 41 43
		f 4 54 61 -63 -61
		mu 0 4 41 40 17 16
		f 4 56 63 -65 -62
		mu 0 4 40 42 18 17
		f 4 58 65 -67 -64
		mu 0 4 42 43 19 18
		f 4 59 60 -68 -66
		mu 0 4 43 41 16 19
		f 4 -19 68 70 -70
		mu 0 4 2 9 44 45
		f 4 -10 71 72 -69
		mu 0 4 9 6 46 44
		f 4 -8 73 74 -72
		mu 0 4 6 5 47 46
		f 4 -18 69 75 -74
		mu 0 4 5 2 45 47
		f 4 -71 76 78 -78
		mu 0 4 45 44 48 49
		f 4 -73 79 80 -77
		mu 0 4 44 46 50 48
		f 4 -75 81 82 -80
		mu 0 4 46 47 51 50
		f 4 -76 77 83 -82
		mu 0 4 47 45 49 51
		f 4 -79 84 86 -86
		mu 0 4 49 48 25 24
		f 4 -81 87 88 -85
		mu 0 4 48 50 26 25
		f 4 -83 89 90 -88
		mu 0 4 50 51 27 26
		f 4 -84 85 91 -90
		mu 0 4 51 49 24 27
		f 4 -12 92 94 -94
		mu 0 4 1 10 52 53
		f 4 -16 95 96 -93
		mu 0 4 10 9 54 52
		f 4 18 97 -99 -96
		mu 0 4 9 2 55 54
		f 4 -6 93 99 -98
		mu 0 4 2 1 53 55
		f 4 -95 100 102 -102
		mu 0 4 53 52 56 57
		f 4 -97 103 104 -101
		mu 0 4 52 54 58 56
		f 4 98 105 -107 -104
		mu 0 4 54 55 59 58
		f 4 -100 101 107 -106
		mu 0 4 55 53 57 59
		f 4 -103 108 110 -110
		mu 0 4 57 56 13 12
		f 4 -105 111 112 -109
		mu 0 4 56 58 14 13
		f 4 106 113 -115 -112
		mu 0 4 58 59 15 14
		f 4 -108 109 115 -114
		mu 0 4 59 57 12 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface78" -p "bedroomdoor1";
createNode mesh -n "polySurfaceShape69" -p "polySurface78";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.46882814 0.73848855
		 0.46846807 0.73848784 0.48258197 0.73848879 0.48086303 0.73848963 0.56755829 0.73848784
		 0.56719816 0.73848701 0.56719816 0.74906492 0.56755829 0.74906576 0.48086303 0.74906754
		 0.48258197 0.74906671 0.46846807 0.74906576 0.46882814 0.74906647 0.55359471 0.74906802
		 0.55359471 0.7384901 0.55103886 0.74906731 0.55103886 0.73848939 0.53321934 0.74906874
		 0.53321934 0.73849082 0.53285921 0.7490679 0.53285921 0.73848999 0.51813793 0.74906874
		 0.51813793 0.73849082 0.5177778 0.7490679 0.5177778 0.73848999 0.50200629 0.7490685
		 0.50200629 0.73849058 0.50372553 0.74906754 0.50372553 0.73848963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  625.95092773 158.097198486 13.27172852 625.95092773 158.097198486 11.1038208
		 625.95092773 191.058029175 12.75360107 625.95092773 191.058029175 10.58563232 622.42791748 191.058029175 12.75360107
		 622.42791748 191.058029175 10.58563232 622.42791748 158.097198486 13.27172852 622.42791748 158.097198486 11.1038208
		 625.95092773 186.077011108 18.59033203 622.42791748 186.077011108 18.59033203 622.42791748 185.3374176 16.55249023
		 625.95092773 185.3374176 16.55249023 625.95092773 179.19685364 20.1026001 622.42791748 179.19685364 20.1026001
		 622.42791748 179.19685364 17.93469238 625.95092773 179.19685364 17.93469238 625.95092773 174.17987061 19.85809326
		 622.42791748 174.17987061 19.85809326 622.42791748 174.17987061 17.69018555 625.95092773 174.17987061 17.69018555
		 625.95092773 168.85894775 18.77758789 622.42791748 168.85894775 18.77758789 622.42791748 169.54989624 16.65606689
		 625.95092773 169.54989624 16.65606689 625.95092773 161.96565247 15.90368652 622.42791748 161.96565247 15.90368652
		 622.42791748 162.65660095 13.78216553 625.95092773 162.65660095 13.78216553;
	setAttr -s 52 ".ed[0:51]"  0 1 1 2 3 1 4 5 1 6 7 1 0 24 1 1 27 1 2 4 1
		 3 5 1 4 9 1 5 10 1 6 0 1 7 1 1 8 2 1 9 13 1 8 9 1 10 14 1 9 10 1 11 3 1 10 11 1 11 8 1
		 12 8 1 13 17 1 12 13 1 14 18 1 13 14 1 15 11 1 14 15 1 15 12 1 16 12 1 17 21 1 16 17 1
		 18 22 1 17 18 1 19 15 1 18 19 1 19 16 1 20 16 1 21 25 1 20 21 1 22 26 1 21 22 1 23 19 1
		 22 23 1 23 20 1 24 20 1 25 6 1 24 25 1 26 7 1 25 26 1 27 23 1 26 27 1 27 24 1;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 51 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 48 47 -4 -46
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 11 10 1 0
		f 4 -12 -48 50 -6
		mu 0 4 1 10 9 2
		f 4 10 4 46 45
		mu 0 4 11 0 3 8
		f 4 -15 12 6 8
		mu 0 4 12 13 4 7
		f 4 2 9 -17 -9
		mu 0 4 7 6 14 12
		f 4 -19 -10 -8 -18
		mu 0 4 15 14 6 5
		f 4 -20 17 -2 -13
		mu 0 4 13 15 5 4
		f 4 -23 20 14 13
		mu 0 4 16 17 13 12
		f 4 16 15 -25 -14
		mu 0 4 12 14 18 16
		f 4 -27 -16 18 -26
		mu 0 4 19 18 14 15
		f 4 -28 25 19 -21
		mu 0 4 17 19 15 13
		f 4 -31 28 22 21
		mu 0 4 20 21 17 16
		f 4 24 23 -33 -22
		mu 0 4 16 18 22 20
		f 4 -35 -24 26 -34
		mu 0 4 23 22 18 19
		f 4 -36 33 27 -29
		mu 0 4 21 23 19 17
		f 4 -39 36 30 29
		mu 0 4 24 25 21 20
		f 4 32 31 -41 -30
		mu 0 4 20 22 26 24
		f 4 -43 -32 34 -42
		mu 0 4 27 26 22 23
		f 4 -44 41 35 -37
		mu 0 4 25 27 23 21
		f 4 -47 44 38 37
		mu 0 4 8 3 25 24
		f 4 40 39 -49 -38
		mu 0 4 24 26 9 8
		f 4 -51 -40 42 -50
		mu 0 4 2 9 26 27
		f 4 -52 49 43 -45
		mu 0 4 3 2 27 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "bedroomdoor2" -p "bedroomdoor";
createNode mesh -n "bedroomdoorShape2" -p "bedroomdoor2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.46648318 0.74906123
		 0.46684331 0.74906206 0.48006737 0.74906111 0.47764361 0.74906027 0.56538534 0.74906087
		 0.56574547 0.7490617 0.56574547 0.73848379 0.56538534 0.73848295 0.47764361 0.73848236
		 0.48006737 0.73848319 0.46684331 0.73848414 0.46648318 0.73848331 0.5494827 0.73848093
		 0.5494827 0.74905884 0.54760396 0.73848164 0.54760396 0.74905956 0.52860498 0.73848045
		 0.52860498 0.74905837 0.52896512 0.73848128 0.52896512 0.7490592 0.51360476 0.73848069
		 0.51360476 0.7490586 0.51396477 0.73848152 0.51396477 0.74905944 0.49783212 0.73848116
		 0.49783212 0.74905908 0.50025606 0.73848188 0.50025606 0.7490598;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  622.42791748 158.097198486 -0.84509277 622.42791748 158.097198486 1.32284546
		 622.42797852 191.058029175 -0.32693481 622.42791748 191.058029175 1.8409729 625.95092773 191.058029175 -0.32693481
		 625.95092773 191.058029175 1.8409729 625.95092773 158.097198486 -0.84509277 625.95092773 158.097198486 1.32284546
		 622.42791748 186.077011108 -6.16369629 625.95092773 186.077011108 -6.16369629 625.95092773 185.3374176 -4.12582397
		 622.42791748 185.3374176 -4.12582397 622.42791748 179.19685364 -7.67596436 625.95092773 179.19685364 -7.67596436
		 625.95092773 179.19685364 -5.50802612 622.42791748 179.19685364 -5.50802612 622.42791748 174.17987061 -7.43145752
		 625.95092773 174.17987061 -7.43145752 625.95092773 174.17987061 -5.26351929 622.42791748 174.17987061 -5.26351929
		 622.42791748 168.85894775 -6.35098267 625.95092773 168.85894775 -6.35098267 625.95092773 169.54989624 -4.22946167
		 622.42791748 169.54989624 -4.22946167 622.42791748 161.96565247 -3.47702026 625.95092773 161.96565247 -3.47702026
		 625.95092773 162.65660095 -1.35549927 622.42791748 162.65660095 -1.35549927;
	setAttr -s 52 ".ed[0:51]"  0 1 1 2 3 1 4 5 1 6 7 1 0 24 1 1 27 1 2 4 1
		 3 5 1 4 9 1 5 10 1 6 0 1 7 1 1 8 2 1 9 13 1 8 9 1 10 14 1 9 10 1 11 3 1 10 11 1 11 8 1
		 12 8 1 13 17 1 12 13 1 14 18 1 13 14 1 15 11 1 14 15 1 15 12 1 16 12 1 17 21 1 16 17 1
		 18 22 1 17 18 1 19 15 1 18 19 1 19 16 1 20 16 1 21 25 1 20 21 1 22 26 1 21 22 1 23 19 1
		 22 23 1 23 20 1 24 20 1 25 6 1 24 25 1 26 7 1 25 26 1 27 23 1 26 27 1 27 24 1;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 51 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 48 47 -4 -46
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 11 10 1 0
		f 4 -12 -48 50 -6
		mu 0 4 1 10 9 2
		f 4 10 4 46 45
		mu 0 4 11 0 3 8
		f 4 -15 12 6 8
		mu 0 4 12 13 4 7
		f 4 2 9 -17 -9
		mu 0 4 7 6 14 12
		f 4 -19 -10 -8 -18
		mu 0 4 15 14 6 5
		f 4 -20 17 -2 -13
		mu 0 4 13 15 5 4
		f 4 -23 20 14 13
		mu 0 4 16 17 13 12
		f 4 16 15 -25 -14
		mu 0 4 12 14 18 16
		f 4 -27 -16 18 -26
		mu 0 4 19 18 14 15
		f 4 -28 25 19 -21
		mu 0 4 17 19 15 13
		f 4 -31 28 22 21
		mu 0 4 20 21 17 16
		f 4 24 23 -33 -22
		mu 0 4 16 18 22 20
		f 4 -35 -24 26 -34
		mu 0 4 23 22 18 19
		f 4 -36 33 27 -29
		mu 0 4 21 23 19 17
		f 4 -39 36 30 29
		mu 0 4 24 25 21 20
		f 4 32 31 -41 -30
		mu 0 4 20 22 26 24
		f 4 -43 -32 34 -42
		mu 0 4 27 26 22 23
		f 4 -44 41 35 -37
		mu 0 4 25 27 23 21
		f 4 -47 44 38 37
		mu 0 4 8 3 25 24
		f 4 40 39 -49 -38
		mu 0 4 24 26 9 8
		f 4 -51 -40 42 -50
		mu 0 4 2 9 26 27
		f 4 -52 49 43 -45
		mu 0 4 3 2 27 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 4 ".dli[1:3]"  4 2 3;
	setAttr -s 3 ".dli";
createNode groupId -n "groupId236";
	setAttr ".ihi" 0;
createNode shadingEngine -n "House_Layout:lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 55 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 30 ".gn";
createNode materialInfo -n "House_Layout:materialInfo1";
createNode lambert -n "House_Layout:test_checker";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/WallpaperForties0002_S.jpg";
createNode place2dTexture -n "place2dTexture7";
	setAttr ".re" -type "float2" 5 6 ;
createNode groupId -n "groupId235";
	setAttr ".ihi" 0;
createNode groupId -n "groupId237";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 9 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "layer1.di" "bedroomdoor.do";
connectAttr "groupId236.id" "bedroomdoorShape1.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "bedroomdoorShape1.iog.og[0].gco";
connectAttr "groupId235.id" "polySurfaceShape69.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape69.iog.og[0].gco";
connectAttr "groupId237.id" "bedroomdoorShape2.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "bedroomdoorShape2.iog.og[0].gco";
connectAttr "layerManager.dli[3]" "layer1.id";
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
connectAttr "bodyShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "knobShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "main_door_knobShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "backdoorShape1.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "backdoorShape2.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "backdoorShape3.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape69.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "bedroomdoorShape1.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "bedroomdoorShape2.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "windowShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall3Shape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "main_doorShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "KitchenCloset_DoorShape1.iog.og[0]" "House_Layout:lambert2SG.dsm" -na
		;
connectAttr "KitchenCloset_DoorShape2.iog.og[0]" "House_Layout:lambert2SG.dsm" -na
		;
connectAttr "KitchenCloset_DoorShape3.iog.og[0]" "House_Layout:lambert2SG.dsm" -na
		;
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
connectAttr "groupId218.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId220.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId221.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId224.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId225.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId226.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId235.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId236.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId237.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId242.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId259.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId261.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId335.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId336.msg" "House_Layout:lambert2SG.gn" -na;
connectAttr "groupId337.msg" "House_Layout:lambert2SG.gn" -na;
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "House_Layout:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "House_Layout:lambert2SG.message" ":defaultLightSet.message";
connectAttr "House_Layout:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "House_Layout:test_checker.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/WallpaperForties0002_S.jpg\" 2291123261 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/WallpaperForties0002_S.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Isolated_bedroomDoor.ma
