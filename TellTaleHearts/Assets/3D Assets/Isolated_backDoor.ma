//Maya ASCII 2015 scene
//Name: Isolated_backDoor.ma
//Last modified: Fri, Nov 21, 2014 01:44:53 PM
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
createNode transform -n "backdoor" -p "House_Main_Group";
	setAttr ".rp" -type "double3" -873.08150142787713 168.57220458984375 504.29221597663798 ;
	setAttr ".sp" -type "double3" -873.08150142787713 168.57220458984375 504.29221597663798 ;
createNode transform -n "polySurface72" -p "backdoor";
	setAttr ".rp" -type "double3" -1681.3005449512766 0 436.64492747877256 ;
	setAttr ".sp" -type "double3" -1681.3005449512766 0 436.64492747877256 ;
createNode mesh -n "polySurfaceShape63" -p "|House_Main_Group|backdoor|polySurface72";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:51]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 57 ".uvst[0].uvsp[0:56]" -type "float2" 0.44869274 0.56980169
		 0.44869578 0.88938284 0.33140653 0.88938284 0.33140349 0.56980169 0.4503215 0.40611768
		 0.3300209 0.40611768 0.3300181 0.11142713 0.45031869 0.11142713 0.66967988 0.40573782
		 0.54274714 0.40573782 0.54274428 0.11035532 0.66967702 0.11035532 0.66220832 0.88935947
		 0.54760802 0.88935947 0.54760504 0.57243216 0.66220534 0.57243216 0.74959052 0.48603934
		 0.49886733 0.48603934 0.53697693 0.43387991 0.67544901 0.43387991 0.49886274 1.0669231e-05
		 0.5369736 0.082467735 0.74958587 1.0669231e-05 0.67544568 0.082467735 0.2504158 0.48603934
		 0.31890035 0.43805617 0.46144104 0.43805617 0.25041121 1.0669231e-05 0.31889695 0.079762101
		 0.46143764 0.079762101 0.7495954 0.99871504 0.49887216 0.99871504 0.53540635 0.92323792
		 0.67440927 0.92323792 0.53540266 0.53882468 0.67440557 0.53882468 0.46118301 0.92328465
		 0.46117938 0.53620112 0.25042063 0.99871504 0.31891835 0.92328465 0.31891471 0.53620112
		 0.53697586 0.41948265 0.67544794 0.41948265 0.53697276 0.097247124 0.67544484 0.097247124
		 0.32470089 0.41983181 0.45563847 0.41983181 0.32469785 0.0983513 0.45563543 0.0983513
		 0.54351318 0.9010303 0.66629994 0.9010303 0.54350996 0.56146526 0.66629672 0.56146526
		 0.4528833 0.90105629 0.45288002 0.55883181 0.32721567 0.90105629 0.32721239 0.55883181;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".pt[0:56]" -type "float3"  -639.67969 0 -158.03073 -639.67969 
		0 -158.03073 -806.1626 0 -324.51364 -806.1626 0 -324.51364 -639.67969 0 -158.03073 
		-806.1626 0 -324.51364 -723.29999 0 -241.65103 -723.29999 0 -241.65103 -723.29999 
		0 -241.65103 -710.5896 0 -228.94064 -664.40692 0 -182.75797 -710.5896 0 -228.94064 
		-664.40692 0 -182.75797 -783.32166 0 -301.6727 -735.78217 0 -254.13309 -783.32166 
		0 -301.6727 -735.78217 0 -254.13309 -711.11505 0 -229.46597 -664.75537 0 -183.10629 
		-711.11505 0 -229.46597 -664.75537 0 -183.10629 -735.86963 0 -254.22067 -735.86963 
		0 -254.22067 -783.31732 0 -301.66824 -783.31732 0 -301.66824 -712.08716 0 -227.44308 
		-665.90448 0 -181.26041 -712.08716 0 -227.44308 -665.90448 0 -181.26041 -707.66718 
		0 -228.01456 -665.33307 0 -185.68033 -707.66718 0 -228.01456 -665.33307 0 -185.68033 
		-782.8172 0 -298.3074 -739.1474 0 -254.6376 -782.8172 0 -298.3074 -739.1474 0 -254.6376 
		-778.54059 0 -299.03641 -738.4184 0 -258.91422 -778.54059 0 -299.03641 -738.4184 
		0 -258.91422 -710.10773 0 -225.06485 -669.15649 0 -184.11349 -710.10773 0 -225.06485 
		-669.15649 0 -184.11349 -705.98383 0 -226.45865 -667.7627 0 -188.23752 -705.98383 
		0 -226.45865 -667.7627 0 -188.23752 -740.21411 0 -255.41171 -740.21411 0 -255.41171 
		-782.12628 0 -297.32388 -782.12628 0 -297.32388 -738.85236 0 -259.56778 -738.85236 
		0 -259.56778 -777.97009 0 -298.68564 -777.97009 0 -298.68564;
	setAttr -s 57 ".vt[0:56]"  -223.47259521 1.8793335 818.14825439 -223.47259521 335.26507568 818.14825439
		 -56.98968506 335.26507568 818.14825439 -56.98968506 1.8793335 818.14825439 -223.47259521 173.019821167 818.14825439
		 -56.98968506 173.019821167 818.14825439 -139.85229492 1.8793335 818.14825439 -139.85229492 335.26507568 818.14825439
		 -139.85229492 173.019821167 818.14825439 -152.56268311 190.43159485 818.14825439
		 -198.74536133 190.43159485 818.14825439 -152.56268311 307.73937988 818.14825439 -198.74536133 307.73937988 818.14825439
		 -79.83062744 189.037460327 818.14825439 -127.37017822 189.037460327 818.14819336
		 -79.83062744 308.64257813 818.14825439 -127.37017822 308.64257813 818.14819336 -152.03729248 27.074966431 818.14819336
		 -198.39697266 27.074966431 818.14819336 -152.03729248 155.39909363 818.14819336 -198.39697266 155.39909363 818.14819336
		 -127.28265381 156.27487183 818.14825439 -127.28265381 27.059341431 818.14825439 -79.83502197 27.059341431 818.14819336
		 -79.83502197 156.27487183 818.14819336 -152.56268311 195.30143738 816.6506958 -198.74536133 195.30143738 816.6506958
		 -152.56268311 302.86950684 816.6506958 -198.74536133 302.86950684 816.6506958 -154.48693848 199.78344727 819.14642334
		 -196.82110596 199.78344727 819.1463623 -154.48693848 298.38751221 819.14642334 -196.82110596 298.38751221 819.1463623
		 -81.76550293 195.18199158 816.71783447 -125.43530273 195.18199158 816.71783447 -81.76550293 302.49804688 816.71783447
		 -125.43530273 302.49804688 816.71783447 -83.53930664 199.65348816 819.22064209 -123.66149902 199.65348816 819.22064209
		 -83.53930664 298.026550293 819.22064209 -123.66149902 298.026550293 819.22064209
		 -154.74151611 34.56054688 816.45129395 -195.69281006 34.56054688 816.45123291 -154.74151611 147.91352844 816.45129395
		 -195.69281006 147.91352844 816.45123291 -156.10656738 38.33898926 819.21014404 -194.32769775 38.33898926 819.21014404
		 -156.10656738 144.13508606 819.21014404 -194.32769775 144.13508606 819.21014404 -124.51489258 148.78749084 816.5715332
		 -124.51489258 34.54673767 816.5715332 -82.60272217 34.54673767 816.5715332 -82.60272217 148.78749084 816.5715332
		 -123.11773682 145.0081329346 819.33044434 -123.11773682 38.32609558 819.33044434
		 -83.99993896 38.32609558 819.33050537 -83.99993896 145.0081329346 819.33050537;
	setAttr -s 108 ".ed[0:107]"  0 4 0 1 7 0 2 5 0 3 6 0 4 1 0 5 3 0 5 8 1
		 6 0 0 7 2 0 8 4 1 7 8 1 8 6 1 8 9 1 4 10 1 9 10 1 7 11 1 11 9 0 1 12 1 12 11 1 10 12 0
		 5 13 1 8 14 1 13 14 1 2 15 1 15 13 0 7 16 1 16 15 1 16 14 0 6 17 1 0 18 1 17 18 1
		 8 19 1 19 17 0 4 20 1 19 20 1 18 20 0 8 21 1 6 22 1 21 22 1 3 23 1 23 22 1 5 24 1
		 24 23 1 24 21 1 9 25 0 10 26 0 25 26 0 11 27 0 27 25 0 12 28 0 28 27 0 26 28 0 25 29 0
		 26 30 0 29 30 0 27 31 0 31 29 0 28 32 0 32 31 0 30 32 0 13 33 0 14 34 0 33 34 0 15 35 0
		 35 33 0 16 36 0 36 35 0 36 34 0 33 37 0 34 38 0 37 38 1 35 39 0 39 37 0 36 40 0 40 39 1
		 40 38 0 17 41 0 18 42 0 41 42 0 19 43 0 43 41 0 20 44 0 43 44 0 42 44 0 41 45 0 42 46 0
		 45 46 0 43 47 0 47 45 0 44 48 0 47 48 0 46 48 0 21 49 0 22 50 0 49 50 0 23 51 0 51 50 0
		 24 52 0 52 51 0 52 49 0 49 53 0 50 54 0 53 54 0 51 55 0 55 54 0 52 56 0 56 55 0 56 53 0;
	setAttr -s 52 -ch 208 ".fc[0:51]" -type "polyFaces" 
		f 4 102 -105 -107 107
		mu 0 4 0 1 2 3
		f 4 -71 -73 -75 75
		mu 0 4 4 5 6 7
		f 4 -55 -57 -59 -60
		mu 0 4 8 9 10 11
		f 4 -87 -89 90 -92
		mu 0 4 12 13 14 15
		f 4 -10 12 14 -14
		mu 0 4 16 17 18 19
		f 4 -11 15 16 -13
		mu 0 4 17 20 21 18
		f 4 -2 17 18 -16
		mu 0 4 20 22 23 21
		f 4 -5 13 19 -18
		mu 0 4 22 16 19 23
		f 4 -7 20 22 -22
		mu 0 4 17 24 25 26
		f 4 -3 23 24 -21
		mu 0 4 24 27 28 25
		f 4 -9 25 26 -24
		mu 0 4 27 20 29 28
		f 4 10 21 -28 -26
		mu 0 4 20 17 26 29
		f 4 -8 28 30 -30
		mu 0 4 30 31 32 33
		f 4 -12 31 32 -29
		mu 0 4 31 17 34 32
		f 4 9 33 -35 -32
		mu 0 4 17 16 35 34
		f 4 -1 29 35 -34
		mu 0 4 16 30 33 35
		f 4 11 37 -39 -37
		mu 0 4 17 31 36 37
		f 4 -4 39 40 -38
		mu 0 4 31 38 39 36
		f 4 -6 41 42 -40
		mu 0 4 38 24 40 39
		f 4 6 36 -44 -42
		mu 0 4 24 17 37 40
		f 4 -15 44 46 -46
		mu 0 4 19 18 41 42
		f 4 -17 47 48 -45
		mu 0 4 18 21 43 41
		f 4 -19 49 50 -48
		mu 0 4 21 23 44 43
		f 4 -20 45 51 -50
		mu 0 4 23 19 42 44
		f 4 -47 52 54 -54
		mu 0 4 42 41 9 8
		f 4 -49 55 56 -53
		mu 0 4 41 43 10 9
		f 4 -51 57 58 -56
		mu 0 4 43 44 11 10
		f 4 -52 53 59 -58
		mu 0 4 44 42 8 11
		f 4 -23 60 62 -62
		mu 0 4 26 25 45 46
		f 4 -25 63 64 -61
		mu 0 4 25 28 47 45
		f 4 -27 65 66 -64
		mu 0 4 28 29 48 47
		f 4 27 61 -68 -66
		mu 0 4 29 26 46 48
		f 4 -63 68 70 -70
		mu 0 4 46 45 5 4
		f 4 -65 71 72 -69
		mu 0 4 45 47 6 5
		f 4 -67 73 74 -72
		mu 0 4 47 48 7 6
		f 4 67 69 -76 -74
		mu 0 4 48 46 4 7
		f 4 -31 76 78 -78
		mu 0 4 33 32 49 50
		f 4 -33 79 80 -77
		mu 0 4 32 34 51 49
		f 4 34 81 -83 -80
		mu 0 4 34 35 52 51
		f 4 -36 77 83 -82
		mu 0 4 35 33 50 52
		f 4 -79 84 86 -86
		mu 0 4 50 49 13 12
		f 4 -81 87 88 -85
		mu 0 4 49 51 14 13
		f 4 82 89 -91 -88
		mu 0 4 51 52 15 14
		f 4 -84 85 91 -90
		mu 0 4 52 50 12 15
		f 4 38 93 -95 -93
		mu 0 4 37 36 53 54
		f 4 -41 95 96 -94
		mu 0 4 36 39 55 53
		f 4 -43 97 98 -96
		mu 0 4 39 40 56 55
		f 4 43 92 -100 -98
		mu 0 4 40 37 54 56
		f 4 94 101 -103 -101
		mu 0 4 54 53 1 0
		f 4 -97 103 104 -102
		mu 0 4 53 55 2 1
		f 4 -99 105 106 -104
		mu 0 4 55 56 3 2
		f 4 99 100 -108 -106
		mu 0 4 56 54 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface73" -p "backdoor";
	setAttr ".rp" -type "double3" -1682.8368902518882 0 435.20751437503128 ;
	setAttr ".sp" -type "double3" -1682.8368902518882 0 435.20751437503128 ;
