//Maya ASCII 2015 scene
//Name: Puppet_Test_v06_AnimationTests (std gridsize).ma
//Last modified: Fri, Oct 24, 2014 11:13:27 AM
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
	setAttr ".t" -type "double3" -44.36334175891281 147.39317651309977 306.71194773508614 ;
	setAttr ".r" -type "double3" -12.938352729598183 -8.1999999999912987 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 319.28482014853034;
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
	setAttr ".ow" 77.242727864455276;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.2590162468528092 81.87813457078046 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 368.30681645536288;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 30.742207434752149 -6.0296335712175253 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 149.76516606939256;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Puppet_Isolated:MAIN_group";
createNode transform -n "Puppet_Isolated:Ctrl_MAIN" -p "Puppet_Isolated:MAIN_group";
	setAttr ".t" -type "double3" 0 0 2.6413609536048099 ;
	setAttr ".s" -type "double3" 1.7 1.7 1.7 ;
	setAttr ".rp" -type "double3" 0 0 3.8542882654175017 ;
	setAttr ".sp" -type "double3" 0 0 3.8542882654175017 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_MAINShape" -p "Puppet_Isolated:Ctrl_MAIN";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.906145378560996 9.7397050123135787e-16 -12.05185711314347
		-2.5663747620129855e-15 1.3774022921927085e-15 -18.640398254021569
		-15.90614537856098 9.7397050123135846e-16 -12.051857113143479
		-22.494686519439071 3.9913672439290139e-31 3.854288265417495
		-15.906145378560984 -9.7397050123135807e-16 19.430392402011165
		-6.7780880572712647e-15 -1.3774022921927087e-15 33.691162381214582
		15.906145378560971 -9.7397050123135866e-16 19.430392402011172
		22.494686519439071 -7.3980545808282889e-31 3.8542882654175137
		15.906145378560996 9.7397050123135787e-16 -12.05185711314347
		-2.5663747620129855e-15 1.3774022921927085e-15 -18.640398254021569
		-15.90614537856098 9.7397050123135846e-16 -12.051857113143479
		;
createNode transform -n "Puppet_Isolated:Controllers" -p "Puppet_Isolated:Ctrl_MAIN";
createNode transform -n "Puppet_Isolated:Ctrl_PoleV_KneeRt" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -59.270715872800309 29.294699999999995 0.11810154757883851 ;
	setAttr ".sp" -type "double3" -59.270715872800309 29.294699999999995 0.11810154757883851 ;
createNode locator -n "Puppet_Isolated:Ctrl_PoleV_KneeRtShape" -p "Puppet_Isolated:Ctrl_PoleV_KneeRt";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -59.270715872800309 29.294699999999995 0.11810154757883851 ;
createNode transform -n "Puppet_Isolated:Ctrl_PoleV_KneeLt" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.38149617578996953 2.5579538487363607e-13 0.060423058291746656 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 53.650339851956815 29.294691329646437 -0.012778393159081247 ;
	setAttr ".sp" -type "double3" 53.650339851956815 29.294691329646437 -0.012778393159081247 ;
createNode locator -n "Puppet_Isolated:Ctrl_PoleV_KneeLtShape" -p "Puppet_Isolated:Ctrl_PoleV_KneeLt";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 53.650339851956815 29.294691329646437 -0.012778393159081247 ;
createNode transform -n "Puppet_Isolated:Ctrl_Rtfoot1" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.2670809029621539 6.0226056123571823 -0.013420741032531325 ;
	setAttr ".sp" -type "double3" -7.2670809029621539 6.0226056123571823 -0.013420741032531325 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_Rtfoot1Shape" -p "Puppet_Isolated:Ctrl_Rtfoot1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.5565194714406951 4.5863066071751987e-15 4.2057972926447258
		-3.8693304758692277 4.6465392688340266e-15 0.32420691317678951
		-6.5565194714406934 4.5863066071751987e-15 -3.5573834662911397
		-13.043967589209052 4.4408920985006262e-15 -5.1651908450436848
		-19.531415706977413 4.2954775898260536e-15 -3.5573834662911379
		-22.21860470254888 4.2352449281672257e-15 0.32420691317679307
		-19.531415706977413 4.2954775898260536e-15 4.2057972926447231
		-13.043967589209057 4.4408920985006262e-15 5.81360467139727
		-6.5565194714406951 4.5863066071751987e-15 4.2057972926447258
		-3.8693304758692277 4.6465392688340266e-15 0.32420691317678951
		-6.5565194714406934 4.5863066071751987e-15 -3.5573834662911397
		;
createNode ikHandle -n "Puppet_Isolated:AnkleIkRt" -p "Puppet_Isolated:Ctrl_Rtfoot1";
	setAttr ".rp" -type "double3" -7.2670803439946852 6.0226099999999754 0.49101016192962188 ;
	setAttr ".sp" -type "double3" -7.2670803439946852 6.0226099999999754 0.49101016192962188 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1" 
		-p "Puppet_Isolated:AnkleIkRt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_PoleV_KneeRtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -7.2670803439946852 6.0226099999999754 0.49101016192962188 ;
	setAttr ".sp" -type "double3" -7.2670803439946852 6.0226099999999754 0.49101016192962188 ;
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.7281300000000019 -22.350400000000011 15.104790813594398 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Puppet_Isolated:ikHandle4" -p "Puppet_Isolated:AnkleIkRt";
	setAttr ".rp" -type "double3" -14.917667872713697 1.3026066555828235 0.35101746544912871 ;
	setAttr ".sp" -type "double3" -14.917667872713697 1.3026066555828235 0.35101746544912871 ;
	setAttr ".pv" -type "double3" 1.99196663361153 -0.077646108950958165 -0.16136918027654751 ;
	setAttr ".roc" yes;
createNode ikHandle -n "Puppet_Isolated:ikHandle5" -p "Puppet_Isolated:ikHandle4";
	setAttr ".rp" -type "double3" -19.899547387697883 1.3004184818292268 0.35122836013871517 ;
	setAttr ".sp" -type "double3" -19.899547387697883 1.3004184818292268 0.35122836013871517 ;
	setAttr ".pv" -type "double3" -1.9995245793448524 0.036368812180848961 0.024057557987983928 ;
	setAttr ".roc" yes;
createNode transform -n "Puppet_Isolated:Front_LegRt2" -p "Puppet_Isolated:Ctrl_Rtfoot1";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 12.419665316369212 3.1811310536349406 1.0846837446788912e-30 ;
	setAttr ".rpt" -type "double3" -24.839330632738424 0 -1.520970337617298e-15 ;
	setAttr ".sp" -type "double3" 12.419665316369212 3.1811310536349406 -1.0846837446788912e-30 ;
	setAttr ".spt" -type "double3" 0 0 2.1693674893577825e-30 ;
createNode mesh -n "Puppet_Isolated:Front_LegRtShape2" -p "Puppet_Isolated:Front_LegRt2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Puppet_Isolated:polySurfaceShape33" -p "Puppet_Isolated:Front_LegRt2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  4.98239422 0.78040129 0 17.95124817 0.77068573 0
		 5.032208443 5.5915761 0 18.0010643005 5.58186102 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Puppet_Isolated:Ctrl_Ltfoot" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.7626453508227788 6.0226056123571823 -0.013420741032531325 ;
	setAttr ".sp" -type "double3" 6.7626453508227788 6.0226056123571823 -0.013420741032531325 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_LtfootShape" -p "Puppet_Isolated:Ctrl_Ltfoot";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.0520839193013218 4.5863066071751987e-15 -4.2326387747097884
		3.3648949237298531 4.6465392688340266e-15 -0.35104839524185394
		6.0520839193013165 4.5863066071751987e-15 3.530541984226077
		12.539532037069673 4.4408920985006262e-15 5.1383493629786248
		19.026980154838036 4.2954775898260536e-15 3.530541984226081
		21.714169150409504 4.2352449281672257e-15 -0.35104839524184861
		19.026980154838039 4.2954775898260536e-15 -4.2326387747097796
		12.539532037069684 4.4408920985006262e-15 -5.84044615346233
		6.0520839193013218 4.5863066071751987e-15 -4.2326387747097884
		3.3648949237298531 4.6465392688340266e-15 -0.35104839524185394
		6.0520839193013165 4.5863066071751987e-15 3.530541984226077
		;
createNode ikHandle -n "Puppet_Isolated:AnkleIKleft" -p "Puppet_Isolated:Ctrl_Ltfoot";
	setAttr ".rp" -type "double3" 6.7626462555970495 6.0226056116221685 -0.0134207315263426 ;
	setAttr ".sp" -type "double3" 6.7626462555970495 6.0226056116221685 -0.0134207315263426 ;
	setAttr ".roc" yes;
createNode ikHandle -n "Puppet_Isolated:ToeIKLt" -p "Puppet_Isolated:AnkleIKleft";
	setAttr ".rp" -type "double3" 14.846695298757599 1.324017570984374 -0.017777061740067858 ;
	setAttr ".sp" -type "double3" 14.846695298757599 1.324017570984374 -0.017777061740067858 ;
	setAttr ".pv" -type "double3" 0.12820503815766732 -1.993844430536118 -0.090265469649794858 ;
	setAttr ".roc" yes;
createNode ikHandle -n "Puppet_Isolated:toeEndIKLt" -p "Puppet_Isolated:ToeIKLt";
	setAttr ".rp" -type "double3" 19.622233400401949 1.3377785762012864 0.0096258103853667787 ;
	setAttr ".sp" -type "double3" 19.622233400401949 1.3377785762012864 0.0096258103853667787 ;
	setAttr ".pv" -type "double3" 1.9964264192465446 0.11950544693263586 -2.6239289308692404e-05 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1" 
		-p "Puppet_Isolated:AnkleIKleft";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_PoleV_KneeLtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.7626462555970495 6.0226056116221685 -0.0134207315263426 ;
	setAttr ".sp" -type "double3" 6.7626462555970495 6.0226056116221685 -0.0134207315263426 ;
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7281269955256944 -22.350418678565521 15.104790813594398 ;
	setAttr -k on ".w0";
createNode transform -n "Puppet_Isolated:Front_LegLt2" -p "Puppet_Isolated:Ctrl_Ltfoot";
	setAttr ".rp" -type "double3" 12.419665316369212 3.1811310536349406 -1.0846837446788912e-30 ;
	setAttr ".sp" -type "double3" 12.419665316369212 3.1811310536349406 -1.0846837446788912e-30 ;
createNode mesh -n "Puppet_Isolated:Front_LegLtShape2" -p "Puppet_Isolated:Front_LegLt2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  4.98239422 0.78040129 0 17.95124817 0.77068573 0
		 5.032208443 5.5915761 0 18.0010643005 5.58186102 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Puppet_Isolated:Ctrl_PoleV_ElbLt" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 23.178014506489852 59.591513316242015 0.1624192162878213 ;
	setAttr ".sp" -type "double3" 23.178014506489852 59.591513316242015 0.1624192162878213 ;
createNode locator -n "Puppet_Isolated:Ctrl_PoleV_ElbLtShape" -p "Puppet_Isolated:Ctrl_PoleV_ElbLt";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 23.178014506489852 59.591513316242015 0.1624192162878213 ;
createNode transform -n "Puppet_Isolated:Ctrl_torso" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 52.851672044882612 0 ;
	setAttr ".sp" -type "double3" 0 52.851672044882612 0 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_torsoShape" -p "Puppet_Isolated:Ctrl_torso";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.1766499062924698 52.851672044882612 -7.7978088277182493
		-1.4806052729205233e-15 52.851672044882612 -11.027767000951801
		-9.1766499062924609 52.851672044882612 -7.7978088277182538
		-12.977742754628592 52.851672044882612 -3.1955709839287957e-15
		-9.1766499062924627 52.851672044882612 7.7978088277182511
		-3.9104471671330602e-15 52.851672044882612 11.027767000951803
		9.1766499062924556 52.851672044882612 7.7978088277182547
		12.977742754628592 52.851672044882612 5.9230351684563848e-15
		9.1766499062924698 52.851672044882612 -7.7978088277182493
		-1.4806052729205233e-15 52.851672044882612 -11.027767000951801
		-9.1766499062924609 52.851672044882612 -7.7978088277182538
		;
