//Maya ASCII 2015 scene
//Name: Isolated_FrontDoor.ma
//Last modified: Fri, Nov 21, 2014 01:49:23 PM
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
createNode transform -n "Front_Door" -p "House_Main_Group";
	setAttr ".rp" -type "double3" 516.27215576171875 168.57220458984375 -910.33811152813792 ;
	setAttr ".sp" -type "double3" 516.27215576171875 168.57220458984375 -910.33811152813792 ;
createNode transform -n "main_door" -p "Front_Door";
	setAttr ".rp" -type "double3" 519.6278076171875 168.57220458984375 -915.33019575410503 ;
	setAttr ".sp" -type "double3" 519.6278076171875 168.57220458984375 -915.33019575410503 ;
createNode mesh -n "main_doorShape" -p "main_door";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:111]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000035762786865 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 194 ".uvst[0].uvsp[0:193]" -type "float2" 0.23558733 0.317094
		 0.23558733 0.082230583 0.32667863 0.082230583 0.32667863 0.317094 0.23233359 0.073910244
		 0.32993203 0.073910244 0.32993203 0.32541427 0.23233359 0.32541427 0.22588909 0.057426531
		 0.33637723 0.057426531 0.33637723 0.34189799 0.22588909 0.34189799 0.19661866 0.0019920762
		 0.3895753 0.0019920762 0.3895753 0.37876242 0.19661866 0.37876242 0.33638737 0.41402572
		 0.2256847 0.41402572 0.16824435 0.33996996 0.16824435 0.05746096 0.3895753 0.73594964
		 0.33638737 0.67733955 0.33188176 0.42755309 0.23019066 0.42755309 0.19661866 0.73594964
		 0.2256847 0.67733955 0.0018975821 0.37876242 0.060289353 0.33996996 0.16194719 0.32349029
		 0.16194719 0.07394065 0.0018975821 0.0019920762 0.060289353 0.05746096 0.33188176
		 0.66381222 0.32775095 0.43739718 0.23432112 0.43739718 0.23019066 0.66381222 0.16702083
		 0.67535114 0.16702083 0.41709495 0.059478279 0.41709495 0.066586509 0.32349029 0.066586509
		 0.07394065 0.32775095 0.6539681 0.23432112 0.6539681 0.0018975821 0.73594964 0.059478279
		 0.67535114 0.069765367 0.3151719 0.15876833 0.3151719 0.15876833 0.082258977 0.069765367
		 0.082258977 0.84762859 0.76034015 0.94620925 0.76034015 0.94620925 0.97741979 0.84762859
		 0.97741979 0.84314764 0.7504729 0.95069021 0.7504729 0.95069021 0.98728693 0.84314764
		 0.98728693 0.84314764 0.73975182 0.95069021 0.73975182 0.95069021 0.99800813 0.84314764
		 0.99800813 0.83730334 0.73975182 0.83730334 0.99800813 0.83400655 0.98728693 0.83400655
		 0.7504729 0.82816219 0.73975182 0.82816219 0.99800813 0.8248654 0.98728704 0.8248654
		 0.75047308 0.60976911 0.98930138 0.60976911 0.73975182 0.615843 0.74807012 0.615843
		 0.98098308 0.63360524 0.98930156 0.63360524 0.73975194 0.63967913 0.7480703 0.63967913
		 0.9809832 0.65744156 0.991256 0.65744156 0.73975194 0.66351545 0.74807221 0.66351545
		 0.98293561 0.68127787 0.991256 0.68127787 0.73975182 0.68735176 0.74807221 0.68735176
		 0.98293561 0.41803661 0.73594958 0.3956714 0.73594958 0.3956714 0.35917926 0.41803661
		 0.35917926 0.3956714 0.0019919886 0.41803661 0.0019919886 0.90073919 0.20161949 0.87837404
		 0.19494891 0.87837404 0.0019920762 0.90073919 0.0019920762 0.90073919 0.38966981
		 0.87837404 0.38966981 0.44774136 0.37876242 0.42537618 0.37876242 0.42537618 0.0019920762
		 0.44774136 0.0019920762 0.44774136 0.73594964 0.42537618 0.73594964 0.87103438 0.38966998
		 0.84866917 0.38966998 0.84866917 0.19671315 0.87103438 0.19004273 0.84866917 0.0019920762
		 0.87103438 0.0019920762 0.68877083 0.317094 0.68877083 0.082230583 0.77986217 0.082230583
		 0.77986217 0.317094 0.68551725 0.073910244 0.78311551 0.073910244 0.78311551 0.32541427
		 0.68551725 0.32541427 0.67907244 0.057426531 0.78956056 0.057426531 0.78956056 0.34189799
		 0.67907244 0.34189799 0.64980215 0.0019920762 0.84275901 0.0019920762 0.84275901
		 0.37876242 0.64980215 0.37876242 0.78957087 0.41402572 0.67886841 0.41402572 0.62142783
		 0.33996996 0.62142783 0.05746096 0.84275901 0.73594964 0.78957087 0.67733955 0.78506523
		 0.42755309 0.68337417 0.42755309 0.64980215 0.73594964 0.67886841 0.67733955 0.45508111
		 0.37876242 0.51347286 0.33996996 0.61513072 0.32349029 0.61513072 0.07394065 0.45508111
		 0.0019920762 0.51347286 0.05746096 0.78506523 0.66381222 0.78093463 0.43739718 0.68750465
		 0.43739718 0.68337417 0.66381222 0.62020433 0.67535114 0.62020433 0.41709495 0.51266181
		 0.41709495 0.51977003 0.32349029 0.51977003 0.07394065 0.78093463 0.6539681 0.68750465
		 0.6539681 0.45508111 0.73594964 0.51266181 0.67535114 0.52294886 0.3151719 0.61195183
		 0.3151719 0.61195183 0.082258977 0.52294886 0.082258977 0.71595943 0.76034015 0.81454009
		 0.76034015 0.81454009 0.97741979 0.71595943 0.97741979 0.71147847 0.7504729 0.81902105
		 0.7504729 0.81902105 0.98728693 0.71147847 0.98728693 0.71147847 0.73975182 0.81902105
		 0.73975182 0.81902105 0.99800813 0.71147847 0.99800813 0.70233732 0.99800813 0.70233732
		 0.73975182 0.70563412 0.75047308 0.70563412 0.98728704 0.69319612 0.99800813 0.69319612
		 0.73975182 0.69649297 0.7504729 0.69649297 0.98728693 0.62776089 0.73975194 0.62776089
		 0.98930156 0.62168735 0.9809832 0.62168735 0.7480703 0.60392475 0.73975182 0.60392475
		 0.98930138 0.59785122 0.98098308 0.59785122 0.74807012 0.67543352 0.73975182 0.67543352
		 0.991256 0.6693598 0.98293561 0.6693598 0.74807221 0.6515972 0.73975194 0.6515972
		 0.991256 0.64552349 0.98293561 0.64552349 0.74807221;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 122 ".vt[0:121]"  524.66497803 1.8793335 -748.76318359 524.66497803 335.26507568 -748.76318359
		 524.66497803 335.26507568 -924.85827637 524.66497803 1.8793335 -924.85827637 524.66497803 173.019821167 -748.76318359
		 524.66497803 173.019821167 -924.85827637 524.66497803 1.8793335 -837.21142578 524.66497803 335.26507568 -837.21142578
		 524.66497803 173.019821167 -837.21142578 524.66497803 190.43159485 -823.76721191
		 524.66497803 190.43159485 -774.91809082 524.66497803 307.73937988 -823.76721191 524.66497803 307.73937988 -774.91809082
		 524.66497803 189.037460327 -900.6986084 524.66497803 189.037460327 -850.41418457
		 524.66497803 308.64257813 -900.6986084 524.66497803 308.64257813 -850.41418457 524.66497803 27.074966431 -824.32293701
		 524.66497803 27.074966431 -775.28656006 524.66497803 155.39909363 -824.32293701 524.66497803 155.39909363 -775.28656006
		 524.66497803 156.27487183 -850.50683594 524.66497803 27.059341431 -850.50683594 524.66497803 27.059341431 -900.69390869
		 524.66497803 156.27487183 -900.69390869 523.16748047 195.30143738 -823.76721191 523.16748047 195.30143738 -774.91809082
		 523.16748047 302.86950684 -823.76721191 523.16748047 302.86950684 -774.91809082 525.66314697 199.78344727 -821.73181152
		 525.66314697 199.78344727 -776.95349121 525.66314697 298.38751221 -821.73181152 525.66314697 298.38751221 -776.95349121
		 523.23461914 195.18199158 -898.65197754 523.23461914 195.18199158 -852.46081543 523.23461914 302.49804688 -898.65197754
		 523.23461914 302.49804688 -852.46081543 525.73742676 199.65348816 -896.77575684 525.73742676 199.65348816 -854.33703613
		 525.73742676 298.026550293 -896.77575684 525.73742676 298.026550293 -854.33703613
		 522.96801758 34.56054688 -821.46258545 522.96801758 34.56054688 -778.14685059 522.96801758 147.91352844 -821.46258545
		 522.96801758 147.91352844 -778.14685059 525.72686768 38.33898926 -820.018676758 525.72686768 38.33898926 -779.59082031
		 525.72686768 144.13508606 -820.018676758 525.72686768 144.13508606 -779.59082031
		 523.088317871 148.78749084 -853.43432617 523.088317871 34.54673767 -853.43432617
		 523.088317871 34.54673767 -897.76641846 523.088317871 148.78749084 -897.76641846
		 525.847229 145.0081329346 -854.91217041 525.847229 38.32609558 -854.91217041 525.847229 38.32609558 -896.28857422
		 525.847229 145.0081329346 -896.28857422 524.74951172 1.8793335 -924.85827637 514.59063721 1.8793335 -924.85827637
		 524.74951172 335.26507568 -924.85827637 514.59063721 335.26507568 -924.85827637 524.74951172 335.26507568 -748.76318359
		 514.59063721 335.26507568 -748.76318359 524.74951172 1.8793335 -748.76318359 514.59063721 1.8793335 -748.76318359
		 514.59063721 173.019821167 -924.85827637 524.74951172 173.019821167 -924.85827637
		 524.74951172 173.019821167 -748.76318359 514.59063721 173.019821167 -748.76318359
		 514.59063721 1.8793335 -836.41003418 524.74951172 1.8793335 -839.43994141 524.74951172 335.26507568 -839.43994141
		 514.59063721 335.26507568 -836.41003418 514.59063721 173.019821167 -836.41003418
		 514.59063721 190.43159485 -849.85424805 514.59063721 190.43159485 -898.70336914 514.59063721 307.73937988 -849.85424805
		 514.59063721 307.73937988 -898.70336914 514.59063721 189.037460327 -772.92285156
		 514.59063721 189.037460327 -823.20727539 514.59063721 308.64257813 -772.92285156
		 514.59063721 308.64257813 -823.20727539 514.59063721 27.074966431 -849.29852295 514.59063721 27.074966431 -898.3348999
		 514.59063721 155.39909363 -849.29852295 514.59063721 155.39909363 -898.3348999 514.59063721 156.27487183 -823.11462402
		 514.59063721 27.059341431 -823.11462402 514.59063721 27.059341431 -772.92755127 514.59063721 156.27487183 -772.92755127
		 516.088134766 195.30143738 -849.85424805 516.088134766 195.30143738 -898.70336914
		 516.088134766 302.86950684 -849.85424805 516.088134766 302.86950684 -898.70336914
		 513.59246826 199.78344727 -851.88964844 513.59246826 199.78344727 -896.66796875 513.59246826 298.38751221 -851.88964844
		 513.59246826 298.38751221 -896.66796875 516.020996094 195.18199158 -774.96948242
		 516.020996094 195.18199158 -821.16064453 516.020996094 302.49804688 -774.96948242
		 516.020996094 302.49804688 -821.16064453 513.51818848 199.65348816 -776.84570313
		 513.51818848 199.65348816 -819.28442383 513.51818848 298.026550293 -776.84570313
		 513.51818848 298.026550293 -819.28442383 516.28759766 34.56054688 -852.15887451 516.28759766 34.56054688 -895.47460938
		 516.28759766 147.91352844 -852.15887451 516.28759766 147.91352844 -895.47460938 513.52874756 38.33898926 -853.6027832
		 513.52874756 38.33898926 -894.030639648 513.52874756 144.13508606 -853.6027832 513.52874756 144.13508606 -894.030639648
		 516.16729736 148.78749084 -820.18713379 516.16729736 34.54673767 -820.18713379 516.16729736 34.54673767 -775.8550415
		 516.16729736 148.78749084 -775.8550415 513.40838623 145.0081329346 -818.70928955
		 513.40838623 38.32609558 -818.70928955 513.40838623 38.32609558 -777.33288574 513.40838623 145.0081329346 -777.33288574;
	setAttr -s 232 ".ed";
	setAttr ".ed[0:165]"  0 4 0 1 7 0 2 5 0 3 6 0 4 1 0 5 3 0 5 8 1 6 0 0 7 2 0
		 8 4 1 7 8 1 8 6 1 8 9 1 4 10 1 9 10 1 7 11 1 11 9 0 1 12 1 12 11 1 10 12 0 5 13 1
		 8 14 1 13 14 1 2 15 1 15 13 0 7 16 1 16 15 1 16 14 0 6 17 1 0 18 1 17 18 1 8 19 1
		 19 17 0 4 20 1 19 20 1 18 20 0 8 21 1 6 22 1 21 22 1 3 23 1 23 22 1 5 24 1 24 23 1
		 24 21 1 9 25 0 10 26 0 25 26 0 11 27 0 27 25 0 12 28 0 28 27 0 26 28 0 25 29 0 26 30 0
		 29 30 0 27 31 0 31 29 0 28 32 0 32 31 0 30 32 0 13 33 0 14 34 0 33 34 0 15 35 0 35 33 0
		 16 36 0 36 35 0 36 34 0 33 37 0 34 38 0 37 38 1 35 39 0 39 37 0 36 40 0 40 39 1 40 38 0
		 17 41 0 18 42 0 41 42 0 19 43 0 43 41 0 20 44 0 43 44 0 42 44 0 41 45 0 42 46 0 45 46 0
		 43 47 0 47 45 0 44 48 0 47 48 0 46 48 0 21 49 0 22 50 0 49 50 0 23 51 0 51 50 0 24 52 0
		 52 51 0 52 49 0 49 53 0 50 54 0 53 54 0 51 55 0 55 54 0 52 56 0 56 55 0 56 53 0 57 58 0
		 59 60 0 61 62 0 63 64 0 57 66 0 58 65 0 59 71 0 60 72 0 61 67 0 62 68 0 63 70 0 64 69 0
		 65 60 0 66 59 0 65 66 1 67 63 0 68 64 0 67 68 1 68 73 1 69 58 0 70 57 0 69 70 1 71 61 0
		 72 62 0 71 72 1 73 65 1 72 73 1 73 69 1 73 74 1 65 75 1 74 75 1 72 76 1 76 74 0 60 77 1
		 77 76 1 75 77 0 68 78 1 73 79 1 78 79 1 62 80 1 80 78 0 72 81 1 81 80 1 81 79 0 69 82 1
		 58 83 1 82 83 1 73 84 1 84 82 0 65 85 1 84 85 1 83 85 0 73 86 1 69 87 1 86 87 1 64 88 1
		 88 87 1 68 89 1;
	setAttr ".ed[166:231]" 89 88 1 89 86 1 74 90 0 75 91 0 90 91 0 76 92 0 92 90 0
		 77 93 0 93 92 0 91 93 0 90 94 0 91 95 0 94 95 0 92 96 0 96 94 0 93 97 0 97 96 0 95 97 0
		 78 98 0 79 99 0 98 99 0 80 100 0 100 98 0 81 101 0 101 100 0 101 99 0 98 102 0 99 103 0
		 102 103 1 100 104 0 104 102 0 101 105 0 105 104 1 105 103 0 82 106 0 83 107 0 106 107 0
		 84 108 0 108 106 0 85 109 0 108 109 0 107 109 0 106 110 0 107 111 0 110 111 0 108 112 0
		 112 110 0 109 113 0 112 113 0 111 113 0 86 114 0 87 115 0 114 115 0 88 116 0 116 115 0
		 89 117 0 117 116 0 117 114 0 114 118 0 115 119 0 118 119 0 116 120 0 120 119 0 117 121 0
		 121 120 0 121 118 0;
	setAttr -s 112 -ch 448 ".fc[0:111]" -type "polyFaces" 
		f 4 102 -105 -107 107
		mu 0 4 0 1 2 3
		f 4 -71 -73 -75 75
		mu 0 4 34 33 41 42
		f 4 -55 -57 -59 -60
		mu 0 4 49 50 51 52
		f 4 -87 -89 90 -92
		mu 0 4 48 47 46 45
		f 4 -10 12 14 -14
		mu 0 4 26 15 37 38
		f 4 -11 15 16 -13
		mu 0 4 15 24 36 37
		f 4 -2 17 18 -16
		mu 0 4 24 43 44 36
		f 4 -5 13 19 -18
		mu 0 4 43 26 38 44
		f 4 -7 20 22 -22
		mu 0 4 15 14 16 17
		f 4 -3 23 24 -21
		mu 0 4 14 20 21 16
		f 4 -9 25 26 -24
		mu 0 4 20 24 25 21
		f 4 10 21 -28 -26
		mu 0 4 24 15 17 25
		f 4 -8 28 30 -30
		mu 0 4 30 12 19 31
		f 4 -12 31 32 -29
		mu 0 4 12 15 18 19
		f 4 9 33 -35 -32
		mu 0 4 15 26 27 18
		f 4 -1 29 35 -34
		mu 0 4 26 30 31 27
		f 4 11 37 -39 -37
		mu 0 4 15 12 8 11
		f 4 -4 39 40 -38
		mu 0 4 12 13 9 8
		f 4 -6 41 42 -40
		mu 0 4 13 14 10 9
		f 4 6 36 -44 -42
		mu 0 4 14 15 11 10
		f 4 -15 44 46 -46
		mu 0 4 57 58 54 53
		f 4 -17 47 48 -45
		mu 0 4 61 62 63 64
		f 4 -19 49 50 -48
		mu 0 4 59 60 56 55
		f 4 -20 45 51 -50
		mu 0 4 65 66 67 68
		f 4 -47 52 54 -54
		mu 0 4 53 54 50 49
		f 4 -49 55 56 -53
		mu 0 4 54 55 51 50
		f 4 -51 57 58 -56
		mu 0 4 55 56 52 51
		f 4 -52 53 59 -58
		mu 0 4 56 53 49 52
		f 4 -23 60 62 -62
		mu 0 4 17 16 22 23
		f 4 -25 63 64 -61
		mu 0 4 16 21 32 22
		f 4 -27 65 66 -64
		mu 0 4 21 25 35 32
		f 4 27 61 -68 -66
		mu 0 4 25 17 23 35
		f 4 -63 68 70 -70
		mu 0 4 23 22 33 34
		f 4 -65 71 72 -69
		mu 0 4 22 32 41 33
		f 4 -67 73 74 -72
		mu 0 4 32 35 42 41
		f 4 67 69 -76 -74
		mu 0 4 35 23 34 42
		f 4 -31 76 78 -78
		mu 0 4 31 19 29 40
		f 4 -33 79 80 -77
		mu 0 4 19 18 28 29
		f 4 34 81 -83 -80
		mu 0 4 18 27 39 28
		f 4 -36 77 83 -82
		mu 0 4 27 31 40 39
		f 4 -79 84 86 -86
		mu 0 4 40 29 47 48
		f 4 -81 87 88 -85
		mu 0 4 69 70 71 72
		f 4 82 89 -91 -88
		mu 0 4 28 39 45 46
		f 4 -84 85 91 -90
		mu 0 4 73 74 75 76
		f 4 38 93 -95 -93
		mu 0 4 11 8 4 7
		f 4 -41 95 96 -94
		mu 0 4 8 9 5 4
		f 4 -43 97 98 -96
		mu 0 4 9 10 6 5
		f 4 43 92 -100 -98
		mu 0 4 10 11 7 6
		f 4 94 101 -103 -101
		mu 0 4 77 78 79 80
		f 4 -97 103 104 -102
		mu 0 4 4 5 2 1
		f 4 -99 105 106 -104
		mu 0 4 81 82 83 84
		f 4 99 100 -108 -106
		mu 0 4 6 7 0 3
		f 4 108 113 122 -113
		mu 0 4 85 86 87 88
		f 4 132 131 -111 -131
		mu 0 4 91 92 93 94
		f 4 125 124 -112 -124
		mu 0 4 97 98 99 100
		f 4 111 119 129 -119
		mu 0 4 103 104 105 106
		f 4 226 -229 -231 231
		mu 0 4 109 110 111 112
		f 4 -123 120 -110 -122
		mu 0 4 88 87 89 90
		f 4 110 117 -126 -117
		mu 0 4 101 102 98 97
		f 4 -195 -197 -199 199
		mu 0 4 143 142 150 151
		f 4 -130 127 -109 -129
		mu 0 4 106 105 107 108
		f 4 109 115 -133 -115
		mu 0 4 95 96 92 91
		f 4 -179 -181 -183 -184
		mu 0 4 158 159 160 161
		f 4 -211 -213 214 -216
		mu 0 4 157 156 155 154
		f 4 -134 136 138 -138
		mu 0 4 135 124 146 147
		f 4 -135 139 140 -137
		mu 0 4 124 133 145 146
		f 4 -116 141 142 -140
		mu 0 4 133 152 153 145
		f 4 -121 137 143 -142
		mu 0 4 152 135 147 153
		f 4 -127 144 146 -146
		mu 0 4 124 123 125 126
		f 4 -118 147 148 -145
		mu 0 4 123 129 130 125
		f 4 -132 149 150 -148
		mu 0 4 129 133 134 130
		f 4 134 145 -152 -150
		mu 0 4 133 124 126 134
		f 4 -128 152 154 -154
		mu 0 4 139 121 128 140
		f 4 -136 155 156 -153
		mu 0 4 121 124 127 128
		f 4 133 157 -159 -156
		mu 0 4 124 135 136 127
		f 4 -114 153 159 -158
		mu 0 4 135 139 140 136
		f 4 135 161 -163 -161
		mu 0 4 124 121 117 120
		f 4 -120 163 164 -162
		mu 0 4 121 122 118 117
		f 4 -125 165 166 -164
		mu 0 4 122 123 119 118
		f 4 126 160 -168 -166
		mu 0 4 123 124 120 119
		f 4 -139 168 170 -170
		mu 0 4 166 167 163 162
		f 4 -141 171 172 -169
		mu 0 4 170 171 172 173
		f 4 -143 173 174 -172
		mu 0 4 168 169 165 164
		f 4 -144 169 175 -174
		mu 0 4 174 175 176 177
		f 4 -171 176 178 -178
		mu 0 4 162 163 159 158
		f 4 -173 179 180 -177
		mu 0 4 163 164 160 159
		f 4 -175 181 182 -180
		mu 0 4 164 165 161 160
		f 4 -176 177 183 -182
		mu 0 4 165 162 158 161
		f 4 -147 184 186 -186
		mu 0 4 126 125 131 132
		f 4 -149 187 188 -185
		mu 0 4 125 130 141 131
		f 4 -151 189 190 -188
		mu 0 4 130 134 144 141
		f 4 151 185 -192 -190
		mu 0 4 134 126 132 144
		f 4 -187 192 194 -194
		mu 0 4 132 131 142 143
		f 4 -189 195 196 -193
		mu 0 4 131 141 150 142
		f 4 -191 197 198 -196
		mu 0 4 141 144 151 150
		f 4 191 193 -200 -198
		mu 0 4 144 132 143 151
		f 4 -155 200 202 -202
		mu 0 4 140 128 138 149
		f 4 -157 203 204 -201
		mu 0 4 128 127 137 138
		f 4 158 205 -207 -204
		mu 0 4 127 136 148 137
		f 4 -160 201 207 -206
		mu 0 4 136 140 149 148
		f 4 -203 208 210 -210
		mu 0 4 149 138 156 157
		f 4 -205 211 212 -209
		mu 0 4 178 179 180 181
		f 4 206 213 -215 -212
		mu 0 4 137 148 154 155
		f 4 -208 209 215 -214
		mu 0 4 182 183 184 185
		f 4 162 217 -219 -217
		mu 0 4 120 117 113 116
		f 4 -165 219 220 -218
		mu 0 4 117 118 114 113
		f 4 -167 221 222 -220
		mu 0 4 118 119 115 114
		f 4 167 216 -224 -222
		mu 0 4 119 120 116 115
		f 4 218 225 -227 -225
		mu 0 4 186 187 188 189
		f 4 -221 227 228 -226
		mu 0 4 113 114 111 110
		f 4 -223 229 230 -228
		mu 0 4 190 191 192 193
		f 4 223 224 -232 -230
		mu 0 4 115 116 109 112;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "main_door_knob" -p "main_door";