createNode mesh -n "polySurfaceShape64" -p "|House_Main_Group|backdoor|polySurface73";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0.25042069 0.99870431
		 0.25041395 0.99999988 0.25040913 0.48732406 0.25041586 0.48602855 0.49254566 -1.1920929e-07
		 0.50112772 0.0012953877 0.74957919 0.0012953877 0.74958599 -1.1920929e-07 0.74959064
		 0.48602855 0.74958384 0.48732406 0.74958873 0.99999988 0.74959552 0.99870431 0.50113726
		 0.99999988 0.49255508 0.99870431 0.55130851 0.57138789 0.55131149 0.89096904 0.66860068
		 0.89096904 0.6685977 0.57138789 0.25040454 0.0012953877 0.25041127 -1.1920929e-07
		 0.54967666 0.40767598 0.66997731 0.40767598 0.66997445 0.11298543 0.5496738 0.11298543
		 0.33031839 0.40727717 0.45725095 0.40727717 0.45724815 0.11189467 0.33031559 0.11189467
		 0.33779895 0.89091516 0.45239931 0.89091516 0.45239627 0.57398772 0.33779591 0.57398772
		 0.50113237 0.48732406 0.4630217 0.43516463 0.32454962 0.43516463 0.46301842 0.083752453
		 0.32454634 0.083752453 0.68109834 0.43934089 0.53855765 0.43934089 0.681095 0.08104682
		 0.53855431 0.08104682 0.46460164 0.92452276 0.32559866 0.92452276 0.464598 0.54010952
		 0.32559502 0.54010952 0.53882492 0.92456949 0.53882122 0.53748596 0.68108964 0.92456949
		 0.68108594 0.53748596 0.46302253 0.42038542 0.32455045 0.42038542 0.46301949 0.098149896
		 0.32454741 0.098149896 0.6752975 0.42075175 0.54435992 0.42075175 0.6752944 0.099271238
		 0.54435682 0.099271238 0.45649439 0.90188217 0.33370763 0.90188217 0.45649117 0.56231713
		 0.33370441 0.56231713 0.54712427 0.90193892 0.54712105 0.55971444 0.67279184 0.90193892
		 0.67278862 0.55971444;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 65 ".pt[0:64]" -type "float3"  -807.6145 0 -326.03552 -817.77332 
		0 -315.87671 -807.6145 0 -326.03552 -817.77332 0 -315.87671 -641.13159 0 -159.55261 
		-651.29041 0 -149.3938 -641.13159 0 -159.55261 -651.29041 0 -149.3938 -817.77332 
		0 -315.87671 -807.6145 0 -326.03552 -641.13159 0 -159.55261 -651.29041 0 -149.3938 
		-734.15302 0 -232.25641 -726.85876 0 -245.27979 -726.85876 0 -245.27979 -734.15302 
		0 -232.25641 -734.15302 0 -232.25641 -746.8634 0 -244.9668 -793.04608 0 -291.14948 
		-746.8634 0 -244.9668 -793.04608 0 -291.14948 -674.13135 0 -172.23474 -721.67096 
		0 -219.77423 -674.13135 0 -172.23474 -721.67096 0 -219.77423 -746.33807 0 -244.44135 
		-792.69775 0 -290.80103 -746.33807 0 -244.44135 -792.69775 0 -290.80103 -721.58337 
		0 -219.68677 -721.58337 0 -219.68677 -674.13586 0 -172.23914 -674.13586 0 -172.23914 
		-745.36597 0 -246.46423 -791.54865 0 -292.64691 -745.36597 0 -246.46423 -791.54865 
		0 -292.64691 -749.78589 0 -245.89294 -792.11993 0 -288.22687 -749.78589 0 -245.89294 
		-792.11993 0 -288.22687 -674.63593 0 -175.59991 -718.30573 0 -219.26971 -674.63593 
		0 -175.59991 -718.30573 0 -219.26971 -678.91254 0 -174.87091 -719.03473 0 -214.9931 
		-678.91254 0 -174.87091 -719.03473 0 -214.9931 -747.34528 0 -248.84259 -788.29663 
		0 -289.79382 -747.34528 0 -248.84259 -788.29663 0 -289.79382 -751.46924 0 -247.44885 
		-789.69031 0 -285.66992 -751.46924 0 -247.44885 -789.69031 0 -285.66992 -717.23901 
		0 -218.49561 -717.23901 0 -218.49561 -675.32684 0 -176.58344 -675.32684 0 -176.58344 
		-718.60083 0 -214.3396 -718.60083 0 -214.3396 -679.48291 0 -175.2218 -679.48291 0 
		-175.2218;
	setAttr -s 65 ".vt[0:64]"  -56.98968506 1.8793335 818.23272705 -56.98968506 1.8793335 808.073913574
		 -56.98968506 335.26507568 818.23272705 -56.98968506 335.26507568 808.073913574 -223.47259521 335.26507568 818.23272705
		 -223.47259521 335.26507568 808.073913574 -223.47259521 1.8793335 818.23272705 -223.47259521 1.8793335 808.073913574
		 -56.98968506 173.019821167 808.073913574 -56.98968506 173.019821167 818.23272705
		 -223.47259521 173.019821167 818.23272705 -223.47259521 173.019821167 808.073913574
		 -140.60998535 1.8793335 808.073913574 -137.74542236 1.8793335 818.23272705 -137.74542236 335.26507568 818.23272705
		 -140.60998535 335.26507568 808.073913574 -140.60998535 173.019821167 808.073913574
		 -127.89959717 190.43159485 808.073913574 -81.71691895 190.43159485 808.073913574
		 -127.89959717 307.73937988 808.073913574 -81.71691895 307.73937988 808.073913574
		 -200.63165283 189.037460327 808.073913574 -153.092102051 189.037460327 808.073852539
		 -200.63165283 308.64257813 808.073913574 -153.092102051 308.64257813 808.073852539
		 -128.42498779 27.074966431 808.073852539 -82.065307617 27.074966431 808.073852539
		 -128.42498779 155.39909363 808.073852539 -82.065307617 155.39909363 808.073852539
		 -153.17962646 156.27487183 808.073913574 -153.17962646 27.059341431 808.073913574
		 -200.62719727 27.059341431 808.073852539 -200.62719727 156.27487183 808.073852539
		 -127.89959717 195.30143738 809.5713501 -81.71691895 195.30143738 809.5713501 -127.89959717 302.86950684 809.5713501
		 -81.71691895 302.86950684 809.5713501 -125.97528076 199.78344727 807.075744629 -83.64129639 199.78344727 807.075683594
		 -125.97528076 298.38751221 807.075744629 -83.64129639 298.38751221 807.075683594
		 -198.69677734 195.18199158 809.50421143 -155.026977539 195.18199158 809.50421143
		 -198.69677734 302.49804688 809.50421143 -155.026977539 302.49804688 809.50421143
		 -196.92297363 199.65348816 807.0014038086 -156.80078125 199.65348816 807.0014038086
		 -196.92297363 298.026550293 807.0014038086 -156.80078125 298.026550293 807.0014038086
		 -125.72076416 34.56054688 809.77087402 -84.76947021 34.56054688 809.77081299 -125.72076416 147.91352844 809.77087402
		 -84.76947021 147.91352844 809.77081299 -124.35565186 38.33898926 807.012023926 -86.13458252 38.33898926 807.012023926
		 -124.35565186 144.13508606 807.012023926 -86.13458252 144.13508606 807.012023926
		 -155.9473877 148.78749084 809.6505127 -155.9473877 34.54673767 809.6505127 -197.85955811 34.54673767 809.6505127
		 -197.85955811 148.78749084 809.6505127 -157.34448242 145.0081329346 806.89160156
		 -157.34448242 38.32609558 806.89160156 -196.46234131 38.32609558 806.8916626 -196.46234131 145.0081329346 806.8916626;
	setAttr -s 124 ".ed[0:123]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 14 0
		 3 15 0 4 10 0 5 11 0 6 13 0 7 12 0 8 3 0 9 2 0 8 9 1 10 6 0 11 7 0 10 11 1 11 16 1
		 12 1 0 13 0 0 12 13 1 14 4 0 15 5 0 14 15 1 16 8 1 15 16 1 16 12 1 16 17 1 8 18 1
		 17 18 1 15 19 1 19 17 0 3 20 1 20 19 1 18 20 0 11 21 1 16 22 1 21 22 1 5 23 1 23 21 0
		 15 24 1 24 23 1 24 22 0 12 25 1 1 26 1 25 26 1 16 27 1 27 25 0 8 28 1 27 28 1 26 28 0
		 16 29 1 12 30 1 29 30 1 7 31 1 31 30 1 11 32 1 32 31 1 32 29 1 17 33 0 18 34 0 33 34 0
		 19 35 0 35 33 0 20 36 0 36 35 0 34 36 0 33 37 0 34 38 0 37 38 0 35 39 0 39 37 0 36 40 0
		 40 39 0 38 40 0 21 41 0 22 42 0 41 42 0 23 43 0 43 41 0 24 44 0 44 43 0 44 42 0 41 45 0
		 42 46 0 45 46 1 43 47 0 47 45 0 44 48 0 48 47 1 48 46 0 25 49 0 26 50 0 49 50 0 27 51 0
		 51 49 0 28 52 0 51 52 0 50 52 0 49 53 0 50 54 0 53 54 0 51 55 0 55 53 0 52 56 0 55 56 0
		 54 56 0 29 57 0 30 58 0 57 58 0 31 59 0 59 58 0 32 60 0 60 59 0 60 57 0 57 61 0 58 62 0
		 61 62 0 59 63 0 63 62 0 60 64 0 64 63 0 64 61 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 2 3
		f 4 24 23 -3 -23
		mu 0 4 4 5 6 7
		f 4 17 16 -4 -16
		mu 0 4 8 9 10 11
		f 4 3 11 21 -11
		mu 0 4 11 10 12 13
		f 4 118 -121 -123 123
		mu 0 4 14 15 16 17
		f 4 -15 12 -2 -14
		mu 0 4 3 2 18 19
		f 4 2 9 -18 -9
		mu 0 4 7 6 9 8
		f 4 -87 -89 -91 91
		mu 0 4 20 21 22 23
		f 4 -22 19 -1 -21
		mu 0 4 13 12 1 0
		f 4 1 7 -25 -7
		mu 0 4 19 18 5 4
		f 4 -71 -73 -75 -76
		mu 0 4 24 25 26 27
		f 4 -103 -105 106 -108
		mu 0 4 28 29 30 31
		f 4 -26 28 30 -30
		mu 0 4 2 32 33 34
		f 4 -27 31 32 -29
		mu 0 4 32 5 35 33
		f 4 -8 33 34 -32
		mu 0 4 5 18 36 35
		f 4 -13 29 35 -34
		mu 0 4 18 2 34 36
		f 4 -19 36 38 -38
		mu 0 4 32 9 37 38
		f 4 -10 39 40 -37
		mu 0 4 9 6 39 37
		f 4 -24 41 42 -40
		mu 0 4 6 5 40 39
		f 4 26 37 -44 -42
		mu 0 4 5 32 38 40
		f 4 -20 44 46 -46
		mu 0 4 1 12 41 42
		f 4 -28 47 48 -45
		mu 0 4 12 32 43 41
		f 4 25 49 -51 -48
		mu 0 4 32 2 44 43
		f 4 -6 45 51 -50
		mu 0 4 2 1 42 44
		f 4 27 53 -55 -53
		mu 0 4 32 12 45 46
		f 4 -12 55 56 -54
		mu 0 4 12 10 47 45
		f 4 -17 57 58 -56
		mu 0 4 10 9 48 47
		f 4 18 52 -60 -58
		mu 0 4 9 32 46 48
		f 4 -31 60 62 -62
		mu 0 4 34 33 49 50
		f 4 -33 63 64 -61
		mu 0 4 33 35 51 49
		f 4 -35 65 66 -64
		mu 0 4 35 36 52 51
		f 4 -36 61 67 -66
		mu 0 4 36 34 50 52
		f 4 -63 68 70 -70
		mu 0 4 50 49 25 24
		f 4 -65 71 72 -69
		mu 0 4 49 51 26 25
		f 4 -67 73 74 -72
		mu 0 4 51 52 27 26
		f 4 -68 69 75 -74
		mu 0 4 52 50 24 27
		f 4 -39 76 78 -78
		mu 0 4 38 37 53 54
		f 4 -41 79 80 -77
		mu 0 4 37 39 55 53
		f 4 -43 81 82 -80
		mu 0 4 39 40 56 55
		f 4 43 77 -84 -82
		mu 0 4 40 38 54 56
		f 4 -79 84 86 -86
		mu 0 4 54 53 21 20
		f 4 -81 87 88 -85
		mu 0 4 53 55 22 21
		f 4 -83 89 90 -88
		mu 0 4 55 56 23 22
		f 4 83 85 -92 -90
		mu 0 4 56 54 20 23
		f 4 -47 92 94 -94
		mu 0 4 42 41 57 58
		f 4 -49 95 96 -93
		mu 0 4 41 43 59 57
		f 4 50 97 -99 -96
		mu 0 4 43 44 60 59
		f 4 -52 93 99 -98
		mu 0 4 44 42 58 60
		f 4 -95 100 102 -102
		mu 0 4 58 57 29 28
		f 4 -97 103 104 -101
		mu 0 4 57 59 30 29
		f 4 98 105 -107 -104
		mu 0 4 59 60 31 30
		f 4 -100 101 107 -106
		mu 0 4 60 58 28 31
		f 4 54 109 -111 -109
		mu 0 4 46 45 61 62
		f 4 -57 111 112 -110
		mu 0 4 45 47 63 61
		f 4 -59 113 114 -112
		mu 0 4 47 48 64 63
		f 4 59 108 -116 -114
		mu 0 4 48 46 62 64
		f 4 110 117 -119 -117
		mu 0 4 62 61 15 14
		f 4 -113 119 120 -118
		mu 0 4 61 63 16 15
		f 4 -115 121 122 -120
		mu 0 4 63 64 17 16
		f 4 115 116 -124 -122
		mu 0 4 64 62 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface74" -p "backdoor";
	setAttr ".rp" -type "double3" -1682.8368902518882 0 435.20751437503128 ;
	setAttr ".sp" -type "double3" -1682.8368902518882 0 435.20751437503128 ;