createNode joint -n "Puppet_Isolated:Pelvis" -p "Puppet_Isolated:Ctrl_torso";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 52.851672044882612 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 0 52.851672044882612 0 1;
	setAttr ".radi" 0.88038202811885835;
createNode joint -n "Puppet_Isolated:Spine1" -p "Puppet_Isolated:Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 8.3540525436312478 1.8549722965735533e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.36262667396166159 ;
	setAttr ".bps" -type "matrix" 0.0063289871630244667 0.99997997176018016 0 0 -0.99997997176018016 0.0063289871630244667 0 0
		 0 0 1 0 -3.9443045261050599e-31 61.20572458851386 0 1;
	setAttr ".radi" 1.07464413405764;
createNode joint -n "Puppet_Isolated:joint10" -p "Puppet_Isolated:Spine1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.4588021396709792e-05 -1.5562038857552807e-07 0 ;
	setAttr ".bps" -type "matrix" 0.0063289871630244667 0.99997997176018016 0 0 -0.99997997176018016 0.0063289871630244667 0 0
		 0 0 1 0 -1.0882361668968425e-17 61.2057 0 1;
	setAttr ".radi" 1.07464413405764;
createNode joint -n "Puppet_Isolated:joint11" -p "Puppet_Isolated:joint10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".bps" -type "matrix" 0.0063289871630244667 0.99997997176018016 0 0 -0.99997997176018016 0.0063289871630244667 0 0
		 0 0 1 0 -1.0882361668968425e-17 61.2057 0 1;
	setAttr ".radi" 1.07464413405764;
createNode joint -n "Puppet_Isolated:Spine2" -p "Puppet_Isolated:joint11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.1901516185630001 0.068327520100092631 0 ;
	setAttr ".bps" -type "matrix" 0.0063289871630244667 0.99997997176018016 0 0 -0.99997997176018016 0.0063289871630244667 0 0
		 0 0 1 0 -0.010161800000000023 70.39609999999999 0 1;
	setAttr ".radi" 1.07464413405764;
createNode joint -n "Puppet_Isolated:Spine3" -p "Puppet_Isolated:Spine2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 7.2960635620938312 0.05424537055090331 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.36262667396166159 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 -0.018229391486510402 77.692360753036922 0 1;
	setAttr ".radi" 0.86848919786060508;
createNode joint -n "Puppet_Isolated:Neck" -p "Puppet_Isolated:Spine3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.8212203833916902 -0.036458782973018855 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 -2.9621223746459162e-23 2.6025622024997994 ;
	setAttr ".bps" -type "matrix" -0.045407660918649652 0.99896854021029979 0 0 0.9989685402102999 0.045407660918649652 1.4901161316312335e-08 0
		 1.4885791367594723e-08 6.7662688034520959e-10 -1 0 0.018229391486509306 81.513581136428613 0 1;
	setAttr ".radi" 0.62288414060828323;
createNode joint -n "Puppet_Isolated:Head" -p "Puppet_Isolated:Neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 3.3696274757842843 0.1349166714776584 2.0104150859483929e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914511852 -4.3479317103476271e-08 2.9191102497729076 ;
	setAttr ".bps" -type "matrix" 0.0055247775596704643 0.99998473829999845 7.588572399743721e-10 0
		 -0.99998473829999801 0.0055247775596704886 -2.9802322488527769e-08 0 -2.9806060171873005e-08 -5.9419445601215069e-10 0.99999999999999933 0
		 2.4286128663675299e-16 84.885859227436086 1.1042861177582919e-22 1;
	setAttr ".radi" 1.1658209052741393;
createNode joint -n "Puppet_Isolated:HeadEnd" -p "Puppet_Isolated:Head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 15.126329797169118 0.083570882857318785 -8.9881184792570951e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.683451952726884 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 -8.6736173798840355e-17 2.9806060171872999e-08 0
		 6.4184768611141862e-17 1 5.9419445601215276e-10 0 -2.9806060171873005e-08 -5.9419445601215069e-10 0.99999999999999933 0
		 -5.7170576214811395e-16 100.01241988163596 9.057627707455653e-23 1;
	setAttr ".radi" 1.1658209052741393;
createNode orientConstraint -n "Puppet_Isolated:Head_orientConstraint1" -p "Puppet_Isolated:Head";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_HeadW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.4044834353064586e-08 8.5486843168584915e-07 -89.68345195272687 ;
	setAttr ".o" -type "double3" 0 0 89.68345195272687 ;
	setAttr -k on ".w0";
createNode transform -n "Puppet_Isolated:Front_Head" -p "Puppet_Isolated:Head";
	setAttr ".rp" -type "double3" 6.0711995880438963 0.033542501694142746 -1.4598337917233064 ;
	setAttr ".sp" -type "double3" 6.0711995880438963 0.033542501694142746 -1.4598337917233064 ;
createNode mesh -n "Puppet_Isolated:Front_HeadShape" -p "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
createNode mesh -n "Front_HeadShapeOrig" -p "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
createNode joint -n "Puppet_Isolated:clavLt" -p "Puppet_Isolated:Spine3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.5186903264559675 -3.5522470021243091 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -88.363422958383737 ;
	setAttr ".bps" -type "matrix" 0.99959208646069531 0.028559773898868775 0 0 -0.028559773898868775 0.99959208646069531 0 0
		 0 0 1 0 3.5340176106378003 81.21105107949289 0 1;
	setAttr ".radi" 0.68837797943608736;
createNode joint -n "Puppet_Isolated:shoulderLt" -p "Puppet_Isolated:clavLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 4.6419742690976893 2.4286128663675299e-14 0 ;
	setAttr ".r" -type "double3" -29.855369414829795 -1.3300107883185588 0.1604545689374397 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -13.627412020655576 ;
	setAttr ".bps" -type "matrix" 0.98175630463423502 -0.18743876728985212 -0.031957265649498398 0
		 0.14550542131193081 0.63239865260360018 0.76085485905919592 0 -0.12240396513091172 -0.75162401019526537 0.6481347210404782 0
		 8.1740983555820197 81.343624815062711 0 1;
	setAttr ".radi" 1.2404306361551909;
createNode joint -n "Puppet_Isolated:elbowLt" -p "Puppet_Isolated:shoulderLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 15.314992299000362 -1.6993347137327881e-14 -0.29576995823047092 ;
	setAttr ".r" -type "double3" 1.9040840556068882e-14 2.9102292322073327e-13 -5.0983370367535811e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.6837430443017061 ;
	setAttr ".bps" -type "matrix" 0.99134018680595215 -0.12388613862959172 0.043552941106088386 0
		 0.047559471651516083 0.6478530481161896 0.76027924126783253 0 -0.12240396513091172 -0.75162401019526537 0.6481347210404782 0
		 23.245892016204394 78.695309339584966 -0.68112405668904985 1;
	setAttr ".radi" 1.103682707900119;
createNode joint -n "Puppet_Isolated:WristLt" -p "Puppet_Isolated:elbowLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 12.671199019402303 -5.0210127993480627e-15 0.47323193316875495 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.3070919347376293 ;
	setAttr ".bps" -type "matrix" 0.99056472374754856 -0.051964888262275966 0.12681158643764781 0
		 -0.061634384779718526 0.65754163190316517 0.75089293839198445 0 -0.12240396513091172 -0.75162401019526537 0.6481347210404782 0
		 35.749435354107646 76.769830937903379 0.17746197493827698 1;
	setAttr ".radi" 1.103682707900119;
createNode joint -n "Puppet_Isolated:HandLt" -p "Puppet_Isolated:WristLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.8610062943161854 -0.09044344277178884 -0.034222817685771928 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr ".bps" -type "matrix" 0.99056472374754856 -0.051964888262275966 0.12681158643764781 0
		 -0.061634384779718526 0.65754163190316517 0.75089293839198445 0 -0.12240396513091172 -0.75162401019526537 0.6481347210404782 0
		 39.583775421959793 76.535446539753352 0.57698796947107356 1;
	setAttr ".radi" 0.5;
createNode joint -n "Puppet_Isolated:HandEndLt" -p "Puppet_Isolated:HandLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.9338362796049484 -0.11672125132165617 0.14158584398696841 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr ".bps" -type "matrix" 0.99056472374754856 -0.051964888262275966 0.12681158643764781 0
		 -0.061634384779718526 0.65754163190316517 0.75089293839198445 0 -0.12240396513091172 -0.75162401019526537 0.6481347210404782 0
		 45.451487690835364 76.043926998600853 1.3335886998671138 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Puppet_Isolated:WristLt_orientConstraint1" -p "Puppet_Isolated:WristLt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_LtArmW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -49.228393608677962 7.0308626283511213 -3.5604371144083848 ;
	setAttr ".rsrr" -type "double3" -49.228393608677962 7.0308626283511213 -3.5604371144083848 ;
	setAttr -k on ".w0";
createNode transform -n "Puppet_Isolated:FrontArmLt2" -p "Puppet_Isolated:WristLt";
	setAttr ".t" -type "double3" -33.700008818195009 -65.997443814688708 -40.991552528599328 ;
	setAttr ".r" -type "double3" 29.678608931360056 -4.7442195097087323 -1.062544628979792 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 40.485352041354083 76.860823630594894 -3.8456969129524319e-30 ;
	setAttr ".rpt" -type "double3" -2.0543444528381496 -10.784173613601672 41.274494755829636 ;
	setAttr ".sp" -type "double3" 40.485352041354105 76.860823630594922 -3.8456969129524326e-30 ;
	setAttr ".spt" -type "double3" -2.1316282072802996e-14 -2.8421709430403995e-14 7.0064923216240846e-46 ;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape2" -p "Puppet_Isolated:FrontArmLt2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 -0.25457767 0 0 0.26719564 
		0 0 -0.26719528 0 0 0.25457802 0;
	setAttr -s 4 ".vt[0:3]"  45.25744247 75.50020599 0 45.2376976 78.28887939 0
		 35.56085205 75.43276978 0 35.54110718 78.22144318 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode ikEffector -n "Puppet_Isolated:effector1" -p "Puppet_Isolated:elbowLt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Puppet_Isolated:FrontArmLt1" -p "Puppet_Isolated:elbowLt";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -6.3611093629270335e-15 1.1927080055488192e-15 1.9878466759146985e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -0.015518250178324419 -0.49816040843214182 -0.28903000514586091 ;
	setAttr ".sp" -type "double3" -0.015518250178379489 -0.49816040843217024 -0.28903000514587518 ;
	setAttr ".spt" -type "double3" 3.4694469519536134e-18 0 5.5511151231257821e-17 ;
	setAttr ".mnrl" -type "double3" -45 0 -45 ;
	setAttr ".mrye" yes;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape1" -p "Puppet_Isolated:FrontArmLt1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -22.916819 -76.74308 -0.03229041 
		-23.213009 -76.984772 0.94940323 -22.970129 -78.390556 -0.59800535 -23.390577 -78.733643 
		0.79553205;
	setAttr -s 4 ".vt[0:3]"  35.53505707 76.024856567 2.9802322e-08 35.82282257 77.9682312 2.9802322e-08
		 23.11639214 77.34843445 0 23.52487946 80.10710144 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:FrontArmLt" -p "Puppet_Isolated:shoulderLt";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".r" -type "double3" -9.5416640443905503e-15 -1.391492673140289e-15 -1.5902773407317588e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0.11607391134516118 -0.10381088711088182 0.16794281820558862 ;
	setAttr ".sp" -type "double3" 0.11607391134516121 -0.10381088711088182 0.16794281820558865 ;
	setAttr ".spt" -type "double3" -2.775557561562891e-17 0 -2.775557561562891e-17 ;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape" -p "Puppet_Isolated:FrontArmLt";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.6988339 -78.372932 -0.81297821 
		-8.1866312 -78.718231 0.58219218 -8.3413925 -82.031075 -0.83353382 -9.7019072 -82.237717 
		0.66516572;
	setAttr -s 4 ".vt[0:3]"  23.31685638 77.29283905 0 23.7253418 80.051506042 0
		 6.06452179 80.080635071 0 6.47300911 82.83929443 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode joint -n "Puppet_Isolated:clavRt" -p "Puppet_Isolated:Spine3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.5187392469630794 3.5522506085134897 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -88.363422958383737 ;
	setAttr ".bps" -type "matrix" 0.99959208646069531 0.028559773898868775 0 0 -0.028559773898868775 0.99959208646069531 0 0
		 0 0 1 0 -3.5704800000000003 81.211100000000002 0 1;
	setAttr ".radi" 0.68837797943608736;
