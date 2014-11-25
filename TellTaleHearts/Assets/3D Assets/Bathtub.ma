//Maya ASCII 2015 scene
//Name: Bathtub.ma
//Last modified: Mon, Nov 24, 2014 09:06:44 PM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.91973305897315161 2.7787033964035524 0.72404106370460897 ;
	setAttr ".r" -type "double3" 292.46164727005828 -50.199999999999655 -9.9375300328135304e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 3.2581711257909918;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.10000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 4.3522070859583897;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.057853041196338641 -0.25069651185080277 100.10000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 3.0784063195404641;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere2";
createNode mesh -n "polySurfaceShape1" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:165]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 274 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.42500219 0.03369692 0.42389822
		 0.13100424 0.37982714 0.12355612 0.38070092 0.012273548 0.45810756 0.056698512 0.45757076
		 0.13938001 0.42301896 0.23542933 0.37897912 0.2350269 0.32646218 0.11414872 0.32671043
		 0.0018656986 0.47527772 0.15324077 0.47480917 0.081552155 0.45691833 0.23462506 0.42271569
		 0.34057274 0.37878606 0.34950894 0.32572722 0.23490596 0.47450942 0.23460487 0.45673648
		 0.33053291 0.42364839 0.44744965 0.37960044 0.46112344 0.32571298 0.35906613 0.4747695
		 0.31279403 0.45771179 0.42540166 0.32665169 0.48442757 0.47436222 0.39987162 0.41733176
		 0.65744448 0.41628239 0.58118254 0.46063358 0.58114958 0.46137971 0.66424412 0.38326836
		 0.64949149 0.38263297 0.58040386 0.41672885 0.50409836 0.46124452 0.49572557 0.51377589
		 0.58115435 0.51432848 0.67247552 0.38271737 0.51562029 0.51467264 0.48841909 0.53265321
		 0.43717587 0.53364372 0.32302928 0.57812077 0.33181867 0.57716882 0.45647195 0.4986417
		 0.41249657 0.49953488 0.31349954 0.53351271 0.24121386 0.57804394 0.24203239 0.63141906
		 0.33999366 0.630597 0.47765416 0.48200685 0.38722092 0.48169729 0.29582074 0.49942857
		 0.24001423 0.53368777 0.13236815 0.57831019 0.12495746 0.63139945 0.24342096 0.48197934
		 0.2390109 0.49966446 0.14122657 0.53167343 0.033280373 0.57626814 0.0093003474 0.63184804
		 0.11555676 0.48223862 0.15523599 0.49819538 0.061309218 0.63028693 0.0018657093 0.48162919
		 0.0864297 0.554286 0.66320628 0.55379039 0.58341354 0.59836388 0.58348483 0.59888071
		 0.67415291 0.52080792 0.65188938 0.52088886 0.58454543 0.55451483 0.50361252 0.5988161
		 0.4901762 0.65207106 0.58342087 0.6528995 0.68053269 0.52140951 0.51305878 0.65280658
		 0.48164558 0.71429688 0.66114873 0.7348302 0.61190319 0.75994271 0.69142818 0.67122173
		 0.61045521 0.69861424 0.53876662 0.75957179 0.59965318 0.71772957 0.72243559 0.70802742
		 0.68917561 0.65903491 0.69181931 0.76009911 0.50767297 0.7845813 0.61213523 0.6727373
		 0.77000844 0.73615891 0.75881541 0.68936414 0.51391298 0.76085079 0.47818333 0.81847477
		 0.54485941 0.80538011 0.66162318 0.70058948 0.85708612 0.76000363 0.77284831 0.82819474
		 0.51973891 0.84901226 0.6136657 0.81144035 0.6929009 0.80223584 0.72201586 0.76072448
		 0.88363296 0.78418374 0.75808382 0.86004156 0.69744062 0.84671551 0.75425053 0.81692576
		 0.84565061 0.69231659 0.88261604 0.76140416 0.91430169 0.82618779 0.87092626 0.76884377
		 0.1647439 0.80350703 0.088371381 0.83137268 0.15909323 0.78600049 0.21408063 0.74570823
		 0.15291665 0.74522871 0.056578096 0.81444454 0.057581469 0.84851444 0.14705124 0.84064293
		 0.24552175 0.78785455 0.2421007 0.7452637 0.24449188 0.7221548 0.16488433 0.68966985
		 0.094062477 0.74555522 0.02872739 0.8289969 0.32983541 0.78255361 0.27547663 0.7046985
		 0.21443594 0.658234 0.16246781 0.67645335 0.058123566 0.7452814 0.0018657093 0.82994825
		 0.032049529 0.80077344 0.41372368 0.76737767 0.31219777 0.7030406 0.24581489 0.65001655
		 0.2513971 0.63949436 0.149533 0.66358805 0.030384757 0.74489689 0.43993545 0.74532861
		 0.32592225 0.70790702 0.27514452 0.66093528 0.31201139 0.80957538 0.44242597 0.74502289
		 0.47419187 0.69216478 0.4033488 0.72281116 0.31138697 0.67921644 0.43436033 0.64329726
		 0.32825711 0.85624814 0.22851557 0.89226198 0.22807579 0.89229155 0.32690617 0.85625112
		 0.31282926 0.85582811 0.14208706 0.89181882 0.13004507 0.93540716 0.2277949 0.93544245
		 0.33853927 0.89231288 0.42541981 0.8562721 0.39671749 0.93488061 0.11969706 0.98751408
		 0.22770329 0.98750538 0.34982356 0.93543679 0.44444528 0.89225584 0.040575296 0.93536276
		 0.015043358 0.98682088 0.10864437 0.98751324 0.47060207 0.98736954 0.0018657093 0.99800676
		 0.7038306 0.96191645 0.70420176 0.96146697 0.6019665 0.99753851 0.6149013 0.99800813
		 0.76444483 0.96195215 0.78069061 0.91874754 0.70525134 0.91826421 0.5919323 0.91878182
		 0.79163605 0.8666293 0.70667177 0.8661769 0.5806573 0.91882521 0.48281828 0.96194214
		 0.51055706 0.96198612 0.88679385 0.9188484 0.91073537 0.86670595 0.80154598 0.86680782
		 0.47459352 0.86679292 0.934717 0.22299211 0.58401603 0.26611611 0.57543385 0.26610872
		 0.64875036 0.22300133 0.64856845 0.31819251 0.56544405 0.31819689 0.64881462 0.26615417
		 0.72460735 0.22301653 0.71437484 0.31820968 0.73363036 0.32448038 0.49536458 0.37649766
		 0.48841906 0.37641776 0.57748353 0.3243821 0.57705796 0.37635174 0.6682362 0.32434499
		 0.66172487 0.29218215 0.15068065 0.25211787 0.043901965 0.26299921 0.037026372 0.30261105
		 0.14930941 0.16136523 0.012378627 0.1612239 0.0018657093 0.31824195 0.27006665 0.30590531
		 0.26973957 0.072300747 0.0471901 0.06411209 0.038241673 0.28798813 0.39185983 0.29924878
		 0.39422679 0.026060684 0.1532539 0.015492425 0.1519327 0.24380559 0.51263839 0.25161764
		 0.51958829 0.014244367 0.27926841 0.0019920275 0.27979693 0.16043501 0.55129832 0.16029647
		 0.56145263 0.031314183 0.37414259 0.019962028 0.3763696 0.075619265 0.50731361 0.067561164
		 0.5140301 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375
		 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625
		 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25
		 0.875 0 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".uvst[0].uvsp[250:273]" 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25
		 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875
		 0 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 166 ".vt[0:165]"  0.28629029 -0.52256471 -0.087036043 0.1038726 -0.52216077 -0.15047143
		 -0.12313309 -0.52217728 -0.13772687 -0.25890577 -0.52216274 -0.081615344 -0.30965075 -0.5221467 -9.0845424e-05
		 -0.25590792 -0.52212781 0.083164923 -0.12190513 -0.52210939 0.13827156 0.1025589 -0.52213478 0.15013468
		 0.28577101 -0.52151418 0.085591882 0.33002037 -0.52205354 -0.0014946131 0.56867003 -0.45060951 -0.21520022
		 0.30718306 -0.45219621 -0.31823036 -0.32411927 -0.45063245 -0.30944616 -0.63428771 -0.45055482 -0.20509291
		 -0.73120308 -0.45053047 0.0015051892 -0.59592766 -0.45049608 0.19647692 -0.25821662 -0.45039535 0.31194499
		 0.29470587 -0.44865918 0.32193261 0.54762781 -0.45045403 0.20570177 0.68622261 -0.45052442 0.00027833873
		 0.68251276 -0.31750855 -0.25564033 0.35170716 -0.31912431 -0.38161036 -0.37616721 -0.31737646 -0.36922377
		 -0.74041158 -0.3172977 -0.23763709 -0.85786301 -0.31726357 0.0010393136 -0.71058977 -0.31720743 0.24435195
		 -0.31828362 -0.3170819 0.37715989 0.34253106 -0.31528801 0.39122039 0.68050843 -0.31704488 0.25456828
		 0.78919786 -0.3172906 -0.00092885055 0.77691454 -0.15812494 -0.31296393 0.38996789 -0.15990774 -0.4309867
		 -0.41917947 -0.15783033 -0.41883382 -0.81075662 -0.15785095 -0.26936883 -0.94580877 -0.15787838 0.0017116508
		 -0.79911119 -0.15771021 0.28218547 -0.35875329 -0.15746412 0.42780206 0.37963158 -0.1555503 0.4431985
		 0.78306991 -0.15762429 0.30213672 0.88851625 -0.15798779 8.3582869e-05 0.82563758 0.034164868 -0.3370389
		 0.43083405 0.032136153 -0.48517254 -0.46090209 0.034667253 -0.46966556 -0.90746862 0.034696449 -0.30630502
		 -1.050409913 0.034712505 0.0019494272 -0.88778085 0.034759842 0.3155472 -0.39539421 0.035081256 0.47936085
		 0.42131972 0.037037283 0.49878517 0.81348008 0.034704484 0.32781711 0.94219208 0.034408975 -0.0014899728
		 -0.0085699698 -0.53251863 0.00014908105 0.28601152 -0.56882179 -0.09301801 0.10393101 -0.56705385 -0.16893801
		 -0.12267123 -0.5669359 -0.15624607 -0.25718206 -0.56829953 -0.088105507 -0.30906722 -0.56842893 5.8191872e-05
		 -0.25447711 -0.56834346 0.089461781 -0.12111924 -0.56720859 0.15620747 0.10217658 -0.56740743 0.16783306
		 0.2851536 -0.56782925 0.09093152 0.33130446 -0.56855863 -0.0015386827 0.37358245 -0.33763435 -0.44087756
		 0.73336661 -0.3417162 -0.29605088 -0.40127632 -0.33326215 -0.43086433 -0.7964431 -0.33671063 -0.27961341
		 -0.92848063 -0.34059063 0.0023574822 -0.76295 -0.33893976 0.28736848 -0.34090438 -0.33527717 0.43834877
		 0.36404625 -0.33511445 0.44965839 0.73041344 -0.34256229 0.29403111 0.85467875 -0.34439471 -0.00099455717
		 0.40112114 -0.17468588 -0.47998559 0.81257743 -0.17791666 -0.34573033 -0.43431693 -0.17083658 -0.46894377
		 -0.84700048 -0.17384772 -0.30475441 -0.99571413 -0.17660637 0.0024793767 -0.83429533 -0.17434752 0.31832606
		 -0.37340224 -0.17082773 0.47801423 0.39144653 -0.17012747 0.49135455 0.81907725 -0.17767775 0.33450535
		 0.93626952 -0.17958884 -0.0007308182 0.43590409 0.022625819 -0.52373242 0.85105944 0.021707861 -0.37727156
		 -0.4696537 0.025395876 -0.5113008 -0.93316537 0.021925056 -0.33518928 -1.087954521 0.019882012 0.0024616551
		 -0.91261452 0.023197696 0.34534127 -0.40362847 0.026237179 0.52133435 0.42620468 0.027823489 0.53786027
		 0.84656608 0.022051422 0.35809383 0.98106247 0.018988181 -0.0009674413 -0.0080244271 -0.57440203 -0.00016704216
		 0.29136512 -0.52760506 -0.32820392 0.34261391 -0.46213531 -0.39098567 0.55642664 -0.52587259 -0.22692299
		 0.64832056 -0.46411994 -0.26112431 -0.29856721 -0.52572584 -0.32260045 -0.36415505 -0.45905045 -0.38323087
		 -0.62052804 -0.52421999 -0.21961968 -0.71492273 -0.46265659 -0.25020802 -0.71868241 -0.52668375 0.0027234659
		 -0.83207726 -0.46500605 0.0052366131 -0.57824659 -0.52619952 0.21052192 -0.67170084 -0.46469387 0.24476732
		 -0.24030358 -0.52734411 0.32066691 -0.30566907 -0.4613913 0.38481843 0.27949467 -0.52534252 0.32915869
		 0.33129311 -0.46091229 0.39422181 0.53389907 -0.52759594 0.21624918 0.62677962 -0.46634403 0.25218809
		 0.67139214 -0.52741981 0.00041112545 0.78042716 -0.46604472 0.0031905184 0.00027120701 -0.52229136 -0.15732662
		 -0.012377827 -0.45064336 -0.35250625 -0.010751737 -0.31748578 -0.42017552 -0.0097131738 -0.1579607 -0.47816321
		 -0.0093744732 0.034699503 -0.53591263 -0.010583779 0.025343129 -0.5815261 -0.011030963 -0.17155041 -0.53306913
		 -0.012518941 -0.3343834 -0.48847359 -0.009545208 -0.45972294 -0.43372396 -0.0094705401 -0.52476418 -0.37326375
		 0.00030420945 -0.56501502 -0.1921187 -0.013461684 -0.52197641 0.15626459 -0.034101337 -0.45039052 0.35231581
		 -0.035473626 -0.31695005 0.42679313 -0.03935419 -0.15733732 0.48498309 -0.044606403 0.035364699 0.54247481
		 -0.046560537 0.026164837 0.58777666 -0.041426416 -0.171112 0.53983277 -0.038399983 -0.33576179 0.49430788
		 -0.033964489 -0.46178439 0.43326285 -0.030254696 -0.52630121 0.36993867 -0.013469663 -0.56501603 0.19024038
		 -0.7261129 -0.58449143 0.27123082 -0.58825445 -0.61409968 0.2712954 -0.69112146 -0.42162558 0.24505079
		 -0.55326307 -0.45123386 0.24511535 -0.69361722 -0.43341327 0.16838406 -0.55575883 -0.46302152 0.16844864
		 -0.72860873 -0.59627903 0.19456409 -0.59075028 -0.62588727 0.19462866 0.72611761 -0.5847888 0.2708694
		 0.58824611 -0.61433607 0.2708694 0.69118255 -0.42177692 0.24553707 0.55331099 -0.45132419 0.24553707
		 0.69362569 -0.43317685 0.16881004 0.55575413 -0.46272412 0.16881004 0.72856081 -0.59618872 0.1941424
		 0.59068924 -0.625736 0.1941424 0.72611761 -0.5847888 -0.2708694 0.58824611 -0.61433607 -0.2708694
		 0.69118255 -0.42177692 -0.24553707 0.55331099 -0.45132419 -0.24553707 0.69362569 -0.43317685 -0.16881004
		 0.55575413 -0.46272412 -0.16881004 0.72856081 -0.59618872 -0.1941424 0.59068924 -0.625736 -0.1941424
		 -0.7261129 -0.58449149 -0.27123082 -0.58825445 -0.61409968 -0.2712954 -0.69112146 -0.42162558 -0.24505079
		 -0.55326307 -0.45123386 -0.24511535 -0.69361722 -0.43341327 -0.16838406 -0.55575883 -0.46302152 -0.16844864
		 -0.72860873 -0.59627908 -0.19456412 -0.59075028 -0.62588733 -0.19462867;
	setAttr -s 322 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 112 1 2 3 1 3 4 1 4 5 1 5 6 1 6 123 1 7 8 1
		 8 9 1 9 0 1 10 11 1 11 113 1 12 13 1 13 14 1 14 15 1 15 16 1 16 124 1 17 18 1 18 19 1
		 19 10 1 20 21 1 21 114 1 22 23 1 23 24 1 24 25 1 25 26 1 26 125 1 27 28 1 28 29 1
		 29 20 1 30 31 1 31 115 1 32 33 1 33 34 1 34 35 1 35 36 1 36 126 1 37 38 1 38 39 1
		 39 30 1 40 41 1 41 116 1 42 43 1 43 44 1 44 45 1 45 46 1 46 127 1 47 48 1 48 49 1
		 49 40 1 0 10 1 1 11 1 2 12 1 3 13 1 4 14 1 5 15 1 6 16 1 7 17 1 8 18 1 9 19 1 10 20 1
		 11 21 1 12 22 1 13 23 1 14 24 1 15 25 1 16 26 1 17 27 1 18 28 1 19 29 1 20 30 1 21 31 1
		 22 32 1 23 33 1 24 34 1 25 35 1 26 36 1 27 37 1 28 38 1 29 39 1 30 40 1 31 41 1 32 42 1
		 33 43 1 34 44 1 35 45 1 36 46 1 37 47 1 38 48 1 39 49 1 50 0 1 50 1 1 50 2 1 50 3 1
		 50 4 1 50 5 1 50 6 1 50 7 1 50 8 1 50 9 1 51 52 1 52 122 1 53 54 1 54 55 1 55 56 1
		 56 57 1 57 133 1 58 59 1 59 60 1 60 51 1 62 61 1 61 119 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 130 1 68 69 1 69 70 1 70 62 1 61 71 1 72 71 1 62 72 1 63 73 1 71 118 1
		 64 74 1 73 74 1 65 75 1 74 75 1 66 76 1 75 76 1 67 77 1 76 77 1 68 78 1 77 129 1
		 69 79 1 78 79 1 70 80 1 79 80 1 80 72 1 41 81 1 71 81 1 40 82 1 82 81 1 72 82 1 42 83 1
		 73 83 1 81 117 1 43 84 1 74 84 1 83 84 1 44 85 1 75 85 1 84 85 1 45 86 1 76 86 1
		 85 86 1 46 87 1 77 87 1 86 87 1 47 88 1 78 88 1 87 128 1 48 89 1 79 89 1 88 89 1;
	setAttr ".ed[166:321]" 49 90 1 80 90 1 89 90 1 90 82 1 91 51 1 91 52 1 91 53 1
		 91 54 1 91 55 1 91 56 1 91 57 1 91 58 1 91 59 1 91 60 1 92 93 1 93 95 1 95 94 1 94 92 1
		 92 121 1 96 97 1 97 120 1 95 111 1 111 110 1 110 94 1 96 98 1 98 99 1 99 97 1 98 100 1
		 100 101 1 101 99 1 100 102 1 102 103 1 103 101 1 102 104 1 104 105 1 105 103 1 104 132 1
		 106 107 1 107 131 1 106 108 1 108 109 1 109 107 1 108 110 1 111 109 1 52 92 1 94 51 1
		 53 96 1 54 98 1 55 100 1 56 102 1 57 104 1 58 106 1 59 108 1 60 110 1 93 61 1 62 95 1
		 97 63 1 99 64 1 101 65 1 103 66 1 105 67 1 107 68 1 109 69 1 111 70 1 112 2 1 113 12 1
		 114 22 1 115 32 1 116 42 1 117 83 1 118 73 1 119 63 1 120 93 1 121 96 1 122 53 1
		 112 113 1 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1
		 121 122 1 123 7 1 124 17 1 125 27 1 126 37 1 127 47 1 128 88 1 129 78 1 130 68 1
		 131 105 1 132 106 1 133 58 1 123 124 1 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1
		 129 130 1 130 131 1 131 132 1 132 133 1 123 50 1 112 50 1 134 135 0 136 137 0 138 139 0
		 140 141 0 134 136 0 135 137 0 136 138 0 137 139 0 138 140 0 139 141 0 140 134 0 141 135 0
		 142 143 0 144 145 0 146 147 0 148 149 0 142 144 0 143 145 0 144 146 0 145 147 0 146 148 0
		 147 149 0 148 142 0 149 143 0 150 151 0 152 153 0 154 155 0 156 157 0 150 152 0 151 153 0
		 152 154 0 153 155 0 154 156 0 155 157 0 156 150 0 157 151 0 158 159 0 160 161 0 162 163 0
		 164 165 0 158 160 0 159 161 0 160 162 0 161 163 0 162 164 0 163 165 0 164 158 0 165 159 0;
	setAttr -s 166 -ch 644 ".fc[0:165]" -type "polyFaces" 
		f 4 110 120 -122 -123
		mu 0 4 0 1 2 3
		f 4 247 237 123 -237
		mu 0 4 7 6 13 14
		f 4 112 125 -127 -124
		mu 0 4 13 18 19 14
		f 4 113 127 -129 -126
		mu 0 4 25 26 27 28
		f 4 114 129 -131 -128
		mu 0 4 26 31 32 27
		f 4 115 131 -133 -130
		mu 0 4 37 38 39 40
		f 4 268 258 133 -258
		mu 0 4 44 43 50 51
		f 4 117 135 -137 -134
		mu 0 4 50 55 56 51
		f 4 118 137 -139 -136
		mu 0 4 62 63 64 65
		f 4 119 122 -140 -138
		mu 0 4 63 68 69 64
		f 4 121 141 -144 -145
		mu 0 4 3 2 8 9
		f 4 246 236 146 -236
		mu 0 4 15 7 14 20
		f 4 126 149 -151 -147
		mu 0 4 14 19 23 20
		f 4 128 152 -154 -150
		mu 0 4 28 27 33 34
		f 4 130 155 -157 -153
		mu 0 4 27 32 36 33
		f 4 132 158 -160 -156
		mu 0 4 40 39 45 46
		f 4 267 257 161 -257
		mu 0 4 52 44 51 57
		f 4 136 164 -166 -162
		mu 0 4 51 56 60 57
		f 4 138 167 -169 -165
		mu 0 4 65 64 70 71
		f 4 139 144 -170 -168
		mu 0 4 64 69 73 70
		f 3 -101 -171 171
		mu 0 3 74 75 76
		f 4 -241 -102 -172 172
		mu 0 4 80 81 74 76
		f 3 -103 -173 173
		mu 0 3 86 80 76
		f 3 -104 -174 174
		mu 0 3 92 86 76
		f 3 -105 -175 175
		mu 0 3 98 92 76
		f 3 -106 -176 176
		mu 0 3 96 98 76
		f 4 -262 -107 -177 177
		mu 0 4 90 95 96 76
		f 3 -108 -178 178
		mu 0 3 84 90 76
		f 3 -109 -179 179
		mu 0 3 79 84 76
		f 3 -110 -180 170
		mu 0 3 75 79 76
		f 4 50 10 -52 -1
		mu 0 4 105 106 107 108
		f 4 241 231 -53 -231
		mu 0 4 114 113 119 120
		f 4 52 12 -54 -3
		mu 0 4 120 119 126 127
		f 4 53 13 -55 -4
		mu 0 4 127 126 132 133
		f 4 54 14 -56 -5
		mu 0 4 133 132 138 139
		f 4 55 15 -57 -6
		mu 0 4 139 138 135 134
		f 4 262 252 -58 -252
		mu 0 4 128 129 122 121
		f 4 57 17 -59 -8
		mu 0 4 121 122 117 116
		f 4 58 18 -60 -9
		mu 0 4 116 117 110 109
		f 4 59 19 -51 -10
		mu 0 4 109 110 106 105
		f 4 60 20 -62 -11
		mu 0 4 106 111 112 107
		f 4 242 232 -63 -232
		mu 0 4 142 143 144 145
		f 4 62 22 -64 -13
		mu 0 4 145 144 150 151
		f 4 63 23 -65 -14
		mu 0 4 126 136 137 132
		f 4 64 24 -66 -15
		mu 0 4 132 137 140 138
		f 4 65 25 -67 -16
		mu 0 4 138 140 141 135
		f 4 263 253 -68 -253
		mu 0 4 161 162 163 164
		f 4 67 27 -69 -18
		mu 0 4 122 130 123 117
		f 4 68 28 -70 -19
		mu 0 4 117 123 118 110
		f 4 69 29 -61 -20
		mu 0 4 110 118 111 106
		f 4 70 30 -72 -21
		mu 0 4 156 157 152 147
		f 4 243 233 -73 -233
		mu 0 4 143 148 149 144
		f 4 72 32 -74 -23
		mu 0 4 144 149 155 150
		f 4 73 33 -75 -24
		mu 0 4 179 180 181 182
		f 4 74 34 -76 -25
		mu 0 4 182 181 185 186
		f 4 75 35 -77 -26
		mu 0 4 174 175 169 166
		f 4 264 254 -78 -254
		mu 0 4 162 167 168 163
		f 4 77 37 -79 -28
		mu 0 4 163 168 172 173
		f 4 78 38 -80 -29
		mu 0 4 123 131 124 118
		f 4 79 39 -71 -30
		mu 0 4 118 124 125 111
		f 4 80 40 -82 -31
		mu 0 4 157 160 158 152
		f 4 244 234 -83 -234
		mu 0 4 148 153 154 149
		f 4 82 42 -84 -33
		mu 0 4 149 154 159 155
		f 4 83 43 -85 -34
		mu 0 4 180 183 184 181
		f 4 84 44 -86 -35
		mu 0 4 181 184 187 185
		f 4 85 45 -87 -36
		mu 0 4 175 178 176 169
		f 4 265 255 -88 -255
		mu 0 4 167 170 171 168
		f 4 87 47 -89 -38
		mu 0 4 168 171 177 172
		f 4 88 48 -90 -39
		mu 0 4 188 189 190 191
		f 4 89 49 -81 -40
		mu 0 4 191 190 192 193
		f 3 -92 90 0
		mu 0 3 108 115 105
		f 3 273 91 1
		mu 0 3 114 115 108
		f 3 -94 92 2
		mu 0 3 127 115 120
		f 3 -95 93 3
		mu 0 3 133 115 127
		f 3 -96 94 4
		mu 0 3 139 115 133
		f 3 -97 95 5
		mu 0 3 134 115 139
		f 3 272 96 6
		mu 0 3 128 115 134
		f 3 -99 97 7
		mu 0 3 116 115 121
		f 3 -100 98 8
		mu 0 3 109 115 116
		f 3 -91 99 9
		mu 0 3 105 115 109
		f 4 -41 142 143 -141
		mu 0 4 194 195 196 197
		f 4 -235 245 235 -146
		mu 0 4 204 201 200 205
		f 4 -43 145 150 -149
		mu 0 4 208 204 205 209
		f 4 -44 148 153 -152
		mu 0 4 212 208 209 213
		f 4 -45 151 156 -155
		mu 0 4 216 212 213 217
		f 4 -46 154 159 -158
		mu 0 4 214 216 217 215
		f 4 -256 266 256 -161
		mu 0 4 206 210 211 207
		f 4 -48 160 165 -164
		mu 0 4 202 206 207 203
		f 4 -49 163 168 -167
		mu 0 4 198 202 203 199
		f 4 -50 166 169 -143
		mu 0 4 195 198 199 196
		f 4 180 181 182 183
		mu 0 4 10 5 4 11
		f 4 249 239 185 186
		mu 0 4 12 16 21 17
		f 4 -183 187 188 189
		mu 0 4 78 87 88 83
		f 4 -186 190 191 192
		mu 0 4 17 21 24 22
		f 4 -192 193 194 195
		mu 0 4 102 91 97 103
		f 4 -195 196 197 198
		mu 0 4 103 97 101 104
		f 4 -198 199 200 201
		mu 0 4 41 47 48 42
		f 4 270 260 203 204
		mu 0 4 49 53 58 54
		f 4 -204 205 206 207
		mu 0 4 54 58 61 59
		f 4 -207 208 -189 209
		mu 0 4 93 89 83 88
		f 4 100 210 -184 211
		mu 0 4 75 74 77 78
		f 4 250 240 212 -240
		mu 0 4 82 81 80 85
		f 4 102 213 -191 -213
		mu 0 4 80 86 91 85
		f 4 103 214 -194 -214
		mu 0 4 86 92 97 91
		f 4 104 215 -197 -215
		mu 0 4 92 98 101 97
		f 4 105 216 -200 -216
		mu 0 4 98 96 100 101
		f 4 271 261 217 -261
		mu 0 4 99 95 90 94
		f 4 107 218 -206 -218
		mu 0 4 90 84 89 94
		f 4 108 219 -209 -219
		mu 0 4 84 79 83 89
		f 4 109 -212 -190 -220
		mu 0 4 79 75 78 83
		f 4 -182 220 -111 221
		mu 0 4 4 5 1 0
		f 4 248 -187 222 -238
		mu 0 4 6 12 17 13
		f 4 -193 223 -113 -223
		mu 0 4 17 22 18 13
		f 4 -196 224 -114 -224
		mu 0 4 29 30 26 25
		f 4 -199 225 -115 -225
		mu 0 4 30 35 31 26
		f 4 -202 226 -116 -226
		mu 0 4 41 42 38 37
		f 4 269 -205 227 -259
		mu 0 4 43 49 54 50
		f 4 -208 228 -118 -228
		mu 0 4 54 59 55 50
		f 4 -210 229 -119 -229
		mu 0 4 66 67 63 62
		f 4 -188 -222 -120 -230
		mu 0 4 67 72 68 63
		f 4 51 11 -242 -2
		mu 0 4 108 107 113 114
		f 4 61 21 -243 -12
		mu 0 4 146 147 143 142
		f 4 71 31 -244 -22
		mu 0 4 147 152 148 143
		f 4 81 41 -245 -32
		mu 0 4 152 158 153 148
		f 4 -246 -42 140 147
		mu 0 4 200 201 194 197
		f 4 124 -247 -148 -142
		mu 0 4 2 7 15 8
		f 4 111 -248 -125 -121
		mu 0 4 1 6 7 2
		f 4 -239 -249 -112 -221
		mu 0 4 5 12 6 1
		f 4 -181 184 -250 238
		mu 0 4 5 10 16 12
		f 4 101 -251 -185 -211
		mu 0 4 74 81 82 77
		f 4 56 16 -263 -7
		mu 0 4 134 135 129 128
		f 4 66 26 -264 -17
		mu 0 4 165 166 162 161
		f 4 76 36 -265 -27
		mu 0 4 166 169 167 162
		f 4 86 46 -266 -37
		mu 0 4 169 176 170 167
		f 4 -267 -47 157 162
		mu 0 4 211 210 214 215
		f 4 134 -268 -163 -159
		mu 0 4 39 44 52 45
		f 4 116 -269 -135 -132
		mu 0 4 38 43 44 39
		f 4 -260 -270 -117 -227
		mu 0 4 42 49 43 38
		f 4 -201 202 -271 259
		mu 0 4 42 48 53 49
		f 4 106 -272 -203 -217
		mu 0 4 96 95 99 100
		f 3 -98 -273 251
		mu 0 3 121 115 128
		f 3 -93 -274 230
		mu 0 3 120 115 114
		f 4 274 279 -276 -279
		mu 0 4 218 219 220 221
		f 4 275 281 -277 -281
		mu 0 4 221 220 222 223
		f 4 276 283 -278 -283
		mu 0 4 223 222 224 225
		f 4 277 285 -275 -285
		mu 0 4 225 224 226 227
		f 4 -286 -284 -282 -280
		mu 0 4 219 228 229 220
		f 4 284 278 280 282
		mu 0 4 230 218 221 231
		f 4 290 287 -292 -287
		mu 0 4 232 233 234 235
		f 4 292 288 -294 -288
		mu 0 4 233 236 237 234
		f 4 294 289 -296 -289
		mu 0 4 236 238 239 237
		f 4 296 286 -298 -290
		mu 0 4 238 240 241 239
		f 4 291 293 295 297
		mu 0 4 235 234 242 243
		f 4 -295 -293 -291 -297
		mu 0 4 244 245 233 232
		f 4 298 303 -300 -303
		mu 0 4 246 247 248 249
		f 4 299 305 -301 -305
		mu 0 4 249 248 250 251
		f 4 300 307 -302 -307
		mu 0 4 251 250 252 253
		f 4 301 309 -299 -309
		mu 0 4 253 252 254 255
		f 4 -310 -308 -306 -304
		mu 0 4 247 256 257 248
		f 4 308 302 304 306
		mu 0 4 258 246 249 259
		f 4 314 311 -316 -311
		mu 0 4 260 261 262 263
		f 4 316 312 -318 -312
		mu 0 4 261 264 265 262
		f 4 318 313 -320 -313
		mu 0 4 264 266 267 265
		f 4 320 310 -322 -314
		mu 0 4 266 268 269 267
		f 4 315 317 319 321
		mu 0 4 263 262 270 271
		f 4 -319 -317 -315 -321
		mu 0 4 272 273 261 260;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "polySurface1" -p "pSphere2";
	setAttr ".t" -type "double3" 0.037743801985687282 0.20910829992034558 0 ;
	setAttr ".s" -type "double3" 1.6031857305492521 1.6031857305492521 1.6031857305492521 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35092055425047874 0.35274180024862289 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[129]" -type "float3" -1.1920929e-09 0 1.1920929e-09 ;
	setAttr ".pt[153]" -type "float3" -1.1920929e-09 0 1.1920929e-09 ;
	setAttr ".vbc" no;
	setAttr ".dr" 1;
