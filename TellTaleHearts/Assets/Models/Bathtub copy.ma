//Maya ASCII 2015 scene
//Name: Bathtub.ma
//Last modified: Sun, Oct 26, 2014 02:54:05 PM
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
createNode transform -n "pSphere2" -p "Bathtub";
	setAttr ".t" -type "double3" -0.0088502002875048558 0.059978332706605131 0 ;
	setAttr ".s" -type "double3" 1 0.58661680688304618 0.52992301728225932 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2" -p "Bathtub";
	setAttr ".r" -type "double3" -0.29047284489238201 0.035417869601419322 -0.025502224711259718 ;
	setAttr ".rp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
	setAttr ".sp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3" -p "Bathtub";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" -0.64093586825549642 -0.52375645743870214 -0.21983972912554639 ;
	setAttr ".rpt" -type "double3" 1.2818717365109928 0 0.43967945825109284 ;
	setAttr ".sp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
	setAttr ".spt" -type "double3" 0 0 -0.43967945825109278 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube3";
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
	setAttr -s 8 ".vt[0:7]"  -0.72611761 -0.5847888 0.2708694 -0.58824611 -0.61433607 0.2708694
		 -0.69118255 -0.42177692 0.24553707 -0.55331099 -0.45132419 0.24553707 -0.69362569 -0.43317685 0.16881004
		 -0.55575413 -0.46272412 0.16881004 -0.72856081 -0.59618872 0.19414239 -0.59068924 -0.625736 0.19414239;
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
createNode transform -n "pCube5" -p "Bathtub";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
	setAttr ".rpt" -type "double3" 1.2818717365109928 0 -0.43967945825109267 ;
	setAttr ".sp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
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
	setAttr -s 8 ".vt[0:7]"  -0.72611761 -0.5847888 0.2708694 -0.58824611 -0.61433607 0.2708694
		 -0.69118255 -0.42177692 0.24553707 -0.55331099 -0.45132419 0.24553707 -0.69362569 -0.43317685 0.16881004
		 -0.55575413 -0.46272412 0.16881004 -0.72856081 -0.59618872 0.19414239 -0.59068924 -0.625736 0.19414239;
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
createNode transform -n "pCube4" -p "Bathtub";
	setAttr ".t" -type "double3" 9.4902422581277961e-05 -0.0014065187453983258 0.0030486129162283506 ;
	setAttr ".r" -type "double3" 0.29047284489238206 -0.035417869601419329 -0.025502224711259718 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" -0.64093586825549642 -0.52375645743870214 -0.21983972912554639 ;
	setAttr ".rpt" -type "double3" -9.4902422581327373e-05 0.0014065187453983583 -0.0030486129162283523 ;
	setAttr ".sp" -type "double3" -0.64093586825549642 -0.52375645743870214 0.21983972912554639 ;
	setAttr ".spt" -type "double3" 0 0 -0.43967945825109278 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
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
	setAttr -s 8 ".vt[0:7]"  -0.72611761 -0.5847888 0.2708694 -0.58824611 -0.61433607 0.2708694
		 -0.69118255 -0.42177692 0.24553707 -0.55331099 -0.45132419 0.24553707 -0.69362569 -0.43317685 0.16881004
		 -0.55575413 -0.46272412 0.16881004 -0.72856081 -0.59618872 0.19414239 -0.59068924 -0.625736 0.19414239;
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
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.58661680688304618 0 0 0 0 0.52992301728225932 0
		 -0.88502002875048558 5.9978332706605126 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[40]" -type "float3" 5.4721236 11.829081 -4.3711009 ;
	setAttr ".tk[41]" -type "float3" 2.2495735 11.829081 -5.8008099 ;
	setAttr ".tk[42]" -type "float3" -2.4151113 11.829081 -5.2756186 ;
	setAttr ".tk[43]" -type "float3" -5.3328137 11.829081 -3.7042599 ;
	setAttr ".tk[44]" -type "float3" -6.2433453 11.829081 -0.087033547 ;
	setAttr ".tk[45]" -type "float3" -5.2108736 11.829081 3.6320543 ;
	setAttr ".tk[46]" -type "float3" -1.8663836 11.829081 5.2034097 ;
	setAttr ".tk[47]" -type "float3" 2.1682811 11.829081 5.805306 ;
	setAttr ".tk[48]" -type "float3" 5.5534167 11.829081 3.9920821 ;
	setAttr ".tk[49]" -type "float3" 6.2237477 11.829081 -0.093630172 ;
	setAttr ".tk[51]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[52]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[53]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[54]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[55]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[56]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[57]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[58]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[59]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[60]" -type "float3" 0 5.5309987 0 ;
	setAttr ".tk[81]" -type "float3" 2.2781353 11.716128 -6.4354701 ;
	setAttr ".tk[82]" -type "float3" 5.6661983 11.668463 -4.7801285 ;
	setAttr ".tk[83]" -type "float3" -2.4730647 11.712151 -5.9047565 ;
	setAttr ".tk[84]" -type "float3" -5.5267048 11.661266 -4.1472187 ;
	setAttr ".tk[85]" -type "float3" -6.5354366 11.631885 -0.079068847 ;
	setAttr ".tk[86]" -type "float3" -5.3979993 11.679634 4.0886383 ;
	setAttr ".tk[87]" -type "float3" -1.9209526 11.721593 5.8377833 ;
	setAttr ".tk[88]" -type "float3" 2.2010708 11.71454 6.4354701 ;
	setAttr ".tk[89]" -type "float3" 5.7559805 11.666574 4.3910608 ;
	setAttr ".tk[90]" -type "float3" 6.5354366 11.629095 -0.09961389 ;
	setAttr ".tk[91]" -type "float3" 0 5.9390788 0 ;