createNode joint -n "Puppet_Isolated:shoulderRt" -p "Puppet_Isolated:clavRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -4.6344030785029391 0.26496558712871376 0 ;
	setAttr ".r" -type "double3" -28.624406410333602 -19.210973208272847 16.023238302119989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -13.62741202065558 ;
	setAttr ".bps" -type "matrix" 0.97151654163245493 -0.13209691814232738 -0.19673843943625874 0
		 0.2198017821673417 0.19205664825585003 0.95645251864208569 0 -0.08855950480087206 -0.97245290275572149 0.21562134873754113 0
		 -8.210560000000001 81.343600000000009 0 1;
	setAttr ".radi" 1.2404306361551909;
createNode joint -n "Puppet_Isolated:elbowRt" -p "Puppet_Isolated:shoulderRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -14.278712994416473 -4.3860522858579571 3.393918730284831 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.184137914976365e-16 2.3854160110976368e-15 5.6837430443017061 ;
	setAttr ".bps" -type "matrix" 0.98850888468772324 -0.11242669820875537 -0.10104663489355639 0
		 0.12250468971781681 0.20419497900744152 0.971234787034161 0 -0.08855950480087206 -0.97245290275572149 0.21562134873754113 0
		 -23.347191738497038 79.086977359521939 -0.65407770989537606 1;
	setAttr ".radi" 1.103682707900119;
createNode joint -n "Puppet_Isolated:WristRt" -p "Puppet_Isolated:elbowRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -12.119285320304414 -1.1893357852992636 3.534209407244596 ;
	setAttr ".r" -type "double3" -77.498105751296322 5.0807418733096252 0.75748374257403983 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3142546449002874e-16 2.3854160110976324e-15 6.307091934737616 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 2.7755575615628914e-17 6.2450045135165055e-17 0
		 -1.3877787807814457e-17 1.0000000000000004 -2.7755575615628914e-17 0 -4.163336342344337e-17 0 1.0000000000000002 0
		 -35.785899999999998 76.769800000000032 0.17746200000001011 1;
	setAttr ".radi" 1.103682707900119;
createNode joint -n "Puppet_Isolated:HandRt" -p "Puppet_Isolated:WristRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.8970457588372849 -0.61670821610276538 0.68034648052761271 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 2.7755575615628914e-17 6.2450045135165055e-17 0
		 -1.3877787807814457e-17 1.0000000000000004 -2.7755575615628914e-17 0 -4.163336342344337e-17 0 1.0000000000000002 0
		 -39.556246260859126 76.786969854339063 0.37548862955184187 1;
	setAttr ".radi" 0.5;
createNode joint -n "Puppet_Isolated:HandEndRt" -p "Puppet_Isolated:HandRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -5.4961376400386159 -1.2445051815039292 1.2300416483787904 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 2.7755575615628914e-17 6.2450045135165055e-17 0
		 -1.3877787807814457e-17 1.0000000000000004 -2.7755575615628914e-17 0 -4.163336342344337e-17 0 1.0000000000000002 0
		 -45.552499489088682 76.799129820563905 0.24566401991179579 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Puppet_Isolated:WristRt_orientConstraint1" -p "Puppet_Isolated:WristRt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_RtArm1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -77.498105751296322 5.0807418733096252 0.75748374257403983 ;
	setAttr ".rsrr" -type "double3" -77.498105751296322 5.0807418733096252 0.75748374257403983 ;
	setAttr -k on ".w0";
createNode ikEffector -n "Puppet_Isolated:effector2" -p "Puppet_Isolated:elbowRt";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.119285320304414 -1.1893357852992636 3.534209407244596 ;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector3" -p "Puppet_Isolated:elbowRt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Puppet_Isolated:FrontArmLt4" -p "Puppet_Isolated:elbowRt";
	setAttr ".t" -type "double3" 13.416949404186536 72.101906269968538 37.570856343429135 ;
	setAttr ".r" -type "double3" -32.64263903230917 -10.60453121905692 -165.78962078315178 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1.0000000000000007 ;
	setAttr ".rp" -type "double3" 23.311418296036102 78.998590504252249 -1.9505272771043461e-19 ;
	setAttr ".rpt" -type "double3" -36.795661658421167 -151.03381544836915 -37.593896749682202 ;
	setAttr ".sp" -type "double3" 23.311418296036098 78.998590504252249 1.950527277104348e-19 ;
	setAttr ".spt" -type "double3" 3.5527136788005017e-15 0 -3.9010545542086975e-19 ;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape4" -p "Puppet_Isolated:FrontArmLt4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ns" 8.26;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape1Orig4" -p "Puppet_Isolated:FrontArmLt4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  36.035057 76.024857 -0.49999997 
		35.322823 77.968231 -0.49999997 23.616392 77.348434 0.5 23.024879 80.107101 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ns" 8.26;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:polySurfaceShape32" -p "Puppet_Isolated:FrontArmLt4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  35.53505707 76.024856567 2.9802322e-08 35.82282257 77.9682312 2.9802322e-08
		 23.11639214 77.34843445 0 23.52487946 80.10710144 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ns" 8.26;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:FrontArmLt3" -p "Puppet_Isolated:shoulderRt";
	setAttr ".t" -type "double3" 0.15226469167311407 -71.845515092333144 -39.457283060443189 ;
	setAttr ".r" -type "double3" 33.083408870304346 8.9524510634639842 22.488634868820338 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999922 -1 ;
	setAttr ".rp" -type "double3" 20.773752207196686 79.175047023690453 -1.129579146471083e-18 ;
	setAttr ".rpt" -type "double3" -20.974215950065101 -7.4591857892199567 39.459243703542661 ;
	setAttr ".sp" -type "double3" 20.773752207196701 79.175047023689999 1.129579146471083e-18 ;
	setAttr ".spt" -type "double3" -1.4210854715201994e-14 -7.1054273576009968e-14 -2.2591582929421659e-18 ;
createNode mesh -n "Puppet_Isolated:FrontArmLt3Shape" -p "Puppet_Isolated:FrontArmLt3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:FrontArmLt3ShapeOrig" -p "Puppet_Isolated:FrontArmLt3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  23.816856 77.292839 -0.5 
		23.225342 80.051506 -0.5 6.5645218 80.080635 0.5 5.9730091 82.839294 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:polySurfaceShape31" -p "Puppet_Isolated:FrontArmLt3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[2:3]" -type "float3"  8.8817842e-16 -0.28651911 
		5.6290845e-16 -0.76048332 1.4210855e-14 -8.5205484e-15;
	setAttr -s 4 ".vt[0:3]"  23.31685638 77.29283905 0 23.7253418 80.051506042 0
		 6.06452179 80.080635071 0 6.47300911 82.83929443 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode orientConstraint -n "Puppet_Isolated:Spine3_orientConstraint1" -p "Puppet_Isolated:Spine3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_chestW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -90 ;
	setAttr ".o" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Puppet_Isolated:HipLt" -p "Puppet_Isolated:Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.206562036670654 -4.5124403617828523 0 ;
	setAttr ".r" -type "double3" -69.169530373434213 1.5040944703121182 -1.0138290091389588 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -175.57871057856937 ;
	setAttr ".bps" -type "matrix" 0.076913902074085383 -0.99703367495612549 0.0028465191412457677 0
		 0.99180364147974198 0.076801973392121553 0.10211265166765299 0 -0.10202837063906092 -0.0050306944410617145 0.99476876895999256 0
		 4.5124403617828532 51.645110008211958 0 1;
	setAttr ".radi" 1.6077824945854551;
createNode joint -n "Puppet_Isolated:KneeLt" -p "Puppet_Isolated:HipLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 22.417128228652118 -1.7804999573355876e-15 1.6423698928972428 ;
	setAttr ".r" -type "double3" 8.1143061637313198e-08 -2.7467464977741418e-06 1.0373226503695266e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.2868677904535266 ;
	setAttr ".bps" -type "matrix" 0.019922112167634252 -0.99979699559610824 -0.0030128132660583611 0
		 0.99458198306198908 0.01951050256750473 0.10210788048943517 0 -0.10202837063906092 -0.0050306944410617145 0.99476876895999256 0
		 6.0690608429846611 29.286216007345871 1.6975890611289639 1;
	setAttr ".radi" 1.6522404052568826;
createNode joint -n "Puppet_Isolated:AnkleLt" -p "Puppet_Isolated:KneeLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 23.277860398250581 0.061234445851257341 -1.655791151397233 ;
	setAttr ".r" -type "double3" -16.372821735744896 -55.550874175836476 61.588080067230251 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 88.865578369022913 ;
	setAttr ".bps" -type "matrix" 0.97739756485735318 0.18526798570306943 0.10183208573157905 0
		 -0.1883416512861609 0.98187121024798418 0.021362323772504258 0 -0.096028238564073345 -0.040058706415539505 0.99457220825769865 0
		 6.7626453387432202 6.0226056114232058 -0.013419591335797065 1;
	setAttr ".radi" 1.6522404052568826;
createNode joint -n "Puppet_Isolated:footLt" -p "Puppet_Isolated:AnkleLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.69683515111568306 -4.086566395720153 3.0787180080164545 ;
	setAttr ".r" -type "double3" -89.748951258190928 60.671354979207401 -55.361447997907604 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.1667528767470207e-14 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 0.023863360068214753 0.046422363350211188 0.99863682298783474 0
		 -0.066514807641076673 0.99678157804351364 -0.04474668744782527 0 -0.99750003529359632 -0.065356329869904473 0.026874332274699111 0
		 6.6385046640083347 1.2922244693617175 3.2238613451326517 1;
	setAttr ".radi" 0.6881855632530629;
createNode joint -n "Puppet_Isolated:ToeLt" -p "Puppet_Isolated:footLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 4.6382542228925487 -0.18547737550665389 -8.5776875416021838e-16 ;
	setAttr ".r" -type "double3" -96.472511155921282 -0.37439765924135887 -2.2683699492599514 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.0041635884551660708 0.0029146979937356172 0.99998708444998508 0
		 0.059753028955864131 -0.99820819504313263 0.0031583032361679518 0 0.99820450813537032 0.059765407087522163 0.003981966083116479 0
		 6.7615259865707351 1.322662761158595 7.8640923046424138 1;
	setAttr ".radi" 0.73947660281655958;
createNode joint -n "Puppet_Isolated:ToeEndLt" -p "Puppet_Isolated:ToeLt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 4.7756363797038883 -0.0006365181654612881 -0.0010984605599535227 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" -0.99820450813537054 -0.059765407087522177 -0.0039819660831162578 0
		 0.059753028955864131 -0.99820819504313263 0.0031583032361679518 0 -0.0041635884551658496 0.0029146979937356311 0.9999870844499853 0
		 6.7405076799028025 1.3371520266398509 12.639660620025712 1;
	setAttr ".radi" 0.73947660281655958;
