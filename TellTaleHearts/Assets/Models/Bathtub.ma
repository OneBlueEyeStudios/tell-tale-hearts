//Maya ASCII 2015 scene
//Name: Bathtub.ma
//Last modified: Tue, Nov 04, 2014 11:34:34 AM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "education";
createNode transform -n "Bathtub";
createNode transform -n "Bathtub_group" -p "Bathtub";
createNode transform -n "pCube4" -p "Bathtub_group";
	setAttr ".rp" -type "double3" -0.64093586825549653 -0.52375645743870214 -0.21983972912554639 ;
	setAttr ".sp" -type "double3" -0.64093586825549653 -0.52375645743870214 -0.21983972912554639 ;
createNode transform -n "transform5" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -0.7261129 -0.58449149 -0.27123082 -0.58825445 -0.61409968 -0.2712954
		 -0.69112146 -0.42162558 -0.24505079 -0.55326307 -0.45123386 -0.24511535 -0.69361722 -0.43341327 -0.16838406
		 -0.55575883 -0.46302152 -0.16844864 -0.72860873 -0.59627908 -0.19456412 -0.59075028 -0.62588733 -0.19462867;
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
createNode transform -n "pCube2" -p "Bathtub_group";
	setAttr ".rp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
	setAttr ".sp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
createNode transform -n "transform4" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -0.7261129 -0.58449143 0.27123082 -0.58825445 -0.61409968 0.2712954
		 -0.69112146 -0.42162558 0.24505079 -0.55326307 -0.45123386 0.24511535 -0.69361722 -0.43341327 0.16838406
		 -0.55575883 -0.46302152 0.16844864 -0.72860873 -0.59627903 0.19456409 -0.59075028 -0.62588727 0.19462866;
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
createNode transform -n "pCube3" -p "Bathtub_group";
	setAttr ".rp" -type "double3" 0.64093586825549642 -0.52375645743870214 0.21983972912554645 ;
	setAttr ".sp" -type "double3" 0.64093586825549642 -0.52375645743870214 0.21983972912554645 ;
createNode transform -n "transform3" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  0.72611761 -0.5847888 0.2708694 0.58824611 -0.61433607 0.2708694
		 0.69118255 -0.42177692 0.24553707 0.55331099 -0.45132419 0.24553707 0.69362569 -0.43317685 0.16881004
		 0.55575413 -0.46272412 0.16881004 0.72856081 -0.59618872 0.1941424 0.59068924 -0.625736 0.1941424;
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
createNode transform -n "pCube5" -p "Bathtub_group";
	setAttr ".rp" -type "double3" 0.64093586825549642 -0.52375645743870214 -0.21983972912554631 ;
	setAttr ".sp" -type "double3" 0.64093586825549642 -0.52375645743870214 -0.21983972912554631 ;
createNode transform -n "transform2" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4522352 0 -0.54173881 1.1764922 
		0 -0.54173881 1.3823651 0 -0.49107414 1.106622 0 -0.49107414 1.3872514 0 -0.33762008 
		1.1115083 0 -0.33762008 1.4571216 0 -0.3882848 1.1813785 0 -0.3882848;
	setAttr -s 8 ".vt[0:7]"  -0.72611761 -0.5847888 0.2708694 -0.58824611 -0.61433607 0.2708694
		 -0.69118255 -0.42177692 0.24553707 -0.55331099 -0.45132419 0.24553707 -0.69362569 -0.43317685 0.16881004
		 -0.55575413 -0.46272412 0.16881004 -0.72856081 -0.59618872 0.1941424 -0.59068924 -0.625736 0.1941424;
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
createNode transform -n "pSphere2" -p "Bathtub_group";
	setAttr ".rp" -type "double3" -0.0088502002875048558 0.059978332706605131 0 ;
	setAttr ".sp" -type "double3" -0.0088502002875048558 0.059978332706605131 0 ;
createNode transform -n "transform1" -p "pSphere2";
	setAttr ".v" no;