createNode transform -n "polySurface2" -p "pSphere2";
createNode mesh -n "polySurfaceShape3" -p "polySurface2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "polySurface3" -p "pSphere2";
createNode mesh -n "polySurfaceShape4" -p "polySurface3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "polySurface4" -p "pSphere2";
createNode mesh -n "polySurfaceShape5" -p "polySurface4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "polySurface5" -p "pSphere2";
createNode mesh -n "polySurfaceShape6" -p "polySurface5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46842451900010929 0.84758934378623962 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode transform -n "transform1" -p "pSphere2";
	setAttr ".v" no;
createNode mesh -n "pSphere2Shape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 10 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.0690169525146485 2.0690169525146485 2.0690169525146485 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:165]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 5;
	setAttr -s 5 ".out";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:141]";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyBevel2 -n "polyBevel1";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 11 "e[143]" "e[147]" "e[150]" "e[153]" "e[156]" "e[159]" "e[162]" "e[165]" "e[168:169]" "e[235]" "e[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel2 -n "polyBevel2";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 3 "e[40:49]" "e[204]" "e[222]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[123]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[124]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[127]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[128]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[131]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[133]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[135]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[137]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[139]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[140]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[143]" -type "float3" 0 -1.6639656 0 ;
	setAttr ".tk[145]" -type "float3" 0 -1.6639656 0 ;
createNode polySplit -n "polySplit1";
	setAttr -s 14 ".e[0:13]"  0.39762801 0.39762801 0.39762801 0.39762801
		 0.60237199 0.39762801 0.60237199 0.39762801 0.39762801 0.39762801 0.60237199 0.39762801
		 0.39762801 0.39762801;
	setAttr -s 14 ".d[0:13]"  -2147483642 -2147483632 -2147483622 -2147483612 -2147483359 -2147483361 
		-2147483407 -2147483409 -2147483534 -2147483552 -2147483446 -2147483496 -2147483562 -2147483521;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 14 ".e[0:13]"  0.637438 0.637438 0.637438 0.637438 0.362562
		 0.637438 0.362562 0.637438 0.637438 0.637438 0.362562 0.637438 0.637438 0.637438;
	setAttr -s 14 ".d[0:13]"  -2147483647 -2147483637 -2147483627 -2147483617 -2147483377 -2147483379 
		-2147483431 -2147483433 -2147483544 -2147483557 -2147483462 -2147483514 -2147483567 -2147483526;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483436;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483435 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	setAttr -s 3 ".e[0:2]"  0.89152402 0.55013001 0;
	setAttr -s 3 ".d[0:2]"  -2147483314 -2147483300 -2147483522;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 2 "e[348]" "e[379]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge2";
	setAttr ".ics" -type "componentList" 1 "e[373]";
	setAttr ".cv" yes;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[109]" "vtx[184]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[109]";
createNode polySplit -n "polySplit6";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483316 -2147483523;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483462 -2147483527;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483290 -2147483527;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAverageVertex -n "polyAverageVertex1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
	setAttr ".am" yes;
createNode polySplit -n "polySplit9";
	setAttr -s 13 ".e[0:12]"  0.55098599 0.55098599 0.55098599 0.55098599
		 0.44901401 0.55098599 0.44901401 0.55098599 0.55098599 0.55098599 0.44901401 0.55098599
		 0.55098599;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483638 -2147483628 -2147483618 -2147483385 -2147483387 
		-2147483432 -2147483430 -2147483547 -2147483558 -2147483519 -2147483517 -2147483568;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483648 -2147483577;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483258 -2147483528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAverageVertex -n "polyAverageVertex2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.4122146941998279 0 0 0 0 1.4122146941998279 0 0 0 0 1.4122146941998279 0
		 -1.4780387628429499 17.381993640427517 0 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 197 ".tk";
	setAttr ".tk[0:165]" -type "float3"  2.40031314 0 2.8421709e-14 1.17631936
		 0 5.6843419e-14 -1.29825461 0 5.6843419e-14 -2.21234798 0 2.8421709e-14 -2.56894374
		 0 1.7763568e-15 -2.23318219 0 -2.8421709e-14 -1.41415703 0 -5.6843419e-14 1.062683821
		 0 -5.6843419e-14 2.25358963 0 -2.8421709e-14 2.54009485 0 8.8817842e-16 4.5087719
		 0 5.6843419e-14 2.6403718 0 1.1368684e-13 -2.76578426 0 1.1368684e-13 -4.66599226
		 0 5.6843419e-14 -5.32782078 0 -4.4408921e-16 -4.62568569 0 -5.6843419e-14 -2.72076488
		 0 -1.1368684e-13 2.46749592 0 -1.1368684e-13 4.11075258 0 -5.6843419e-14 5.11231947
		 0 -8.8817842e-16 5.90103531 0 5.6843419e-14 3.33927703 0 1.1368684e-13 -3.53960109
		 0 1.1368684e-13 -5.95294809 0 5.6843419e-14 -6.81475496 0 -2.220446e-16 -5.95107889
		 0 -5.6843419e-14 -3.6378684 0 -1.1368684e-13 3.081526756 0 -1.1368684e-13 5.47958136
		 0 -1.1368684e-13 6.39248419 0 -8.8817842e-16 6.86371946 0 1.1368684e-13 3.86849332
		 0 2.2737368e-13 -4.12019253 0 1.1368684e-13 -6.83377886 0 1.1368684e-13 -7.85909081
		 0 -8.8817842e-16 -6.9314599 0 -1.1368684e-13 -4.24356985 0 -1.1368684e-13 3.56100416
		 0 -2.2737368e-13 6.39745903 0 -1.1368684e-13 7.42738056 0 -1.7763568e-15 -0.03836973
		 0 1.7763568e-15 2.35477471 0 2.8421709e-14 1.16041481 0 5.6843419e-14 -1.27889824
		 0 5.6843419e-14 -2.15687227 0 2.8421709e-14 -2.522156 0 1.7763568e-15 -2.17877865
		 0 -2.8421709e-14 -1.37880647 0 -5.6843419e-14 1.051641822 0 -5.6843419e-14 2.20536351
		 0 -2.8421709e-14 2.51649094 0 8.8817842e-16 3.75489521 0 2.2737368e-13 6.61949587
		 0 1.1368684e-13 -3.9758842 0 1.1368684e-13 -6.70200109 0 1.1368684e-13 -7.67343664
		 0 -4.4408921e-16 -6.70238066 0 -1.1368684e-13 -4.089919567 0 -1.1368684e-13 3.47539306
		 0 -2.2737368e-13 6.12589169 0 -1.1368684e-13 7.21662664 0 -8.8817842e-16 4.097630501
		 0 2.2737368e-13 7.3168087 0 1.1368684e-13 -4.3909874 0 2.2737368e-13 -7.2720542 0
		 1.1368684e-13 -8.3929987 0 -8.8817842e-16 -7.37509251 0 -1.1368684e-13 -4.53870487
		 0 -2.2737368e-13 3.77855778 0 -2.2737368e-13 6.81518984 0 -1.1368684e-13 7.92980623
		 0 -1.7763568e-15 -0.03150703 0 3.5527137e-15 2.53189802 0 1.1368684e-13 3.24727893
		 0 1.1368684e-13 4.41076946 0 5.6843419e-14 5.66658592 0 1.1368684e-13 -2.61050296
		 0 1.1368684e-13 -3.45454645 0 1.1368684e-13 -4.56077862 0 5.6843419e-14 -5.74666071
		 0 1.1368684e-13 -5.19079065 0 1.110223e-16 -6.61883688 0 -8.8817842e-16 -4.49230289
		 0 -5.6843419e-14 -5.69836521 0 -5.6843419e-14 -2.58607459 0 -1.1368684e-13 -3.51908302
		 0 -1.1368684e-13 2.35394812 0 -1.1368684e-13 2.99967051 0 -1.1368684e-13 4.024151325
		 0 -5.6843419e-14 5.18548346 0 -1.1368684e-13 4.95296001 0 -4.4408921e-16 6.28606606
		 0 -1.7763568e-15 -0.30109513 0 5.6843419e-14 -0.58011705 0 1.1368684e-13 -0.79102677
		 0 1.1368684e-13 -0.91620725 0 2.2737368e-13 -0.98917866 0 2.2737368e-13 -0.91131198
		 0 2.2737368e-13 -0.75438178 0 2.2737368e-13 -0.56467497 0 1.1368684e-13 -0.28088301
		 0 5.6843419e-14 0.15021615 0 -5.6843419e-14 0.15077452 0 -1.1368684e-13 0.30058649
		 0 -1.1368684e-13 0.35330236 0 -2.2737368e-13 0.38590679 0 -2.2737368e-13 0.33796391
		 0 -2.2737368e-13 0.29010111 0 -2.2737368e-13 0.16805783 0 -1.1368684e-13 0.14592366
		 0 -5.6843419e-14 4.44028091 0 2.2737368e-13 4.37201977 0 2.2737368e-13 7.67317009
		 0 1.1368684e-13 7.76201057 0 1.1368684e-13 -1.052513123 0 2.2737368e-13 -1.053618193
		 0 2.2737368e-13 -4.64256048 0 2.2737368e-13 -4.77007055 0 2.2737368e-13 -7.91147661
		 0 1.1368684e-13 -7.82850981 0 1.1368684e-13 -9.080853462 0 -8.8817842e-16 -8.9772644
		 0 -8.8817842e-16 -8.006770134 0 -1.1368684e-13 -7.90925646 0 -1.1368684e-13 -4.9486289
		 0 -2.2737368e-13 -4.81607389 0 -2.2737368e-13 0.39740375 0 -2.2737368e-13 0.37090224
		 0 -2.2737368e-13 4.058141232 0 -2.2737368e-13 4.093155384 0 -2.2737368e-13 7.17539167
		 0 -1.1368684e-13 7.088980675 0 -1.1368684e-13 8.40491199 0 -1.7763568e-15 8.35124683
		 0 -1.7763568e-15 7.40466261 0 1.1368684e-13 7.6451869 0 1.1368684e-13 4.26095057
		 0 2.2737368e-13 4.35401058 0 2.2737368e-13 -0.99599284 0 2.2737368e-13 -1.07099843
		 0 2.2737368e-13 -4.51022339 0 2.2737368e-13 -4.61706161 0 2.2737368e-13 -7.55327511
		 0 1.1368684e-13 -7.80499363 0 1.1368684e-13 -8.64315033 0 -8.8817842e-16 -8.95996475
		 0 -8.8817842e-16 -7.6319685 0 -1.1368684e-13 -7.89287138 0 -1.1368684e-13 -4.66688156
		 0 -2.2737368e-13 -4.79372644 0 -2.2737368e-13 0.36056995 0 -2.2737368e-13 0.37514395
		 0 -2.2737368e-13 3.94766021 0 -2.2737368e-13 4.022932053 0 -2.2737368e-13 6.8145504
		 0 -1.1368684e-13 7.042218208 0 -1.1368684e-13 8.022644997 0 -1.7763568e-15 8.28671455
		 0 -1.7763568e-15 -0.71592748 0 -5.6843419e-14 -1.41703868 0 -1.1368684e-13 -1.85407293
		 0 -1.1368684e-13 -2.16247034 0 -2.2737368e-13 -2.37958217 0 -2.2737368e-13 -2.44398761
		 0 -2.2737368e-13 -2.5161562 0 -2.2737368e-13 -2.46180964 0 -2.2737368e-13;
	setAttr ".tk[166:196]" -2.30346918 0 -2.2737368e-13 -2.081184626 0 -2.2737368e-13
		 -1.77739811 0 -1.1368684e-13 -1.3465755 0 -1.1368684e-13 -0.69165742 0 -5.6843419e-14
		 0.4638555 0 5.6843419e-14 0.91161191 0 1.1368684e-13 1.21530223 0 2.2737368e-13 1.41179669
		 0 2.2737368e-13 1.54195762 0 2.2737368e-13 1.59009409 0 2.2737368e-13 1.61106503
		 0 2.2737368e-13 1.58466971 0 2.2737368e-13 1.49035013 0 2.2737368e-13 1.35521746
		 0 2.2737368e-13 1.17481089 0 2.2737368e-13 0.89103228 0 1.1368684e-13 0.45384032
		 0 5.6843419e-14 1.79340768 0 5.6843419e-14 3.61158657 0 1.1368684e-13 4.66310835
		 0 1.1368684e-13 5.42269897 0 1.1368684e-13 5.90017557 0 1.1368684e-13 6.075146675
		 0 2.2737368e-13 6.17346716 0 2.2737368e-13 6.094074249 0 2.2737368e-13 5.76786089
		 0 1.1368684e-13 5.24351454 0 1.1368684e-13 4.50861931 0 1.1368684e-13 3.49972224
		 0 1.1368684e-13 1.7631371 0 5.6843419e-14;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.6031857305492521 0 0 0 0 1.6031857305492521 0 0 0 0 1.6031857305492521 0
		 3.7743801985687284 20.910829992034557 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 197 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.69259459 1.87695003 0 0.35481307 1.87694931
		 0 -0.37986469 1.87695003 0 -0.61809158 1.8769505 0 -0.71256059 1.8769486 0 -0.62875515
		 1.87694931 0 -0.4204022 1.87694931 0 0.32035598 1.87694979 0 0.62869591 1.87695003
		 0 0.70917428 1.8769486 0 1.28346753 1.87695003 0 0.74226236 1.87694955 0 -0.785487
		 1.87695003 0 -1.26527297 1.87694883 0 -1.43965709 1.87694883 0 -1.27600896 1.87694907
		 0 -0.80852419 1.87694979 0 0.69904649 1.87694955 0 1.13011122 1.87694955 0 1.40679014
		 1.87694907 0 1.720909 2.3841858e-07 0 0.96411729 -1.1920929e-07 0 -1.034743428 4.7683716e-07
		 0 -1.66295075 -3.5762787e-07 0 -1.89566457 -2.3841858e-07 0 -1.68357205 0 0 -1.10240376
		 3.5762787e-07 0 0.89050001 -7.1525574e-07 0 1.53865802 1.1920929e-07 0 1.80626273
		 1.1920929e-07 0 2.020498753 -1.1920929e-07 0 1.13237476 -2.3841858e-07 0 -1.2220161
		 1.1920929e-07 0 -1.94111252 0 0 -2.22080398 0 0 -1.9869889 2.3841858e-07 0 -1.30090892
		 -1.1920929e-07 0 1.044960737 0 0 1.80876005 2.3841858e-07 0 2.12620735 2.3841858e-07
		 0 0.003236566 1.8769474 0 0.67650425 3.53501105 0 0.34897885 3.53501058 0 -0.37341377
		 3.53501105 0 -0.59965622 3.53501058 0 -0.69707853 3.53501153 0 -0.61053294 3.53501105
		 0 -0.40883297 3.53501153 0 0.31704333 3.5350101 0 0.61225879 3.53501153 0 0.70047951
		 3.53501058 0 1.10261071 -2.3841858e-07 0 1.96108484 2.3841858e-07 0 -1.18253672 0
		 0 -1.90448701 -2.3841858e-07 0 -2.16678548 2.3841858e-07 0 -1.92956603 4.7683716e-07
		 0 -1.25849032 0 0 1.024276853 0 0 1.74580681 4.7683716e-07 0 2.072764158 2.3841858e-07
		 0 1.21232092 -3.5762787e-07 0 2.17438269 3.5762787e-07 0 -1.31684577 3.5762787e-07
		 0 -2.083981276 -2.3841858e-07 0 -2.39163327 3.5762787e-07 0 -2.13296485 0 0 -1.40498018
		 3.5762787e-07 0 1.11990952 0 0 1.94535697 -4.7683716e-07 0 2.28701472 -3.5762787e-07
		 0 0.0050521516 3.23030114 0 0.71484572 1.87695003 0 0.93786889 1.8769505 0 1.25577998
		 1.87695026 0 1.65974319 1.87695026 0 -0.74615031 1.87695003 0 -1.012404561 1.87695003
		 0 -1.23690999 1.87694883 0 -1.60653293 1.87694931 0 -1.39898336 1.87694907 0 -1.84405339
		 1.8769505 0 -1.24019957 1.8769486 0 -1.61874259 1.87695003 0 -0.77219516 1.87694979
		 0 -1.069157481 1.87694907 0 0.66917539 1.87694788 0 0.8692959 1.87694836 0 1.10820329
		 1.87694955 0 1.46913397 1.87694931 0 1.36092472 1.87694907 0 1.77442873 1.87695003
		 0 -0.10441037 1.8769486 0 -0.20319408 1.87694883 0 -0.28488955 -3.5762787e-07 0 -0.33503276
		 2.3841858e-07 0 -0.36360291 2.3841858e-07 0 -0.33183393 -4.7683716e-07 0 -0.2724368
		 1.87694883 0 -0.19958349 1.87695003 0 -0.097304404 3.53501153 0 0.065702975 1.87694931
		 0 0.077133626 1.87694979 0 0.12983654 0 0 0.15081513 3.5762787e-07 0 0.16538832 4.7683716e-07
		 0 0.14575312 0 0 0.12595265 1.87694907 0 0.081396595 1.87694979 0 0.063955612 3.53501105
		 0 1.31386173 -5.9604645e-08 0 1.29056609 1.1920929e-07 0 2.28759074 -2.3841858e-07
		 0 2.32350159 -2.9802322e-08 0 -0.39053789 2.9802319e-08 0 -0.38957492 1.7881393e-07
		 0 -1.39017594 1.1920929e-07 0 -1.43051589 5.9604645e-08 0 -2.2668314 2.9802319e-08
		 0 -2.23686004 -2.3841858e-07 0 -2.5916512 1.1920929e-07 0 -2.54978991 1.1920929e-07
		 0 -2.31787753 -2.9802322e-08 0 -2.2828691 5.9604645e-08 0 -1.53139007 1.4901161e-07
		 0 -1.49013722 5.9604645e-08 0 0.17218322 -1.1920929e-07 0 0.16411047 -1.1920929e-07
		 0 1.20061576 1.1920929e-07 0 1.21278071 -8.9406967e-08 0 2.066399336 2.9802319e-08
		 0 2.032256603 5.9604645e-08 0 2.44260216 -5.9604645e-08 0 2.41721129 -3.5527137e-15
		 0 2.20051551 -1.7881393e-07 0 2.28930616 -3.5527137e-15 0 1.25024307 -2.9802322e-07
		 0 1.29038954 -1.4901161e-07 0 -0.3674638 -5.9604645e-08 0 -0.39477938 -2.9802322e-08
		 0 -1.34474194 -3.5527137e-15 0 -1.39076769 -2.9802322e-08 0 -2.14938831 -1.1920929e-07
		 0 -2.23877311 -2.9802322e-08 0 -2.44958687 5.9604645e-08 0 -2.55594707 -5.9604645e-08
		 0 -2.19406009 -3.5527137e-15 0 -2.28722715 5.9604645e-08 0 -1.4378252 5.9604645e-08
		 0 -1.49272692 5.9604645e-08 0 0.15840602 -5.9604645e-08 0 0.16636981 -1.4901161e-07
		 0 1.16009367 -3.5527137e-15 0 1.19397557 -8.9406967e-08 0 1.95024717 -5.9604645e-08
		 0 2.03123951 -3.5527137e-15 0 2.31742358 -3.5527137e-15 0 2.40971279 -2.9802322e-08
		 0 -0.20113477 1.87694931 0 -0.39911839 1.87694955 0 -0.53671521 0 0 -0.63463557 -1.1920929e-07
		 0 -0.70101959 -3.5527137e-15 0 -0.72907358 -3.5527137e-15 0 -0.74543506 -3.5527137e-15
		 0 -0.7288239 -1.1920929e-07 0;
	setAttr ".tk[166:196]" -0.68235523 1.1920929e-07 0 -0.61303717 0 0 -0.5149098
		 1.87694931 0 -0.38213065 1.87694907 0 -0.19280182 3.53501201 0 0.14022858 1.87694931
		 0 0.25401211 1.87694955 0 0.34692708 -3.5762787e-07 0 0.40602016 -2.3841858e-07 0
		 0.44387937 -3.5527137e-15 0 0.46340978 5.9604645e-08 0 0.466865 -2.9802322e-08 0
		 0.45965359 -3.5527137e-15 0 0.43276554 -2.3841858e-07 0 0.39199567 0 0 0.33504072
		 1.87694931 0 0.24939017 1.87694955 0 0.1366097 3.53501058 0 0.5384376 1.87694979
		 0 1.049376845 1.87694979 0 1.38781524 5.9604645e-07 0 1.63351369 1.1920929e-07 0
		 1.7885412 -1.7881393e-07 0 1.85864174 -1.4901161e-07 0 1.88598132 5.9604645e-08 0
		 1.85645783 -5.9604645e-08 0 1.75454772 4.7683716e-07 0 1.58709013 -2.3841858e-07
		 0 1.34662175 1.87694955 0 1.017829299 1.87694931 0 0.52775818 3.53501153 0;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.6031857305492521 0 0 0 0 1.6031857305492521 0 0 0 0 1.6031857305492521 0
		 3.7743801985687284 20.910829992034557 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[113]" -type "float3" -2.4297028 0 0 ;
	setAttr ".tk[118]" -type "float3" 3.0371284 0 -0.91113853 ;
	setAttr ".tk[120]" -type "float3" 3.948267 8.8817842e-16 0 ;
	setAttr ".tk[122]" -type "float3" 2.4297028 0 0.60742569 ;
	setAttr ".tk[132]" -type "float3" -4.8594055 0 1.8222771 ;
	setAttr ".tk[135]" -type "float3" -2.4297028 0 0 ;
	setAttr ".tk[143]" -type "float3" 3.0371284 0 -0.91113853 ;
	setAttr ".tk[145]" -type "float3" 3.948267 8.8817842e-16 0 ;
	setAttr ".tk[147]" -type "float3" 2.4297028 0 0.60742569 ;
	setAttr ".tk[157]" -type "float3" -4.8594055 0 1.8222771 ;
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
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
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
connectAttr "polySoftEdge7.out" "polySurfaceShape2.i";
connectAttr "groupId2.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "polySoftEdge4.out" "polySurfaceShape3.i";
connectAttr "groupId3.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polySoftEdge5.out" "polySurfaceShape4.i";
connectAttr "groupId4.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "polySoftEdge6.out" "polySurfaceShape5.i";
connectAttr "groupId5.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polySoftEdge3.out" "polySurfaceShape6.i";
connectAttr "groupId6.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "polyAutoProj1.out" "pSphere2Shape.i";
connectAttr "groupId1.id" "pSphere2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphere2Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "groupParts1.og" "polyAutoProj1.ip";
connectAttr "pSphere2Shape.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pSphere2Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "polySeparate1.out[2]" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "polySeparate1.out[3]" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "polySeparate1.out[4]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts2.og" "polyBevel1.ip";
connectAttr "polySurfaceShape2.wm" "polyBevel1.mp";
connectAttr "polyTweak1.out" "polyBevel2.ip";
connectAttr "polySurfaceShape2.wm" "polyBevel2.mp";
connectAttr "polyBevel1.out" "polyTweak1.ip";
connectAttr "polyBevel2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyMergeVert1.ip";
connectAttr "polySurfaceShape2.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyAverageVertex1.ip";
connectAttr "polySurfaceShape2.wm" "polyAverageVertex1.mp";
connectAttr "polyAverageVertex1.out" "polySoftEdge1.ip";
connectAttr "polySurfaceShape2.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polyMergeVert2.ip";
connectAttr "polySurfaceShape2.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyAverageVertex2.ip";
connectAttr "polySurfaceShape2.wm" "polyAverageVertex2.mp";
connectAttr "polyTweak2.out" "polyAverageVertex3.ip";
connectAttr "polySurfaceShape2.wm" "polyAverageVertex3.mp";
connectAttr "polyAverageVertex2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySoftEdge2.ip";
connectAttr "polySurfaceShape2.wm" "polySoftEdge2.mp";
connectAttr "polyAverageVertex3.out" "polyTweak3.ip";
connectAttr "groupParts6.og" "polySoftEdge3.ip";
connectAttr "polySurfaceShape6.wm" "polySoftEdge3.mp";
connectAttr "groupParts3.og" "polySoftEdge4.ip";
connectAttr "polySurfaceShape3.wm" "polySoftEdge4.mp";
connectAttr "groupParts4.og" "polySoftEdge5.ip";
connectAttr "polySurfaceShape4.wm" "polySoftEdge5.mp";
connectAttr "groupParts5.og" "polySoftEdge6.ip";
connectAttr "polySurfaceShape5.wm" "polySoftEdge6.mp";
connectAttr "polyTweak4.out" "polySoftEdge7.ip";
connectAttr "polySurfaceShape2.wm" "polySoftEdge7.mp";
connectAttr "polySoftEdge2.out" "polyTweak4.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphere2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
// End of Bathtub.ma