createNode ikEffector -n "Puppet_Isolated:effector7" -p "Puppet_Isolated:ToeLt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector6" -p "Puppet_Isolated:footLt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector5" -p "Puppet_Isolated:AnkleLt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector4" -p "Puppet_Isolated:KneeLt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Puppet_Isolated:Front_LegLt1" -p "Puppet_Isolated:KneeLt";
	setAttr ".t" -type "double3" 29.042461700156895 -2.2715993751489796 -8.2176725576002863 ;
	setAttr ".r" -type "double3" 7.1786497073444888 -69.077079079373462 83.998063487420126 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 6.6684210152185779 17.585236265498345 -1.0846837446788912e-30 ;
	setAttr ".rpt" -type "double3" -23.985796587092782 -15.433944674241724 7.0134742561479513 ;
	setAttr ".sp" -type "double3" 6.6684210152185797 17.585236265498349 -1.0846837446788912e-30 ;
	setAttr ".spt" -type "double3" -1.7763568394002501e-15 -3.5527136788005005e-15 0 ;
createNode mesh -n "Puppet_Isolated:Front_LegLtShape1" -p "Puppet_Isolated:Front_LegLt1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  5.15664387 5.31209707 9.2321509e-15 9.43083954 5.47143316 9.2321509e-15
		 4.12418318 29.11270332 -9.2321509e-15 8.39837933 29.27203941 -9.2321509e-15;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:Front_LegLt" -p "Puppet_Isolated:HipLt";
	setAttr ".t" -type "double3" 51.262909677335458 -4.1302585264328657 -6.5325769568475751 ;
	setAttr ".r" -type "double3" 7.4379912112377999 -69.064358472484258 80.433533712599655 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 1 ;
	setAttr ".rp" -type "double3" 5.2358460575344141 41.042806239783218 -3.8456969129524326e-30 ;
	setAttr ".rpt" -type "double3" -45.881119332653149 -37.327729901835035 6.7886667445619864 ;
	setAttr ".sp" -type "double3" 5.2358460575344168 41.042806239783239 -3.8456969129524326e-30 ;
	setAttr ".spt" -type "double3" -2.6645352591003745e-15 -2.1316282072802999e-14 0 ;
createNode mesh -n "Puppet_Isolated:Front_LegLtShape" -p "Puppet_Isolated:Front_LegLt";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[2:3]" -type "float3"  -2.220446e-15 3.6393671 5.3875234e-15 
		-2.6645353e-15 3.4042239 5.3875234e-15;
	setAttr -s 4 ".vt[0:3]"  4.11990452 28.83013344 0 8.38985729 29.078426361 0
		 2.44484425 52.20042419 0 6.71479702 52.44871902 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode joint -n "Puppet_Isolated:HipRt" -p "Puppet_Isolated:Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.2065720448826198 4.5124399999999989 0 ;
	setAttr ".r" -type "double3" 69.201362894696217 -7.3990853814997823 -4.7931033704162553 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -175.57871057856937 ;
	setAttr ".pa" -type "double3" 69.22556135451525 -7.4003773554587751 -4.7961977332323835 ;
	setAttr ".bps" -type "matrix" 0.076650797742306265 -0.99699935793401728 -0.010813671190962035 0
		 0.99337377073081812 0.077294566134123527 -0.085053522385463293 0 0.085634145231355915 -0.0042225969847703056 0.9963177017624445 0
		 -4.5124399999999998 51.645099999999992 0 1;
	setAttr ".radi" 1.6077824945854551;
createNode joint -n "Puppet_Isolated:KneeRt" -p "Puppet_Isolated:HipRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 22.15066848819502 -3.4459685116066217 1.64237 ;
	setAttr ".r" -type "double3" -0.067351256953906577 -0.97623298278381565 -0.36662830608117258 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.2868677904535271 ;
	setAttr ".pa" -type "double3" -0.067321418711852446 -0.97580038539146696 -0.36646586929286068 ;
	setAttr ".bps" -type "matrix" 0.019569416963850408 -0.99979097793199578 -0.0059193213698392087 0
		 0.99613444428460107 0.020004252560110319 -0.085533612044162571 0 0.085634145231355915 -0.0042225969847703056 0.9963177017624445 0
		 -6.0970653729451989 29.287608031833926 1.6898840180937764 1;
	setAttr ".radi" 1.6522404052568826;
createNode joint -n "Puppet_Isolated:AnkleRt" -p "Puppet_Isolated:KneeRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 23.257192442310391 -0.98272081276429191 -1.6557913 ;
	setAttr ".r" -type "double3" 22.833860036878043 61.148054764356566 -21.157875033101234 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182697257329e-06 0 88.865578369022913 ;
	setAttr ".pa" -type "double3" 22.833860036876015 61.148054764355557 -21.157875033103029 ;
	setAttr ".bps" -type "matrix" 0.99726874592620296 -0.018286018864425057 -0.07155885628536246 0
		 0.02137370191941862 0.99886254422392973 0.042623732975405143 0 0.070698042865691202 -0.044036794395013491 0.99652523674735516 0
		 -6.7626500000000016 6.0226099999999718 -0.013421299999999636 1;
	setAttr ".radi" 1.6522404052568826;
createNode joint -n "Puppet_Isolated:footRt" -p "Puppet_Isolated:AnkleRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.09558663901906618 -4.1607197666698506 2.861708319143403 ;
	setAttr ".r" -type "double3" -30.106621284010508 -74.243660535755964 -2.0082352663781338 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.9725156682451414e-31 -89.999999999999986 0 ;
	setAttr ".pa" -type "double3" -30.106621284001957 -74.243660535754941 -2.0082352663791307 ;
	setAttr ".bps" -type "matrix" -0.068558606092818788 -0.0091201179332683624 0.9976054034434122 0
		 -0.99684857081907208 0.040626634236596501 -0.068135185085091823 0 -0.039907948914766775 -0.99913277397925926 -0.011876681940983742 0
		 -6.7692608801481278 1.3525459984587282 2.9878012659257545 1;
	setAttr ".radi" 0.6881855632530629;
createNode joint -n "Puppet_Isolated:ToeRt" -p "Puppet_Isolated:footRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 4.6382599999999989 -0.1854699999999998 0 ;
	setAttr ".r" -type "double3" -14.670045852513478 0.48390789326640271 -4.5013022752039529 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -14.670045852512137 0.48390789326584638 -4.5013022752038498 ;
	setAttr ".bps" -type "matrix" -1.2778995287612708e-05 -0.00045898774910482602 0.99999989458346628 0
		 0.018191242311814244 0.99983442023651992 0.00045914426422301834 0 -0.9998345255790333 0.018191246261558762 -4.4273219824623295e-06 0
		 -6.9023680160143925 1.3027094984017054 7.6275915372789269 1;
	setAttr ".radi" 0.73947660281655958;
createNode joint -n "Puppet_Isolated:ToeEndRt" -p "Puppet_Isolated:ToeRt";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 4.9818799999999985 0 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1927080055488182e-15 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 0.99983452557903352 -0.018191246261558765 4.4273219826843749e-06 0
		 0.018191242311814244 0.99983442023651992 0.00045914426422301834 0 -1.2778995287834718e-05 -0.00045898774910482207 0.9999998945834665 0
		 -6.9024316794354368 1.300422876514195 12.609471012106404 1;
	setAttr ".radi" 0.73947660281655958;
createNode ikEffector -n "Puppet_Isolated:effector14" -p "Puppet_Isolated:ToeRt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector13" -p "Puppet_Isolated:footRt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector12" -p "Puppet_Isolated:AnkleRt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Puppet_Isolated:effector8" -p "Puppet_Isolated:KneeRt";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "Puppet_Isolated:Front_LegRt1" -p "Puppet_Isolated:KneeRt";
	setAttr ".t" -type "double3" 28.905121272658807 0.80170612934813734 -8.9998285814064491 ;
	setAttr ".r" -type "double3" 169.1780414221812 -69.024765295826526 -83.052290100031982 ;
	setAttr ".s" -type "double3" 1 1 -1.0000000000000002 ;
	setAttr ".rp" -type "double3" 6.6684210152185797 17.585236265498349 1.0846837446788918e-30 ;
	setAttr ".rpt" -type "double3" -23.898258190176492 -18.983769783780804 7.4084538381693283 ;
	setAttr ".sp" -type "double3" 6.6684210152185797 17.585236265498349 -1.0846837446788912e-30 ;
	setAttr ".spt" -type "double3" 0 0 2.1693674893577828e-30 ;
createNode mesh -n "Puppet_Isolated:Front_LegRtShape1" -p "Puppet_Isolated:Front_LegRt1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:Front_LegRtShape1Orig1" -p "Puppet_Isolated:Front_LegRt1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[2:3]" -type "float3"  0 0.68559802 0 0 0.68559802 
		0;
	setAttr -s 4 ".vt[0:3]"  4.93846178 6.58403015 9.2321509e-15 9.21265793 6.74336624 9.2321509e-15
		 4.12418318 28.42710495 -9.2321509e-15 8.39837933 28.58644104 -9.2321509e-15;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:polySurfaceShape34" -p "Puppet_Isolated:Front_LegRt1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  5.15664387 5.31209707 9.2321509e-15 9.43083954 5.47143316 9.2321509e-15
		 4.12418318 29.11270332 -9.2321509e-15 8.39837933 29.27203941 -9.2321509e-15;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:Front_LegRt" -p "Puppet_Isolated:HipRt";
	setAttr ".t" -type "double3" 51.210296089349661 -4.3100410074760074 -6.8225794036135694 ;
	setAttr ".r" -type "double3" 171.62200402725293 -69.1741002841176 -88.954226207634889 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 -0.99999999999999989 ;
	setAttr ".rp" -type "double3" 5.2358460575344141 41.042806239783232 3.8456969129524304e-30 ;
	setAttr ".rpt" -type "double3" -45.901932758107129 -38.05665396947326 7.0198514980456164 ;
	setAttr ".sp" -type "double3" 5.2358460575344168 41.042806239783239 -3.8456969129524326e-30 ;
	setAttr ".spt" -type "double3" -2.6645352591003749e-15 -7.1054273576010003e-15 7.6913938259048637e-30 ;
createNode mesh -n "Puppet_Isolated:Front_LegRtShape" -p "Puppet_Isolated:Front_LegRt";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:Front_LegRtShapeOrig" -p "Puppet_Isolated:Front_LegRt";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  4.6199045 28.830133 -0.5 
		7.8898573 29.078426 -0.5 2.9448442 52.200424 0.5 6.214797 52.448719 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:polySurfaceShape35" -p "Puppet_Isolated:Front_LegRt";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[2:3]" -type "float3"  1.2997967e-06 3.6393671 -8.6052001e-05 
		1.2997967e-06 3.4042239 -8.6052001e-05;
	setAttr -s 4 ".vt[0:3]"  4.11990452 28.83013344 0 8.38985729 29.078426361 0
		 2.44484425 52.20042419 0 6.71479702 52.44871902 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:Front_Torso" -p "Puppet_Isolated:Ctrl_torso";
	setAttr ".t" -type "double3" 0 0 0.3 ;
	setAttr ".rp" -type "double3" -0.09657827951262421 67.728461083863635 -7.0011405338364798e-30 ;
	setAttr ".sp" -type "double3" -0.09657827951262421 67.728461083863635 -7.0011405338364798e-30 ;
createNode mesh -n "Puppet_Isolated:Front_TorsoShape" -p "Puppet_Isolated:Front_Torso";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.49503592 0 0.49503592 0.51567429 1 0.51567429 0.49503595 0.51567429 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  -6.93510628 52.37043762 1.487089e-14 6.74195004 52.37043762 1.487089e-14
		 -6.93510628 82.84312439 -1.4876989e-14 6.74195004 82.84312439 -1.4876989e-14 6.74195004 67.57598114 1.4764112e-16
		 -6.93510628 67.57598114 1.4764112e-16 0.11779992 82.84312439 -1.4876989e-14 0.11779992 67.57598114 1.4764112e-16
		 0.11779992 52.37043762 1.487089e-14;
	setAttr -s 12 ".ed[0:11]"  0 8 0 0 5 0 1 4 0 2 6 0 4 3 0 5 2 0 4 7 1
		 6 3 0 7 5 1 6 7 1 8 1 0 7 8 1;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 10 2 6 11
		mu 0 4 8 1 4 7
		f 4 -7 4 -8 9
		mu 0 4 7 4 3 6
		f 4 -9 -10 -4 -6
		mu 0 4 5 7 6 2
		f 4 0 -12 8 -2
		mu 0 4 0 8 7 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:Ctrl_RtArm1" -p "Puppet_Isolated:Ctrl_torso";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -35.749400000000009 76.769830937903379 0.17746197493828403 ;
	setAttr ".sp" -type "double3" -35.749400000000009 76.769830937903379 0.17746197493828403 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_RtArm1Shape" -p "Puppet_Isolated:Ctrl_RtArm1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-35.749400000000009 78.79381189795528 -1.8465189851136121
		-35.749400000000009 76.769830937903379 -2.6848793487520273
		-35.749400000000009 74.745849977851478 -1.8465189851136135
		-35.749400000000009 73.907489614213063 0.1774619749382832
		-35.749400000000009 74.745849977851478 2.2014429349901805
		-35.749400000000009 76.769830937903379 3.0398032986285957
		-35.749400000000009 78.79381189795528 2.2014429349901814
		-35.749400000000009 79.632172261593695 0.17746197493828555
		-35.749400000000009 78.79381189795528 -1.8465189851136121
		-35.749400000000009 76.769830937903379 -2.6848793487520273
		-35.749400000000009 74.745849977851478 -1.8465189851136135
		;
