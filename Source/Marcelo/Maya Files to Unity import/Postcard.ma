//Maya ASCII 2015 scene
//Name: Postcard.ma
//Last modified: Tue, Nov 04, 2014 12:16:46 PM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "education";
createNode transform -n "Postcard";
	setAttr ".t" -type "double3" 1.3469602050978731 1.301499183741134 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.26288603557089496 0.22950602361476222 0.40286727876440381 ;
createNode mesh -n "PostcardShape" -p "Postcard";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:3]" "f[8:15]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[4:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.73616048693656921 0.74524986743927002 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.038849175 0.97651684
		 0.038647205 0.5091579 0.038445175 0.083069399 0.50379074 0.97812521 0.50358874 0.51076621
		 0.50338674 0.084677696 0.96873224 0.97973353 0.9685303 0.51237452 0.96832818 0.086286128
		 0.038849175 0.97651684 0.038647205 0.5091579 0.50358874 0.51076621 0.50379074 0.97812521
		 0.038445175 0.083069399 0.50338674 0.084677696 0.9685303 0.51237452 0.96873224 0.97973353
		 0.96832818 0.086286128 0.038849175 0.97651684 0.038647205 0.5091579 0.50379074 0.97812521
		 0.038445175 0.083069399 0.50338674 0.084677696 0.9685303 0.51237452 0.96873224 0.97973353
		 0.96832818 0.086286128;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -0.5000003 0 0.5 0 0 0.5 0.5 0 0.5 -0.5000003 0 0
		 0 0 0 0.5 0 0 -0.5000003 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5000003 -0.0044393158 0.5
		 0 -0.0044393158 0.5 0 -0.0044394685 0 -0.5000003 -0.0044393158 0 0.5 -0.0044393158 0.5
		 0.5 -0.0044393158 0 0 -0.0044393158 -0.5 -0.5000003 -0.0044393158 -0.5 0.5 -0.0044393158 -0.5;
	setAttr -s 32 ".ed[0:31]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 0 7 8 0 0 9 0 1 10 1 9 10 0 10 11 1 3 12 1 12 11 1 9 12 0 2 13 0
		 10 13 0 5 14 1 13 14 0 11 14 1 7 15 1 11 15 1 6 16 0 16 15 0 12 16 0 8 17 0 14 17 0
		 15 17 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 18 17 -16 -15
		mu 0 4 18 20 4 19
		f 4 15 23 -23 -21
		mu 0 4 19 4 22 21
		f 4 28 27 -26 -18
		mu 0 4 20 24 23 4
		f 4 25 31 -31 -24
		mu 0 4 4 23 25 22
		f 4 0 3 -6 -2
		mu 0 4 9 10 11 12
		f 4 2 4 -8 -4
		mu 0 4 10 13 14 11
		f 4 5 8 -11 -7
		mu 0 4 12 11 15 16
		f 4 7 9 -12 -9
		mu 0 4 11 14 17 15
		f 4 12 14 -14 -1
		mu 0 4 0 18 19 1
		f 4 16 -19 -13 1
		mu 0 4 3 20 18 0
		f 4 13 20 -20 -3
		mu 0 4 1 19 21 2
		f 4 19 22 -22 -5
		mu 0 4 2 21 22 5
		f 4 24 -28 -27 10
		mu 0 4 7 23 24 6
		f 4 26 -29 -17 6
		mu 0 4 6 24 20 3
		f 4 21 30 -30 -10
		mu 0 4 5 22 25 8
		f 4 29 -32 -25 11
		mu 0 4 8 25 23 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
createNode lambert -n "postcard_Front_mat";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Reference_Postcard back.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "postcard_Back_mat";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Reference_Postcard front.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
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
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "PostcardShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "PostcardShape.iog.og[0].gco";
connectAttr "groupId4.id" "PostcardShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "PostcardShape.iog.og[1].gco";
connectAttr "groupId2.id" "PostcardShape.ciog.cog[0].cgid";
connectAttr "postcard_Front_mat.oc" "lambert2SG.ss";
connectAttr "Postcard1Shape.iog" "lambert2SG.dsm" -na;
connectAttr "PostcardShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "PostcardShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "postcard_Front_mat.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file1.oc" "postcard_Front_mat.c";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "postcard_Back_mat.oc" "lambert3SG.ss";
connectAttr "groupId4.msg" "lambert3SG.gn" -na;
connectAttr "PostcardShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "postcard_Back_mat.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "file2.oc" "postcard_Back_mat.c";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "postcard_Front_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "postcard_Back_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Postcard back.jpg\" 1424050 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Postcard back.jpg\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Postcard front.jpg\" 1860827743 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Postcard front.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Postcard.ma
