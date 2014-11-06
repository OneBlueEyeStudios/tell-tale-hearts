//Maya ASCII 2015 scene
//Name: Opera_Ticket.ma
//Last modified: Tue, Nov 04, 2014 12:09:53 PM
//Codeset: UTF-8
requires maya "2015";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "education";
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 1.3127704781723919 1.301499183741134 0 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:23]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.4999999888241291 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.032653064 0.10884354
		 0.5 0.10884354 0.96734691 0.10884354 0.032653064 0.5 0.5 0.5 0.96734691 0.5 0.032653064
		 0.89115644 0.5 0.89115644 0.96734691 0.89115644 0.032653064 0.10884354 0.5 0.10884354
		 0.5 0.5 0.032653064 0.5 0.96734691 0.10884354 0.96734691 0.5 0.5 0.89115644 0.032653064
		 0.89115644 0.96734691 0.89115644 0.032653064 0.10884354 0.5 0.10884354 0.032653064
		 0.5 0.96734691 0.10884354 0.96734691 0.5 0.5 0.89115644 0.032653064 0.89115644 0.96734691
		 0.89115644 0.032653064 0.10884354 0.5 0.10884354 0.032653064 0.5 0.96734691 0.10884354
		 0.96734691 0.5 0.5 0.89115644 0.032653064 0.89115644 0.96734691 0.89115644;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.15181158 0.15181158 0 -1.8626451e-11 
		-8.2718059e-27 0 -0.15181158 -0.15181158 0 0.15181158 0.15181158 0 -1.8626451e-11 
		-8.2718059e-27 0 -0.15181158 -0.15181158 0 0.15181158 0.15181158 0 -1.8626451e-11 
		-8.2718059e-27 0 -0.15181158 -0.15181158 0 0.15181158 0.15181158 0 0 0 0 0.15181158 
		0.15181158 0 -0.15181158 -0.15181158 0 -0.15181158 -0.15181158 0 0 0 0 0.15181158 
		0.15181158 0 -0.15181158 -0.15181158 0 0.14872797 0.15489519 0 -0.0030836109 0.0030836109 
		0 -0.0030837005 0.0030837005 0 0.14872797 0.15489519 0 -0.15489519 -0.14872797 0 
		-0.15489519 -0.14872797 0 -0.0030836109 0.0030836109 0 0.14872797 0.15489519 0 -0.15489519 
		-0.14872797 0;
	setAttr -s 26 ".vt[0:25]"  -0.15181158 -1.8626451e-11 0.082354948 -1.323489e-25 -1.8626451e-11 0.082354948
		 0.15181158 -1.8626451e-11 0.082354948 -0.15181158 -1.8626451e-11 0 -1.323489e-25 -1.8626451e-11 0
		 0.15181158 -1.8626451e-11 0 -0.15181158 -1.8626451e-11 -0.082354948 -1.323489e-25 -1.8626451e-11 -0.082354948
		 0.15181158 -1.8626451e-11 -0.082354948 -0.15181158 0 0.082354948 0 0 0.082354948
		 -0.15181158 0 0 0.15181158 0 0.082354948 0.15181158 0 0 0 0 -0.082354948 -0.15181158 0 -0.082354948
		 0.15181158 0 -0.082354948 -0.15181158 -0.0030836109 0.082354948 0 -0.0030836109 0.082354948
		 0 -0.0030837005 0 -0.15181158 -0.0030836109 0 0.15181158 -0.0030836109 0.082354948
		 0.15181158 -0.0030836109 0 0 -0.0030836109 -0.082354948 -0.15181158 -0.0030836109 -0.082354948
		 0.15181158 -0.0030836109 -0.082354948;
	setAttr -s 48 ".ed[0:47]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 0 7 8 0 0 9 0 1 10 0 9 10 0 3 11 0 9 11 0 2 12 0 10 12 0 5 13 0
		 12 13 0 7 14 0 6 15 0 15 14 0 11 15 0 8 16 0 13 16 0 14 16 0 9 17 0 10 18 1 17 18 0
		 18 19 1 11 20 1 20 19 1 17 20 0 12 21 0 18 21 0 13 22 1 21 22 0 19 22 1 14 23 1 19 23 1
		 15 24 0 24 23 0 20 24 0 16 25 0 22 25 0 23 25 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 34 33 -32 -31
		mu 0 4 26 28 4 27
		f 4 31 39 -39 -37
		mu 0 4 27 4 30 29
		f 4 44 43 -42 -34
		mu 0 4 28 32 31 4
		f 4 41 47 -47 -40
		mu 0 4 4 31 33 30
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
		f 4 15 -17 -13 1
		mu 0 4 3 20 18 0
		f 4 13 18 -18 -3
		mu 0 4 1 19 21 2
		f 4 17 20 -20 -5
		mu 0 4 2 21 22 5
		f 4 21 -24 -23 10
		mu 0 4 7 23 24 6
		f 4 22 -25 -16 6
		mu 0 4 6 24 20 3
		f 4 19 26 -26 -10
		mu 0 4 5 22 25 8
		f 4 25 -28 -22 11
		mu 0 4 8 25 23 7
		f 4 28 30 -30 -15
		mu 0 4 18 26 27 19
		f 4 32 -35 -29 16
		mu 0 4 20 28 26 18
		f 4 29 36 -36 -19
		mu 0 4 19 27 29 21
		f 4 35 38 -38 -21
		mu 0 4 21 29 30 22
		f 4 40 -44 -43 23
		mu 0 4 23 31 32 24
		f 4 42 -45 -33 24
		mu 0 4 24 32 28 20
		f 4 37 46 -46 -27
		mu 0 4 22 30 33 25
		f 4 45 -48 -41 27
		mu 0 4 25 33 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo1";
createNode lambert -n "ticket_mat";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Reference_Opera Ticket Temp.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
createNode lambert -n "Ticket_Back_mat";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game//sourceimages/Reference_Opera Ticket Temp.jpg";
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
connectAttr "groupId7.id" "pPlaneShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPlaneShape1.iog.og[0].gco";
connectAttr "groupId8.id" "pPlaneShape1.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "pPlaneShape1.iog.og[1].gco";
connectAttr "groupId2.id" "pPlaneShape1.ciog.cog[0].cgid";
connectAttr "ticket_mat.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape2.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "ticket_mat.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file1.oc" "ticket_mat.c";
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
connectAttr "Ticket_Back_mat.oc" "lambert3SG.ss";
connectAttr "groupId5.msg" "lambert3SG.gn" -na;
connectAttr "groupId8.msg" "lambert3SG.gn" -na;
connectAttr "pPlaneShape2.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape1.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Ticket_Back_mat.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "file2.oc" "Ticket_Back_mat.c";
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
connectAttr "ticket_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "Ticket_Back_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Opera Ticket Temp.jpg\" 3497028787 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Opera Ticket Temp.jpg\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Opera Ticket Temp.jpg\" 3497028787 \"/Users/marcelo_martinez/Documents/maya/projects/Tell Tale Heart Game/sourceimages/Reference_Opera Ticket Temp.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Opera_Ticket.ma