createNode transform -n "Puppet_Isolated:FrontArmLt5" -p "Puppet_Isolated:Ctrl_RtArm1";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 40.485352041354105 76.860823630594922 3.8456969129524326e-30 ;
	setAttr ".rpt" -type "double3" -80.97070408270821 0 -4.9580256789798149e-15 ;
	setAttr ".sp" -type "double3" 40.485352041354105 76.860823630594922 -3.8456969129524326e-30 ;
	setAttr ".spt" -type "double3" 0 0 7.6913938259048651e-30 ;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape5" -p "Puppet_Isolated:FrontArmLt5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:FrontArmLtShape2Orig5" -p "Puppet_Isolated:FrontArmLt5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  45.757442 75.500206 -0.5 
		44.737698 78.288879 -0.5 36.060852 75.43277 0.5 35.041107 78.221443 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "Puppet_Isolated:polySurfaceShape36" -p "Puppet_Isolated:FrontArmLt5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  45.25744247 75.50020599 0 45.2376976 78.28887939 0
		 35.56085205 75.43276978 0 35.54110718 78.22144318 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode transform -n "Puppet_Isolated:Ctrl_LtArm" -p "Puppet_Isolated:Ctrl_torso";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 35.749435354107646 76.769830937903379 0.17746197493828403 ;
	setAttr ".sp" -type "double3" 35.749435354107646 76.769830937903379 0.17746197493828403 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_LtArmShape" -p "Puppet_Isolated:Ctrl_LtArm";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		35.749435354107646 78.79381189795528 -1.8465189851136121
		35.749435354107646 76.769830937903379 -2.6848793487520273
		35.749435354107646 74.745849977851478 -1.8465189851136135
		35.749435354107646 73.907489614213063 0.1774619749382832
		35.749435354107646 74.745849977851478 2.2014429349901805
		35.749435354107646 76.769830937903379 3.0398032986285957
		35.749435354107646 78.79381189795528 2.2014429349901814
		35.749435354107646 79.632172261593695 0.17746197493828555
		35.749435354107646 78.79381189795528 -1.8465189851136121
		35.749435354107646 76.769830937903379 -2.6848793487520273
		35.749435354107646 74.745849977851478 -1.8465189851136135
		;
createNode transform -n "Puppet_Isolated:Ctrl_chest" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.018229391486510402 77.692360753036922 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -0.018229391486510402 77.692360753036922 4.4408920985006262e-16 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_chestShape" -p "Puppet_Isolated:Ctrl_chest";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.018229391486510267 78.517027535185605 -3.8841391619635957
		-0.018229391486510472 77.692360753036922 -4.678036636303867
		-0.018229391486510635 76.86769397088824 -3.8841391619635965
		-0.018229391486510725 76.242685804735487 -2.8735872240485802
		-0.018229391486510583 76.667285766576725 -1.8630352861335635
		-0.018229391486510333 77.692360753036922 -1.4444509679667488
		-0.018229391486510128 78.71743573949712 -1.8630352861335631
		-0.01822939148651008 79.142035701338358 -2.8735872240485789
		-0.018229391486510267 78.517027535185605 -3.8841391619635957
		-0.018229391486510472 77.692360753036922 -4.678036636303867
		-0.018229391486510635 76.86769397088824 -3.8841391619635965
		;
createNode transform -n "Puppet_Isolated:Ctrl_Head" -p "Puppet_Isolated:Controllers";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.018229391486510402 84.885859227436086 -0.21656008064746857 ;
	setAttr ".sp" -type "double3" -0.018229391486510402 84.885859227436086 -0.21656008064746857 ;
createNode nurbsCurve -n "Puppet_Isolated:Ctrl_HeadShape" -p "Puppet_Isolated:Ctrl_Head";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.018229391486510267 85.710526009584768 -6.7572883694888581
		-0.018229391486510472 84.885859227436086 -7.5511858438291295
		-0.018229391486510635 84.061192445287404 -6.757288369488859
		-0.018229391486510725 83.43618427913465 -5.7467364315738427
		-0.018229391486510583 83.860784240975889 -4.7361844936588255
		-0.018229391486510333 84.885859227436086 -4.3176001754920108
		-0.018229391486510128 85.910934213896283 -4.7361844936588255
		-0.01822939148651008 86.335534175737521 -5.7467364315738418
		-0.018229391486510267 85.710526009584768 -6.7572883694888581
		-0.018229391486510472 84.885859227436086 -7.5511858438291295
		-0.018229391486510635 84.061192445287404 -6.757288369488859
		;
createNode ikHandle -n "Puppet_Isolated:FootIKLt" -p "Puppet_Isolated:Ctrl_MAIN";
	setAttr ".t" -type "double3" 9 1 0 ;
	setAttr ".pv" -type "double3" -0.38091445103302224 0.7681138715579342 1.8069048844126812 ;
	setAttr ".roc" yes;
createNode ikHandle -n "Puppet_Isolated:ArmIKRt" -p "Puppet_Isolated:Ctrl_MAIN";
	setAttr ".roc" yes;
createNode pointConstraint -n "Puppet_Isolated:ikHandle2_pointConstraint1" -p "Puppet_Isolated:ArmIKRt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_RtArm1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.036499999999989541 -3.0937903360950259e-05 2.5061729969078073e-08 ;
	setAttr ".rst" -type "double3" -35.7859 76.769800000000018 0.177462000000014 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "Puppet_Isolated:ArmIKRt_poleVectorConstraint1" 
		-p "Puppet_Isolated:ArmIKRt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_PoleV_ElbRt1W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -14.967454506489851 -13.819129559658577 0.16241921628782041 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Puppet_Isolated:ArmIKLt" -p "Puppet_Isolated:Ctrl_MAIN";
	setAttr ".roc" yes;
createNode pointConstraint -n "Puppet_Isolated:ikHandle1_pointConstraint1" -p "Puppet_Isolated:ArmIKLt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ctrl_LtArmW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 35.749435354107646 76.769830937903379 0.17746197493828403 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "Puppet_Isolated:ikHandle1_poleVectorConstraint1" 
		-p "Puppet_Isolated:ArmIKLt";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 15.003916150907832 -3.1781596046991893 -3.5182642354693199 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Puppet_Isolated:FootIKrt" -p "Puppet_Isolated:Ctrl_MAIN";
	setAttr ".t" -type "double3" -8.5278365501453148 0.63844260742761794 0.0031115487695547728 ;
	setAttr ".pv" -type "double3" 0.1389048379515099 1.3248840873932848 1.4917733074986874 ;
	setAttr ".roc" yes;
createNode transform -n "Puppet_Isolated:FrontView_GoodCop" -p "Puppet_Isolated:Ctrl_MAIN";
createNode transform -n "Puppet_Isolated:Front_Head" -p "Puppet_Isolated:FrontView_GoodCop";
	setAttr ".rp" -type "double3" 0 91.203971644819589 0 ;
	setAttr ".sp" -type "double3" 0 91.203971644819589 0 ;
createNode transform -n "Puppet_Isolated:transform2" -p "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head";
	setAttr ".v" no;
createNode mesh -n "Puppet_Isolated:Front_HeadShape" -p "Puppet_Isolated:transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.5 0 0.75 0 1 0
		 0.5 0.25 0.75 0.25 1 0.25 0.5 0.5 0.75 0.5 1 0.5 0.5 0.75 0.75 0.75 1 0.75 0.5 1
		 0.75 1 1 1 0.5 0 0.75 0 0.75 0.25 0.5 0.25 1 0 1 0.25 0.75 0.5 0.5 0.5 1 0.5 0.75
		 0.75 0.5 0.75 1 0.75 0.75 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".vt[0:24]"  1.110223e-16 83.83603668 0 3.12545848 84.39411926 0
		 5.34841967 85.7687149 0 5.5511151e-17 87.52000427 0 3.12545848 87.52000427 0 6.42305994 87.52000427 0
		 0 91.20397186 0 3.12545848 91.20397186 0 6.80942392 91.20397186 0 -5.5511151e-17 94.88793945 0
		 3.12545848 94.88793945 0 6.42305994 94.88793945 0 -1.110223e-16 99.064369202 0 3.12545848 98.57190704 0
		 5.21982718 97.49784851 0 -3.12545848 84.39411926 0 -3.12545848 87.52000427 0 -5.34841967 85.7687149 0
		 -6.42305994 87.52000427 0 -3.12545848 91.20397186 0 -6.80942392 91.20397186 0 -3.12545848 94.88793945 0
		 -6.42305994 94.88793945 0 -3.12545848 98.57190704 0 -5.21982718 97.49784851 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0 0 15 0 15 16 1 3 16 1 15 17 0 17 18 0 16 18 1 16 19 1 6 19 1 18 20 0
		 19 20 1 19 21 1 9 21 1 20 22 0 21 22 1 21 23 1 12 23 0 22 24 0 23 24 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13
		f 4 1 24 -24 -23
		mu 0 4 15 18 17 16
		f 4 23 27 -27 -26
		mu 0 4 16 17 20 19
		f 4 6 29 -29 -25
		mu 0 4 18 22 21 17
		f 4 28 31 -31 -28
		mu 0 4 17 21 23 20
		f 4 11 33 -33 -30
		mu 0 4 22 25 24 21
		f 4 32 35 -35 -32
		mu 0 4 21 24 26 23
		f 4 16 37 -37 -34
		mu 0 4 25 28 27 24
		f 4 36 39 -39 -36
		mu 0 4 24 27 29 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Puppet_Isolated:Front_Neck" -p "Puppet_Isolated:FrontView_GoodCop";
	setAttr ".rp" -type "double3" 0 83.135798802670948 -4.9303806576313238e-32 ;
	setAttr ".sp" -type "double3" 0 83.135798802670948 -4.9303806576313238e-32 ;
createNode transform -n "Puppet_Isolated:transform1" -p "Puppet_Isolated:Front_Neck";
	setAttr ".v" no;
createNode mesh -n "Puppet_Isolated:Front_NeckShape" -p "Puppet_Isolated:transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -1.19937396 82.21839142 9.2682729e-17 1.19937396 82.21839142 9.2682729e-17
		 -1.19937396 84.053199768 -9.2682729e-17 1.19937396 84.053199768 -9.2682729e-17;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Puppet_Isolated:group1" -p "Puppet_Isolated:FrontView_GoodCop";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Puppet_Isolated:group3" -p "Puppet_Isolated:FrontView_GoodCop";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Puppet_Isolated:group2" -p "Puppet_Isolated:Ctrl_MAIN";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "Puppet_Isolated:Ctrl_PoleV_ElbRt1" -p "Puppet_Isolated:group2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 23.178014506489852 59.591513316242015 0.1624192162878213 ;
	setAttr ".sp" -type "double3" 23.178014506489852 59.591513316242015 0.1624192162878213 ;