createNode polyBevel2 -n "polyBevel4";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 10 "e[102]" "e[106]" "e[109]" "e[112]" "e[115]" "e[118]" "e[121]" "e[124]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.58661680688304618 0 0 0 0 0.52992301728225932 0
		 -0.88502002875048558 5.9978332706605126 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.51084;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.58661680688304618 0 0 0 0 0.52992301728225932 0
		 -0.88502002875048558 5.9978332706605126 0 1;
	setAttr ".a" 180;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.58661680688304618 0 0 0 0 0.52992301728225932 0
		 -0.88502002875048558 5.9978332706605126 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.02931937 -0.21237488 0.0081474371 ;
	setAttr ".rs" 1694435943;
	setAttr ".lt" -type "double3" 0 0 0.057402630341633419 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0590299488226611 -0.48472807966527781 -0.49983612370750591 ;
	setAttr ".cbx" -type "double3" 1.000391209014253 0.059978332706605145 0.51613099773746207 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 51 ".tk[0:50]" -type "float3"  0 3.36208129 0 0 3.36208129
		 0 0 3.36208129 3.47355986 0 3.36208129 2.1863699 0 3.36208129 0.10365295 0 3.36208129
		 -1.97906387 0 3.36208129 -3.26625323 0 3.36208129 0 0 3.36208129 0 0 3.36208129 0
		 17.85472107 0 -12.90505123 9.53370094 0 -15.24083614 -15.99047947 0 -9.19889069 -24.39620781
		 0 -10.68892479 -24.70089912 0 0.10365448 -18.75078964 0 8.1221962 -6.36004972 0 9.40619659
		 7.5412035 0 16.49415779 14.86596203 0 10.39839554 20.061250687 0 6.3643313e-07 8.039948463
		 7.1054274e-15 -6.7212081 5.13790607 7.1054274e-15 -2.52601004 -11.525033 7.1054274e-15
		 4.5556407 -13.23114395 7.1054274e-15 -1.99487543 -11.088150978 7.1054274e-15 0.10365341
		 -9.39886284 7.1054274e-15 3.26927114 -2.9024117 7.1054274e-15 -2.74770069 3.86048079
		 7.1054274e-15 5.53924131 8.039951324 7.1054274e-15 6.11855936 4.26513052 7.1054274e-15
		 3.9414286e-07 5.62113857 0 -10.20078373 3.48210049 0 2.57003403 -9.86922741 0 10.61632347
		 -6.2598505 0 1.21728683 -3.00064682961 3.5527137e-15 0.10365278 -5.3017807 0 1.6577388
		 -1.24660683 0 -8.8083849 2.20467591 0 0.44319832 6.89856195 0 7.18755341 -1.093166828
		 3.5527137e-15 1.2035621e-07 7.60646725 -9.0999476e-17 -11.92668056 4.37362576 -9.0999476e-17
		 0.78327405 -10.878232 -9.0999476e-17 9.45885372 -9.075328827 -9.0999476e-17 -0.91127092
		 -5.017956734 -9.0999476e-17 0.062654056 -7.061032772 -9.0999476e-17 2.71920824 -1.8138938
		 -9.0999476e-17 -7.65091419 3.030762434 -9.0999476e-17 2.29170179 8.94933319 -9.0999476e-17
		 8.66647339 0.92414355 3.0922634e-15 -0.04630864 0 7.14442253 0.10365317;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[40:79]" "f[90:99]";
createNode polySphere -n "polySphere2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1.3787156522622066 -0.29547261995615343 4.8919951502686732e-18 0
		 0.34935078307071032 1.6301185294973259 -0.25332323707080057 0 0.024431192821754891 0.11399928680968145 0.76727033954350676 0
		 -64.093586825549636 -52.375645743870216 21.983972912554638 1;
createNode polyCube -n "polyCube3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 0.1;
	setAttr ".h" 0.1;
	setAttr ".d" 0.1;
	setAttr ".cuv" 4;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
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
connectAttr "polySoftEdge4.out" "pSphereShape2.i";
connectAttr "transformGeometry1.og" "pCubeShape2.i";
connectAttr "polyNormal2.out" "pCubeShape3.i";
connectAttr "polyNormal1.out" "pCubeShape4.i";
connectAttr "polyTweak18.out" "polySoftEdge4.ip";
connectAttr "pSphereShape2.wm" "polySoftEdge4.mp";
connectAttr "polyBevel4.out" "polyTweak18.ip";
connectAttr "polySoftEdge3.out" "polyBevel4.ip";
connectAttr "pSphereShape2.wm" "polyBevel4.mp";
connectAttr "polyExtrudeFace9.out" "polySoftEdge3.ip";
connectAttr "pSphereShape2.wm" "polySoftEdge3.mp";
connectAttr "polyTweak17.out" "polyExtrudeFace9.ip";
connectAttr "pSphereShape2.wm" "polyExtrudeFace9.mp";
connectAttr "deleteComponent2.og" "polyTweak17.ip";
connectAttr "polySphere2.out" "deleteComponent2.ig";
connectAttr "polyCube3.out" "transformGeometry1.ig";
connectAttr "polySurfaceShape2.o" "polyNormal2.ip";
connectAttr "polySurfaceShape1.o" "polyNormal1.ip";
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
// End of Bathtub.ma
