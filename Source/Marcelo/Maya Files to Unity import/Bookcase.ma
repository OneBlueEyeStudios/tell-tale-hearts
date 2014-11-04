//Maya ASCII 2015 scene
//Name: Bookcase.ma
//Last modified: Tue, Nov 04, 2014 11:21:00 AM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "education";
createNode transform -n "Bookcase";
	setAttr ".s" -type "double3" 1.1700950742240506 1 1 ;
createNode mesh -n "BookcaseShape" -p "Bookcase";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Bookcase";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 108 ".uvst[0].uvsp[0:107]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
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
	setAttr -s 72 ".vt[0:71]"  -0.60000002 0.14557901 0.19965123 0.60000002 0.14557901 0.19965123
		 -0.60000002 2.41851521 0.19965123 0.60000002 2.41851521 0.19965123 -0.60000002 2.41851521 -0.19965123
		 0.60000002 2.41851521 -0.19965123 -0.60000002 0.14557901 -0.19965123 0.60000002 0.14557901 -0.19965123
		 -0.5341168 0.2451728 0.19965123 0.5341168 0.2451728 0.19965123 0.5341168 2.29073381 0.19965123
		 -0.5341168 2.29073381 0.19965123 -0.5341168 0.2451728 -0.14554787 0.5341168 0.2451728 -0.14554787
		 0.5341168 2.29073381 -0.14554787 -0.5341168 2.29073381 -0.14554787 -0.64225602 2.48662114 0.21371199
		 0.64225602 2.48662114 0.21371199 0.64225602 2.48662114 -0.21371199 -0.64225602 2.48662114 -0.21371199
		 -0.63616776 2.52544308 0.21168613 0.63616776 2.52544308 0.21168613 0.63616776 2.52544308 -0.21168613
		 -0.63616776 2.52544308 -0.21168613 -0.65390635 0.083016358 -0.21758868 0.65390635 0.083016358 -0.21758868
		 0.65390635 0.083016358 0.21758868 -0.65390635 0.083016358 0.21758868 -0.65390635 0.001918335 -0.21758868
		 0.65390635 0.001918335 -0.21758868 0.65390635 0.001918335 0.21758868 -0.65390635 0.001918335 0.21758868
		 -0.55649894 1.9348613 0.19007331 0.55649894 1.9348613 0.19007331 -0.55649894 1.95545638 0.19007331
		 0.55649894 1.95545638 0.19007331 -0.55649894 1.95545638 -0.16364832 0.55649894 1.95545638 -0.16364832
		 -0.55649894 1.9348613 -0.16364832 0.55649894 1.9348613 -0.16364832 -0.55649894 1.55254698 0.19007331
		 0.55649894 1.55254698 0.19007331 -0.55649894 1.57314205 0.19007331 0.55649894 1.57314205 0.19007331
		 -0.55649894 1.57314205 -0.16364832 0.55649894 1.57314205 -0.16364832 -0.55649894 1.55254698 -0.16364832
		 0.55649894 1.55254698 -0.16364832 -0.55649894 1.20574808 0.19007331 0.55649894 1.20574808 0.19007331
		 -0.55649894 1.22634327 0.19007331 0.55649894 1.22634327 0.19007331 -0.55649894 1.22634327 -0.16364832
		 0.55649894 1.22634327 -0.16364832 -0.55649894 1.20574808 -0.16364832 0.55649894 1.20574808 -0.16364832
		 -0.55649894 0.8568601 0.19007331 0.55649894 0.8568601 0.19007331 -0.55649894 0.87745535 0.19007331
		 0.55649894 0.87745535 0.19007331 -0.55649894 0.87745535 -0.16364832 0.55649894 0.87745535 -0.16364832
		 -0.55649894 0.8568601 -0.16364832 0.55649894 0.8568601 -0.16364832 -0.55649894 0.51632881 0.19007331
		 0.55649894 0.51632881 0.19007331 -0.55649894 0.536924 0.19007331 0.55649894 0.536924 0.19007331
		 -0.55649894 0.536924 -0.16364832 0.55649894 0.536924 -0.16364832 -0.55649894 0.51632881 -0.16364832
		 0.55649894 0.51632881 -0.16364832;
	setAttr -s 120 ".ed[0:119]"  0 1 1 2 3 1 4 5 1 6 7 1 0 2 0 1 3 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 1 7 1 1 0 8 0 1 9 0 8 9 0 3 10 0 9 10 0 2 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 2 16 0 3 17 0 16 17 1
		 5 18 0 17 18 0 4 19 0 19 18 1 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 6 24 0 7 25 0 24 25 1 1 26 0 25 26 0 0 27 0 27 26 1 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0
		 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0
		 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0
		 71 65 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 54 56 -59 -60
		mu 0 4 34 35 36 37
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 13 -15 -13
		mu 0 4 0 1 15 14
		f 4 5 15 -17 -14
		mu 0 4 1 3 16 15
		f 4 -2 17 18 -16
		mu 0 4 3 2 17 16
		f 4 -5 12 19 -18
		mu 0 4 2 0 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 1 29 -31 -29
		mu 0 4 2 3 23 22
		f 4 7 31 -33 -30
		mu 0 4 3 5 24 23
		f 4 -3 33 34 -32
		mu 0 4 5 4 25 24
		f 4 -7 28 35 -34
		mu 0 4 4 2 22 25
		f 4 30 37 -39 -37
		mu 0 4 22 23 27 26
		f 4 32 39 -41 -38
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 36 43 -42
		mu 0 4 25 22 26 29
		f 4 3 45 -47 -45
		mu 0 4 6 7 31 30
		f 4 11 47 -49 -46
		mu 0 4 7 9 32 31
		f 4 -1 49 50 -48
		mu 0 4 9 8 33 32
		f 4 -11 44 51 -50
		mu 0 4 8 6 30 33
		f 4 46 53 -55 -53
		mu 0 4 30 31 35 34
		f 4 48 55 -57 -54
		mu 0 4 31 32 36 35
		f 4 -51 57 58 -56
		mu 0 4 32 33 37 36
		f 4 -52 52 59 -58
		mu 0 4 33 30 34 37
		f 4 60 65 -62 -65
		mu 0 4 38 39 40 41
		f 4 61 67 -63 -67
		mu 0 4 41 40 42 43
		f 4 62 69 -64 -69
		mu 0 4 43 42 44 45
		f 4 63 71 -61 -71
		mu 0 4 45 44 46 47
		f 4 -72 -70 -68 -66
		mu 0 4 39 48 49 40
		f 4 70 64 66 68
		mu 0 4 50 38 41 51
		f 4 72 77 -74 -77
		mu 0 4 52 53 54 55
		f 4 73 79 -75 -79
		mu 0 4 55 54 56 57
		f 4 74 81 -76 -81
		mu 0 4 57 56 58 59
		f 4 75 83 -73 -83
		mu 0 4 59 58 60 61
		f 4 -84 -82 -80 -78
		mu 0 4 53 62 63 54
		f 4 82 76 78 80
		mu 0 4 64 52 55 65
		f 4 84 89 -86 -89
		mu 0 4 66 67 68 69
		f 4 85 91 -87 -91
		mu 0 4 69 68 70 71
		f 4 86 93 -88 -93
		mu 0 4 71 70 72 73
		f 4 87 95 -85 -95
		mu 0 4 73 72 74 75
		f 4 -96 -94 -92 -90
		mu 0 4 67 76 77 68
		f 4 94 88 90 92
		mu 0 4 78 66 69 79
		f 4 96 101 -98 -101
		mu 0 4 80 81 82 83
		f 4 97 103 -99 -103
		mu 0 4 83 82 84 85
		f 4 98 105 -100 -105
		mu 0 4 85 84 86 87
		f 4 99 107 -97 -107
		mu 0 4 87 86 88 89
		f 4 -108 -106 -104 -102
		mu 0 4 81 90 91 82
		f 4 106 100 102 104
		mu 0 4 92 80 83 93
		f 4 108 113 -110 -113
		mu 0 4 94 95 96 97
		f 4 109 115 -111 -115
		mu 0 4 97 96 98 99
		f 4 110 117 -112 -117
		mu 0 4 99 98 100 101
		f 4 111 119 -109 -119
		mu 0 4 101 100 102 103
		f 4 -120 -118 -116 -114
		mu 0 4 95 104 105 96
		f 4 118 112 114 116
		mu 0 4 106 94 97 107;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 1.1700950742240506 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.5235247802734375 2.5235247802734375 2.5235247802734375 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 1.1700950742240506 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.5235247802734375 2.5235247802734375 2.5235247802734375 ;
	setAttr ".p" 8;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 1.1700950742240506 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.5235247802734375 2.5235247802734375 2.5235247802734375 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 1.1700950742240506 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 1.2636807250976563 0 ;
	setAttr ".ps" -type "double2" 1.5302651977539063 2.5235247802734375 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "test_wood";
createNode checker -n "checker2";
createNode place2dTexture -n "place2dTexture2";
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
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
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
connectAttr "polyAutoProj3.out" "BookcaseShape.i";
connectAttr "polyAutoProj2.out" "polyAutoProj3.ip";
connectAttr "BookcaseShape.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj1.out" "polyAutoProj2.ip";
connectAttr "BookcaseShape.wm" "polyAutoProj2.mp";
connectAttr "polyPlanarProj1.out" "polyAutoProj1.ip";
connectAttr "BookcaseShape.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "BookcaseShape.wm" "polyPlanarProj1.mp";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "test_wood.msg" "materialInfo1.m";
connectAttr "checker2.msg" "materialInfo1.t" -na;
connectAttr "test_wood.oc" "lambert2SG.ss";
connectAttr "BookcaseShape.iog" "lambert2SG.dsm" -na;
connectAttr "checker2.oc" "test_wood.c";
connectAttr "place2dTexture2.o" "checker2.uv";
connectAttr "place2dTexture2.ofs" "checker2.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "test_wood.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "checker2.msg" ":defaultTextureList1.tx" -na;
// End of Bookcase.ma
