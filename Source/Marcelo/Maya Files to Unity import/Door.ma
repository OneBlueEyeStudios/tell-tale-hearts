//Maya ASCII 2015 scene
//Name: Door.ma
//Last modified: Sun, Oct 26, 2014 03:44:10 PM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "education";
createNode transform -n "Door_Group";
createNode transform -n "doorKnob" -p "Door_Group";
	setAttr ".t" -type "double3" 0.70846863915319491 -0.01831742017636577 0.080799552202734048 ;
	setAttr ".s" -type "double3" 0.054476190848630021 0.08722665341377632 0.11227693740763317 ;
createNode mesh -n "doorKnobShape" -p "doorKnob";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Door" -p "Door_Group";
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.10246624667162696 3.0070695562191818 1.9813763066406529 ;
createNode mesh -n "DoorShape" -p "Door";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 0.054476190848630021 0 0 0 0 0.08722665341377632 0 0
		 0 0 0.11227693740763317 0 70.846863915319489 -1.8317420176365768 8.0799552202734048 1;
	setAttr ".ws" yes;
	setAttr ".rs" 161670549;
	setAttr ".lt" -type "double3" 0 0 0.34777 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.68123054372887992 -0.06193074355582117 0.19434065878041737 ;
	setAttr ".cbx" -type "double3" 0.68123054372887992 0.025295906530522386 0.26277823712619158 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 -66.222694 ;
	setAttr ".tk[13]" -type "float3" 0 0 -66.222694 ;
	setAttr ".tk[14]" -type "float3" 0 0 -66.222694 ;
	setAttr ".tk[15]" -type "float3" 0 0 -66.222694 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.054476190848630021 0 0 0 0 0.08722665341377632 0 0
		 0 0 0.11227693740763317 0 70.846863915319489 -1.8317420176365768 8.0799552202734048 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.70846862 -0.018317418 0.19434066 ;
	setAttr ".rs" 15692719;
	setAttr ".lt" -type "double3" 0 0 0.14279033764719987 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.68123054372887992 -0.06193074355582117 0.19434065878041737 ;
	setAttr ".cbx" -type "double3" 0.7357067345775099 0.025295906530522386 0.19434065878041737 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.054476190848630021 0 0 0 0 0.08722665341377632 0 0
		 0 0 0.11227693740763317 0 70.846863915319489 -1.8317420176365768 8.0799552202734048 1;
	setAttr ".ws" yes;
	setAttr ".rs" 36605255;
	setAttr ".lt" -type "double3" 0 0 0.057402630341633419 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.68123054372887992 -0.061930746883253923 0.13693802090655063 ;
	setAttr ".cbx" -type "double3" 0.7357067345775099 0.025295906530522386 0.13693802090655063 ;
createNode polyCube -n "polyCube3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
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
	setAttr -s 2 ".dsm";
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
connectAttr "polyExtrudeFace3.out" "doorKnobShape.i";
connectAttr "polyCube2.out" "DoorShape.i";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "doorKnobShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "doorKnobShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyCube3.out" "polyExtrudeFace1.ip";
connectAttr "doorKnobShape.wm" "polyExtrudeFace1.mp";
connectAttr "DoorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "doorKnobShape.iog" ":initialShadingGroup.dsm" -na;
// End of Door.ma