createNode locator -n "Puppet_Isolated:Ctrl_PoleV_ElbRt1Shape" -p "Puppet_Isolated:Ctrl_PoleV_ElbRt1";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 23.178014506489852 59.591513316242015 0.1624192162878213 ;
createNode transform -n "ffd1Lattice";
	setAttr ".t" -type "double3" -1.1381720193942276e-07 154.62716694283475 0.15582999151127672 ;
	setAttr ".r" -type "double3" -1.7075472982804619e-06 -4.347931710347782e-08 89.683451952726884 ;
	setAttr ".s" -type "double3" 29.210942077636727 23.615083885192877 7.0929527282714835e-07 ;
createNode lattice -n "ffd1LatticeShape" -p "ffd1Lattice";
	setAttr -k off ".v";
	setAttr -s 20 ".cp";
	setAttr -av ".cp[0].xv";
	setAttr -av ".cp[0].yv";
	setAttr -av ".cp[0].zv";
	setAttr -av ".cp[2].xv";
	setAttr -av ".cp[2].yv";
	setAttr -av ".cp[2].zv";
	setAttr -av ".cp[4].xv";
	setAttr -av ".cp[4].yv";
	setAttr -av ".cp[4].zv";
	setAttr -av ".cp[6].xv";
	setAttr -av ".cp[6].yv";
	setAttr -av ".cp[6].zv";
	setAttr -av ".cp[8].xv";
	setAttr -av ".cp[8].yv";
	setAttr -av ".cp[8].zv";
	setAttr -av ".cp[10].xv";
	setAttr -av ".cp[10].yv";
	setAttr -av ".cp[10].zv";
	setAttr -av ".cp[12].xv";
	setAttr -av ".cp[12].yv";
	setAttr -av ".cp[12].zv";
	setAttr -av ".cp[14].xv";
	setAttr -av ".cp[14].yv";
	setAttr -av ".cp[14].zv";
	setAttr -av ".cp[16].xv";
	setAttr -av ".cp[16].yv";
	setAttr -av ".cp[16].zv";
	setAttr -av ".cp[18].xv";
	setAttr -av ".cp[18].yv";
	setAttr -av ".cp[18].zv";
	setAttr ".cc" -type "lattice" 2 5 2 20 -0.5 -0.5 -0.5 0.5 -0.5
		 -0.5 -0.5 -0.25 -0.5 0.5 -0.25 -0.5 -0.5 0 -0.5 0.5 0 -0.5 -0.5 0.25 -0.5 0.5 0.25
		 -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.25 0.5 0.5 -0.25
		 0.5 -0.5 0 0.5 0.5 0 0.5 -0.5 0.25 0.5 0.5 0.25 0.5 -0.5 0.5 0.5 0.5 0.5 0.5 ;
createNode transform -n "ffd1Base";
	setAttr ".t" -type "double3" -1.1381720193942276e-07 154.62716694283475 0.15582999151127672 ;
	setAttr ".r" -type "double3" -1.7075472982804619e-06 -4.347931710347782e-08 89.683451952726884 ;
	setAttr ".s" -type "double3" 29.210942077636727 23.615083885192877 7.0929527282714835e-07 ;
createNode baseLattice -n "ffd1BaseShape" -p "ffd1Base";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode ikRPsolver -n "Puppet_Isolated:ikRPsolver";
createNode groupParts -n "Puppet_Isolated:groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode polyUnite -n "Puppet_Isolated:polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "Puppet_Isolated:groupId96";
	setAttr ".ihi" 0;
createNode polyNormal -n "Puppet_Isolated:polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "Puppet_Isolated:polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode animCurveTL -n "Puppet_Isolated:Ctrl_LtArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 -4.9143604710525244 40 -10.579820368938346;
createNode animCurveTL -n "Puppet_Isolated:Ctrl_LtArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 4.4387771996603531 40 -19.328517981714263;
createNode animCurveTL -n "Puppet_Isolated:Ctrl_LtArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode groupId -n "Puppet_Isolated:groupId92";
	setAttr ".ihi" 0;
createNode groupId -n "Puppet_Isolated:groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "Puppet_Isolated:groupId94";
	setAttr ".ihi" 0;
createNode groupId -n "Puppet_Isolated:groupId95";
	setAttr ".ihi" 0;
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
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
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
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n"
		+ "            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 40 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0 -0.59999999999999976 -1.7883636103123806e-08 0 0.59999999999999998 0 0 0
		 1.9852334701272667e-24 -1.7883636103123806e-08 0.59999999999999976 0 -86.383013363616229 0.033542453444059359 0.1589673252200523 1;
createNode ffd -n "ffd1";
	setAttr ".lo" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "ffd1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_0__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_0__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_0__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_10__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_10__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_10__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_11__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_11__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101863935714741 24 -0.49995268148486094;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_11__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898927504415169 24 0.50004695087008855;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_12__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_12__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.25;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_12__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_13__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_13__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.25 12 -0.25101863935714758 24 -0.24995268148486113;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_13__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898927504415169 24 0.50004695087008855;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_14__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_14__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_14__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_15__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_15__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 -0.001018639357147676 24 4.7318515138769596e-05;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_15__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898927504415169 24 0.50004695087008855;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_16__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_16__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.25;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_16__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_17__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_17__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.25 12 0.24898136064285223 24 0.25004731851513867;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_17__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898927504415169 24 0.50004695087008855;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_18__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_18__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_18__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_19__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_19__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898136064285242 24 0.50004731851513895;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_19__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898927504415169 24 0.50004695087008855;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_1__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_1__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101863935714741 24 -0.49995268148486094;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_1__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101072495584875 24 -0.49995304912991234;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_2__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_2__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.25;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_2__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_3__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_3__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.25 12 -0.25101863935714758 24 -0.24995268148486113;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_3__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101072495584875 24 -0.49995304912991234;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_4__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_4__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_4__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_5__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_5__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 -0.001018639357147676 24 4.7318515138769596e-05;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_5__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101072495584875 24 -0.49995304912991234;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_6__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_6__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.25;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_6__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_7__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_7__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.25 12 0.24898136064285223 24 0.25004731851513867;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_7__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101072495584875 24 -0.49995304912991234;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_8__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_8__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_8__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.5;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_9__xValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.35094623314446427 24 0.50692394503899196;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_9__yValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.5 12 0.49898136064285242 24 0.50004731851513895;
createNode animCurveTL -n "ffd1LatticeShape_controlPoints_9__zValue";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.5 12 -0.50101072495584875 24 -0.49995304912991234;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyTweak -n "Puppet_Isolated:polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1]" -type "float3" 0.35870945 -0.10209963 -2.5288566e-20 ;
	setAttr ".tk[3]" -type "float3" -0.81657463 0.057090655 6.7990963e-20 ;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyTweak -n "Puppet_Isolated:polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[0:1]" -type "float3"  -0.98444778 0.17078224 -3.5598863e-18
		 -0.69861758 0.031021057 -2.4987658e-18;
createNode polyNormal -n "polyNormal3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal6";
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
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
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
connectAttr "Puppet_Isolated:HipRt.msg" "Puppet_Isolated:AnkleIkRt.hsj";
connectAttr "Puppet_Isolated:effector8.hp" "Puppet_Isolated:AnkleIkRt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:AnkleIkRt.hsv";
connectAttr "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.ctx" "Puppet_Isolated:AnkleIkRt.pvx"
		;
connectAttr "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.cty" "Puppet_Isolated:AnkleIkRt.pvy"
		;
connectAttr "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.ctz" "Puppet_Isolated:AnkleIkRt.pvz"
		;
connectAttr "Puppet_Isolated:AnkleIkRt.pim" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:HipRt.pm" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.ps"
		;
connectAttr "Puppet_Isolated:HipRt.t" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.crp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeRt.t" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeRt.rp" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeRt.rpt" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeRt.pm" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.w0" "Puppet_Isolated:AnkleIkRt_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:footRt.msg" "Puppet_Isolated:ikHandle4.hsj";
connectAttr "Puppet_Isolated:effector13.hp" "Puppet_Isolated:ikHandle4.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:ikHandle4.hsv";
connectAttr "Puppet_Isolated:ToeRt.msg" "Puppet_Isolated:ikHandle5.hsj";
connectAttr "Puppet_Isolated:effector14.hp" "Puppet_Isolated:ikHandle5.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:ikHandle5.hsv";
connectAttr "polyNormal3.out" "Puppet_Isolated:Front_LegRtShape2.i";
connectAttr "Puppet_Isolated:HipLt.msg" "Puppet_Isolated:AnkleIKleft.hsj";
connectAttr "Puppet_Isolated:effector4.hp" "Puppet_Isolated:AnkleIKleft.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:AnkleIKleft.hsv";
connectAttr "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.ctx" "Puppet_Isolated:AnkleIKleft.pvx"
		;
connectAttr "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.cty" "Puppet_Isolated:AnkleIKleft.pvy"
		;
connectAttr "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.ctz" "Puppet_Isolated:AnkleIKleft.pvz"
		;
connectAttr "Puppet_Isolated:footLt.msg" "Puppet_Isolated:ToeIKLt.hsj";
connectAttr "Puppet_Isolated:effector6.hp" "Puppet_Isolated:ToeIKLt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:ToeIKLt.hsv";
connectAttr "Puppet_Isolated:ToeLt.msg" "Puppet_Isolated:toeEndIKLt.hsj";
connectAttr "Puppet_Isolated:effector7.hp" "Puppet_Isolated:toeEndIKLt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:toeEndIKLt.hsv";
connectAttr "Puppet_Isolated:AnkleIKleft.pim" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:HipLt.pm" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.ps"
		;
connectAttr "Puppet_Isolated:HipLt.t" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.crp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeLt.t" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeLt.rp" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeLt.rpt" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_KneeLt.pm" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.w0" "Puppet_Isolated:AnkleIKleft_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:Pelvis.s" "Puppet_Isolated:Spine1.is";
connectAttr "Puppet_Isolated:Spine1.s" "Puppet_Isolated:joint10.is";
connectAttr "Puppet_Isolated:joint10.s" "Puppet_Isolated:joint11.is";
connectAttr "Puppet_Isolated:joint11.s" "Puppet_Isolated:Spine2.is";
connectAttr "Puppet_Isolated:Spine2.s" "Puppet_Isolated:Spine3.is";
connectAttr "Puppet_Isolated:Spine3_orientConstraint1.crx" "Puppet_Isolated:Spine3.rx"
		;
connectAttr "Puppet_Isolated:Spine3_orientConstraint1.cry" "Puppet_Isolated:Spine3.ry"
		;
connectAttr "Puppet_Isolated:Spine3_orientConstraint1.crz" "Puppet_Isolated:Spine3.rz"
		;
connectAttr "Puppet_Isolated:Spine3.s" "Puppet_Isolated:Neck.is";
connectAttr "Puppet_Isolated:Neck.s" "Puppet_Isolated:Head.is";
connectAttr "Puppet_Isolated:Head_orientConstraint1.crx" "Puppet_Isolated:Head.rx"
		;
connectAttr "Puppet_Isolated:Head_orientConstraint1.cry" "Puppet_Isolated:Head.ry"
		;
connectAttr "Puppet_Isolated:Head_orientConstraint1.crz" "Puppet_Isolated:Head.rz"
		;
connectAttr "Puppet_Isolated:Head.s" "Puppet_Isolated:HeadEnd.is";
connectAttr "Puppet_Isolated:Head.ro" "Puppet_Isolated:Head_orientConstraint1.cro"
		;
connectAttr "Puppet_Isolated:Head.pim" "Puppet_Isolated:Head_orientConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:Head.jo" "Puppet_Isolated:Head_orientConstraint1.cjo"
		;
connectAttr "Puppet_Isolated:Head.is" "Puppet_Isolated:Head_orientConstraint1.is"
		;
connectAttr "Puppet_Isolated:Ctrl_Head.r" "Puppet_Isolated:Head_orientConstraint1.tg[0].tr"
		;
connectAttr "Puppet_Isolated:Ctrl_Head.ro" "Puppet_Isolated:Head_orientConstraint1.tg[0].tro"
		;