createNode mesh -n "polySurfaceShape65" -p "|House_Main_Group|backdoor|polySurface74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.71042085 0.5303483
		 0.71042228 0.53007185 0.71042037 0.5167551 0.71041894 0.51909554 0.71042025 0.43154347
		 0.71042168 0.43126702 0.70009744 0.43126702 0.70009601 0.43154347 0.7000947 0.51909554
		 0.70009613 0.5167551 0.70009804 0.53007185 0.70009661 0.5303483 0.70009232 0.44720912
		 0.71041656 0.44720912 0.70009375 0.44916475 0.71041799 0.44916475 0.70009148 0.46801245
		 0.71041572 0.46801245 0.70009291 0.46773595 0.71041715 0.46773595 0.70009172 0.48301041
		 0.71041596 0.48301041 0.70009315 0.48273396 0.71041739 0.48273396 0.70009267 0.49881214
		 0.71041691 0.49881214 0.7000941 0.49647188 0.71041834 0.49647188;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -665.41461 0 -161.39252 -663.24664 
		0 -163.56049 -664.89642 0 -161.91071 -662.72845 0 -164.07867 -668.33972 0 -165.354 
		-666.17175 0 -167.52197 -668.85791 0 -164.83582 -666.68994 0 -167.00378 -670.73322 
		0 -156.07391 -674.17651 0 -159.51721 -672.13855 0 -161.55518 -668.69525 0 -158.11188 
		-672.24542 0 -154.56171 -675.68872 0 -158.005 -673.52075 0 -160.17297 -670.07745 
		0 -156.72968 -672.00092 0 -154.80621 -675.44421 0 -158.24951 -673.27625 0 -160.41748 
		-669.83295 0 -156.97418 -670.92047 0 -155.88666 -674.36377 0 -159.32996 -672.24219 
		0 -161.45154 -668.79889 0 -158.00824 -668.04645 0 -158.76068 -671.48975 0 -162.20398 
		-669.36829 0 -164.32544 -665.92499 0 -160.88214;
	setAttr -s 28 ".vt[0:27]"  -210.41113281 158.70277405 807.011169434
		 -210.41113281 158.70277405 809.17913818 -210.41113281 191.66360474 807.52935791 -210.41113281 191.66360474 809.69732666
		 -206.96783447 191.66360474 807.52935791 -206.96783447 191.66360474 809.69732666 -206.96783447 158.70277405 807.011169434
		 -206.96783447 158.70277405 809.17913818 -210.41113281 186.68258667 801.69256592 -206.96783447 186.68258667 801.69256592
		 -206.96783447 185.94299316 803.73052979 -210.41113281 185.94299316 803.73052979 -210.41113281 179.8024292 800.18035889
		 -206.96783447 179.8024292 800.18035889 -206.96783447 179.8024292 802.34832764 -210.41113281 179.8024292 802.34832764
		 -210.41113281 174.78544617 800.42486572 -206.96783447 174.78544617 800.42486572 -206.96783447 174.78544617 802.59283447
		 -210.41113281 174.78544617 802.59283447 -210.41113281 169.46452332 801.50531006 -206.96783447 169.46452332 801.50531006
		 -206.96783447 170.1554718 803.62689209 -210.41113281 170.1554718 803.62689209 -210.41113281 162.57122803 804.3793335
		 -206.96783447 162.57122803 804.3793335 -206.96783447 163.26217651 806.50079346 -210.41113281 163.26217651 806.50079346;
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
createNode groupId -n "groupId224";
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
createNode groupId -n "groupId225";
	setAttr ".ihi" 0;
