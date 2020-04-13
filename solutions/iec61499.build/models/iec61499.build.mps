<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d873dcfc-44fd-449a-83a0-b73f30522ba6(iec61499.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <property id="9126048691955221291" name="filemode" index="28jJZ5" />
        <child id="9126048691955220774" name="parameters" index="28jJR8" />
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="9126048691954557131" name="jetbrains.mps.build.structure.BuildLayout_Comment" flags="ng" index="28u9K_">
        <property id="9126048691954700811" name="text" index="28hIV_" />
      </concept>
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="244868996532454372" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithDate" flags="ng" index="hHN3E">
        <property id="244868996532454384" name="pattern" index="hHN3Y" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="7801138212747054656" name="jetbrains.mps.build.structure.BuildLayout_Filemode" flags="ng" index="yKbIv">
        <property id="7801138212747054660" name="filemode" index="yKbIr" />
      </concept>
      <concept id="3970102152660702410" name="jetbrains.mps.build.structure.BuildLayout_CopyGlobMapper" flags="ng" index="2$gBol">
        <property id="3970102152660874508" name="from" index="2$htvj" />
        <child id="3970102152660874509" name="to" index="2$htvi" />
      </concept>
      <concept id="3970102152660876447" name="jetbrains.mps.build.structure.BuildLayout_CopyRegexMapper" flags="ng" index="2$htT0">
        <property id="3970102152660876449" name="replace" index="2$htTY" />
        <property id="3970102152660876448" name="pattern" index="2$htTZ" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
        <child id="2750015747481074433" name="parameters" index="2HvfZ1" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="2539347366864541544" name="jetbrains.mps.build.structure.BuildSourceArchiveRelativePath" flags="ng" index="30tkmh">
        <child id="2539347366864648268" name="archivePath" index="30tYEP" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="9184644532457106504" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterReplaceRegex" flags="ng" index="1688n2">
        <property id="9184644532457106505" name="pattern" index="1688n3" />
        <property id="9184644532457106508" name="flags" index="1688n6" />
        <child id="9184644532457106506" name="value" index="1688n0" />
      </concept>
      <concept id="7389400916848050074" name="jetbrains.mps.build.structure.BuildLayout_Jar" flags="ng" index="3981dx" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="4198392933254416812" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterFixCRLF" flags="ng" index="3co7Ac">
        <property id="4198392933254416822" name="eol" index="3co7Am" />
        <property id="4198392933254551900" name="removeEOF" index="3cpA_W" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="8577651205286814211" name="jetbrains.mps.build.structure.BuildLayout_Tar" flags="ng" index="1tmT9g">
        <property id="1979010778009209128" name="compression" index="AB_bT" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="5610619299013057363" name="jetbrains.mps.build.structure.BuildLayout_ImportContent" flags="ng" index="3ygNvl">
        <reference id="5610619299013057365" name="target" index="3ygNvj" />
        <child id="6789562173791401562" name="selectors" index="1juEy9" />
      </concept>
      <concept id="7753544965996647428" name="jetbrains.mps.build.structure.BuildLayout_FilesOf" flags="ng" index="1zDrgl">
        <reference id="7753544965996647430" name="element" index="1zDrgn" />
      </concept>
      <concept id="841011766565753074" name="jetbrains.mps.build.structure.BuildLayout_Import" flags="ng" index="3_I8Xc">
        <reference id="841011766565753076" name="target" index="3_I8Xa" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="1251221292903960366" name="jetbrains.mps.build.structure.BuildLayout_JarManifest" flags="ng" index="3FFNgc" />
      <concept id="5248329904288051111" name="jetbrains.mps.build.structure.BuildFileExcludeSelector" flags="ng" index="3LWZYq">
        <property id="5248329904288051112" name="pattern" index="3LWZYl" />
      </concept>
      <concept id="5248329904288051100" name="jetbrains.mps.build.structure.BuildFileIncludeSelector" flags="ng" index="3LWZYx">
        <property id="5248329904288051101" name="pattern" index="3LWZYw" />
      </concept>
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
      <concept id="202934866059043946" name="jetbrains.mps.build.structure.BuildLayout_EchoProperties" flags="ng" index="1TblL5">
        <child id="202934866059043948" name="fileName" index="1TblL3" />
        <child id="202934866059043962" name="entries" index="1TblLl" />
      </concept>
      <concept id="202934866059043959" name="jetbrains.mps.build.structure.BuildLayout_EchoPropertyEntry" flags="ng" index="1TblLo">
        <property id="202934866059043960" name="key" index="1TblLn" />
        <child id="202934866059043961" name="value" index="1TblLm" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup">
      <concept id="3885435385580582153" name="jetbrains.mps.build.startup.structure.ClassPathItem" flags="ng" index="26EafG">
        <property id="3885435385580582154" name="path" index="26EafJ" />
      </concept>
      <concept id="3885435385580582152" name="jetbrains.mps.build.startup.structure.MpsStartupScript" flags="ng" index="26EafH">
        <property id="3885435385580582155" name="startupFolder" index="26EafI" />
        <property id="3885435385580631186" name="startupClass" index="26FY9R" />
        <reference id="3505522814897007561" name="branding" index="1_kbm$" />
        <child id="3885435385580582696" name="bootClasspath" index="26Ea7d" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6818892319992984815" name="jetbrains.mps.build.mps.structure.BuildMps_TipsPackage" flags="ng" index="20sUq0">
        <reference id="7323166234190549907" name="tips" index="21GgXK" />
      </concept>
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868064" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ManualPluginLayoutType" flags="ng" index="pUk6w" />
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="781140262677906392" name="jetbrains.mps.build.mps.structure.BuildMps_BrandingCompany" flags="ng" index="IuM$Q">
        <child id="781140262677906402" name="url" index="IuM$c" />
        <child id="781140262677906401" name="name" index="IuM$f" />
        <child id="2355727383336213970" name="copyrightStar" index="3fQQh0" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="978600701690054692" name="jetbrains.mps.build.mps.structure.GeneratorInternal_String" flags="ng" index="1cIVw3">
        <property id="978600701690054695" name="path" index="1cIVw0" />
      </concept>
      <concept id="8174907532631382425" name="jetbrains.mps.build.mps.structure.BuildMps_TipsMps" flags="ng" index="3jmSaf" />
      <concept id="8174907532628842428" name="jetbrains.mps.build.mps.structure.BuildMps_Tips" flags="ng" index="3jsGME">
        <child id="8174907532631382423" name="imports" index="3jmSa1" />
      </concept>
      <concept id="7655580649838764660" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml" flags="ng" index="1kK7hY">
        <reference id="7655580649838764661" name="module" index="1kK7hZ" />
        <child id="7477562766051177430" name="sourceDescriptorFile" index="2JVP1x" />
        <child id="506537499308757750" name="sourcesJarLocation" index="3SGgvt" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4297162197620964123" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorOptions" flags="ng" index="1wNqPr">
        <property id="4297162197620978188" name="strict" index="1wNuhc" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="7753544965996377997" name="jetbrains.mps.build.mps.structure.BuildMps_Branding" flags="ng" index="1zClus">
        <property id="3497141547781541445" name="minor" index="2OjLBK" />
        <property id="3497141547781541444" name="major" index="2OjLBL" />
        <property id="3497141547781541446" name="eap" index="2OjLBN" />
        <child id="6845119683729294884" name="progressColor" index="27hGoL" />
        <child id="6845119683729280452" name="icon" index="27igRh" />
        <child id="922958177840117051" name="script" index="2gvbiD" />
        <child id="6108265972537182997" name="aboutScreen" index="2EqU2s" />
        <child id="6108265972537182996" name="splashScreen" index="2EqU2t" />
        <child id="6108265972537229337" name="buildNumber" index="2EteIg" />
        <child id="6108265972537229339" name="icon16" index="2EteIi" />
        <child id="6108265972537229338" name="icon32" index="2EteIj" />
        <child id="6108265972537372847" name="product" index="2EtHGA" />
        <child id="6108265972537372848" name="fullName" index="2EtHGT" />
        <child id="8795525031433238889" name="textColor" index="HFo83" />
        <child id="781140262677914381" name="company" index="IuKBz" />
        <child id="781140262677761022" name="icon128" index="IvI4g" />
        <child id="781140262677761833" name="plugins" index="IvIn7" />
        <child id="1462305029084462472" name="buildDate" index="R$TG_" />
        <child id="772379520210716142" name="welcomeLogo" index="3vi$VU" />
        <child id="1084163669516664629" name="copyrightForeground" index="3KTKoD" />
        <child id="1084163669516664664" name="linkColor" index="3KTKp4" />
        <child id="1084163669516639223" name="foreground" index="3KTYbF" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="68dTcycFmrj">
    <property role="TrG5h" value="iec61499_Plugin" />
    <property role="2DA0ip" value="../../" />
    <property role="turDy" value="build-plugin.xml" />
    <node concept="m$_wf" id="42vv4xsIHQK" role="3989C9">
      <property role="m$_wk" value="iec61499.common" />
      <node concept="3_J27D" id="42vv4xsIHQM" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsIHT5" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 - Common" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIHQO" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsIHT7" role="3MwsjC">
          <property role="3MwjfP" value="iec61499.common" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIHQQ" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsIHTf" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIHT9" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsIHTb" role="3MwsjC">
          <property role="3MwjfP" value="Common parts for IEC 61499" />
        </node>
      </node>
      <node concept="m$f5U" id="42vv4xsII1$" role="m$_yh">
        <ref role="m$f5T" node="42vv4xsIHVD" resolve="iec61499-common" />
      </node>
      <node concept="m$_yC" id="42vv4xsII5Y" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
    </node>
    <node concept="2G$12M" id="42vv4xsIHVD" role="3989C9">
      <property role="TrG5h" value="iec61499-common" />
      <node concept="1E1JtA" id="42vv4xsIHXY" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="common.iec61499.model" />
        <property role="3LESm3" value="92c73834-a51a-47a4-ba36-5d8a69f382af" />
        <node concept="55IIr" id="42vv4xsIHXZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIHY3" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="42vv4xsIHY8" role="2Ry0An">
              <property role="2Ry0Am" value="common.iec61499.model" />
              <node concept="2Ry0Ak" id="42vv4xsIHY_" role="2Ry0An">
                <property role="2Ry0Am" value="common.iec61499.model.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHZ5" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHZ6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe67a" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe67b" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe676" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe677" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe678" role="2Ry0An">
                  <property role="2Ry0Am" value="common.iec61499.model" />
                  <node concept="2Ry0Ak" id="6zYxdPXe679" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe67c" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="42vv4xsIHYK" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="ST.parser" />
        <property role="3LESm3" value="1db6de07-b355-4c0f-9979-75b4ac1e8215" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="42vv4xsIHYN" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIHYY" role="iGT6I">
            <property role="2Ry0Am" value="st-parser" />
            <node concept="2Ry0Ak" id="42vv4xsIHZ3" role="2Ry0An">
              <property role="2Ry0Am" value="ST.parser.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHZ7" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHZ8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHZd" role="3bR37C">
          <node concept="1BurEX" id="42vv4xsIHZe" role="1SiIV1">
            <node concept="55IIr" id="42vv4xsIHZ9" role="1BurEY">
              <node concept="2Ry0Ak" id="42vv4xsIHZa" role="iGT6I">
                <property role="2Ry0Am" value="st-parser" />
                <node concept="2Ry0Ak" id="42vv4xsIHZb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="42vv4xsIHZc" role="2Ry0An">
                    <property role="2Ry0Am" value="antlr4-runtime-4.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHZj" role="3bR37C">
          <node concept="1BurEX" id="42vv4xsIHZk" role="1SiIV1">
            <node concept="55IIr" id="42vv4xsIHZf" role="1BurEY">
              <node concept="2Ry0Ak" id="42vv4xsIHZg" role="iGT6I">
                <property role="2Ry0Am" value="st-parser" />
                <node concept="2Ry0Ak" id="42vv4xsIHZh" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="42vv4xsIHZi" role="2Ry0An">
                    <property role="2Ry0Am" value="st-parser.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="2H5LTAROD4A" role="10PD9s" />
    <node concept="3b7kt6" id="68dTcycFmrN" role="10PD9s" />
    <node concept="2kB4xC" id="68dTcycFmrO" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="68dTcycFmrP" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="68dTcycFmrQ" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="68dTcycFmrR" role="aVJcv">
        <node concept="NbPM2" id="68dTcycFmrS" role="aVJcq">
          <node concept="3Mxwew" id="68dTcycFmrT" role="3MwsjC">
            <property role="3MwjfP" value="iec61499-193.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="68dTcycFmrY" role="1l3spd">
      <property role="TrG5h" value="ide-version" />
      <node concept="aVJcg" id="68dTcycFmrZ" role="aVJcv">
        <node concept="NbPM2" id="68dTcycFms0" role="aVJcq">
          <node concept="3Mxwew" id="68dTcycFms1" role="3MwsjC">
            <property role="3MwjfP" value="0.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="68dTcycFmrU" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="6ZWeIInkr0Q" role="398pKh">
        <node concept="2Ry0Ak" id="6ZWeIInkr0R" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="6ZWeIInkr0S" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2019.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="m$_wl" id="42vv4xsIIBm" role="39821P">
        <ref role="m_rDy" node="42vv4xsIHQK" resolve="iec61499.common" />
        <node concept="398223" id="42vv4xsIIE2" role="39821P">
          <node concept="3_J27D" id="42vv4xsIIE3" role="Nbhlr">
            <node concept="3Mxwew" id="42vv4xsIIE4" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="2HvfSZ" id="42vv4xsIIE5" role="39821P">
            <node concept="55IIr" id="42vv4xsIIE6" role="2HvfZ0">
              <node concept="2Ry0Ak" id="42vv4xsIIE7" role="iGT6I">
                <property role="2Ry0Am" value="st-parser" />
                <node concept="2Ry0Ak" id="42vv4xsIIE8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pUk6x" id="42vv4xsIICd" role="pUk7w" />
      </node>
      <node concept="m$_wl" id="42vv4xsIICZ" role="39821P">
        <ref role="m_rDy" node="68dTcycFmsQ" resolve="iec61499.mps" />
        <node concept="pUk6x" id="42vv4xsIIDS" role="pUk7w" />
      </node>
      <node concept="m$_wl" id="42vv4xsJMzh" role="39821P">
        <ref role="m_rDy" node="42vv4xsIJ5y" resolve="scenes" />
        <node concept="pUk6x" id="42vv4xsJM$j" role="pUk7w" />
      </node>
      <node concept="m$_wl" id="42vv4xsJM_o" role="39821P">
        <ref role="m_rDy" node="42vv4xsIIHl" resolve="iec61499.richediting" />
        <node concept="pUk6x" id="42vv4xsJMAs" role="pUk7w" />
      </node>
      <node concept="m$_wl" id="42vv4xsJMBz" role="39821P">
        <ref role="m_rDy" node="42vv4xsJqzV" resolve="iec61499.fourdiacIntegration" />
        <node concept="pUk6w" id="42vv4xsJMCD" role="pUk7w" />
        <node concept="398223" id="42vv4xsJMCN" role="39821P">
          <node concept="L2wRC" id="42vv4xsJME9" role="39821P">
            <ref role="L2wRA" node="42vv4xsJqS4" resolve="fordiacIntegration.ide" />
          </node>
          <node concept="3981dx" id="42vv4xsJMD1" role="39821P">
            <node concept="3_J27D" id="42vv4xsJMD2" role="Nbhlr">
              <node concept="3Mxwew" id="42vv4xsJMD3" role="3MwsjC">
                <property role="3MwjfP" value="stdlib-stubs.jar" />
              </node>
            </node>
            <node concept="398223" id="42vv4xsJMD4" role="39821P">
              <node concept="3_J27D" id="42vv4xsJMD5" role="Nbhlr">
                <node concept="3Mxwew" id="42vv4xsJMD6" role="3MwsjC">
                  <property role="3MwjfP" value="META-INF" />
                </node>
              </node>
              <node concept="1kK7hY" id="42vv4xsJMD7" role="39821P">
                <ref role="1kK7hZ" node="42vv4xsJqQi" resolve="IEC-61499" />
                <node concept="1cIVw3" id="42vv4xsJMD8" role="3SGgvt">
                  <property role="1cIVw0" value="." />
                </node>
                <node concept="1cIVw3" id="42vv4xsJMD9" role="2JVP1x">
                  <property role="1cIVw0" value="stdlib.msd" />
                </node>
              </node>
              <node concept="3FFNgc" id="42vv4xsJMDa" role="39821P" />
            </node>
            <node concept="398223" id="42vv4xsJMDb" role="39821P">
              <node concept="3_J27D" id="42vv4xsJMDc" role="Nbhlr">
                <node concept="3Mxwew" id="42vv4xsJMDd" role="3MwsjC">
                  <property role="3MwjfP" value="module" />
                </node>
              </node>
              <node concept="2HvfSZ" id="42vv4xsJMDe" role="39821P">
                <node concept="55IIr" id="42vv4xsJMDf" role="2HvfZ0">
                  <node concept="2Ry0Ak" id="42vv4xsJMDg" role="iGT6I">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="42vv4xsJMDh" role="2Ry0An">
                      <property role="2Ry0Am" value="stubs" />
                      <node concept="2Ry0Ak" id="42vv4xsJMDi" role="2Ry0An">
                        <property role="2Ry0Am" value="stdlib" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="42vv4xsJMCO" role="Nbhlr">
            <node concept="3Mxwew" id="42vv4xsJMCZ" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="68dTcycFmsQ" role="3989C9">
      <property role="m$_wk" value="iec61499.mps" />
      <node concept="m$_yC" id="42vv4xsII16" role="m$_yJ">
        <ref role="m$_y1" node="42vv4xsIHQK" resolve="iec61499.common" />
      </node>
      <node concept="3_J27D" id="68dTcycFmsY" role="m$_yQ">
        <node concept="3Mxwew" id="68dTcycFmsZ" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 - MPS" />
        </node>
      </node>
      <node concept="3_J27D" id="68dTcycFmt0" role="m$_w8">
        <node concept="3Mxwey" id="68dTcycFmt1" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="m$f5U" id="68dTcycFmt2" role="m$_yh">
        <ref role="m$f5T" node="68dTcycFmt7" resolve="iec61499-mps" />
      </node>
      <node concept="m$_yC" id="68dTcycFmt3" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="68dTcycFmt5" role="m_cZH">
        <node concept="3Mxwew" id="68dTcycFmt6" role="3MwsjC">
          <property role="3MwjfP" value="iec61499.mps" />
        </node>
      </node>
      <node concept="m$_yC" id="1_Zi$Xmosw5" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5CFKsRWV4Nl" resolve="jetbrains.mps.execution.languages" />
      </node>
      <node concept="3_J27D" id="42vv4xsIHBP" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsIHBR" role="3MwsjC">
          <property role="3MwjfP" value="Common MPS parts for IEC 61499" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="68dTcycFmt7" role="3989C9">
      <property role="TrG5h" value="iec61499-mps" />
      <node concept="1E1JtA" id="1JYTWWzvsHw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="mps.iec61499.model" />
        <property role="3LESm3" value="5aff85f5-c1e8-49b6-a1f1-66d79702cceb" />
        <node concept="55IIr" id="1JYTWWzvsHz" role="3LF7KH">
          <node concept="2Ry0Ak" id="1JYTWWzvsK9" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="1JYTWWzvsKK" role="2Ry0An">
              <property role="2Ry0Am" value="mps.iec61499.model" />
              <node concept="2Ry0Ak" id="1JYTWWzvsL5" role="2Ry0An">
                <property role="2Ry0Am" value="mps.iec61499.model.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsLn" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsLp" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsLr" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsLt" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsLx" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLy" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHXY" resolve="common.iec61499.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsLB" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLC" role="1SiIV1">
            <ref role="3bR37D" node="68dTcycFmt8" resolve="mps.lang.iec61499" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe67p" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe67q" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe67l" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe67m" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe67n" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.iec61499.model" />
                  <node concept="2Ry0Ak" id="6zYxdPXe67o" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe67r" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="68dTcycFmt8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="mps.lang.iec61499" />
        <property role="3LESm3" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
        <node concept="55IIr" id="68dTcycFmt9" role="3LF7KH">
          <node concept="2Ry0Ak" id="68dTcycFmta" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="68dTcycFmtb" role="2Ry0An">
              <property role="2Ry0Am" value="mps.lang.iec61499" />
              <node concept="2Ry0Ak" id="42vv4xsIHAP" role="2Ry0An">
                <property role="2Ry0Am" value="mps.lang.iec61499.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtd" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmte" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtf" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtj" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtl" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1yeLz9" id="68dTcycFmtp" role="1TViLv">
          <property role="TrG5h" value="mps.lang.iec61499#4280485643801969762" />
          <property role="3LESm3" value="e6474e26-f6d9-4046-9342-1ef045999378" />
          <node concept="1SiIV0" id="7bQ9AP7ye66" role="3bR37C">
            <node concept="3bR9La" id="7bQ9AP7ye67" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1BupzO" id="6zYxdPXe67C" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="6zYxdPXe67D" role="1HemKq">
              <node concept="55IIr" id="6zYxdPXe67z" role="3LXTmr">
                <node concept="2Ry0Ak" id="6zYxdPXe67$" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6zYxdPXe67_" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.lang.iec61499" />
                    <node concept="2Ry0Ak" id="6zYxdPXe67A" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="6zYxdPXe67B" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="6zYxdPXe67E" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3c8BrEoHyeq" role="3bR31x">
          <node concept="3LXTmp" id="3c8BrEoHyer" role="3rtmxm">
            <node concept="3qWCbU" id="3c8BrEoHyes" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3c8BrEoHyet" role="3LXTmr">
              <node concept="2Ry0Ak" id="3c8BrEoHyeu" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3DiEZ8TGoea" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.lang.iec61499" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7bQ9AP7Cats" role="3bR31x">
          <node concept="3LXTmp" id="7bQ9AP7Catu" role="3rtmxm">
            <node concept="55IIr" id="7bQ9AP7CatN" role="3LXTmr">
              <node concept="2Ry0Ak" id="7bQ9AP7Cau1" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7bQ9AP7Caue" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.lang.iec61499" />
                  <node concept="2Ry0Ak" id="7bQ9AP7Cauj" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7bQ9AP7Caul" role="3LXTna">
              <property role="3qWCbO" value="**/*.png" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr1RM" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr1RN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="6q6uBQESPNW" role="3bR37C">
          <node concept="3bR9La" id="6q6uBQESPNX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHHQ" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHHR" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHDZ" resolve="mps.lang.ST" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHHS" role="3bR37C">
          <node concept="1Busua" id="42vv4xsIHHT" role="1SiIV1">
            <ref role="1Busuk" node="42vv4xsIHDZ" resolve="mps.lang.ST" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe67w" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe67x" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe67s" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe67t" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6zYxdPXe67u" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.lang.iec61499" />
                  <node concept="2Ry0Ak" id="6zYxdPXe67v" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe67y" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1GFn66qEgIm" role="3bR37C">
          <node concept="3bR9La" id="1GFn66qEgIn" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHXY" resolve="common.iec61499.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="1GFn66qEgIo" role="3bR37C">
          <node concept="3bR9La" id="1GFn66qEgIp" role="1SiIV1">
            <ref role="3bR37D" node="1JYTWWzvsHw" resolve="mps.iec61499.model" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="42vv4xsIHDZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="mps.lang.ST" />
        <property role="3LESm3" value="2046780a-246e-4cb0-90fe-56a2b7d92c54" />
        <node concept="55IIr" id="42vv4xsIHE2" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIHEP" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="42vv4xsIHEU" role="2Ry0An">
              <property role="2Ry0Am" value="mps.lang.ST" />
              <node concept="2Ry0Ak" id="42vv4xsIHEZ" role="2Ry0An">
                <property role="2Ry0Am" value="mps.lang.ST.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="42vv4xsIHF1" role="1TViLv">
          <property role="TrG5h" value="mps.lang.ST#01" />
          <property role="3LESm3" value="9b4b978d-2989-49ae-b210-968bb0aee375" />
          <node concept="1BupzO" id="6zYxdPXe67R" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="6zYxdPXe67S" role="1HemKq">
              <node concept="55IIr" id="6zYxdPXe67M" role="3LXTmr">
                <node concept="2Ry0Ak" id="6zYxdPXe67N" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6zYxdPXe67O" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.lang.ST" />
                    <node concept="2Ry0Ak" id="6zYxdPXe67P" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="6zYxdPXe67Q" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="6zYxdPXe67T" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHHU" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHHV" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHDZ" resolve="mps.lang.ST" />
          </node>
        </node>
        <node concept="1SiIV0" id="3Sv$YXY4$xt" role="3bR37C">
          <node concept="3bR9La" id="3Sv$YXY4$xu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe67J" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe67K" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe67F" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe67G" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6zYxdPXe67H" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.lang.ST" />
                  <node concept="2Ry0Ak" id="6zYxdPXe67I" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe67L" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="42vv4xsIHG4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="mps.lang.meta.editor" />
        <property role="3LESm3" value="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" />
        <node concept="55IIr" id="42vv4xsIHG7" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIHGU" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="42vv4xsIHGZ" role="2Ry0An">
              <property role="2Ry0Am" value="mps.lang.meta.editor" />
              <node concept="2Ry0Ak" id="42vv4xsIHJc" role="2Ry0An">
                <property role="2Ry0Am" value="mps.lang.meta.editor.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHJg" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHJh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHJi" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHJj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1yeLz9" id="42vv4xsIHJm" role="1TViLv">
          <property role="TrG5h" value="mps.lang.meta.editor#3165118101539151995" />
          <property role="3LESm3" value="70d46d48-b971-44d7-874c-f0f70b17dd57" />
          <node concept="1SiIV0" id="42vv4xsIHJp" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJq" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K0iE" resolve="jetbrains.mps.lang.editor#1129914002149" />
            </node>
          </node>
          <node concept="1SiIV0" id="42vv4xsIHJr" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJs" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="42vv4xsIHJt" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJu" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
            </node>
          </node>
          <node concept="1SiIV0" id="42vv4xsIHJv" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJw" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
            </node>
          </node>
          <node concept="1SiIV0" id="42vv4xsIHJz" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJ$" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="42vv4xsIHJ_" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJA" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
            </node>
          </node>
          <node concept="1SiIV0" id="42vv4xsIHJF" role="3bR37C">
            <node concept="3bR9La" id="42vv4xsIHJG" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:2Qa9MYMHrcB" resolve="jetbrains.mps.editorlang.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="3Sv$YXY4$xz" role="3bR37C">
            <node concept="3bR9La" id="3Sv$YXY4$x$" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
            </node>
          </node>
          <node concept="1BupzO" id="6zYxdPXe686" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="6zYxdPXe687" role="1HemKq">
              <node concept="55IIr" id="6zYxdPXe681" role="3LXTmr">
                <node concept="2Ry0Ak" id="6zYxdPXe682" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="6zYxdPXe683" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.lang.meta.editor" />
                    <node concept="2Ry0Ak" id="6zYxdPXe684" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="6zYxdPXe685" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="6zYxdPXe688" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2r29JVYcFuh" role="3bR37C">
          <node concept="1Busua" id="2r29JVYcFui" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="3Sv$YXY4$xv" role="3bR37C">
          <node concept="3bR9La" id="3Sv$YXY4$xw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="3Sv$YXY4$xx" role="3bR37C">
          <node concept="3bR9La" id="3Sv$YXY4$xy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe67Y" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe67Z" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe67U" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe67V" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6zYxdPXe67W" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.lang.meta.editor" />
                  <node concept="2Ry0Ak" id="6zYxdPXe67X" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe680" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1a1larLevcL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="mps.ide.synteticLang" />
        <property role="3LESm3" value="14f8fb68-9526-41ae-a986-e33a7382fe12" />
        <node concept="55IIr" id="1a1larLevcO" role="3LF7KH">
          <node concept="2Ry0Ak" id="1a1larLevdf" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="1a1larLevdq" role="2Ry0An">
              <property role="2Ry0Am" value="mps.ide.synteticLang" />
              <node concept="2Ry0Ak" id="1a1larLevdX" role="2Ry0An">
                <property role="2Ry0Am" value="mps.ide.synteticLang.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="1a1larLeveP" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="1a1larLeveQ" role="1HemKq">
            <node concept="55IIr" id="1a1larLeveL" role="3LXTmr">
              <node concept="2Ry0Ak" id="1a1larLeveM" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="1a1larLeveN" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.ide.synteticLang" />
                  <node concept="2Ry0Ak" id="1a1larLeveO" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="1a1larLeveR" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="42vv4xsIHLX" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="mps.ide" />
        <property role="3LESm3" value="292e01a6-3380-40ca-8417-b86844de2d63" />
        <node concept="55IIr" id="42vv4xsIHM0" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIHNt" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="42vv4xsIHNy" role="2Ry0An">
              <property role="2Ry0Am" value="mps.ide" />
              <node concept="2Ry0Ak" id="42vv4xsIHNB" role="2Ry0An">
                <property role="2Ry0Am" value="mps.ide.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHND" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNE" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNF" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNH" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNI" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHDZ" resolve="mps.lang.ST" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNJ" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNL" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNN" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNO" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNP" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNR" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNT" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNU" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNV" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfi" resolve="jetbrains.mps.generator" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNX" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHNY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1q1" resolve="MPS.Workbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHNZ" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHO0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHO1" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHO2" role="1SiIV1">
            <ref role="3bR37D" node="68dTcycFmt8" resolve="mps.lang.iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHO3" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHO4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHO5" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHO6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7KapL9OABnm" resolve="jetbrains.mps.ide.ui" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsII0f" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsII0g" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHYK" resolve="ST.parser" />
          </node>
        </node>
        <node concept="3rtmxn" id="3DiEZ8THn5x" role="3bR31x">
          <node concept="3LXTmp" id="3DiEZ8THn5y" role="3rtmxm">
            <node concept="55IIr" id="3DiEZ8THn5J" role="3LXTmr">
              <node concept="2Ry0Ak" id="3DiEZ8THn5X" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3DiEZ8THn62" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.ide" />
                </node>
              </node>
            </node>
            <node concept="3LWZYx" id="3DiEZ8THn67" role="3LXTna">
              <property role="3LWZYw" value="startup.properties" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68d" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe68e" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe689" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe68a" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe68b" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.ide" />
                  <node concept="2Ry0Ak" id="6zYxdPXe68c" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe68f" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLevg4" role="3bR37C">
          <node concept="3bR9La" id="1a1larLevg5" role="1SiIV1">
            <ref role="3bR37D" node="1a1larLevcL" resolve="mps.ide.synteticLang" />
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="42vv4xsIJ5y" role="3989C9">
      <property role="m$_wk" value="scenes" />
      <node concept="3_J27D" id="42vv4xsIJ5$" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsIJhF" role="3MwsjC">
          <property role="3MwjfP" value="MPS Scenes" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIJ5A" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsIJhH" role="3MwsjC">
          <property role="3MwjfP" value="scenes" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIJ5C" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsIJid" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIJhR" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsIJhT" role="3MwsjC">
          <property role="3MwjfP" value="Support for visual editing for MPS" />
        </node>
      </node>
      <node concept="m$f5U" id="42vv4xsIJjP" role="m$_yh">
        <ref role="m$f5T" node="42vv4xsIJd4" resolve="scenes" />
      </node>
      <node concept="m$_yC" id="42vv4xsJqp_" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
    </node>
    <node concept="2G$12M" id="42vv4xsIJd4" role="3989C9">
      <property role="TrG5h" value="scenes" />
      <node concept="1E1JtA" id="42vv4xsIJiX" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="scenes" />
        <property role="3LESm3" value="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9" />
        <node concept="55IIr" id="42vv4xsIJj0" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIJjm" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="42vv4xsIJjF" role="2Ry0An">
              <property role="2Ry0Am" value="scenes" />
              <node concept="2Ry0Ak" id="42vv4xsIJkI" role="2Ry0An">
                <property role="2Ry0Am" value="scenes.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIJl0" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIJl1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIJl2" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIJl3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIJl4" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIJl5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIJla" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIJlb" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsE$" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsE_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68k" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe68l" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe68g" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe68h" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe68i" role="2Ry0An">
                  <property role="2Ry0Am" value="scenes" />
                  <node concept="2Ry0Ak" id="6zYxdPXe68j" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe68m" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="42vv4xsIIHl" role="3989C9">
      <property role="m$_wk" value="iec61499.richediting" />
      <node concept="m$_yC" id="42vv4xsIIX9" role="m$_yJ">
        <ref role="m$_y1" node="68dTcycFmsQ" resolve="iec61499.mps" />
      </node>
      <node concept="m$_yC" id="42vv4xsJqpU" role="m$_yJ">
        <ref role="m$_y1" node="42vv4xsIJ5y" resolve="scenes" />
      </node>
      <node concept="3_J27D" id="42vv4xsIIHn" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsIILY" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 - Rich editing" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIIHp" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsIILO" role="3MwsjC">
          <property role="3MwjfP" value="iec61499.richediting" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIIHr" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsIIMc" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIIM0" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsIIM2" role="3MwsjC">
          <property role="3MwjfP" value="Rich editing for IEC 61499 models" />
        </node>
      </node>
      <node concept="m$f5U" id="42vv4xsIIWP" role="m$_yh">
        <ref role="m$f5T" node="42vv4xsIIPs" resolve="iec61499-richediting" />
      </node>
    </node>
    <node concept="2G$12M" id="42vv4xsIIPs" role="3989C9">
      <property role="TrG5h" value="iec61499-richediting" />
      <node concept="1E1JtA" id="42vv4xsIIT7" role="2G$12L">
        <property role="TrG5h" value="richediting" />
        <property role="3LESm3" value="ce053d11-5ec7-4fac-b419-6715b4a97d3a" />
        <property role="BnDLt" value="true" />
        <node concept="55IIr" id="42vv4xsIITa" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIITw" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="42vv4xsIITX" role="2Ry0An">
              <property role="2Ry0Am" value="richediting" />
              <node concept="2Ry0Ak" id="1a1larLfpo1" role="2Ry0An">
                <property role="2Ry0Am" value="richediting.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIVZ" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIW0" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIW1" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIW2" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIW5" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIW6" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHXY" resolve="common.iec61499.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIW7" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIW8" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqoP" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqoQ" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="42vv4xsIJiX" resolve="scenes" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsEA" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsEB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsEC" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsED" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsEE" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsEF" role="1SiIV1">
            <ref role="3bR37D" node="68dTcycFmt8" resolve="mps.lang.iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="3DiEZ8TFNwI" role="3bR37C">
          <node concept="3bR9La" id="3DiEZ8TFNwJ" role="1SiIV1">
            <ref role="3bR37D" node="1JYTWWzvsHw" resolve="mps.iec61499.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqF" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqH" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqI" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIIUH" resolve="richediting.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqJ" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqL" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqM" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHLX" resolve="mps.ide" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68r" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe68s" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe68n" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe68o" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe68p" role="2Ry0An">
                  <property role="2Ry0Am" value="richediting" />
                  <node concept="2Ry0Ak" id="6zYxdPXe68q" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe68t" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLfpph" role="3bR37C">
          <node concept="3bR9La" id="1a1larLfppi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L5O" resolve="jetbrains.mps.lang.extension" />
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLfppj" role="3bR37C">
          <node concept="3bR9La" id="1a1larLfppk" role="1SiIV1">
            <ref role="3bR37D" node="1a1larLevcL" resolve="mps.ide.synteticLang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLfppl" role="3bR37C">
          <node concept="3bR9La" id="1a1larLfppm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLfppn" role="3bR37C">
          <node concept="3bR9La" id="1a1larLfppo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLfppp" role="3bR37C">
          <node concept="3bR9La" id="1a1larLfppq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1q1" resolve="MPS.Workbench" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="42vv4xsIIUH" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="richediting.lang" />
        <property role="3LESm3" value="111cc10b-fa1e-4e11-8e9c-37e957c4043f" />
        <node concept="55IIr" id="42vv4xsIIUK" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsIIVb" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="42vv4xsIIVw" role="2Ry0An">
              <property role="2Ry0Am" value="richediting.lang" />
              <node concept="2Ry0Ak" id="42vv4xsIIVH" role="2Ry0An">
                <property role="2Ry0Am" value="richediting.lang.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIWd" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIWe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIWf" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIWg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIWh" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIWi" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHXY" resolve="common.iec61499.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIIWj" role="3bR37C">
          <node concept="1Busua" id="42vv4xsIIWk" role="1SiIV1">
            <ref role="1Busuk" node="68dTcycFmt8" resolve="mps.lang.iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIJk7" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIJk8" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIIT7" resolve="richediting" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqoR" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqoS" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIJiX" resolve="scenes" />
          </node>
        </node>
        <node concept="1SiIV0" id="2r29JVYcFuj" role="3bR37C">
          <node concept="3bR9La" id="2r29JVYcFuk" role="1SiIV1">
            <ref role="3bR37D" node="68dTcycFmt8" resolve="mps.lang.iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsEG" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsEH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsMv" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsMw" role="1SiIV1">
            <ref role="3bR37D" node="1JYTWWzvsHw" resolve="mps.iec61499.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqP" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6zYxdPXe68u" role="3bR37C">
          <node concept="3bR9La" id="6zYxdPXe68v" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="6zYxdPXe68w" role="3bR37C">
          <node concept="3bR9La" id="6zYxdPXe68x" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68A" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe68B" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe68y" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe68z" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6zYxdPXe68$" role="2Ry0An">
                  <property role="2Ry0Am" value="richediting.lang" />
                  <node concept="2Ry0Ak" id="6zYxdPXe68_" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe68C" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="42vv4xsJqzV" role="3989C9">
      <property role="m$_wk" value="iec61499.fourdiacIntegration" />
      <node concept="3_J27D" id="42vv4xsJqzX" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsJqD7" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 - 4DIAC Integration" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsJqzZ" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsJqDL" role="3MwsjC">
          <property role="3MwjfP" value="iec61499.4diacIntegration" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsJq$1" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsJqFH" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsJqDV" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsJqDX" role="3MwsjC">
          <property role="3MwjfP" value="4DIAC runtime integration" />
        </node>
      </node>
      <node concept="m$f5U" id="42vv4xsJqQ8" role="m$_yh">
        <ref role="m$f5T" node="42vv4xsJqKs" resolve="iec61499-4diac" />
      </node>
      <node concept="m$_yC" id="42vv4xsJtI4" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="2r29JVYdLgc" role="m$_yJ">
        <ref role="m$_y1" node="68dTcycFmsQ" resolve="iec61499.mps" />
      </node>
      <node concept="m$_yC" id="2r29JVYdLfO" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5CFKsRWV4Nl" resolve="jetbrains.mps.execution.languages" />
      </node>
    </node>
    <node concept="2G$12M" id="42vv4xsJqKs" role="3989C9">
      <property role="TrG5h" value="iec61499-4diac" />
      <node concept="1E1JtA" id="42vv4xsJqQi" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="IEC-61499" />
        <property role="3LESm3" value="b8a7e14f-52ea-4ee2-b17e-26c27da8084c" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="42vv4xsJqQj" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsJqQD" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="42vv4xsJqR6" role="2Ry0An">
              <property role="2Ry0Am" value="stubs" />
              <node concept="2Ry0Ak" id="42vv4xsJqRr" role="2Ry0An">
                <property role="2Ry0Am" value="stdlib" />
                <node concept="2Ry0Ak" id="42vv4xsJqRC" role="2Ry0An">
                  <property role="2Ry0Am" value="stdlib.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68I" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe68J" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe68D" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe68E" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe68F" role="2Ry0An">
                  <property role="2Ry0Am" value="stubs" />
                  <node concept="2Ry0Ak" id="6zYxdPXe68G" role="2Ry0An">
                    <property role="2Ry0Am" value="stdlib" />
                    <node concept="2Ry0Ak" id="6zYxdPXe68H" role="2Ry0An">
                      <property role="2Ry0Am" value="models" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe68K" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="42vv4xsJqS4" role="2G$12L">
        <property role="TrG5h" value="fordiacIntegration.ide" />
        <property role="3LESm3" value="493a4cca-9505-4b07-b547-5711c9dc63e8" />
        <node concept="3rtmxn" id="3DiEZ8THn6F" role="3bR31x">
          <node concept="3LXTmp" id="3DiEZ8THn6G" role="3rtmxm">
            <node concept="55IIr" id="3DiEZ8THn6H" role="3LXTmr">
              <node concept="2Ry0Ak" id="3DiEZ8THn6I" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3DiEZ8THn6Z" role="2Ry0An">
                  <property role="2Ry0Am" value="fordiacIntegration.ide" />
                </node>
              </node>
            </node>
            <node concept="3LWZYx" id="3DiEZ8THn6K" role="3LXTna">
              <property role="3LWZYw" value="startup.properties" />
            </node>
          </node>
        </node>
        <node concept="55IIr" id="42vv4xsJqS7" role="3LF7KH">
          <node concept="2Ry0Ak" id="42vv4xsJqSz" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="42vv4xsJqSK" role="2Ry0An">
              <property role="2Ry0Am" value="fordiacIntegration.ide" />
              <node concept="2Ry0Ak" id="42vv4xsJqT5" role="2Ry0An">
                <property role="2Ry0Am" value="fordiacIntegration.ide.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTn" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5xa9wY2vh9z" resolve="jetbrains.mps.execution.library" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTp" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTr" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTs" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTt" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTv" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTx" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1q1" resolve="MPS.Workbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTz" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqT$" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="42vv4xsIHLX" resolve="mps.ide" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqT_" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTA" role="1SiIV1">
            <ref role="3bR37D" node="68dTcycFmt8" resolve="mps.lang.iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsJqTB" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsJqTC" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3MI1gu0QouH" resolve="jetbrains.mps.editor.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7N4RIqjOXrV" role="3bR37C">
          <node concept="3bR9La" id="7N4RIqjOXrW" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68P" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="6zYxdPXe68Q" role="1HemKq">
            <node concept="55IIr" id="6zYxdPXe68L" role="3LXTmr">
              <node concept="2Ry0Ak" id="6zYxdPXe68M" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6zYxdPXe68N" role="2Ry0An">
                  <property role="2Ry0Am" value="fordiacIntegration.ide" />
                  <node concept="2Ry0Ak" id="6zYxdPXe68O" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6zYxdPXe68R" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6aeiw5$tCL0" role="3bR37C">
          <node concept="3bR9La" id="6aeiw5$tCL1" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHDZ" resolve="mps.lang.ST" />
          </node>
        </node>
        <node concept="1SiIV0" id="6aeiw5$tCL2" role="3bR37C">
          <node concept="3bR9La" id="6aeiw5$tCL3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1SiIV0" id="6aeiw5$tCL4" role="3bR37C">
          <node concept="3bR9La" id="6aeiw5$tCL5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="6aeiw5$tCL6" role="3bR37C">
          <node concept="3bR9La" id="6aeiw5$tCL7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1wNqPr" id="2UWDuzARVSx" role="3989C9">
      <property role="1wNuhc" value="true" />
    </node>
    <node concept="2sgV4H" id="68dTcycFoqk" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="68dTcycFoql" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="68dTcycFoqm" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="68dTcycFoqn" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="68dTcycFoqo" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="68dTcycFoqp" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
        <node concept="2Ry0Ak" id="68dTcycFoqq" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="68dTcycFoqr" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1lMM4owFq4Y" resolve="mpsVcs" />
      <node concept="398BVA" id="68dTcycFoqs" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
        <node concept="2Ry0Ak" id="68dTcycFoqt" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="68dTcycFoqu" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5yMuYWFN8P1" resolve="mpsPlugins" />
      <node concept="398BVA" id="68dTcycFoqv" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
        <node concept="2Ry0Ak" id="68dTcycFoqw" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1_Zi$Xmosu4" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5xa9wY2vh7j" resolve="mpsExecutionPlugin" />
      <node concept="398BVA" id="1_Zi$Xmosuw" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
        <node concept="2Ry0Ak" id="1_Zi$XmosuF" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="55IIr" id="2H5LTARSeJ3" role="auvoZ">
      <node concept="2Ry0Ak" id="2H5LTARSeJ6" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1mPaNys5H5_">
    <property role="TrG5h" value="iec61499_RCP" />
    <property role="2DA0ip" value="../../" />
    <property role="turDy" value="build-rcp.xml" />
    <node concept="10PD9b" id="1mPaNys5H5A" role="10PD9s" />
    <node concept="3b7kt6" id="1mPaNys5H5B" role="10PD9s" />
    <node concept="1zClus" id="1mPaNys5H5R" role="3989C9">
      <property role="2OjLBK" value="0" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBL" value="1" />
      <property role="2OjLBN" value="true" />
      <node concept="55IIr" id="1mPaNys5H5S" role="3vi$VU">
        <node concept="2Ry0Ak" id="1mPaNys5H5T" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1mPaNys5H5U" role="2Ry0An">
            <property role="2Ry0Am" value="logo.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H5V" role="2EteIg">
        <node concept="3Mxwey" id="1mPaNys5H5W" role="3MwsjC">
          <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
        </node>
      </node>
      <node concept="55IIr" id="1mPaNys5H5X" role="2EteIi">
        <node concept="2Ry0Ak" id="1mPaNys5H5Y" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1mPaNys6XPJ" role="2Ry0An">
            <property role="2Ry0Am" value="icon16.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H60" role="2EtHGA">
        <node concept="3Mxwew" id="1mPaNys5H61" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H62" role="2EtHGT">
        <node concept="3Mxwew" id="1mPaNys5H63" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 IDE" />
        </node>
      </node>
      <node concept="55IIr" id="1mPaNys5H64" role="2EteIj">
        <node concept="2Ry0Ak" id="1mPaNys5H65" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1mPaNys6XPL" role="2Ry0An">
            <property role="2Ry0Am" value="icon32.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H67" role="R$TG_">
        <node concept="3Mxwey" id="1mPaNys5H68" role="3MwsjC">
          <ref role="3Mxwex" node="1mPaNys5H5C" resolve="date" />
        </node>
      </node>
      <node concept="55IIr" id="1mPaNys5H6c" role="2EqU2s">
        <node concept="2Ry0Ak" id="1mPaNys5H6d" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1mPaNys5H6e" role="2Ry0An">
            <property role="2Ry0Am" value="about.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H6f" role="2gvbiD">
        <node concept="3Mxwew" id="1mPaNys5H6g" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H6h" role="HFo83">
        <node concept="3Mxwew" id="1mPaNys5H6i" role="3MwsjC">
          <property role="3MwjfP" value="207EE3" />
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H6j" role="3KTKoD">
        <node concept="3Mxwew" id="1mPaNys5H6k" role="3MwsjC">
          <property role="3MwjfP" value="207EE3" />
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H6l" role="3KTYbF">
        <node concept="3Mxwew" id="1mPaNys5H6m" role="3MwsjC">
          <property role="3MwjfP" value="207EE3" />
        </node>
      </node>
      <node concept="NbPM2" id="1mPaNys5H6n" role="27hGoL">
        <node concept="3Mxwew" id="1mPaNys5H6o" role="3MwsjC">
          <property role="3MwjfP" value="207EE3" />
        </node>
      </node>
      <node concept="3_J27D" id="6kvdbYu4nob" role="3KTKp4">
        <node concept="3Mxwew" id="6kvdbYu4nod" role="3MwsjC">
          <property role="3MwjfP" value="207EE3" />
        </node>
      </node>
      <node concept="55IIr" id="6kvdbYu4nof" role="27igRh">
        <node concept="2Ry0Ak" id="6kvdbYu4nok" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="6kvdbYu4nop" role="2Ry0An">
            <property role="2Ry0Am" value="iec61499.icns" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="6kvdbYu4nor" role="IvI4g">
        <node concept="2Ry0Ak" id="6kvdbYu4now" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="6kvdbYu4no_" role="2Ry0An">
            <property role="2Ry0Am" value="icon128.png" />
          </node>
        </node>
      </node>
      <node concept="IuM$Q" id="5xRv20i3brC" role="IuKBz">
        <node concept="3_J27D" id="5xRv20i3brD" role="IuM$f">
          <node concept="3Mxwew" id="5xRv20i3brK" role="3MwsjC">
            <property role="3MwjfP" value="no" />
          </node>
        </node>
        <node concept="3_J27D" id="5xRv20i3brE" role="IuM$c">
          <node concept="3Mxwew" id="5xRv20i3brO" role="3MwsjC">
            <property role="3MwjfP" value="http://blank.org/" />
          </node>
        </node>
        <node concept="NbPM2" id="5xRv20i3brF" role="3fQQh0" />
      </node>
      <node concept="NbPM2" id="5xRv20i3bsO" role="IvIn7">
        <node concept="3Mxwew" id="57dcfYPuvRj" role="3MwsjC">
          <property role="3MwjfP" value="http://plugins.jetbrains.com/" />
        </node>
      </node>
      <node concept="55IIr" id="1mPaNys5H69" role="2EqU2t">
        <node concept="2Ry0Ak" id="1mPaNys5H6a" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1mPaNys5H6b" role="2Ry0An">
            <property role="2Ry0Am" value="splash.png" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="1mPaNys5H5C" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="1mPaNys5H5D" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="1mPaNys5H5E" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="1mPaNys5H5F" role="aVJcv">
        <node concept="NbPM2" id="1mPaNys5H5G" role="aVJcq">
          <node concept="3Mxwew" id="1mPaNys5H5H" role="3MwsjC">
            <property role="3MwjfP" value="193.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1mPaNys5H5I" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1mPaNys6fxP" role="398pKh">
        <node concept="2Ry0Ak" id="1mPaNys6fxS" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="1mPaNys6fxX" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2019.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1mPaNys5HcM" role="1l3spa">
      <ref role="1l3spb" node="68dTcycFmrj" resolve="iec61499_Plugin" />
    </node>
    <node concept="2sgV4H" id="1mPaNys5H5J" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="1mPaNys5H5K" role="2JcizS">
        <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1mPaNys5H5L" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="1mPaNys5H5M" role="2JcizS">
        <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
        <node concept="2Ry0Ak" id="1mPaNys5H5N" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6kvdbYu1PGy" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5mc7nVumjii" resolve="mpsDebuggerPlugin" />
      <node concept="398BVA" id="6kvdbYu1PGM" role="2JcizS">
        <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
        <node concept="2Ry0Ak" id="6kvdbYu1PGN" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6kvdbYu1PBr" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5xa9wY2vh7j" resolve="mpsExecutionPlugin" />
      <node concept="398BVA" id="6kvdbYu1PBs" role="2JcizS">
        <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
        <node concept="2Ry0Ak" id="6kvdbYu1PBt" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6kvdbYu4ajg" role="1l3spa">
      <ref role="1l3spb" to="ffeo:ymnOULAEsd" resolve="mpsTesting" />
      <node concept="398BVA" id="6kvdbYu4ajA" role="2JcizS">
        <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
        <node concept="2Ry0Ak" id="6kvdbYu4ajB" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6kvdbYu3Kr3" role="1l3spa">
      <ref role="1l3spb" to="ffeo:7pdFgzxlDme" resolve="mpsBuild" />
      <node concept="398BVA" id="6kvdbYu3Krm" role="2JcizS">
        <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
        <node concept="2Ry0Ak" id="6kvdbYu3Krn" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="3jsGME" id="1mPaNys5H6z" role="3989C9">
      <property role="TrG5h" value="mps-tips" />
      <node concept="3jmSaf" id="1mPaNys5H6$" role="3jmSa1" />
    </node>
    <node concept="1l3spV" id="1mPaNys5H6_" role="1l3spN">
      <node concept="3_I8Xc" id="1mPaNys5H6H" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="1mPaNys5H6I" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="398223" id="1mPaNys5H6J" role="39821P">
        <node concept="3_J27D" id="1mPaNys5H6K" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5H6L" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="1mPaNys5H6M" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="1mPaNys5H6N" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="1mPaNys5H6O" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="1mPaNys5H6P" role="39821P">
          <node concept="1688n2" id="1mPaNys5H6Q" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="1mPaNys5H6R" role="1688n0">
              <node concept="3Mxwew" id="1mPaNys5H6S" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="1mPaNys5H6T" role="3MwsjC">
                <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="1mPaNys5H6D" role="28jJRO">
            <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
            <node concept="2Ry0Ak" id="1mPaNys5H6E" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="1mPaNys5H6F" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="1mPaNys5H6U" role="39821P">
        <node concept="3_J27D" id="1mPaNys5H6V" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5H6W" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="1mPaNys5H6X" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="1mPaNys5H6Y" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="1mPaNys5H6Z" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
          <node concept="3LWZYq" id="1mPaNys5H70" role="1juEy9">
            <property role="3LWZYl" value="mps-tips.jar" />
          </node>
          <node concept="3LWZYq" id="7ok1qOu0gKA" role="1juEy9">
            <property role="3LWZYl" value="mps-platform.jar" />
          </node>
        </node>
        <node concept="20sUq0" id="1mPaNys5H71" role="39821P">
          <property role="TrG5h" value="mps-tips.jar" />
          <ref role="21GgXK" node="1mPaNys5H6z" resolve="mps-tips" />
        </node>
        <node concept="3981dx" id="1mPaNys5H72" role="39821P">
          <node concept="3_J27D" id="1mPaNys5H73" role="Nbhlr">
            <node concept="3Mxwew" id="1mPaNys5H74" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="1mPaNys5H75" role="39821P">
            <ref role="1zDrgn" node="1mPaNys5H5R" resolve="IEC 61499 IDE 1.0" />
          </node>
        </node>
        <node concept="3981dx" id="7ok1qOu0gKS" role="39821P">
          <node concept="3_J27D" id="7ok1qOu0gKU" role="Nbhlr">
            <node concept="3Mxwew" id="7ok1qOu0gL8" role="3MwsjC">
              <property role="3MwjfP" value="mps-platform.jar" />
            </node>
          </node>
          <node concept="398223" id="7ok1qOu0gLa" role="39821P">
            <node concept="3_J27D" id="7ok1qOu0gLb" role="Nbhlr">
              <node concept="3Mxwew" id="7ok1qOu0gLe" role="3MwsjC">
                <property role="3MwjfP" value="META-INF" />
              </node>
            </node>
            <node concept="28jJK3" id="7ok1qOu0gLg" role="39821P">
              <node concept="1688n2" id="7ok1qOu0gLO" role="28jJR8">
                <property role="1688n3" value=".*mps.projectGroupTemplateEP.*" />
                <node concept="NbPM2" id="7ok1qOu0gLQ" role="1688n0" />
              </node>
              <node concept="1688n2" id="7ok1qOu0gLU" role="28jJR8">
                <property role="1688n3" value=".*mps.solutionProjectTemplateEP.*" />
                <node concept="NbPM2" id="7ok1qOu0gLV" role="1688n0" />
              </node>
              <node concept="1688n2" id="7ok1qOu0gM0" role="28jJR8">
                <property role="1688n3" value=".*mps.otherProjectTemplateEP" />
                <node concept="NbPM2" id="7ok1qOu0gM1" role="1688n0" />
              </node>
              <node concept="30tkmh" id="7ok1qOu0gLz" role="28jJRO">
                <node concept="398BVA" id="7ok1qOu0gLk" role="30tYEP">
                  <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="7ok1qOu0gLo" role="iGT6I">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7ok1qOu0gLt" role="2Ry0An">
                      <property role="2Ry0Am" value="mps-platform.jar" />
                    </node>
                  </node>
                </node>
                <node concept="2Ry0Ak" id="7ok1qOu0gL_" role="iGT6I">
                  <property role="2Ry0Am" value="META-INF" />
                  <node concept="2Ry0Ak" id="7ok1qOu0gLK" role="2Ry0An">
                    <property role="2Ry0Am" value="MPSUI.xml" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3ygNvl" id="7ok1qOu0ulx" role="39821P">
            <ref role="3ygNvj" to="ffeo:16Vg0jOco4n" resolve="mps-platform.jar" />
            <node concept="3LWZYq" id="7ok1qOu0ulO" role="1juEy9">
              <property role="3LWZYl" value="META-INF/MPSUI.xml" />
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="1mPaNys5H76" role="39821P">
        <node concept="28u9K_" id="42vv4xsJOt$" role="39821P">
          <property role="28hIV_" value="iec 61499 plugins" />
        </node>
        <node concept="3_I8Xc" id="42vv4xsJtD1" role="39821P">
          <ref role="3_I8Xa" node="42vv4xsIIBm" resolve="iec61499.common" />
        </node>
        <node concept="3_I8Xc" id="1mPaNys5Hd9" role="39821P">
          <ref role="3_I8Xa" node="42vv4xsIICZ" resolve="iec61499.mps" />
        </node>
        <node concept="3_I8Xc" id="42vv4xsJOlo" role="39821P">
          <ref role="3_I8Xa" node="42vv4xsJMzh" resolve="scenes" />
        </node>
        <node concept="3_I8Xc" id="42vv4xsJOnm" role="39821P">
          <ref role="3_I8Xa" node="42vv4xsJM_o" resolve="iec61499.richediting" />
        </node>
        <node concept="3_I8Xc" id="42vv4xsJOpm" role="39821P">
          <ref role="3_I8Xa" node="42vv4xsJMBz" resolve="iec61499.4diacIntegration" />
        </node>
        <node concept="28u9K_" id="42vv4xsJOrw" role="39821P">
          <property role="28hIV_" value="mps" />
        </node>
        <node concept="3_I8Xc" id="1mPaNys5H78" role="39821P">
          <ref role="3_I8Xa" to="ffeo:3nGzrDEfcNJ" resolve="svn4idea" />
        </node>
        <node concept="3_I8Xc" id="1mPaNys5H79" role="39821P">
          <ref role="3_I8Xa" to="ffeo:I6XuqH2zYV" resolve="git4idea" />
        </node>
        <node concept="3_I8Xc" id="1mPaNys5H7a" role="39821P">
          <ref role="3_I8Xa" to="ffeo:4EdAnGErOtx" resolve="mps-core" />
        </node>
        <node concept="3_I8Xc" id="1mPaNys5H7b" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1x6h9EwqP32" resolve="mps-make" />
        </node>
        <node concept="3_I8Xc" id="6kvdbYu3KrQ" role="39821P">
          <ref role="3_I8Xa" to="ffeo:5CFKsRWS5pU" resolve="mps-debugger-api" />
        </node>
        <node concept="3_I8Xc" id="6kvdbYu3KsK" role="39821P">
          <ref role="3_I8Xa" to="ffeo:5CFKsRWS5yu" resolve="mps-debugger-java" />
        </node>
        <node concept="3_I8Xc" id="6kvdbYu3Ktd" role="39821P">
          <ref role="3_I8Xa" to="ffeo:5CFKsRWRsZ0" resolve="mps-execution-api" />
        </node>
        <node concept="3_I8Xc" id="6kvdbYu3Kvs" role="39821P">
          <ref role="3_I8Xa" to="ffeo:35y4BF72kxA" resolve="mps-execution-configurations" />
        </node>
        <node concept="3_I8Xc" id="6kvdbYu3Kwq" role="39821P">
          <ref role="3_I8Xa" to="ffeo:35y4BF72i$D" resolve="mps-execution-languages" />
        </node>
        <node concept="398223" id="1_Zi$Xmq6jB" role="39821P">
          <node concept="3ygNvl" id="1_Zi$Xmp3VG" role="39821P">
            <ref role="3ygNvj" to="ffeo:6b4RkXS7XdG" resolve="mps-build" />
            <node concept="3LWZYq" id="1_Zi$Xmp3Wx" role="1juEy9">
              <property role="3LWZYl" value="META-INF/plugin.xml" />
            </node>
          </node>
          <node concept="398223" id="6kvdbYu1pWT" role="39821P">
            <node concept="28jJK3" id="1_Zi$Xmp3WU" role="39821P">
              <node concept="1688n2" id="1_Zi$Xmp3Xz" role="28jJR8">
                <property role="1688n3" value="&amp;lt;idea-version since-build=&amp;quot;.*&amp;quot; until-build=&amp;quot;.*&amp;quot;/&amp;gt;" />
                <node concept="NbPM2" id="1_Zi$Xmp3X_" role="1688n0" />
              </node>
              <node concept="398BVA" id="1_Zi$Xmp3X2" role="28jJRO">
                <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1_Zi$Xmp3X6" role="iGT6I">
                  <property role="2Ry0Am" value="plugins" />
                  <node concept="2Ry0Ak" id="1_Zi$Xmp3Xb" role="2Ry0An">
                    <property role="2Ry0Am" value="mps-build" />
                    <node concept="2Ry0Ak" id="1_Zi$Xmp3Xg" role="2Ry0An">
                      <property role="2Ry0Am" value="META-INF" />
                      <node concept="2Ry0Ak" id="1_Zi$Xmp3Xl" role="2Ry0An">
                        <property role="2Ry0Am" value="plugin.xml" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="6kvdbYu1pWV" role="Nbhlr">
              <node concept="3Mxwew" id="6kvdbYu1pX9" role="3MwsjC">
                <property role="3MwjfP" value="META-INF" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="1_Zi$Xmq6jD" role="Nbhlr">
            <node concept="3Mxwew" id="1_Zi$Xmq6k2" role="3MwsjC">
              <property role="3MwjfP" value="mps-build" />
            </node>
          </node>
        </node>
        <node concept="398223" id="6kvdbYu4akm" role="39821P">
          <node concept="3ygNvl" id="6kvdbYu4akn" role="39821P">
            <ref role="3ygNvj" to="ffeo:ymnOULAZ8H" resolve="mps-testing" />
            <node concept="3LWZYq" id="6kvdbYu4ako" role="1juEy9">
              <property role="3LWZYl" value="META-INF/plugin.xml" />
            </node>
          </node>
          <node concept="398223" id="6kvdbYu4akp" role="39821P">
            <node concept="28jJK3" id="6kvdbYu4akq" role="39821P">
              <node concept="1688n2" id="6kvdbYu4akr" role="28jJR8">
                <property role="1688n3" value="&amp;lt;idea-version since-build=&amp;quot;.*&amp;quot; until-build=&amp;quot;.*&amp;quot;/&amp;gt;" />
                <node concept="NbPM2" id="6kvdbYu4aks" role="1688n0" />
              </node>
              <node concept="398BVA" id="6kvdbYu4akt" role="28jJRO">
                <ref role="398BVh" node="1mPaNys5H5I" resolve="mps_home" />
                <node concept="2Ry0Ak" id="6kvdbYu4aku" role="iGT6I">
                  <property role="2Ry0Am" value="plugins" />
                  <node concept="2Ry0Ak" id="6kvdbYu4akv" role="2Ry0An">
                    <property role="2Ry0Am" value="mps-testing" />
                    <node concept="2Ry0Ak" id="6kvdbYu4akw" role="2Ry0An">
                      <property role="2Ry0Am" value="META-INF" />
                      <node concept="2Ry0Ak" id="6kvdbYu4alw" role="2Ry0An">
                        <property role="2Ry0Am" value="plugin.xml" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="6kvdbYu4aky" role="Nbhlr">
              <node concept="3Mxwew" id="6kvdbYu4akz" role="3MwsjC">
                <property role="3MwjfP" value="META-INF" />
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="6kvdbYu4ak$" role="Nbhlr">
            <node concept="3Mxwew" id="6kvdbYu4ak_" role="3MwsjC">
              <property role="3MwjfP" value="mps-testing" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1mPaNys5H7d" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5H7e" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="1mPaNys5H7f" role="39821P">
        <node concept="3_J27D" id="1mPaNys5H7g" role="1TblL3">
          <node concept="3Mxwew" id="1mPaNys5H7h" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="1mPaNys5H7i" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="1mPaNys5H7j" role="1TblLm">
            <node concept="3Mxwey" id="1mPaNys5H7k" role="3MwsjC">
              <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="1mPaNys5H7l" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="1mPaNys5H7m" role="1TblLm">
            <node concept="3Mxwey" id="1mPaNys5H7n" role="3MwsjC">
              <ref role="3Mxwex" node="1mPaNys5H5C" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="1mPaNys5H7o" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="1mPaNys5H7p" role="1TblLm">
            <node concept="3Mxwew" id="1mPaNys5H7q" role="3MwsjC">
              <property role="3MwjfP" value="1.0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="2H5LTARSeJg" role="auvoZ">
      <node concept="2Ry0Ak" id="2H5LTARSeJj" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1mPaNys5H7r">
    <property role="TrG5h" value="iec61499_RCPDistrib" />
    <property role="2DA0ip" value="../../" />
    <property role="turDy" value="build-rcpdistrib.xml" />
    <node concept="2sgV4H" id="1mPaNys5H7s" role="1l3spa">
      <ref role="1l3spb" node="1mPaNys5H5_" resolve="iec61499_RCP" />
    </node>
    <node concept="1l3spV" id="1mPaNys5H7t" role="1l3spN">
      <node concept="1tmT9g" id="1mPaNys5H89" role="39821P">
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="3ygNvl" id="1mPaNys5H8a" role="39821P">
          <ref role="3ygNvj" node="1mPaNys5H6_" />
        </node>
        <node concept="398223" id="1mPaNys5H8b" role="39821P">
          <node concept="3_J27D" id="1mPaNys5H8c" role="Nbhlr">
            <node concept="3Mxwew" id="1mPaNys5H8d" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
          <node concept="28u9K_" id="1mPaNys5H8e" role="39821P">
            <property role="28hIV_" value="Linux executable files and fsnotifier" />
          </node>
          <node concept="yKbIv" id="1mPaNys5H8f" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="1mPaNys5H8g" role="39821P">
              <node concept="398BVA" id="1mPaNys5H86" role="2HvfZ0">
                <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1mPaNys5H87" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1mPaNys5H88" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1mPaNys5H8h" role="39821P">
            <property role="28hIV_" value="Startup options for 32 and 64 bit systems" />
          </node>
          <node concept="28jJK3" id="1mPaNys5H8i" role="39821P">
            <node concept="3co7Ac" id="1mPaNys5H8j" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAL/lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="2H5LTARS3gY" role="28jJRO">
              <node concept="2Ry0Ak" id="2H5LTARS3gZ" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2H5LTARS3h0" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="2H5LTARS3h1" role="2Ry0An">
                    <property role="2Ry0Am" value="iec61499.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="1mPaNys5H8l" role="39821P">
            <node concept="3co7Ac" id="1mPaNys5H8m" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAL/lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="2H5LTARS3hE" role="28jJRO">
              <node concept="2Ry0Ak" id="2H5LTARS3hF" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2H5LTARS3hG" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="2H5LTARS3hH" role="2Ry0An">
                    <property role="2Ry0Am" value="iec6149964.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1mPaNys5H8o" role="39821P">
            <property role="28hIV_" value="Linux startup script" />
          </node>
          <node concept="28jJK3" id="1mPaNys5H8p" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="1mPaNys5H8q" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAL/lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="2H5LTARS3ic" role="28jJRO">
              <node concept="2Ry0Ak" id="2H5LTARS3ii" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2H5LTARS3in" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="2H5LTARS3iq" role="2Ry0An">
                    <property role="2Ry0Am" value="iec61499.sh" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1mPaNys5H8s" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5H8t" role="3MwsjC">
            <property role="3MwjfP" value="iec61499" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5H8u" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1mPaNys5H8v" role="3MwsjC">
            <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5H8w" role="3MwsjC">
            <property role="3MwjfP" value=".tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="1mPaNys5H8H" role="39821P">
        <node concept="3ygNvl" id="1mPaNys5H8I" role="39821P">
          <ref role="3ygNvj" node="1mPaNys5H6_" />
        </node>
        <node concept="398223" id="1mPaNys5H8J" role="39821P">
          <node concept="28u9K_" id="1mPaNys5H8K" role="39821P">
            <property role="28hIV_" value="Startup options for 32 and 64 bit systems" />
          </node>
          <node concept="3_J27D" id="1mPaNys5H8L" role="Nbhlr">
            <node concept="3Mxwew" id="1mPaNys5H8M" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
          <node concept="28jJK3" id="1mPaNys5H8N" role="39821P">
            <node concept="2$gBol" id="1mPaNys5H8O" role="28jJR8">
              <property role="2$htvj" value="*" />
              <node concept="NbPM2" id="1mPaNys5H8P" role="2$htvi">
                <node concept="3Mxwew" id="1mPaNys5H8Q" role="3MwsjC">
                  <property role="3MwjfP" value="iec61499.exe.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="3co7Ac" id="1mPaNys5H8R" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAM/crlf" />
            </node>
            <node concept="55IIr" id="2H5LTARS3g7" role="28jJRO">
              <node concept="2Ry0Ak" id="2H5LTARS3gb" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2H5LTARS3gi" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="2H5LTARS3gh" role="2Ry0An">
                    <property role="2Ry0Am" value="iec61499.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="1mPaNys5H8Z" role="39821P">
            <node concept="2$gBol" id="1mPaNys5H90" role="28jJR8">
              <property role="2$htvj" value="*" />
              <node concept="NbPM2" id="1mPaNys5H91" role="2$htvi">
                <node concept="3Mxwew" id="1mPaNys5H92" role="3MwsjC">
                  <property role="3MwjfP" value="iec6149964.exe.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="3co7Ac" id="1mPaNys5H93" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAM/crlf" />
            </node>
            <node concept="55IIr" id="2H5LTARS3fa" role="28jJRO">
              <node concept="2Ry0Ak" id="2H5LTARS3fg" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2H5LTARS3gn" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="2H5LTARS3gm" role="2Ry0An">
                    <property role="2Ry0Am" value="iec6149964.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1mPaNys5H9b" role="39821P">
            <property role="28hIV_" value="Required files for execution" />
          </node>
          <node concept="2HvfSZ" id="1mPaNys5H9c" role="39821P">
            <node concept="3LWZYq" id="1mPaNys5H9d" role="2HvfZ1">
              <property role="3LWZYl" value="**/*.exe" />
            </node>
            <node concept="3LWZYq" id="1mPaNys5H9e" role="2HvfZ1">
              <property role="3LWZYl" value="**/*.bat" />
            </node>
            <node concept="398BVA" id="1mPaNys5H8$" role="2HvfZ0">
              <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
              <node concept="2Ry0Ak" id="1mPaNys5H8_" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="1mPaNys5H8A" role="2Ry0An">
                  <property role="2Ry0Am" value="win" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1mPaNys5H9f" role="39821P">
            <property role="28hIV_" value="Windows executable files and fsnotifier" />
          </node>
          <node concept="yKbIv" id="1mPaNys5H9g" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="1mPaNys5H9h" role="39821P">
              <node concept="3LWZYx" id="1mPaNys5H9i" role="2HvfZ1">
                <property role="3LWZYw" value="**/*.exe" />
              </node>
              <node concept="3LWZYx" id="1mPaNys5H9j" role="2HvfZ1">
                <property role="3LWZYw" value="**/append.bat" />
              </node>
              <node concept="398BVA" id="1mPaNys5H8E" role="2HvfZ0">
                <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1mPaNys5H8F" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1mPaNys5H8G" role="2Ry0An">
                    <property role="2Ry0Am" value="win" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1mPaNys5H9k" role="39821P">
            <property role="28hIV_" value="Startup .bat file" />
          </node>
          <node concept="28jJK3" id="1mPaNys5H9l" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="1mPaNys5H9m" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAM/crlf" />
            </node>
            <node concept="55IIr" id="1mPaNys5H9n" role="28jJRO">
              <node concept="2Ry0Ak" id="1mPaNys5H7R" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2H5LTARS3ec" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="2H5LTARS3er" role="2Ry0An">
                    <property role="2Ry0Am" value="iec61499.bat" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1mPaNys5H9o" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5H9p" role="3MwsjC">
            <property role="3MwjfP" value="iec61499" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5H9q" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1mPaNys5H9r" role="3MwsjC">
            <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5H9s" role="3MwsjC">
            <property role="3MwjfP" value=".win.zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="1mPaNys5Ha7" role="39821P">
        <node concept="3_J27D" id="1mPaNys5Ha8" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5Ha9" role="3MwsjC">
            <property role="3MwjfP" value="iec61499" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5Haa" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1mPaNys5Hab" role="3MwsjC">
            <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5Hac" role="3MwsjC">
            <property role="3MwjfP" value=".macos.zip" />
          </node>
        </node>
        <node concept="398223" id="1mPaNys5Had" role="39821P">
          <node concept="398223" id="1mPaNys5Hae" role="39821P">
            <node concept="3ygNvl" id="1mPaNys5Haf" role="39821P">
              <ref role="3ygNvj" node="1mPaNys5H6_" />
            </node>
            <node concept="3_J27D" id="1mPaNys5Hag" role="Nbhlr">
              <node concept="3Mxwew" id="1mPaNys5Hah" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="1mPaNys5Hai" role="39821P">
              <node concept="3_J27D" id="1mPaNys5Haj" role="Nbhlr">
                <node concept="3Mxwew" id="1mPaNys5Hak" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="1mPaNys5Ham" role="39821P">
                <node concept="55IIr" id="1mPaNys79mx" role="28jJRO">
                  <node concept="2Ry0Ak" id="1mPaNys79mB" role="iGT6I">
                    <property role="2Ry0Am" value="icons" />
                    <node concept="2Ry0Ak" id="1mPaNys79mG" role="2Ry0An">
                      <property role="2Ry0Am" value="logo.png" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="6kvdbYu4$Bd" role="39821P">
                <node concept="55IIr" id="6kvdbYu4$Bn" role="28jJRO">
                  <node concept="2Ry0Ak" id="6kvdbYu4$Br" role="iGT6I">
                    <property role="2Ry0Am" value="icons" />
                    <node concept="2Ry0Ak" id="6kvdbYu4$Bw" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499.icns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="1mPaNys5Han" role="39821P">
              <property role="28hIV_" value="MacOSX executable to run application" />
            </node>
            <node concept="398223" id="1mPaNys5Hao" role="39821P">
              <node concept="28jJK3" id="1mPaNys5Hap" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1mPaNys5H9J" role="28jJRO">
                  <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1mPaNys5H9K" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1mPaNys5H9L" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1mPaNys5H9M" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="1mPaNys5H9N" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="1mPaNys5H9O" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$gBol" id="1mPaNys5Haq" role="28jJR8">
                  <property role="2$htvj" value="*" />
                  <node concept="NbPM2" id="1mPaNys5Har" role="2$htvi">
                    <node concept="3Mxwew" id="1mPaNys5Has" role="3MwsjC">
                      <property role="3MwjfP" value="iec61499" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="1mPaNys5Hat" role="Nbhlr">
                <node concept="3Mxwew" id="1mPaNys5Hau" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="1mPaNys5Hav" role="39821P">
              <property role="28hIV_" value="Fill Info.plist with current build version and number" />
            </node>
            <node concept="28jJK3" id="1mPaNys5Haw" role="39821P">
              <node concept="55IIr" id="1mPaNys5Hax" role="28jJRO">
                <node concept="2Ry0Ak" id="2H5LTARLvyL" role="iGT6I">
                  <property role="2Ry0Am" value="build" />
                  <node concept="2Ry0Ak" id="2H5LTARS3e2" role="2Ry0An">
                    <property role="2Ry0Am" value="startup" />
                    <node concept="2Ry0Ak" id="2H5LTARS3e1" role="2Ry0An">
                      <property role="2Ry0Am" value="Info.plist.xml" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2$gBol" id="1mPaNys5Hay" role="28jJR8">
                <property role="2$htvj" value="*" />
                <node concept="NbPM2" id="1mPaNys5Haz" role="2$htvi">
                  <node concept="3Mxwew" id="1mPaNys5Ha$" role="3MwsjC">
                    <property role="3MwjfP" value="Info.plist" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1mPaNys5Ha_" role="28jJR8">
                <property role="1688n3" value="\$version\$" />
                <node concept="NbPM2" id="1mPaNys5HaA" role="1688n0">
                  <node concept="3Mxwey" id="1mPaNys5HaB" role="3MwsjC">
                    <ref role="3Mxwex" node="1mPaNys5H7v" resolve="version" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1mPaNys5HaC" role="28jJR8">
                <property role="1688n3" value="\$build\$" />
                <node concept="NbPM2" id="1mPaNys5HaD" role="1688n0">
                  <node concept="3Mxwey" id="1mPaNys5HaE" role="3MwsjC">
                    <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
                  </node>
                </node>
              </node>
              <node concept="3co7Ac" id="1mPaNys5HaF" role="28jJR8">
                <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                <property role="3cpA_W" value="true" />
              </node>
            </node>
            <node concept="398223" id="1mPaNys5HaG" role="39821P">
              <node concept="3_J27D" id="1mPaNys5HaH" role="Nbhlr">
                <node concept="3Mxwew" id="1mPaNys5HaI" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28u9K_" id="1mPaNys5HaJ" role="39821P">
                <property role="28hIV_" value="Executable files and fsnotifier" />
              </node>
              <node concept="yKbIv" id="1mPaNys5HaK" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="1mPaNys5HaL" role="39821P">
                  <node concept="3LWZYq" id="1mPaNys5HaM" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.dylib" />
                  </node>
                  <node concept="3LWZYq" id="1mPaNys5HaN" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.py" />
                  </node>
                  <node concept="398BVA" id="1mPaNys5H9S" role="2HvfZ0">
                    <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="1mPaNys5H9T" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1mPaNys5H9U" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="1mPaNys5HaO" role="39821P">
                <property role="28hIV_" value="Python script with updated end of line" />
              </node>
              <node concept="yKbIv" id="1mPaNys5HaP" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="1mPaNys5HaQ" role="39821P">
                  <node concept="3LWZYx" id="1mPaNys5HaR" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.py" />
                  </node>
                  <node concept="3co7Ac" id="1mPaNys5HaS" role="2HvfZ1">
                    <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                    <property role="3cpA_W" value="true" />
                  </node>
                  <node concept="398BVA" id="1mPaNys5H9Y" role="2HvfZ0">
                    <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="1mPaNys5H9Z" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1mPaNys5Ha0" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="1mPaNys5HaT" role="39821P">
                <property role="28hIV_" value="Required libraries" />
              </node>
              <node concept="yKbIv" id="1mPaNys5HaU" role="39821P">
                <node concept="2HvfSZ" id="1mPaNys5HaV" role="39821P">
                  <node concept="3LWZYx" id="1mPaNys5HaW" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.dylib" />
                  </node>
                  <node concept="398BVA" id="1mPaNys5Ha4" role="2HvfZ0">
                    <ref role="398BVh" node="1mPaNys5H7u" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="1mPaNys5Ha5" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1mPaNys5Ha6" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="1mPaNys5HaX" role="39821P">
                <property role="28hIV_" value="MacOSX distribution should always use 64 bit startup options" />
              </node>
              <node concept="28jJK3" id="1mPaNys5HaY" role="39821P">
                <node concept="3co7Ac" id="1mPaNys5HaZ" role="28jJR8">
                  <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="55IIr" id="1mPaNys5Hb0" role="28jJRO">
                  <node concept="2Ry0Ak" id="1mPaNys5Hb1" role="iGT6I">
                    <property role="2Ry0Am" value="build" />
                    <node concept="2Ry0Ak" id="2H5LTAROddq" role="2Ry0An">
                      <property role="2Ry0Am" value="startup" />
                      <node concept="2Ry0Ak" id="2H5LTARS3dN" role="2Ry0An">
                        <property role="2Ry0Am" value="iec6149964.vmoptions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$htT0" id="1mPaNys5Hb7" role="28jJR8">
                  <property role="2$htTZ" value="iec6149964.vmoptions" />
                  <property role="2$htTY" value="iec61499.vmoptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="1mPaNys5Hb8" role="Nbhlr">
            <node concept="3Mxwew" id="1mPaNys5Hb9" role="3MwsjC">
              <property role="3MwjfP" value="iec61499 " />
            </node>
            <node concept="3Mxwey" id="1mPaNys5Hba" role="3MwsjC">
              <ref role="3Mxwex" node="1mPaNys5H7v" resolve="version" />
            </node>
            <node concept="3Mxwew" id="1mPaNys5Hbb" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1mPaNys5H7u" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1mPaNys5SDE" role="398pKh">
        <node concept="2Ry0Ak" id="1mPaNys5SDJ" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="1mPaNys5SDO" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2019.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="1mPaNys5H7v" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="1mPaNys5H7w" role="aVJcv">
        <node concept="NbPM2" id="1mPaNys5H7x" role="aVJcq">
          <node concept="3Mxwew" id="1mPaNys5H7y" role="3MwsjC">
            <property role="3MwjfP" value="193.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="2H5LTARSeJl" role="auvoZ">
      <node concept="2Ry0Ak" id="2H5LTARSeJo" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
  <node concept="26EafH" id="1mPaNys5Hbc">
    <property role="26EafI" value="-" />
    <property role="26FY9R" value="jetbrains.mps.Launcher" />
    <property role="TrG5h" value="iec61499_Scripts" />
    <ref role="1_kbm$" node="1mPaNys5H5R" resolve="IEC 61499 IDE 1.0" />
    <node concept="26EafG" id="1mPaNys5Hbd" role="26Ea7d">
      <property role="26EafJ" value="lib/branding.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbe" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbf" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot-util.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbg" role="26Ea7d">
      <property role="26EafJ" value="lib/bootstrap.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbh" role="26Ea7d">
      <property role="26EafJ" value="lib/extensions.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbi" role="26Ea7d">
      <property role="26EafJ" value="lib/util.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbj" role="26Ea7d">
      <property role="26EafJ" value="lib/jdom.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbk" role="26Ea7d">
      <property role="26EafJ" value="lib/log4j.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbl" role="26Ea7d">
      <property role="26EafJ" value="lib/trove4j.jar" />
    </node>
    <node concept="26EafG" id="1mPaNys5Hbm" role="26Ea7d">
      <property role="26EafJ" value="lib/jna.jar" />
    </node>
  </node>
  <node concept="1l3spW" id="6kvdbYtXYck">
    <property role="2DA0ip" value="../../" />
    <property role="TrG5h" value="iec61499_Bootstrap" />
    <property role="turDy" value="build-bootstrap.xml" />
    <node concept="1E1JtA" id="3Sv$YXY4B$u" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="iec61499.build" />
      <property role="3LESm3" value="03167fa4-d2b2-43a9-8149-2d4f4957c404" />
      <node concept="55IIr" id="3Sv$YXY4B$v" role="3LF7KH">
        <node concept="2Ry0Ak" id="3Sv$YXY4B$_" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="3Sv$YXY4B$E" role="2Ry0An">
            <property role="2Ry0Am" value="iec61499.build" />
            <node concept="2Ry0Ak" id="3Sv$YXY4B$J" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.build.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3Sv$YXY4B$L" role="3bR37C">
        <node concept="3bR9La" id="3Sv$YXY4B$M" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6kvdbYtXYkJ" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="6kvdbYtXYkK" role="398pKh">
        <node concept="2Ry0Ak" id="6kvdbYtXYkL" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="6_lerJ3jVZp" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2019.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6kvdbYtXYkN" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6kvdbYtXYkO" role="2JcizS">
        <ref role="398BVh" node="6kvdbYtXYkJ" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="6kvdbYtXYcm" role="1l3spN" />
    <node concept="3b7kt6" id="6kvdbYtXYcn" role="10PD9s" />
  </node>
  <node concept="1l3spW" id="6GNoG1I1IKi">
    <property role="TrG5h" value="iec61499_RCPDistribWithJBR" />
    <property role="2DA0ip" value="../../" />
    <property role="turDy" value="build-rcpdistrib-jbr.xml" />
    <node concept="2sgV4H" id="6GNoG1I1IKj" role="1l3spa">
      <ref role="1l3spb" node="1mPaNys5H5_" resolve="iec61499_RCP" />
    </node>
    <node concept="1l3spV" id="6GNoG1I1IKk" role="1l3spN">
      <node concept="3981dG" id="6GNoG1I1ILG" role="39821P">
        <node concept="3_J27D" id="6GNoG1I1ILH" role="Nbhlr">
          <node concept="3Mxwew" id="6GNoG1I1ILI" role="3MwsjC">
            <property role="3MwjfP" value="iec61499" />
          </node>
          <node concept="3Mxwew" id="6GNoG1I1ILJ" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="6GNoG1I1ILK" role="3MwsjC">
            <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="6GNoG1I1ILL" role="3MwsjC">
            <property role="3MwjfP" value=".macos.zip" />
          </node>
        </node>
        <node concept="398223" id="6GNoG1I1ILM" role="39821P">
          <node concept="398223" id="6GNoG1I1ILN" role="39821P">
            <node concept="3ygNvl" id="6GNoG1I1ILO" role="39821P">
              <ref role="3ygNvj" node="1mPaNys5H6_" />
            </node>
            <node concept="3_J27D" id="6GNoG1I1ILP" role="Nbhlr">
              <node concept="3Mxwew" id="6GNoG1I1ILQ" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="6GNoG1I1ILR" role="39821P">
              <node concept="3_J27D" id="6GNoG1I1ILS" role="Nbhlr">
                <node concept="3Mxwew" id="6GNoG1I1ILT" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="6GNoG1I1ILU" role="39821P">
                <node concept="55IIr" id="6GNoG1I1ILV" role="28jJRO">
                  <node concept="2Ry0Ak" id="6GNoG1I1ILW" role="iGT6I">
                    <property role="2Ry0Am" value="icons" />
                    <node concept="2Ry0Ak" id="6GNoG1I1ILX" role="2Ry0An">
                      <property role="2Ry0Am" value="logo.png" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="6GNoG1I1ILY" role="39821P">
                <node concept="55IIr" id="6GNoG1I1ILZ" role="28jJRO">
                  <node concept="2Ry0Ak" id="6GNoG1I1IM0" role="iGT6I">
                    <property role="2Ry0Am" value="icons" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IM1" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499.icns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="6GNoG1I1IM2" role="39821P">
              <property role="28hIV_" value="MacOSX executable to run application" />
            </node>
            <node concept="398223" id="6GNoG1I1IM3" role="39821P">
              <node concept="28jJK3" id="6GNoG1I1IM4" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="6GNoG1I1IM5" role="28jJRO">
                  <ref role="398BVh" node="6GNoG1I1IN6" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="6GNoG1I1IM6" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IM7" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="6GNoG1I1IM8" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="6GNoG1I1IM9" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="6GNoG1I1IMa" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$gBol" id="6GNoG1I1IMb" role="28jJR8">
                  <property role="2$htvj" value="*" />
                  <node concept="NbPM2" id="6GNoG1I1IMc" role="2$htvi">
                    <node concept="3Mxwew" id="6GNoG1I1IMd" role="3MwsjC">
                      <property role="3MwjfP" value="iec61499" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="6GNoG1I1IMe" role="Nbhlr">
                <node concept="3Mxwew" id="6GNoG1I1IMf" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="6GNoG1I1IMg" role="39821P">
              <property role="28hIV_" value="Fill Info.plist with current build version and number" />
            </node>
            <node concept="28jJK3" id="6GNoG1I1IMh" role="39821P">
              <node concept="55IIr" id="6GNoG1I1IMi" role="28jJRO">
                <node concept="2Ry0Ak" id="6GNoG1I1IMj" role="iGT6I">
                  <property role="2Ry0Am" value="build" />
                  <node concept="2Ry0Ak" id="6GNoG1I1IMk" role="2Ry0An">
                    <property role="2Ry0Am" value="startup" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IMl" role="2Ry0An">
                      <property role="2Ry0Am" value="Info.plist.xml" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2$gBol" id="6GNoG1I1IMm" role="28jJR8">
                <property role="2$htvj" value="*" />
                <node concept="NbPM2" id="6GNoG1I1IMn" role="2$htvi">
                  <node concept="3Mxwew" id="6GNoG1I1IMo" role="3MwsjC">
                    <property role="3MwjfP" value="Info.plist" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="6GNoG1I1IMp" role="28jJR8">
                <property role="1688n3" value="\$version\$" />
                <node concept="NbPM2" id="6GNoG1I1IMq" role="1688n0">
                  <node concept="3Mxwey" id="6GNoG1I1IMr" role="3MwsjC">
                    <ref role="3Mxwex" node="6GNoG1I1INa" resolve="version" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="6GNoG1I1IMs" role="28jJR8">
                <property role="1688n3" value="\$build\$" />
                <node concept="NbPM2" id="6GNoG1I1IMt" role="1688n0">
                  <node concept="3Mxwey" id="6GNoG1I1IMu" role="3MwsjC">
                    <ref role="3Mxwex" node="1mPaNys5H5E" resolve="build.number" />
                  </node>
                </node>
              </node>
              <node concept="3co7Ac" id="6GNoG1I1IMv" role="28jJR8">
                <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                <property role="3cpA_W" value="true" />
              </node>
            </node>
            <node concept="398223" id="6GNoG1I1IMw" role="39821P">
              <node concept="3_J27D" id="6GNoG1I1IMx" role="Nbhlr">
                <node concept="3Mxwew" id="6GNoG1I1IMy" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28u9K_" id="6GNoG1I1IMz" role="39821P">
                <property role="28hIV_" value="Executable files and fsnotifier" />
              </node>
              <node concept="yKbIv" id="6GNoG1I1IM$" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="6GNoG1I1IM_" role="39821P">
                  <node concept="3LWZYq" id="6GNoG1I1IMA" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.dylib" />
                  </node>
                  <node concept="3LWZYq" id="6GNoG1I1IMB" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.py" />
                  </node>
                  <node concept="398BVA" id="6GNoG1I1IMC" role="2HvfZ0">
                    <ref role="398BVh" node="6GNoG1I1IN6" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IMD" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="6GNoG1I1IME" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="6GNoG1I1IMF" role="39821P">
                <property role="28hIV_" value="Python script with updated end of line" />
              </node>
              <node concept="yKbIv" id="6GNoG1I1IMG" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="6GNoG1I1IMH" role="39821P">
                  <node concept="3LWZYx" id="6GNoG1I1IMI" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.py" />
                  </node>
                  <node concept="3co7Ac" id="6GNoG1I1IMJ" role="2HvfZ1">
                    <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                    <property role="3cpA_W" value="true" />
                  </node>
                  <node concept="398BVA" id="6GNoG1I1IMK" role="2HvfZ0">
                    <ref role="398BVh" node="6GNoG1I1IN6" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IML" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="6GNoG1I1IMM" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="6GNoG1I1IMN" role="39821P">
                <property role="28hIV_" value="Required libraries" />
              </node>
              <node concept="yKbIv" id="6GNoG1I1IMO" role="39821P">
                <node concept="2HvfSZ" id="6GNoG1I1IMP" role="39821P">
                  <node concept="3LWZYx" id="6GNoG1I1IMQ" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.dylib" />
                  </node>
                  <node concept="398BVA" id="6GNoG1I1IMR" role="2HvfZ0">
                    <ref role="398BVh" node="6GNoG1I1IN6" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IMS" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="6GNoG1I1IMT" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="6GNoG1I1IMU" role="39821P">
                <property role="28hIV_" value="MacOSX distribution should always use 64 bit startup options" />
              </node>
              <node concept="28jJK3" id="6GNoG1I1IMV" role="39821P">
                <node concept="3co7Ac" id="6GNoG1I1IMW" role="28jJR8">
                  <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="55IIr" id="6GNoG1I1IMX" role="28jJRO">
                  <node concept="2Ry0Ak" id="6GNoG1I1IMY" role="iGT6I">
                    <property role="2Ry0Am" value="build" />
                    <node concept="2Ry0Ak" id="6GNoG1I1IMZ" role="2Ry0An">
                      <property role="2Ry0Am" value="startup" />
                      <node concept="2Ry0Ak" id="6GNoG1I1IN0" role="2Ry0An">
                        <property role="2Ry0Am" value="iec6149964.vmoptions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$htT0" id="6GNoG1I1IN1" role="28jJR8">
                  <property role="2$htTZ" value="iec6149964.vmoptions" />
                  <property role="2$htTY" value="iec61499.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="398223" id="6kcQr5wwL98" role="39821P">
              <node concept="3_J27D" id="6kcQr5wwL9a" role="Nbhlr">
                <node concept="3Mxwew" id="6kcQr5wwLc9" role="3MwsjC">
                  <property role="3MwjfP" value="jbr" />
                </node>
              </node>
              <node concept="yKbIv" id="6kcQr5wweyt" role="39821P">
                <node concept="2HvfSZ" id="6kcQr5wwLhH" role="39821P">
                  <node concept="398BVA" id="6kcQr5wwLjt" role="2HvfZ0">
                    <ref role="398BVh" node="6GNoG1I1K9N" resolve="jbr_home" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="6GNoG1I1IN2" role="Nbhlr">
            <node concept="3Mxwew" id="6GNoG1I1IN3" role="3MwsjC">
              <property role="3MwjfP" value="iec61499 " />
            </node>
            <node concept="3Mxwey" id="6GNoG1I1IN4" role="3MwsjC">
              <ref role="3Mxwex" node="6GNoG1I1INa" resolve="version" />
            </node>
            <node concept="3Mxwew" id="6GNoG1I1IN5" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6GNoG1I1IN6" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="6GNoG1I1IN7" role="398pKh">
        <node concept="2Ry0Ak" id="6GNoG1I1IN8" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="6GNoG1I1IN9" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2019.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6GNoG1I1K9N" role="1l3spd">
      <property role="TrG5h" value="jbr_home" />
      <node concept="55IIr" id="6GNoG1I1K9O" role="398pKh">
        <node concept="2Ry0Ak" id="6GNoG1I1K9P" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="6kcQr5wuNYP" role="2Ry0An">
            <property role="2Ry0Am" value="jbr" />
            <node concept="2Ry0Ak" id="6kcQr5wwKY_" role="2Ry0An">
              <property role="2Ry0Am" value="jbrsdk" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="6GNoG1I1INa" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="6GNoG1I1INb" role="aVJcv">
        <node concept="NbPM2" id="6GNoG1I1INc" role="aVJcq">
          <node concept="3Mxwew" id="6GNoG1I1INd" role="3MwsjC">
            <property role="3MwjfP" value="193.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="6GNoG1I1INe" role="auvoZ">
      <node concept="2Ry0Ak" id="6GNoG1I1INf" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
</model>