connectAttr "Puppet_Isolated:Ctrl_Head.pm" "Puppet_Isolated:Head_orientConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:Head_orientConstraint1.w0" "Puppet_Isolated:Head_orientConstraint1.tg[0].tw"
		;
connectAttr "ffd1.og[0]" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.i"
		;
connectAttr "Puppet_Isolated:groupId96.id" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[0].gco"
		;
connectAttr "ffd1GroupId.id" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[3].gid"
		;
connectAttr "ffd1Set.mwc" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[3].gco"
		;
connectAttr "groupId2.id" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[4].gid"
		;
connectAttr "tweakSet1.mwc" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[4].gco"
		;
connectAttr "tweak1.vl[0].vt[0]" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.twl"
		;
connectAttr "Puppet_Isolated:groupParts1.og" "Front_HeadShapeOrig.i";
connectAttr "Puppet_Isolated:Spine3.s" "Puppet_Isolated:clavLt.is";
connectAttr "Puppet_Isolated:clavLt.s" "Puppet_Isolated:shoulderLt.is";
connectAttr "Puppet_Isolated:shoulderLt.s" "Puppet_Isolated:elbowLt.is";
connectAttr "Puppet_Isolated:elbowLt.s" "Puppet_Isolated:WristLt.is";
connectAttr "Puppet_Isolated:WristLt.s" "Puppet_Isolated:HandLt.is";
connectAttr "Puppet_Isolated:HandLt.s" "Puppet_Isolated:HandEndLt.is";
connectAttr "Puppet_Isolated:WristLt.ro" "Puppet_Isolated:WristLt_orientConstraint1.cro"
		;
connectAttr "Puppet_Isolated:WristLt.pim" "Puppet_Isolated:WristLt_orientConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:WristLt.jo" "Puppet_Isolated:WristLt_orientConstraint1.cjo"
		;
connectAttr "Puppet_Isolated:WristLt.is" "Puppet_Isolated:WristLt_orientConstraint1.is"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.r" "Puppet_Isolated:WristLt_orientConstraint1.tg[0].tr"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.ro" "Puppet_Isolated:WristLt_orientConstraint1.tg[0].tro"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.pm" "Puppet_Isolated:WristLt_orientConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:WristLt_orientConstraint1.w0" "Puppet_Isolated:WristLt_orientConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:WristLt.tx" "Puppet_Isolated:effector1.tx";
connectAttr "Puppet_Isolated:WristLt.ty" "Puppet_Isolated:effector1.ty";
connectAttr "Puppet_Isolated:WristLt.tz" "Puppet_Isolated:effector1.tz";
connectAttr "Puppet_Isolated:Spine3.s" "Puppet_Isolated:clavRt.is";
connectAttr "Puppet_Isolated:clavRt.s" "Puppet_Isolated:shoulderRt.is";
connectAttr "Puppet_Isolated:shoulderRt.s" "Puppet_Isolated:elbowRt.is";
connectAttr "Puppet_Isolated:elbowRt.s" "Puppet_Isolated:WristRt.is";
connectAttr "Puppet_Isolated:WristRt.s" "Puppet_Isolated:HandRt.is";
connectAttr "Puppet_Isolated:HandRt.s" "Puppet_Isolated:HandEndRt.is";
connectAttr "Puppet_Isolated:WristRt.ro" "Puppet_Isolated:WristRt_orientConstraint1.cro"
		;
connectAttr "Puppet_Isolated:WristRt.pim" "Puppet_Isolated:WristRt_orientConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:WristRt.jo" "Puppet_Isolated:WristRt_orientConstraint1.cjo"
		;
connectAttr "Puppet_Isolated:WristRt.is" "Puppet_Isolated:WristRt_orientConstraint1.is"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.r" "Puppet_Isolated:WristRt_orientConstraint1.tg[0].tr"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.ro" "Puppet_Isolated:WristRt_orientConstraint1.tg[0].tro"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.pm" "Puppet_Isolated:WristRt_orientConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:WristRt_orientConstraint1.w0" "Puppet_Isolated:WristRt_orientConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:WristRt.tx" "Puppet_Isolated:effector3.tx";
connectAttr "Puppet_Isolated:WristRt.ty" "Puppet_Isolated:effector3.ty";
connectAttr "Puppet_Isolated:WristRt.tz" "Puppet_Isolated:effector3.tz";
connectAttr "polyNormal1.out" "Puppet_Isolated:FrontArmLtShape4.i";
connectAttr "polyNormal2.out" "Puppet_Isolated:FrontArmLt3Shape.i";
connectAttr "Puppet_Isolated:Spine3.ro" "Puppet_Isolated:Spine3_orientConstraint1.cro"
		;
connectAttr "Puppet_Isolated:Spine3.pim" "Puppet_Isolated:Spine3_orientConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:Spine3.jo" "Puppet_Isolated:Spine3_orientConstraint1.cjo"
		;
connectAttr "Puppet_Isolated:Spine3.is" "Puppet_Isolated:Spine3_orientConstraint1.is"
		;
connectAttr "Puppet_Isolated:Ctrl_chest.r" "Puppet_Isolated:Spine3_orientConstraint1.tg[0].tr"
		;
connectAttr "Puppet_Isolated:Ctrl_chest.ro" "Puppet_Isolated:Spine3_orientConstraint1.tg[0].tro"
		;
connectAttr "Puppet_Isolated:Ctrl_chest.pm" "Puppet_Isolated:Spine3_orientConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:Spine3_orientConstraint1.w0" "Puppet_Isolated:Spine3_orientConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:Pelvis.s" "Puppet_Isolated:HipLt.is";
connectAttr "Puppet_Isolated:HipLt.s" "Puppet_Isolated:KneeLt.is";
connectAttr "Puppet_Isolated:KneeLt.s" "Puppet_Isolated:AnkleLt.is";
connectAttr "Puppet_Isolated:AnkleLt.s" "Puppet_Isolated:footLt.is";
connectAttr "Puppet_Isolated:footLt.s" "Puppet_Isolated:ToeLt.is";
connectAttr "Puppet_Isolated:ToeLt.s" "Puppet_Isolated:ToeEndLt.is";
connectAttr "Puppet_Isolated:ToeEndLt.tx" "Puppet_Isolated:effector7.tx";
connectAttr "Puppet_Isolated:ToeEndLt.ty" "Puppet_Isolated:effector7.ty";
connectAttr "Puppet_Isolated:ToeEndLt.tz" "Puppet_Isolated:effector7.tz";
connectAttr "Puppet_Isolated:ToeLt.tx" "Puppet_Isolated:effector6.tx";
connectAttr "Puppet_Isolated:ToeLt.ty" "Puppet_Isolated:effector6.ty";
connectAttr "Puppet_Isolated:ToeLt.tz" "Puppet_Isolated:effector6.tz";
connectAttr "Puppet_Isolated:footLt.tx" "Puppet_Isolated:effector5.tx";
connectAttr "Puppet_Isolated:footLt.ty" "Puppet_Isolated:effector5.ty";
connectAttr "Puppet_Isolated:footLt.tz" "Puppet_Isolated:effector5.tz";
connectAttr "Puppet_Isolated:AnkleLt.tx" "Puppet_Isolated:effector4.tx";
connectAttr "Puppet_Isolated:AnkleLt.ty" "Puppet_Isolated:effector4.ty";
connectAttr "Puppet_Isolated:AnkleLt.tz" "Puppet_Isolated:effector4.tz";
connectAttr "Puppet_Isolated:Pelvis.s" "Puppet_Isolated:HipRt.is";
connectAttr "Puppet_Isolated:HipRt.s" "Puppet_Isolated:KneeRt.is";
connectAttr "Puppet_Isolated:KneeRt.s" "Puppet_Isolated:AnkleRt.is";
connectAttr "Puppet_Isolated:AnkleRt.s" "Puppet_Isolated:footRt.is";
connectAttr "Puppet_Isolated:footRt.s" "Puppet_Isolated:ToeRt.is";
connectAttr "Puppet_Isolated:ToeRt.s" "Puppet_Isolated:ToeEndRt.is";
connectAttr "Puppet_Isolated:ToeEndRt.tx" "Puppet_Isolated:effector14.tx";
connectAttr "Puppet_Isolated:ToeEndRt.ty" "Puppet_Isolated:effector14.ty";
connectAttr "Puppet_Isolated:ToeEndRt.tz" "Puppet_Isolated:effector14.tz";
connectAttr "Puppet_Isolated:ToeRt.tx" "Puppet_Isolated:effector13.tx";
connectAttr "Puppet_Isolated:ToeRt.ty" "Puppet_Isolated:effector13.ty";
connectAttr "Puppet_Isolated:ToeRt.tz" "Puppet_Isolated:effector13.tz";
connectAttr "Puppet_Isolated:footRt.tx" "Puppet_Isolated:effector12.tx";
connectAttr "Puppet_Isolated:footRt.ty" "Puppet_Isolated:effector12.ty";
connectAttr "Puppet_Isolated:footRt.tz" "Puppet_Isolated:effector12.tz";
connectAttr "Puppet_Isolated:AnkleRt.tx" "Puppet_Isolated:effector8.tx";
connectAttr "Puppet_Isolated:AnkleRt.ty" "Puppet_Isolated:effector8.ty";
connectAttr "Puppet_Isolated:AnkleRt.tz" "Puppet_Isolated:effector8.tz";
connectAttr "polyNormal4.out" "Puppet_Isolated:Front_LegRtShape1.i";
connectAttr "polyNormal5.out" "Puppet_Isolated:Front_LegRtShape.i";
connectAttr "polyNormal6.out" "Puppet_Isolated:FrontArmLtShape5.i";
connectAttr "Puppet_Isolated:Ctrl_LtArm_translateX.o" "Puppet_Isolated:Ctrl_LtArm.tx"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm_translateY.o" "Puppet_Isolated:Ctrl_LtArm.ty"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm_translateZ.o" "Puppet_Isolated:Ctrl_LtArm.tz"
		;
connectAttr "Puppet_Isolated:AnkleLt.msg" "Puppet_Isolated:FootIKLt.hsj";
connectAttr "Puppet_Isolated:effector5.hp" "Puppet_Isolated:FootIKLt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:FootIKLt.hsv";
connectAttr "Puppet_Isolated:shoulderRt.msg" "Puppet_Isolated:ArmIKRt.hsj";
connectAttr "Puppet_Isolated:effector3.hp" "Puppet_Isolated:ArmIKRt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:ArmIKRt.hsv";
connectAttr "Puppet_Isolated:ikHandle2_pointConstraint1.ctx" "Puppet_Isolated:ArmIKRt.tx"
		;
connectAttr "Puppet_Isolated:ikHandle2_pointConstraint1.cty" "Puppet_Isolated:ArmIKRt.ty"
		;
connectAttr "Puppet_Isolated:ikHandle2_pointConstraint1.ctz" "Puppet_Isolated:ArmIKRt.tz"
		;
connectAttr "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.ctx" "Puppet_Isolated:ArmIKRt.pvx"
		;
connectAttr "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.cty" "Puppet_Isolated:ArmIKRt.pvy"
		;
connectAttr "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.ctz" "Puppet_Isolated:ArmIKRt.pvz"
		;
connectAttr "Puppet_Isolated:ArmIKRt.pim" "Puppet_Isolated:ikHandle2_pointConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:ArmIKRt.rp" "Puppet_Isolated:ikHandle2_pointConstraint1.crp"
		;
connectAttr "Puppet_Isolated:ArmIKRt.rpt" "Puppet_Isolated:ikHandle2_pointConstraint1.crt"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.t" "Puppet_Isolated:ikHandle2_pointConstraint1.tg[0].tt"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.rp" "Puppet_Isolated:ikHandle2_pointConstraint1.tg[0].trp"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.rpt" "Puppet_Isolated:ikHandle2_pointConstraint1.tg[0].trt"
		;