createNode mesh -n "main_door_knobShape" -p "main_door_knob";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.7225771 0.53034651
		 0.72257566 0.53006995 0.72257733 0.51675332 0.72257876 0.51909363 0.72257662 0.43154192
		 0.72257543 0.43126547 0.71165514 0.43126559 0.71165633 0.43154204 0.71165848 0.51909363
		 0.71165705 0.51675332 0.71165538 0.53006995 0.71165681 0.53034651 0.71166015 0.44720763
		 0.72258043 0.44720751 0.71165872 0.44916332 0.722579 0.4491632 0.7116611 0.4680109
		 0.72258139 0.46801078 0.71165967 0.46773446 0.72257996 0.46773434 0.71166086 0.48300868
		 0.72258115 0.48300856 0.71165943 0.48273224 0.72257972 0.48273212 0.71166015 0.49881041
		 0.72258043 0.49881029 0.71165895 0.49647009 0.72257924 0.49646997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  513.5279541 158.70277405 -762.57873535 515.69592285 158.70277405 -762.57873535
		 514.046142578 191.66360474 -762.57873535 516.21405029 191.66360474 -762.57873535
		 514.046142578 191.66360474 -766.2208252 516.21405029 191.66360474 -766.2208252 513.5279541 158.70277405 -766.2208252
		 515.69592285 158.70277405 -766.2208252 508.20935059 186.68258667 -762.57873535 508.20935059 186.68258667 -766.2208252
		 510.24725342 185.94299316 -766.2208252 510.24725342 185.94299316 -762.57873535 506.69708252 179.8024292 -762.57873535
		 506.69708252 179.8024292 -766.2208252 508.86505127 179.8024292 -766.2208252 508.86505127 179.8024292 -762.57873535
		 506.94158936 174.78544617 -762.57873535 506.94158936 174.78544617 -766.2208252 509.10955811 174.78544617 -766.2208252
		 509.10955811 174.78544617 -762.57873535 508.022094727 169.46452332 -762.57873535
		 508.022094727 169.46452332 -766.2208252 510.14361572 170.1554718 -766.2208252 510.14361572 170.1554718 -762.57873535
		 510.89605713 162.57122803 -762.57873535 510.89605713 162.57122803 -766.2208252 513.017578125 163.26217651 -766.2208252
		 513.017578125 163.26217651 -762.57873535;
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
createNode groupId -n "groupId261";
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
createNode groupId -n "groupId221";
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
connectAttr "groupId261.id" "main_doorShape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "main_doorShape.iog.og[0].gco";
connectAttr "groupId221.id" "main_door_knobShape.iog.og[0].gid";
connectAttr "House_Layout:lambert2SG.mwc" "main_door_knobShape.iog.og[0].gco";
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
// End of Isolated_FrontDoor.ma