createNode groupId -n "groupId226";
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
connectAttr "layer1.di" "backdoor.do";
connectAttr "groupId224.id" "polySurfaceShape63.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape63.iog.og[0].gco";
connectAttr "groupId225.id" "polySurfaceShape64.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape64.iog.og[0].gco";
connectAttr "groupId226.id" "polySurfaceShape65.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "polySurfaceShape65.iog.og[0].gco";
connectAttr "layerManager.dli[3]" "layer1.id";
connectAttr "House_Layout:test_checker.oc" "House_Layout:lambert2SG.ss";
connectAttr "HouseWindowsShape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurface9Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube105Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube104Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube103Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube102Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube101Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube100Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube99Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube98Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube97Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCube106Shape.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCubeShape81.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCubeShape77.iog" "House_Layout:lambert2SG.dsm" -na;
connectAttr "pCubeShape68.iog" "House_Layout:lambert2SG.dsm" -na;
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
connectAttr "polySurfaceShape63.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape64.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape65.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape69.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "DoorShape1.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape71.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "windowShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "House_wall3Shape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "main_doorShape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape72.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape73.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurfaceShape74.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
connectAttr "polySurface143Shape.iog" "House_Layout:lambert2SG.dsm" -na;
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
connectAttr "polySurface147Shape.iog.og[0]" "House_Layout:lambert2SG.dsm" -na;
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
// End of Isolated_backDoor.ma