createNode mesh -n "pSphereShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:119]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 188 ".uvst[0].uvsp[0:187]" -type "float2" 0.53705651 0.038173243
		 0.53451335 0.11958431 0.48397505 0.11492066 0.48622414 0.021892123 0.57050699 0.051176719
		 0.56916511 0.12221824 0.53357679 0.24001019 0.4834004 0.24490112 0.40756902 0.10672595
		 0.40904364 0.0019096278 0.56874579 0.23585699 0.53515363 0.31890586 0.48476961 0.32687423
		 0.40769222 0.25371355 0.57018024 0.30831754 0.40926647 0.34818384 0.22191805 0.93111211
		 0.22021161 0.82926905 0.27102759 0.8295784 0.27230215 0.94079775 0.18689151 0.9228248
		 0.18573727 0.82770014 0.22094885 0.72628015 0.27211651 0.71397591 0.34689638 0.82984483
		 0.34780526 0.95570093 0.174567 0.91575086 0.17369471 0.82872981 0.18602264 0.74050117
		 0.34837347 0.70090866 0.61264426 0.31420922 0.614308 0.22753662 0.66533536 0.23235834
		 0.66381192 0.32773724 0.57771802 0.30040795 0.57906985 0.22359145 0.61359656 0.12454311
		 0.66481656 0.11984207 0.74136716 0.23941049 0.74006885 0.34697974 0.57861876 0.1278992
		 0.61119545 0.0410663 0.66248983 0.022154158 0.74114901 0.11188769 0.57712781 0.059358288
		 0.73966491 0.0019096433 0.14446044 0.66256255 0.14379893 0.55556214 0.19494319 0.55536753
		 0.19575487 0.67966032 0.11039288 0.64843702 0.11061523 0.55730039 0.14497563 0.44714627
		 0.19580802 0.42554933 0.2717706 0.55507487 0.27292994 0.69400257 0.11152518 0.45840672
		 0.27298856 0.410274 0.099016599 0.46692055 0.098493718 0.55593437 0.62716544 0.4848271
		 0.64812231 0.4570013 0.68240225 0.50181866 0.55442131 0.45630363 0.59363115 0.38881361
		 0.68232292 0.44626734 0.63339126 0.5188908 0.56376338 0.55616814 0.53873688 0.45014918
		 0.58511734 0.37910768 0.68264502 0.36431566 0.71638232 0.45695832 0.65195698 0.5465337
		 0.596515 0.62619513 0.54950613 0.563788 0.76573265 0.39457154 0.73724544 0.48481265
		 0.68257952 0.55727851 0.68353605 0.64759356 0.58944106 0.63624853 0.77514762 0.38451165
		 0.68401098 0.35217533 0.81155366 0.45933476 0.73144704 0.51894104 0.71311808 0.54657418
		 0.76321214 0.61531574 0.82811737 0.45305255 0.7994749 0.54130262 0.68456578 0.65960234
		 0.7717647 0.6255613 0.81508213 0.5487448 0.43904474 0.50535095 0.4907698 0.43399432
		 0.53260154 0.50058776 0.45886847 0.53263593 0.40696931 0.49492899 0.40696931 0.41027406
		 0.52193189 0.60981244 0.45273444 0.56636208 0.40678626 0.54949903 0.37489387 0.50535095
		 0.32759541 0.43927225 0.48685625 0.67655545 0.43518379 0.59364706 0.35507014 0.53263593
		 0.27912384 0.50410634 0.40678626 0.69691724 0.40678626 0.60406899 0.36083809 0.56636202
		 0.29164064 0.59280574 0.331615 0.66658604 0.37838873 0.59364706 0.74863571 0.052366912
		 0.78770351 0.03809249 0.78770351 0.11465037 0.74863571 0.11896034 0.83693177 0.022071291
		 0.83693177 0.1098233 0.78770351 0.23237199 0.74863571 0.22818498 0.91239107 0.0019096433
		 0.91239107 0.10160551 0.83693177 0.23719905 0.78770351 0.30681789 0.74863571 0.29492801
		 0.91239107 0.24591662 0.83693177 0.31479976 0.91239107 0.3361814 0.3549473 0.73297071
		 0.39401507 0.72536027 0.39401507 0.81304067 0.3549473 0.81304067 0.44324341 0.71628916
		 0.44324341 0.81304067 0.39401507 0.90260553 0.3549473 0.88821191 0.51870263 0.70090866
		 0.51870263 0.81281459 0.44324341 0.91450316 0.51870263 0.92787182 0.99800795 0.62573677
		 0.95894021 0.64082849 0.95894021 0.5579232 0.99800795 0.55195647 0.90971184 0.65388602
		 0.90971184 0.56275028 0.95894021 0.45768431 0.99800795 0.46325707 0.8342526 0.67318708
		 0.8342526 0.56971884 0.90971184 0.45285723 0.95894021 0.37887067 0.99800795 0.39842293
		 0.8342526 0.44489858 0.90971184 0.36059359 0.8342526 0.34017286 0.0019920315 0.74477255
		 0.041059833 0.7293669 0.041059833 0.82414645 0.0019920315 0.82414645 0.090288162
		 0.71273577 0.090288162 0.82414645 0.041059833 0.91999018 0.0019920315 0.90794694
		 0.1657474 0.69799405 0.1657474 0.82439351 0.090288162 0.94087833 0.1657474 0.95672548
		 0.38054517 0.13450116 0.33631435 0.034805294 0.34896845 0.02880122 0.40017968 0.13361755
		 0.20398249 0.011552341 0.20416759 0.0019096433 0.36429739 0.27881226 0.38376096 0.28060517
		 0.077583008 0.032290336 0.065239854 0.026023623 0.31568432 0.36907703 0.32938814
		 0.37507543 0.021487417 0.13701609 0.0019920468 0.13600169 0.2037784 0.39724609 0.203532
		 0.40628254 0.040108249 0.26183629 0.020482654 0.2635245 0.088721178 0.36530462 0.074595861
		 0.37109372;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".vt[0:111]"  0.24114984 -0.47820491 -0.096252918 0.086641282 -0.47820491 -0.1557405
		 -0.10434177 -0.47820491 -0.13733332 -0.25885028 -0.47820491 -0.084666833 -0.31786725 -0.47820491 0.00054929068
		 -0.25885022 -0.47820491 0.085765406 -0.10434172 -0.47820491 0.13843185 0.086641312 -0.47820491 0.15574047
		 0.24114983 -0.47820491 0.096252911 0.30016682 -0.47820491 0 0.64522529 -0.4146046 -0.2514708
		 0.26812243 -0.4146046 -0.37700072 -0.35039073 -0.4146046 -0.34498307 -0.72834063 -0.4146046 -0.23972702
		 -0.8436445 -0.4146046 0.00054930744 -0.67188638 -0.4146046 0.22612531 -0.25408632 -0.4146046 0.34608158
		 0.2481975 -0.4146046 0.38364229 0.61533767 -0.4146046 0.23818743 0.77954757 -0.4146046 3.3726053e-09
		 0.72605789 -0.2848264 -0.28761071 0.29252881 -0.2848264 -0.42111984 -0.37410069 -0.2848264 -0.38359261
		 -0.79567027 -0.2848264 -0.26256466 -0.92874879 -0.2848264 0.00054930878 -0.7573474 -0.2848264 0.2693181
		 -0.28787431 -0.2848264 0.39317313 0.27975467 -0.2848264 0.43708757 0.72605783 -0.2848264 0.28441706
		 0.84281814 -0.2848264 2.0886537e-09 0.81678218 -0.12129621 -0.35029233 0.31986338 -0.12129621 -0.46570083
		 -0.40143529 -0.12129621 -0.42306152 -0.84086972 -0.12129621 -0.28978527 -0.98991323 -0.12129621 0.00054930995
		 -0.83128893 -0.12129621 0.30502081 -0.31520888 -0.12129621 0.43264225 0.30708924 -0.12129621 0.48166859
		 0.82955635 -0.12129621 0.33432445 0.93127465 -0.12129621 6.3779526e-10 0.93095279 0.12936969 -0.39784679
		 0.36639872 0.12936969 -0.53057593 -0.45080078 0.12936969 -0.48181891 -0.96194887 0.12936969 -0.33593968
		 -1.12146342 0.12936969 -0.000129161 -0.94058633 0.12936969 0.34513777 -0.35466996 0.12936969 0.49101681
		 0.35215724 0.12936969 0.54689473 0.9451943 0.12936969 0.37856156 1.062628746 0.12936969 -0.00074156799
		 -0.0088502076 -0.4847281 0.00054928212 0.24487139 -0.50271934 -0.10231454 0.087300539 -0.50237268 -0.16520236
		 -0.10559408 -0.50240809 -0.14651984 -0.26212949 -0.50273806 -0.090807348 -0.32297456 -0.50293154 0.0010856282
		 -0.26235855 -0.50263 0.092726581 -0.10587873 -0.50238305 0.14772877 0.087382384 -0.50238401 0.16512875
		 0.24511486 -0.50268042 0.1025221 0.30565536 -0.50289792 0.00031584586 0.29858854 -0.3039304 -0.47490993
		 0.75960004 -0.31237859 -0.32517216 -0.38335457 -0.30081913 -0.43794009 -0.83012217 -0.30605748 -0.30327553
		 -0.97942686 -0.31172606 0.0023377996 -0.78779715 -0.30927709 0.31138995 -0.29699081 -0.30375031 0.4465946
		 0.28623697 -0.30611366 0.49000168 0.75894636 -0.31408995 0.32125515 0.89083099 -0.31628746 0.00016520696
		 0.32499772 -0.13604879 -0.52093726 0.85179627 -0.14351986 -0.38998091 -0.4110508 -0.13413973 -0.4781765
		 -0.87524492 -0.13868803 -0.33234039 -1.043079495 -0.14292191 0.0014096153 -0.86440313 -0.13930471 0.34831282
		 -0.32429504 -0.1342441 0.48782244 0.31285784 -0.13596733 0.53686398 0.86604136 -0.14369644 0.37256238
		 0.98289871 -0.14639276 -0.00041887054 0.37140238 0.11776237 -0.58949554 0.96495229 0.11286382 -0.43581951
		 -0.46095353 0.11735307 -0.54022592 -0.99591631 0.1121236 -0.37706238 -1.1726346 0.10910439 0.00061025267
		 -0.97336859 0.11401121 0.38752544 -0.36422977 0.11832394 0.54990983 0.35790157 0.11759926 0.60539699
		 0.98068124 0.11266922 0.41560122 1.11723304 0.10881799 -0.0012970754 -0.0089188358 -0.50729102 0.00055373023
		 0.24882212 -0.46600378 -0.38349506 0.28367326 -0.41903913 -0.43056136 0.63100195 -0.46504861 -0.26583302
		 0.68596452 -0.42349675 -0.29138151 -0.31668684 -0.4657813 -0.35546112 -0.35983607 -0.41764614 -0.39824471
		 -0.71323323 -0.46335155 -0.25717908 -0.77016306 -0.42241114 -0.27840671 -0.83440733 -0.4662492 0.0039560916
		 -0.90240997 -0.42624542 0.0070460699 -0.65162557 -0.46601921 0.24305031 -0.70964384 -0.42529747 0.26871517
		 -0.23250714 -0.46794423 0.35186872 -0.27465022 -0.42080703 0.39870331 0.23165759 -0.46736106 0.38811496
		 0.26723227 -0.42230529 0.43781972 0.59839624 -0.46753162 0.25061393 0.65536314 -0.42725807 0.27886674
		 0.76972818 -0.46678555 0.0012823105 0.83847612 -0.42651942 0.0053814016;
	setAttr -s 230 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 0 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 10 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 20 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 30 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 40 1 0 10 1 1 11 1 2 12 1
		 3 13 1 4 14 1 5 15 1 6 16 1 7 17 1 8 18 1 9 19 1 10 20 1 11 21 1 12 22 1 13 23 1
		 14 24 1 15 25 1 16 26 1 17 27 1 18 28 1 19 29 1 20 30 1 21 31 1 22 32 1 23 33 1 24 34 1
		 25 35 1 26 36 1 27 37 1 28 38 1 29 39 1 30 40 1 31 41 1 32 42 1 33 43 1 34 44 1 35 45 1
		 36 46 1 37 47 1 38 48 1 39 49 1 50 0 1 50 1 1 50 2 1 50 3 1 50 4 1 50 5 1 50 6 1
		 50 7 1 50 8 1 50 9 1 51 52 1 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1
		 59 60 1 60 51 1 62 61 1 61 63 1 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1
		 70 62 1 61 71 1 72 71 1 62 72 1 63 73 1 71 73 1 64 74 1 73 74 1 65 75 1 74 75 1 66 76 1
		 75 76 1 67 77 1 76 77 1 68 78 1 77 78 1 69 79 1 78 79 1 70 80 1 79 80 1 80 72 1 41 81 1
		 71 81 1 40 82 1 82 81 1 72 82 1 42 83 1 73 83 1 81 83 1 43 84 1 74 84 1 83 84 1 44 85 1
		 75 85 1 84 85 1 45 86 1 76 86 1 85 86 1 46 87 1 77 87 1 86 87 1 47 88 1 78 88 1 87 88 1
		 48 89 1 79 89 1 88 89 1;
	setAttr ".ed[166:229]" 49 90 1 80 90 1 89 90 1 90 82 1 91 51 1 91 52 1 91 53 1
		 91 54 1 91 55 1 91 56 1 91 57 1 91 58 1 91 59 1 91 60 1 92 93 1 93 95 1 95 94 1 94 92 1
		 92 96 1 96 97 1 97 93 1 95 111 1 111 110 1 110 94 1 96 98 1 98 99 1 99 97 1 98 100 1
		 100 101 1 101 99 1 100 102 1 102 103 1 103 101 1 102 104 1 104 105 1 105 103 1 104 106 1
		 106 107 1 107 105 1 106 108 1 108 109 1 109 107 1 108 110 1 111 109 1 52 92 1 94 51 1
		 53 96 1 54 98 1 55 100 1 56 102 1 57 104 1 58 106 1 59 108 1 60 110 1 93 61 1 62 95 1
		 97 63 1 99 64 1 101 65 1 103 66 1 105 67 1 107 68 1 109 69 1 111 70 1;
	setAttr -s 120 -ch 460 ".fc[0:119]" -type "polyFaces" 
		f 4 110 120 -122 -123
		mu 0 4 0 1 2 3
		f 4 111 123 -125 -121
		mu 0 4 1 6 7 2
		f 4 112 125 -127 -124
		mu 0 4 6 11 12 7
		f 4 113 127 -129 -126
		mu 0 4 16 17 18 19
		f 4 114 129 -131 -128
		mu 0 4 17 22 23 18
		f 4 115 131 -133 -130
		mu 0 4 30 31 32 33
		f 4 116 133 -135 -132
		mu 0 4 31 36 37 32
		f 4 117 135 -137 -134
		mu 0 4 36 41 42 37
		f 4 118 137 -139 -136
		mu 0 4 46 47 48 49
		f 4 119 122 -140 -138
		mu 0 4 47 52 53 48
		f 4 121 141 -144 -145
		mu 0 4 3 2 8 9
		f 4 124 146 -148 -142
		mu 0 4 2 7 13 8
		f 4 126 149 -151 -147
		mu 0 4 7 12 15 13
		f 4 128 152 -154 -150
		mu 0 4 19 18 24 25
		f 4 130 155 -157 -153
		mu 0 4 18 23 29 24
		f 4 132 158 -160 -156
		mu 0 4 33 32 38 39
		f 4 134 161 -163 -159
		mu 0 4 32 37 43 38
		f 4 136 164 -166 -162
		mu 0 4 37 42 45 43
		f 4 138 167 -169 -165
		mu 0 4 49 48 54 55
		f 4 139 144 -170 -168
		mu 0 4 48 53 57 54
		f 3 -101 -171 171
		mu 0 3 60 61 62
		f 3 -102 -172 172
		mu 0 3 66 60 62
		f 3 -103 -173 173
		mu 0 3 72 66 62
		f 3 -104 -174 174
		mu 0 3 77 72 62
		f 3 -105 -175 175
		mu 0 3 84 77 62
		f 3 -106 -176 176
		mu 0 3 83 84 62
		f 3 -107 -177 177
		mu 0 3 76 83 62
		f 3 -108 -178 178
		mu 0 3 71 76 62
		f 3 -109 -179 179
		mu 0 3 65 71 62
		f 3 -110 -180 170
		mu 0 3 61 65 62
		f 4 50 10 -52 -1
		mu 0 4 91 92 93 94
		f 4 51 11 -53 -2
		mu 0 4 94 93 97 98
		f 4 52 12 -54 -3
		mu 0 4 98 97 102 103
		f 4 53 13 -55 -4
		mu 0 4 103 102 106 107
		f 4 54 14 -56 -5
		mu 0 4 107 106 110 111
		f 4 55 15 -57 -6
		mu 0 4 111 110 109 108
		f 4 56 16 -58 -7
		mu 0 4 108 109 105 104
		f 4 57 17 -59 -8
		mu 0 4 104 105 101 100
		f 4 58 18 -60 -9
		mu 0 4 100 101 96 95
		f 4 59 19 -51 -10
		mu 0 4 95 96 92 91
		f 4 60 20 -62 -11
		mu 0 4 112 113 114 115
		f 4 61 21 -63 -12
		mu 0 4 115 114 118 119
		f 4 62 22 -64 -13
		mu 0 4 119 118 123 124
		f 4 63 23 -65 -14
		mu 0 4 128 129 130 131
		f 4 64 24 -66 -15
		mu 0 4 131 130 134 135
		f 4 65 25 -67 -16
		mu 0 4 140 141 142 143
		f 4 66 26 -68 -17
		mu 0 4 143 142 146 147
		f 4 67 27 -69 -18
		mu 0 4 147 146 151 152
		f 4 68 28 -70 -19
		mu 0 4 156 157 158 159
		f 4 69 29 -61 -20
		mu 0 4 159 158 162 163
		f 4 70 30 -72 -21
		mu 0 4 113 116 117 114
		f 4 71 31 -73 -22
		mu 0 4 114 117 122 118
		f 4 72 32 -74 -23
		mu 0 4 118 122 126 123
		f 4 73 33 -75 -24
		mu 0 4 129 132 133 130
		f 4 74 34 -76 -25
		mu 0 4 130 133 138 134
		f 4 75 35 -77 -26
		mu 0 4 141 144 145 142
		f 4 76 36 -78 -27
		mu 0 4 142 145 150 146
		f 4 77 37 -79 -28
		mu 0 4 146 150 154 151
		f 4 78 38 -80 -29
		mu 0 4 157 160 161 158
		f 4 79 39 -71 -30
		mu 0 4 158 161 166 162
		f 4 80 40 -82 -31
		mu 0 4 116 120 121 117
		f 4 81 41 -83 -32
		mu 0 4 117 121 125 122
		f 4 82 42 -84 -33
		mu 0 4 122 125 127 126
		f 4 83 43 -85 -34
		mu 0 4 132 136 137 133
		f 4 84 44 -86 -35
		mu 0 4 133 137 139 138
		f 4 85 45 -87 -36
		mu 0 4 144 148 149 145
		f 4 86 46 -88 -37
		mu 0 4 145 149 153 150
		f 4 87 47 -89 -38
		mu 0 4 150 153 155 154
		f 4 88 48 -90 -39
		mu 0 4 160 164 165 161
		f 4 89 49 -81 -40
		mu 0 4 161 165 167 166
		f 3 -92 90 0
		mu 0 3 94 99 91
		f 3 -93 91 1
		mu 0 3 98 99 94
		f 3 -94 92 2
		mu 0 3 103 99 98
		f 3 -95 93 3
		mu 0 3 107 99 103
		f 3 -96 94 4
		mu 0 3 111 99 107
		f 3 -97 95 5
		mu 0 3 108 99 111
		f 3 -98 96 6
		mu 0 3 104 99 108
		f 3 -99 97 7
		mu 0 3 100 99 104
		f 3 -100 98 8
		mu 0 3 95 99 100
		f 3 -91 99 9
		mu 0 3 91 99 95
		f 4 -41 142 143 -141
		mu 0 4 168 169 170 171
		f 4 -42 140 147 -146
		mu 0 4 174 168 171 175
		f 4 -43 145 150 -149
		mu 0 4 178 174 175 179
		f 4 -44 148 153 -152
		mu 0 4 182 178 179 183
		f 4 -45 151 156 -155
		mu 0 4 186 182 183 187
		f 4 -46 154 159 -158
		mu 0 4 184 186 187 185
		f 4 -47 157 162 -161
		mu 0 4 180 184 185 181
		f 4 -48 160 165 -164
		mu 0 4 176 180 181 177
		f 4 -49 163 168 -167
		mu 0 4 172 176 177 173
		f 4 -50 166 169 -143
		mu 0 4 169 172 173 170
		f 4 180 181 182 183
		mu 0 4 63 68 69 64
		f 4 -181 184 185 186
		mu 0 4 68 63 67 74
		f 4 -183 187 188 189
		mu 0 4 58 56 51 59
		f 4 -186 190 191 192
		mu 0 4 74 67 73 79
		f 4 -192 193 194 195
		mu 0 4 20 26 27 21
		f 4 -195 196 197 198
		mu 0 4 88 78 85 89
		f 4 -198 199 200 201
		mu 0 4 89 85 87 90
		f 4 -201 202 203 204
		mu 0 4 90 87 82 86
		f 4 -204 205 206 207
		mu 0 4 86 82 75 80
		f 4 -207 208 -189 209
		mu 0 4 80 75 70 81
		f 4 100 210 -184 211
		mu 0 4 61 60 63 64
		f 4 101 212 -185 -211
		mu 0 4 60 66 67 63
		f 4 102 213 -191 -213
		mu 0 4 66 72 73 67
		f 4 103 214 -194 -214
		mu 0 4 72 77 78 73
		f 4 104 215 -197 -215
		mu 0 4 77 84 85 78
		f 4 105 216 -200 -216
		mu 0 4 84 83 87 85
		f 4 106 217 -203 -217
		mu 0 4 83 76 82 87
		f 4 107 218 -206 -218
		mu 0 4 76 71 75 82
		f 4 108 219 -209 -219
		mu 0 4 71 65 70 75
		f 4 109 -212 -190 -220
		mu 0 4 65 61 64 70
		f 4 -182 220 -111 221
		mu 0 4 4 5 1 0
		f 4 -187 222 -112 -221
		mu 0 4 5 10 6 1
		f 4 -193 223 -113 -223
		mu 0 4 10 14 11 6
		f 4 -196 224 -114 -224
		mu 0 4 20 21 17 16
		f 4 -199 225 -115 -225
		mu 0 4 21 28 22 17
		f 4 -202 226 -116 -226
		mu 0 4 34 35 31 30
		f 4 -205 227 -117 -227
		mu 0 4 35 40 36 31
		f 4 -208 228 -118 -228
		mu 0 4 40 44 41 36
		f 4 -210 229 -119 -229
		mu 0 4 50 51 47 46
		f 4 -188 -222 -120 -230
		mu 0 4 51 56 52 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Bathtub1";