connectAttr "Puppet_Isolated:Ctrl_RtArm1.pm" "Puppet_Isolated:ikHandle2_pointConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:ikHandle2_pointConstraint1.w0" "Puppet_Isolated:ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:ArmIKRt.pim" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:shoulderRt.pm" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.ps"
		;
connectAttr "Puppet_Isolated:shoulderRt.t" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.crp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbRt1.t" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbRt1.rp" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbRt1.rpt" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbRt1.pm" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.w0" "Puppet_Isolated:ArmIKRt_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:shoulderLt.msg" "Puppet_Isolated:ArmIKLt.hsj";
connectAttr "Puppet_Isolated:effector1.hp" "Puppet_Isolated:ArmIKLt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:ArmIKLt.hsv";
connectAttr "Puppet_Isolated:ikHandle1_pointConstraint1.ctx" "Puppet_Isolated:ArmIKLt.tx"
		;
connectAttr "Puppet_Isolated:ikHandle1_pointConstraint1.cty" "Puppet_Isolated:ArmIKLt.ty"
		;
connectAttr "Puppet_Isolated:ikHandle1_pointConstraint1.ctz" "Puppet_Isolated:ArmIKLt.tz"
		;
connectAttr "Puppet_Isolated:ikHandle1_poleVectorConstraint1.ctx" "Puppet_Isolated:ArmIKLt.pvx"
		;
connectAttr "Puppet_Isolated:ikHandle1_poleVectorConstraint1.cty" "Puppet_Isolated:ArmIKLt.pvy"
		;
connectAttr "Puppet_Isolated:ikHandle1_poleVectorConstraint1.ctz" "Puppet_Isolated:ArmIKLt.pvz"
		;
connectAttr "Puppet_Isolated:ArmIKLt.pim" "Puppet_Isolated:ikHandle1_pointConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:ArmIKLt.rp" "Puppet_Isolated:ikHandle1_pointConstraint1.crp"
		;
connectAttr "Puppet_Isolated:ArmIKLt.rpt" "Puppet_Isolated:ikHandle1_pointConstraint1.crt"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.t" "Puppet_Isolated:ikHandle1_pointConstraint1.tg[0].tt"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.rp" "Puppet_Isolated:ikHandle1_pointConstraint1.tg[0].trp"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.rpt" "Puppet_Isolated:ikHandle1_pointConstraint1.tg[0].trt"
		;
connectAttr "Puppet_Isolated:Ctrl_LtArm.pm" "Puppet_Isolated:ikHandle1_pointConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:ikHandle1_pointConstraint1.w0" "Puppet_Isolated:ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:ArmIKLt.pim" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.cpim"
		;
connectAttr "Puppet_Isolated:shoulderLt.pm" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.ps"
		;
connectAttr "Puppet_Isolated:shoulderLt.t" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.crp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbLt.t" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbLt.rp" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbLt.rpt" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Puppet_Isolated:Ctrl_PoleV_ElbLt.pm" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Puppet_Isolated:ikHandle1_poleVectorConstraint1.w0" "Puppet_Isolated:ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Puppet_Isolated:AnkleRt.msg" "Puppet_Isolated:FootIKrt.hsj";
connectAttr "Puppet_Isolated:effector12.hp" "Puppet_Isolated:FootIKrt.hee";
connectAttr "Puppet_Isolated:ikRPsolver.msg" "Puppet_Isolated:FootIKrt.hsv";
connectAttr "Puppet_Isolated:groupId92.id" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.iog.og[4].gco"
		;
connectAttr "Puppet_Isolated:groupId93.id" "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.ciog.cog[0].cgid"
		;
connectAttr "Puppet_Isolated:groupId94.id" "Puppet_Isolated:Front_NeckShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "Puppet_Isolated:Front_NeckShape.iog.og[0].gco"
		;
connectAttr "Puppet_Isolated:groupId95.id" "Puppet_Isolated:Front_NeckShape.ciog.cog[0].cgid"
		;
connectAttr "ffd1LatticeShape_controlPoints_0__xValue.o" "ffd1LatticeShape.cp[0].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_0__yValue.o" "ffd1LatticeShape.cp[0].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_0__zValue.o" "ffd1LatticeShape.cp[0].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_1__xValue.o" "ffd1LatticeShape.cp[1].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_1__yValue.o" "ffd1LatticeShape.cp[1].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_1__zValue.o" "ffd1LatticeShape.cp[1].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_2__xValue.o" "ffd1LatticeShape.cp[2].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_2__yValue.o" "ffd1LatticeShape.cp[2].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_2__zValue.o" "ffd1LatticeShape.cp[2].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_3__xValue.o" "ffd1LatticeShape.cp[3].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_3__yValue.o" "ffd1LatticeShape.cp[3].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_3__zValue.o" "ffd1LatticeShape.cp[3].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_4__xValue.o" "ffd1LatticeShape.cp[4].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_4__yValue.o" "ffd1LatticeShape.cp[4].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_4__zValue.o" "ffd1LatticeShape.cp[4].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_5__xValue.o" "ffd1LatticeShape.cp[5].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_5__yValue.o" "ffd1LatticeShape.cp[5].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_5__zValue.o" "ffd1LatticeShape.cp[5].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_6__xValue.o" "ffd1LatticeShape.cp[6].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_6__yValue.o" "ffd1LatticeShape.cp[6].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_6__zValue.o" "ffd1LatticeShape.cp[6].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_7__xValue.o" "ffd1LatticeShape.cp[7].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_7__yValue.o" "ffd1LatticeShape.cp[7].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_7__zValue.o" "ffd1LatticeShape.cp[7].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_8__xValue.o" "ffd1LatticeShape.cp[8].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_8__yValue.o" "ffd1LatticeShape.cp[8].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_8__zValue.o" "ffd1LatticeShape.cp[8].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_9__xValue.o" "ffd1LatticeShape.cp[9].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_9__yValue.o" "ffd1LatticeShape.cp[9].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_9__zValue.o" "ffd1LatticeShape.cp[9].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_10__xValue.o" "ffd1LatticeShape.cp[10].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_10__yValue.o" "ffd1LatticeShape.cp[10].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_10__zValue.o" "ffd1LatticeShape.cp[10].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_11__xValue.o" "ffd1LatticeShape.cp[11].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_11__yValue.o" "ffd1LatticeShape.cp[11].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_11__zValue.o" "ffd1LatticeShape.cp[11].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_12__xValue.o" "ffd1LatticeShape.cp[12].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_12__yValue.o" "ffd1LatticeShape.cp[12].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_12__zValue.o" "ffd1LatticeShape.cp[12].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_13__xValue.o" "ffd1LatticeShape.cp[13].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_13__yValue.o" "ffd1LatticeShape.cp[13].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_13__zValue.o" "ffd1LatticeShape.cp[13].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_14__xValue.o" "ffd1LatticeShape.cp[14].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_14__yValue.o" "ffd1LatticeShape.cp[14].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_14__zValue.o" "ffd1LatticeShape.cp[14].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_15__xValue.o" "ffd1LatticeShape.cp[15].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_15__yValue.o" "ffd1LatticeShape.cp[15].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_15__zValue.o" "ffd1LatticeShape.cp[15].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_16__xValue.o" "ffd1LatticeShape.cp[16].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_16__yValue.o" "ffd1LatticeShape.cp[16].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_16__zValue.o" "ffd1LatticeShape.cp[16].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_17__xValue.o" "ffd1LatticeShape.cp[17].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_17__yValue.o" "ffd1LatticeShape.cp[17].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_17__zValue.o" "ffd1LatticeShape.cp[17].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_18__xValue.o" "ffd1LatticeShape.cp[18].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_18__yValue.o" "ffd1LatticeShape.cp[18].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_18__zValue.o" "ffd1LatticeShape.cp[18].zv"
		;
connectAttr "ffd1LatticeShape_controlPoints_19__xValue.o" "ffd1LatticeShape.cp[19].xv"
		;
connectAttr "ffd1LatticeShape_controlPoints_19__yValue.o" "ffd1LatticeShape.cp[19].yv"
		;
connectAttr "ffd1LatticeShape_controlPoints_19__zValue.o" "ffd1LatticeShape.cp[19].zv"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Puppet_Isolated:polyUnite1.out" "Puppet_Isolated:groupParts1.ig";
connectAttr "Puppet_Isolated:groupId96.id" "Puppet_Isolated:groupParts1.gi";
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.o" "Puppet_Isolated:polyUnite1.ip[0]"
		;
connectAttr "Puppet_Isolated:Front_NeckShape.o" "Puppet_Isolated:polyUnite1.ip[1]"
		;
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.wm" "Puppet_Isolated:polyUnite1.im[0]"
		;
connectAttr "Puppet_Isolated:Front_NeckShape.wm" "Puppet_Isolated:polyUnite1.im[1]"
		;
connectAttr "Puppet_Isolated:polySurfaceShape32.o" "Puppet_Isolated:polyNormal2.ip"
		;
connectAttr "Puppet_Isolated:polySurfaceShape31.o" "Puppet_Isolated:polyNormal1.ip"
		;
connectAttr "Front_HeadShapeOrig.w" "transformGeometry1.ig";
connectAttr "ffd1GroupParts.og" "ffd1.ip[0].ig";
connectAttr "ffd1GroupId.id" "ffd1.ip[0].gi";
connectAttr "ffd1LatticeShape.wm" "ffd1.dlm";
connectAttr "ffd1LatticeShape.lo" "ffd1.dlp";
connectAttr "ffd1BaseShape.wm" "ffd1.blm";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "ffd1GroupId.msg" "ffd1Set.gn" -na;
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[3]" "ffd1Set.dsm"
		 -na;
connectAttr "ffd1.msg" "ffd1Set.ub[0]";
connectAttr "tweak1.og[0]" "ffd1GroupParts.ig";
connectAttr "ffd1GroupId.id" "ffd1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[4]" "tweakSet1.dsm"
		 -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "transformGeometry1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Puppet_Isolated:polyTweak1.out" "polyNormal1.ip";
connectAttr "Puppet_Isolated:polyNormal2.out" "Puppet_Isolated:polyTweak1.ip";
connectAttr "Puppet_Isolated:polyTweak2.out" "polyNormal2.ip";
connectAttr "Puppet_Isolated:polyNormal1.out" "Puppet_Isolated:polyTweak2.ip";
connectAttr "Puppet_Isolated:polySurfaceShape33.o" "polyNormal3.ip";
connectAttr "Puppet_Isolated:polySurfaceShape34.o" "polyNormal4.ip";
connectAttr "Puppet_Isolated:polySurfaceShape35.o" "polyNormal5.ip";
connectAttr "Puppet_Isolated:polySurfaceShape36.o" "polyNormal6.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Puppet_Isolated:Front_LegLtShape1.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:Front_LegLtShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:Front_LegLtShape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:Front_TorsoShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:FrontArmLtShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:FrontArmLtShape1.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:FrontArmLtShape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:FrontArmLt3Shape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:FrontArmLtShape4.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:FrontArmLtShape5.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:Front_LegRtShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:Front_LegRtShape1.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Puppet_Isolated:Front_LegRtShape2.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:FrontView_GoodCop|Puppet_Isolated:Front_Head|Puppet_Isolated:transform2|Puppet_Isolated:Front_HeadShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Puppet_Isolated:Front_NeckShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Puppet_Isolated:Front_NeckShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Puppet_Isolated:MAIN_group|Puppet_Isolated:Ctrl_MAIN|Puppet_Isolated:Controllers|Puppet_Isolated:Ctrl_torso|Puppet_Isolated:Pelvis|Puppet_Isolated:Spine1|Puppet_Isolated:joint10|Puppet_Isolated:joint11|Puppet_Isolated:Spine2|Puppet_Isolated:Spine3|Puppet_Isolated:Neck|Puppet_Isolated:Head|Puppet_Isolated:Front_Head|Puppet_Isolated:Front_HeadShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Puppet_Isolated:groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "Puppet_Isolated:groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "Puppet_Isolated:groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "Puppet_Isolated:groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "Puppet_Isolated:groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "Puppet_Isolated:ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Puppet_Test_v06_AnimationTests (std gridsize).ma