createNode mesh -n "Bathtub1Shape" -p "Bathtub1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999999231658876 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[2:5]" "f[12]" "f[14:17]";
	setAttr ".unm" no;
createNode polyUnite -n "polyUnite1";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "bathtub_mat";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 4 4 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pSphereShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape2.iog.og[0].gco";
connectAttr "groupId10.id" "pSphereShape2.ciog.cog[0].cgid";
connectAttr "polySoftEdge1.out" "Bathtub1Shape.i";
connectAttr "polyNormal1.out" "polySoftEdge1.ip";
connectAttr "Bathtub1Shape.wm" "polySoftEdge1.mp";
connectAttr "polyUnite1.out" "polyNormal1.ip";
connectAttr "pCubeShape4.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape5.o" "polyUnite1.ip[3]";
connectAttr "pSphereShape2.o" "polyUnite1.ip[4]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape5.wm" "polyUnite1.im[3]";
connectAttr "pSphereShape2.wm" "polyUnite1.im[4]";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "bathtub_mat.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "bathtub_mat.oc" "lambert2SG.ss";
connectAttr "Bathtub1Shape.iog" "lambert2SG.dsm" -na;
connectAttr "checker1.oc" "bathtub_mat.c";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "bathtub_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
// End of Bathtub.ma
